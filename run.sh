#!/bin/sh

timeout 5h ~/afl/afl-fuzz -i ~/lava_corpus/LAVA-M/uniq/fuzzer_input/ -o uniq_5hr/ ./bin/uniq @@
