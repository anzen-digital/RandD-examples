{
  "targets": [
    {
      "target_name": "nodeprime",
      "sources": [ "../prime4lib/prime_sieve.c", "../prime4lib/exchange.cpp", "addon.cpp"],
"libraries": [
          "-L/usr/lib/x86_64-linux-gnu",
          "-lmysqlclient",
	  "-lpthread",
          "-lm",
          "-lrt",
          "-lssl",
          "-lcrypto",
          "-ldl"
        ],
      "cflags": ["-Wall", "-O2", "-std=c++11"],
      "include_dirs" : ['../prime4lib', '/usr/include/mysql', "<!(node -e \"require('nan')\")"],
      "conditions": [
        [ 'OS=="mac"', {
            "xcode_settings": {
                'OTHER_CPLUSPLUSFLAGS' : ['-std=c++11','-stdlib=libc++'],
                'OTHER_LDFLAGS': ['-stdlib=libc++'],
                'MACOSX_DEPLOYMENT_TARGET': '10.7' }
            }
        ]
      ]
    }
  ]
}
