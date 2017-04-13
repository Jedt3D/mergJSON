all-linux: mergJSON-x86.so mergJSON-x64.so

mergJSON-x86.so: mergJSON/mergJSON.c mergJSON/external.h mergJSON/external.c mergJSON/jansson/src/dump.c mergJSON/jansson/src/error.c mergJSON/jansson/src/hashtable.c mergJSON/jansson/src/load.c mergJSON/jansson/src/memory.c mergJSON/jansson/src/pack_unpack.c mergJSON/jansson/src/strbuffer.c mergJSON/jansson/src/strconv.c mergJSON/jansson/src/utf.c mergJSON/jansson/src/value.c
	gcc -m32 -O -I mergJSON -I mergJSON/jansson/src -L.-D_LINUX -D_RELEASE -DNDEBUG -DRELEASE -Xlinker -no-undefined -fno-exceptions -Wl,-Bstatic -Wl,-Bdynamic -static -shared mergJSON/mergJSON.c mergJSON/external.c mergJSON/jansson/src/dump.c mergJSON/jansson/src/error.c mergJSON/jansson/src/hashtable.c mergJSON/jansson/src/load.c mergJSON/jansson/src/memory.c mergJSON/jansson/src/pack_unpack.c mergJSON/jansson/src/strbuffer.c mergJSON/jansson/src/strconv.c mergJSON/jansson/src/utf.c mergJSON/jansson/src/value.c -o build/mergJSON-x86.so

mergJSON-x64.so: mergJSON/mergJSON.c mergJSON/external.h mergJSON/external.c mergJSON/jansson/src/dump.c mergJSON/jansson/src/error.c mergJSON/jansson/src/hashtable.c mergJSON/jansson/src/load.c mergJSON/jansson/src/memory.c mergJSON/jansson/src/pack_unpack.c mergJSON/jansson/src/strbuffer.c mergJSON/jansson/src/strconv.c mergJSON/jansson/src/utf.c mergJSON/jansson/src/value.c
	gcc -fPIC -m64 -O -I mergJSON -I mergJSON/jansson/src -L.-D_LINUX -D_RELEASE -DNDEBUG -DRELEASE -Xlinker -no-undefined -fno-exceptions -Wl,-Bstatic -Wl,-Bdynamic -shared mergJSON/mergJSON.c mergJSON/external.c mergJSON/jansson/src/dump.c mergJSON/jansson/src/error.c mergJSON/jansson/src/hashtable.c mergJSON/jansson/src/load.c mergJSON/jansson/src/memory.c mergJSON/jansson/src/pack_unpack.c mergJSON/jansson/src/strbuffer.c mergJSON/jansson/src/strconv.c mergJSON/jansson/src/utf.c mergJSON/jansson/src/value.c -o build/mergJSON-x64.so