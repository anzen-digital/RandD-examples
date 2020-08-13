var express = require('express');
var path = require('path')
var router = express.Router();
var nodeprime = require("../../cpp/nodeprime/build/Release/nodeprime")
var mysqlConnection  = require('./database');

var type = path.basename(__filename).slice(0, -3);

router.get('/', function(req, res) {
  res.render('primes', {target:type});
});


router.post('/', function(req, res) {
    var under = parseInt(req.body.under);
    nodeprime.getPrimes(under, function (err, primes) {
        res.setHeader('Content-Type', 'application/json');
        res.end(JSON.stringify({
            results: primes
        }));
    });
    //console.log("Primes generated using " + type);

///////////////
console.time('JS');
    var sql = "INSERT INTO companies(name, deleted) VALUES('ej5',0)";
    for (let i = 0; i < 1000000; i++) {
    mysqlConnection.query(sql);
	}
console.timeEnd('JS');



});


module.exports = router;
