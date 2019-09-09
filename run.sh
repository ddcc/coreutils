#!/bin/sh

timeout 5h ~/afl/afl-fuzz -i ~/lava_corpus/LAVA-M/base64/fuzzer_input/ -o base64_5hr/ ./bin/base64 -d @@
