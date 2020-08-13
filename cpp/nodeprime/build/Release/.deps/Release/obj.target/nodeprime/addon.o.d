cmd_Release/obj.target/nodeprime/addon.o := g++ -o Release/obj.target/nodeprime/addon.o ../addon.cpp '-DNODE_GYP_MODULE_NAME=nodeprime' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DOPENSSL_NO_PINSHARED' '-DBUILDING_NODE_EXTENSION' -I/home/jhon/.cache/node-gyp/10.21.0/include/node -I/home/jhon/.cache/node-gyp/10.21.0/src -I/home/jhon/.cache/node-gyp/10.21.0/deps/openssl/config -I/home/jhon/.cache/node-gyp/10.21.0/deps/openssl/openssl/include -I/home/jhon/.cache/node-gyp/10.21.0/deps/uv/include -I/home/jhon/.cache/node-gyp/10.21.0/deps/zlib -I/home/jhon/.cache/node-gyp/10.21.0/deps/v8/include -I../../prime4lib -I/usr/include/mysql -I../node_modules/nan  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -Wall -O2 -std=c++11 -O3 -fno-omit-frame-pointer -fno-rtti -fno-exceptions -std=gnu++1y -MMD -MF ./Release/.deps/Release/obj.target/nodeprime/addon.o.d.raw   -c
Release/obj.target/nodeprime/addon.o: ../addon.cpp \
 ../node_modules/nan/nan.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/node_version.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/uv.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/uv/errno.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/uv/version.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/uv/unix.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/uv/threadpool.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/uv/linux.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/node.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/v8.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/v8-version.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/v8config.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/v8-platform.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/node_version.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/node_buffer.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/node.h \
 /home/jhon/.cache/node-gyp/10.21.0/include/node/node_object_wrap.h \
 ../node_modules/nan/nan_callbacks.h \
 ../node_modules/nan/nan_callbacks_12_inl.h \
 ../node_modules/nan/nan_maybe_43_inl.h \
 ../node_modules/nan/nan_converters.h \
 ../node_modules/nan/nan_converters_43_inl.h \
 ../node_modules/nan/nan_new.h \
 ../node_modules/nan/nan_implementation_12_inl.h \
 ../node_modules/nan/nan_persistent_12_inl.h \
 ../node_modules/nan/nan_weak.h ../node_modules/nan/nan_object_wrap.h \
 ../node_modules/nan/nan_private.h \
 ../node_modules/nan/nan_typedarray_contents.h \
 ../node_modules/nan/nan_json.h ../../prime4lib/exchange.h \
 ../../prime4lib/c_exchange.h ../../prime4lib/prime_sieve.h \
 /usr/include/mysql/mysql.h /usr/include/mysql/field_types.h \
 /usr/include/mysql/my_list.h /usr/include/mysql/mysql_com.h \
 /usr/include/mysql/my_command.h /usr/include/mysql/my_compress.h \
 /usr/include/mysql/mysql/udf_registration_types.h \
 /usr/include/mysql/mysql/client_plugin.h \
 /usr/include/mysql/mysql/plugin_auth_common.h \
 /usr/include/mysql/mysql_version.h /usr/include/mysql/mysql_time.h \
 /usr/include/mysql/errmsg.h
../addon.cpp:
../node_modules/nan/nan.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/node_version.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/uv.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/uv/errno.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/uv/version.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/uv/unix.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/uv/threadpool.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/uv/linux.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/node.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/v8.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/v8-version.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/v8config.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/v8-platform.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/node_version.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/node_buffer.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/node.h:
/home/jhon/.cache/node-gyp/10.21.0/include/node/node_object_wrap.h:
../node_modules/nan/nan_callbacks.h:
../node_modules/nan/nan_callbacks_12_inl.h:
../node_modules/nan/nan_maybe_43_inl.h:
../node_modules/nan/nan_converters.h:
../node_modules/nan/nan_converters_43_inl.h:
../node_modules/nan/nan_new.h:
../node_modules/nan/nan_implementation_12_inl.h:
../node_modules/nan/nan_persistent_12_inl.h:
../node_modules/nan/nan_weak.h:
../node_modules/nan/nan_object_wrap.h:
../node_modules/nan/nan_private.h:
../node_modules/nan/nan_typedarray_contents.h:
../node_modules/nan/nan_json.h:
../../prime4lib/exchange.h:
../../prime4lib/c_exchange.h:
../../prime4lib/prime_sieve.h:
/usr/include/mysql/mysql.h:
/usr/include/mysql/field_types.h:
/usr/include/mysql/my_list.h:
/usr/include/mysql/mysql_com.h:
/usr/include/mysql/my_command.h:
/usr/include/mysql/my_compress.h:
/usr/include/mysql/mysql/udf_registration_types.h:
/usr/include/mysql/mysql/client_plugin.h:
/usr/include/mysql/mysql/plugin_auth_common.h:
/usr/include/mysql/mysql_version.h:
/usr/include/mysql/mysql_time.h:
/usr/include/mysql/errmsg.h:
