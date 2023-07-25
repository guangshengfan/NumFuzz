Command line used to find this crash:

/home/savcuda/Desktop/FloatFuz/benchmark/../tool/AFL-2.52b/build/bin/afl-fuzz -i /home/savcuda/Desktop/FloatFuz/benchmark/FUZZ/fdlibm/in -o /home/savcuda/Desktop/FloatFuz/benchmark/FUZZ/fdlibm/out_AFL2 -m none -t 5000 -- /home/savcuda/Desktop/FloatFuz/benchmark/FUZZ/fdlibm/e_acos @@

If you can't reproduce a bug outside of afl-fuzz, be sure to set the same
memory limit. The limit used for this fuzzing session was 0 B.

Need a tool to minimize test cases before investigating the crashes or sending
them to a vendor? Check out the afl-tmin that comes with the fuzzer!

Found any cool bugs in open-source tools using afl-fuzz? If yes, please drop
me a mail at <lcamtuf@coredump.cx> once the issues are fixed - I'd love to
add your finds to the gallery at:

  http://lcamtuf.coredump.cx/afl/

Thanks :-)
