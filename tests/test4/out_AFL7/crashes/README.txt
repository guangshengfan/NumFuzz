Command line used to find this crash:

/home/fgs/Desktop/FloatFuzz/tool/NumFuzz/build/bin/afl-fuzz -i /home/fgs/Desktop/FloatFuzz/tests/test4/in -o /home/fgs/Desktop/FloatFuzz/tests/test4/out_AFL7 -m none -d -t 5000 -- /home/fgs/Desktop/FloatFuzz/tests/test4/testmain @@

If you can't reproduce a bug outside of afl-fuzz, be sure to set the same
memory limit. The limit used for this fuzzing session was 0 B.

Need a tool to minimize test cases before investigating the crashes or sending
them to a vendor? Check out the afl-tmin that comes with the fuzzer!

Found any cool bugs in open-source tools using afl-fuzz? If yes, please drop
me a mail at <lcamtuf@coredump.cx> once the issues are fixed - I'd love to
add your finds to the gallery at:

  http://lcamtuf.coredump.cx/afl/

Thanks :-)
