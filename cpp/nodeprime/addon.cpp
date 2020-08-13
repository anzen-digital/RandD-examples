#include <nan.h>
#include <functional>
#include <iostream>
#include <stdlib.h>
#include <unistd.h>

#include <chrono>
#include <ctime>  

#include "exchange.h"
#include "prime_sieve.h"
#include "/usr/include/mysql/mysql.h"

using namespace Nan;
using namespace std;
using namespace v8;

class PrimeWorker {

 	//< : public AsyncWorker {

    public:

        PrimeWorker(Callback *callback, int under) {

        //: AsyncWorker(callback), under(under), primes(0) {

    printf(" INIT C++\n");
   MYSQL *conn;
   MYSQL_RES *res;
   MYSQL_ROW row;

	conn = mysql_init(NULL);

   char *server="localhost";
   char *user="root";
   char *password="Schito98@";
   char *database="node_example";
   // Connect to database
   if (!mysql_real_connect(conn, server,
         user, password, database, 0, NULL, 0)) {
	cout<<"ERRRRRRR" << endl;
   }
    clock_t m_start, m_end;
    m_start = clock();
        mysql_autocommit( conn, 0 );
        mysql_commit( conn );

int k=0;
	for(k=0;k<100000;k++)
	{
   // send SQL query
  mysql_query(conn, "INSERT INTO companies(name, deleted) VALUES('cj5',0)");
	}

mysql_autocommit( conn, 1 );
    m_end = clock();
    printf("C++: %fms\n", (1000.0 * (m_end - m_start))/CLOCKS_PER_SEC);

   mysql_close(conn);

	}

        ~PrimeWorker() {}


        void Execute () {
            Exchange x(
                [&](void * data) {
                    primes.push_back(*((int *) data));
                }
            );

            //generate_primes(under, (void*)&x);
        }

        // We have the results, and we're back in the event loop.
        void HandleOKCallback () {
            Nan:: HandleScope scope;

            v8::Local<v8::Array> results = New<v8::Array>(primes.size());
            int i = 0;
            for_each(primes.begin(), primes.end(),
                [&](int value) {
                    Nan::Set(results, i, New<v8::Number>(value));
                    i++;
            });


            Local<Value> argv[] = {
                Null(),
                results
            };

            //callback->Call(2, argv);

        }
    private:
        int under;
        vector<int> primes;
};

// Asynchronous access to the `getPrimes()` function
NAN_METHOD(CalculatePrimes) {

    int under = To<int>(info[0]).FromJust();
    Callback *callback = new Callback(info[1].As<Function>());

    //AsyncQueueWorker(new PrimeWorker(callback, under));
    new PrimeWorker(callback, under);
}


NAN_MODULE_INIT(Init) {
    Nan::Set(target, New<String>("getPrimes").ToLocalChecked(),
        GetFunction(New<FunctionTemplate>(CalculatePrimes)).ToLocalChecked());
}

NODE_MODULE(addon, Init)
