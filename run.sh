#!/bin/sh

timeout 5h ~/afl/afl-fuzz -i ~/lava_corpus/LAVA-M/who/fuzzer_input/ -o who_5hr/ ./bin/who @@
