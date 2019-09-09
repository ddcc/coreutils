#!/bin/sh

timeout 5h ~/afl/afl-fuzz -i ~/lava_corpus/LAVA-M/md5sum/fuzzer_input/ -o md5sum_5hr/ ./bin/md5sum -c @@
