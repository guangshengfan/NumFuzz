; ModuleID = 'bessely2.c'
source_filename = "bessely2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bessely2.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y2_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%.15e\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"The Value of b is %f\0A\00", align 1
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32
@0 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@1 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@2 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@3 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@4 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@5 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@6 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@7 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@8 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@9 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@10 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@11 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@12 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@13 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@14 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@15 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@16 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@17 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@18 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@19 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@20 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@21 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@22 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@23 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@24 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@25 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@26 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@27 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@28 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@29 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@30 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@31 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@32 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@33 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@34 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@35 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@36 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@37 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@38 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@39 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@40 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@41 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@42 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@43 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@44 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@45 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@46 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@47 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@48 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@49 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@50 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@51 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@52 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@53 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@54 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@55 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@56 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@57 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@58 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@59 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@60 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@61 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@62 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@63 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@64 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@65 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@66 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@67 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@68 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@69 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@70 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@71 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@72 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@73 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@74 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@75 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@76 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@77 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@78 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@79 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@80 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@81 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@82 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@83 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@84 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@85 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@86 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@87 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@88 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@89 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@90 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@91 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@92 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@93 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@94 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@95 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@96 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@97 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@98 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@99 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@100 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@101 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@102 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@103 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@104 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@105 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@106 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@107 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@108 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@109 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@110 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@111 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@112 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@113 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@114 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@115 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@116 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@117 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@118 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@119 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@120 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@121 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@122 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@123 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@124 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@125 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@126 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@127 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@128 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@129 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@130 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@131 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@132 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@133 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@134 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@135 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@136 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@137 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@138 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@139 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@140 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@141 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@142 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@143 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@144 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@145 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@146 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@147 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@148 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@149 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@150 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@151 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@152 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@153 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@154 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@155 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@156 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@157 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@158 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@159 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@160 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@161 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@162 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@163 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@164 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@165 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@166 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@167 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@168 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@169 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@170 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@171 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@172 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@173 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@174 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@175 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@176 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@177 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@178 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@179 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@180 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@181 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@182 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@183 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@184 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@185 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@186 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@187 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@188 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@189 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@190 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@191 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@192 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@193 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@194 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@195 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@196 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@197 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@198 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@199 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@200 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@201 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@202 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@203 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@204 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@205 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@206 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@207 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@208 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@209 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@210 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@211 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@212 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@213 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@214 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@215 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@216 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@217 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@218 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@219 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@220 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@221 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@222 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@223 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@224 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@225 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@226 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@227 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@228 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@229 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@230 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@231 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@232 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@233 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@234 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@235 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@236 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@237 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@238 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@239 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@240 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@241 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@242 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@243 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@244 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@245 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@246 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@247 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@248 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@249 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@250 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@251 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@252 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@253 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@254 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@255 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@256 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@257 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@258 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@259 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@260 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@261 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@262 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@263 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@264 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@265 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@266 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@267 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@268 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@269 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@270 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@271 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@272 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@273 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"
@274 = private unnamed_addr constant [11 x i8] c"bessely2.c\00"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @gsl_sf_bessel_y2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !58
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !58
  %5 = xor i32 %3, 36980
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !58
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !58
  store i32 18490, i32* @__afl_prev_loc, !nosanitize !58
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  store double %0, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !59, metadata !DIExpression()), !dbg !60
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !61, metadata !DIExpression()), !dbg !62
  %28 = load double, double* %10, align 8, !dbg !63
  %29 = fcmp ole double %28, 0.000000e+00, !dbg !65
  br i1 %29, label %30, label %69, !dbg !66

; <label>:30:                                     ; preds = %2
  %31 = load i32, i32* @__afl_prev_loc, !dbg !67, !nosanitize !58
  %32 = load i8*, i8** @__afl_area_ptr, !dbg !67, !nosanitize !58
  %33 = xor i32 %31, 2973, !dbg !67
  %34 = getelementptr i8, i8* %32, i32 %33, !dbg !67
  %35 = load i8, i8* %34, !dbg !67, !nosanitize !58
  %36 = add i8 %35, 1, !dbg !67
  store i8 %36, i8* %34, !dbg !67, !nosanitize !58
  store i32 1486, i32* @__afl_prev_loc, !dbg !67, !nosanitize !58
  br label %37, !dbg !67, !llvm.loop !69

; <label>:37:                                     ; preds = %30
  %38 = load i32, i32* @__afl_prev_loc, !dbg !70, !nosanitize !58
  %39 = load i8*, i8** @__afl_area_ptr, !dbg !70, !nosanitize !58
  %40 = xor i32 %38, 36903, !dbg !70
  %41 = getelementptr i8, i8* %39, i32 %40, !dbg !70
  %42 = load i8, i8* %41, !dbg !70, !nosanitize !58
  %43 = add i8 %42, 1, !dbg !70
  store i8 %43, i8* %41, !dbg !70, !nosanitize !58
  store i32 18451, i32* @__afl_prev_loc, !dbg !70, !nosanitize !58
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !70
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !70
  store double 0x7FF8000000000000, double* %45, align 8, !dbg !70
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !70
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !70
  store double 0x7FF8000000000000, double* %47, align 8, !dbg !70
  br label %48, !dbg !70, !llvm.loop !72

; <label>:48:                                     ; preds = %37
  %49 = load i32, i32* @__afl_prev_loc, !dbg !73, !nosanitize !58
  %50 = load i8*, i8** @__afl_area_ptr, !dbg !73, !nosanitize !58
  %51 = xor i32 %49, 7576, !dbg !73
  %52 = getelementptr i8, i8* %50, i32 %51, !dbg !73
  %53 = load i8, i8* %52, !dbg !73, !nosanitize !58
  %54 = add i8 %53, 1, !dbg !73
  store i8 %54, i8* %52, !dbg !73, !nosanitize !58
  store i32 3788, i32* @__afl_prev_loc, !dbg !73, !nosanitize !58
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 44, i32 1), !dbg !73
  store i32 1, i32* %9, align 4, !dbg !73
  br label %294, !dbg !73
                                                  ; No predecessors!
  %56 = load i32, i32* @__afl_prev_loc, !dbg !70, !nosanitize !58
  %57 = load i8*, i8** @__afl_area_ptr, !dbg !70, !nosanitize !58
  %58 = xor i32 %56, 60161, !dbg !70
  %59 = getelementptr i8, i8* %57, i32 %58, !dbg !70
  %60 = load i8, i8* %59, !dbg !70, !nosanitize !58
  %61 = add i8 %60, 1, !dbg !70
  store i8 %61, i8* %59, !dbg !70, !nosanitize !58
  store i32 30080, i32* @__afl_prev_loc, !dbg !70, !nosanitize !58
  br label %62, !dbg !70

; <label>:62:                                     ; preds = %55
  %63 = load i32, i32* @__afl_prev_loc, !dbg !75, !nosanitize !58
  %64 = load i8*, i8** @__afl_area_ptr, !dbg !75, !nosanitize !58
  %65 = xor i32 %63, 44508, !dbg !75
  %66 = getelementptr i8, i8* %64, i32 %65, !dbg !75
  %67 = load i8, i8* %66, !dbg !75, !nosanitize !58
  %68 = add i8 %67, 1, !dbg !75
  store i8 %68, i8* %66, !dbg !75, !nosanitize !58
  store i32 22254, i32* @__afl_prev_loc, !dbg !75, !nosanitize !58
  br label %294, !dbg !75

; <label>:69:                                     ; preds = %2
  %70 = load i32, i32* @__afl_prev_loc, !dbg !76, !nosanitize !58
  %71 = load i8*, i8** @__afl_area_ptr, !dbg !76, !nosanitize !58
  %72 = xor i32 %70, 10385, !dbg !76
  %73 = getelementptr i8, i8* %71, i32 %72, !dbg !76
  %74 = load i8, i8* %73, !dbg !76, !nosanitize !58
  %75 = add i8 %74, 1, !dbg !76
  store i8 %75, i8* %73, !dbg !76, !nosanitize !58
  store i32 5192, i32* @__afl_prev_loc, !dbg !76, !nosanitize !58
  %76 = load double, double* %10, align 8, !dbg !76
  %77 = fcmp olt double %76, 0x2A9965FEA53D6E98, !dbg !78
  br i1 %77, label %78, label %117, !dbg !79

; <label>:78:                                     ; preds = %69
  %79 = load i32, i32* @__afl_prev_loc, !dbg !80, !nosanitize !58
  %80 = load i8*, i8** @__afl_area_ptr, !dbg !80, !nosanitize !58
  %81 = xor i32 %79, 32889, !dbg !80
  %82 = getelementptr i8, i8* %80, i32 %81, !dbg !80
  %83 = load i8, i8* %82, !dbg !80, !nosanitize !58
  %84 = add i8 %83, 1, !dbg !80
  store i8 %84, i8* %82, !dbg !80, !nosanitize !58
  store i32 16444, i32* @__afl_prev_loc, !dbg !80, !nosanitize !58
  br label %85, !dbg !80, !llvm.loop !82

; <label>:85:                                     ; preds = %78
  %86 = load i32, i32* @__afl_prev_loc, !dbg !83, !nosanitize !58
  %87 = load i8*, i8** @__afl_area_ptr, !dbg !83, !nosanitize !58
  %88 = xor i32 %86, 20896, !dbg !83
  %89 = getelementptr i8, i8* %87, i32 %88, !dbg !83
  %90 = load i8, i8* %89, !dbg !83, !nosanitize !58
  %91 = add i8 %90, 1, !dbg !83
  store i8 %91, i8* %89, !dbg !83, !nosanitize !58
  store i32 10448, i32* @__afl_prev_loc, !dbg !83, !nosanitize !58
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !83
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !83
  store double 0x7FF0000000000000, double* %93, align 8, !dbg !83
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !83
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !83
  store double 0x7FF0000000000000, double* %95, align 8, !dbg !83
  br label %96, !dbg !83, !llvm.loop !85

; <label>:96:                                     ; preds = %85
  %97 = load i32, i32* @__afl_prev_loc, !dbg !86, !nosanitize !58
  %98 = load i8*, i8** @__afl_area_ptr, !dbg !86, !nosanitize !58
  %99 = xor i32 %97, 30716, !dbg !86
  %100 = getelementptr i8, i8* %98, i32 %99, !dbg !86
  %101 = load i8, i8* %100, !dbg !86, !nosanitize !58
  %102 = add i8 %101, 1, !dbg !86
  store i8 %102, i8* %100, !dbg !86, !nosanitize !58
  store i32 15358, i32* @__afl_prev_loc, !dbg !86, !nosanitize !58
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 47, i32 16), !dbg !86
  store i32 16, i32* %9, align 4, !dbg !86
  br label %294, !dbg !86
                                                  ; No predecessors!
  %104 = load i32, i32* @__afl_prev_loc, !dbg !83, !nosanitize !58
  %105 = load i8*, i8** @__afl_area_ptr, !dbg !83, !nosanitize !58
  %106 = xor i32 %104, 41613, !dbg !83
  %107 = getelementptr i8, i8* %105, i32 %106, !dbg !83
  %108 = load i8, i8* %107, !dbg !83, !nosanitize !58
  %109 = add i8 %108, 1, !dbg !83
  store i8 %109, i8* %107, !dbg !83, !nosanitize !58
  store i32 20806, i32* @__afl_prev_loc, !dbg !83, !nosanitize !58
  br label %110, !dbg !83

; <label>:110:                                    ; preds = %103
  %111 = load i32, i32* @__afl_prev_loc, !dbg !88, !nosanitize !58
  %112 = load i8*, i8** @__afl_area_ptr, !dbg !88, !nosanitize !58
  %113 = xor i32 %111, 56979, !dbg !88
  %114 = getelementptr i8, i8* %112, i32 %113, !dbg !88
  %115 = load i8, i8* %114, !dbg !88, !nosanitize !58
  %116 = add i8 %115, 1, !dbg !88
  store i8 %116, i8* %114, !dbg !88, !nosanitize !58
  store i32 28489, i32* @__afl_prev_loc, !dbg !88, !nosanitize !58
  br label %287, !dbg !88

; <label>:117:                                    ; preds = %69
  %118 = load i32, i32* @__afl_prev_loc, !dbg !89, !nosanitize !58
  %119 = load i8*, i8** @__afl_area_ptr, !dbg !89, !nosanitize !58
  %120 = xor i32 %118, 36336, !dbg !89
  %121 = getelementptr i8, i8* %119, i32 %120, !dbg !89
  %122 = load i8, i8* %121, !dbg !89, !nosanitize !58
  %123 = add i8 %122, 1, !dbg !89
  store i8 %123, i8* %121, !dbg !89, !nosanitize !58
  store i32 18168, i32* @__afl_prev_loc, !dbg !89, !nosanitize !58
  %124 = load double, double* %10, align 8, !dbg !89
  %125 = fcmp olt double %124, 5.000000e-01, !dbg !91
  br i1 %125, label %126, label %174, !dbg !92

; <label>:126:                                    ; preds = %117
  %127 = load i32, i32* @__afl_prev_loc, !dbg !93, !nosanitize !58
  %128 = load i8*, i8** @__afl_area_ptr, !dbg !93, !nosanitize !58
  %129 = xor i32 %127, 7641, !dbg !93
  %130 = getelementptr i8, i8* %128, i32 %129, !dbg !93
  %131 = load i8, i8* %130, !dbg !93, !nosanitize !58
  %132 = add i8 %131, 1, !dbg !93
  store i8 %132, i8* %130, !dbg !93, !nosanitize !58
  store i32 3820, i32* @__afl_prev_loc, !dbg !93, !nosanitize !58
  call void @llvm.dbg.declare(metadata double* %12, metadata !95, metadata !DIExpression()), !dbg !93
  %133 = load double, double* %10, align 8, !dbg !96
  %134 = load double, double* %10, align 8, !dbg !97
  %135 = fmul double %133, %134, !dbg !98
  call void @DoubleErrBits(i32 129, double %135), !dbg !93
  call void @_show_Double(double %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @62, i32 0, i32 0), i32 50), !dbg !93
  store double %135, double* %12, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata double* %13, metadata !99, metadata !DIExpression()), !dbg !100
  store double 0x3FC5555555555555, double* %13, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata double* %14, metadata !101, metadata !DIExpression()), !dbg !102
  store double 0x3FA5555555555555, double* %14, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata double* %15, metadata !103, metadata !DIExpression()), !dbg !104
  store double 0xBF7C71C71C71C71C, double* %15, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata double* %16, metadata !105, metadata !DIExpression()), !dbg !106
  store double 0x3F32F684BDA12F68, double* %16, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata double* %17, metadata !107, metadata !DIExpression()), !dbg !108
  store double 0xBED845C8A0CE5129, double* %17, align 8, !dbg !108
  call void @llvm.dbg.declare(metadata double* %18, metadata !109, metadata !DIExpression()), !dbg !110
  store double 0x3E727E4FB7789F5C, double* %18, align 8, !dbg !110
  call void @llvm.dbg.declare(metadata double* %19, metadata !111, metadata !DIExpression()), !dbg !112
  store double 0xBE02C9758DAF5CD0, double* %19, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata double* %20, metadata !113, metadata !DIExpression()), !dbg !114
  %136 = load double, double* %12, align 8, !dbg !115
  %137 = load double, double* %12, align 8, !dbg !116
  %138 = load double, double* %12, align 8, !dbg !117
  %139 = load double, double* %12, align 8, !dbg !118
  %140 = load double, double* %12, align 8, !dbg !119
  %141 = load double, double* %12, align 8, !dbg !120
  %142 = load double, double* %12, align 8, !dbg !121
  %143 = fmul double %142, 0xBE02C9758DAF5CD0, !dbg !122
  call void @DoubleErrBits(i32 137, double %143), !dbg !123
  call void @_show_Double(double %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @86, i32 0, i32 0), i32 58), !dbg !123
  %144 = fadd double 0x3E727E4FB7789F5C, %143, !dbg !123
  call void @DoubleErrBits(i32 138, double %144), !dbg !124
  call void @_show_Double(double %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @87, i32 0, i32 0), i32 58), !dbg !124
  %145 = fmul double %141, %144, !dbg !124
  call void @DoubleErrBits(i32 139, double %145), !dbg !125
  call void @_show_Double(double %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @88, i32 0, i32 0), i32 58), !dbg !125
  %146 = fadd double 0xBED845C8A0CE5129, %145, !dbg !125
  call void @DoubleErrBits(i32 140, double %146), !dbg !126
  call void @_show_Double(double %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @89, i32 0, i32 0), i32 58), !dbg !126
  %147 = fmul double %140, %146, !dbg !126
  call void @DoubleErrBits(i32 141, double %147), !dbg !127
  call void @_show_Double(double %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @90, i32 0, i32 0), i32 58), !dbg !127
  %148 = fadd double 0x3F32F684BDA12F68, %147, !dbg !127
  call void @DoubleErrBits(i32 142, double %148), !dbg !128
  call void @_show_Double(double %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @91, i32 0, i32 0), i32 58), !dbg !128
  %149 = fmul double %139, %148, !dbg !128
  call void @DoubleErrBits(i32 143, double %149), !dbg !129
  call void @_show_Double(double %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @92, i32 0, i32 0), i32 58), !dbg !129
  %150 = fadd double 0xBF7C71C71C71C71C, %149, !dbg !129
  call void @DoubleErrBits(i32 144, double %150), !dbg !130
  call void @_show_Double(double %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @93, i32 0, i32 0), i32 58), !dbg !130
  %151 = fmul double %138, %150, !dbg !130
  call void @DoubleErrBits(i32 145, double %151), !dbg !131
  call void @_show_Double(double %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @94, i32 0, i32 0), i32 58), !dbg !131
  %152 = fadd double 0x3FA5555555555555, %151, !dbg !131
  call void @DoubleErrBits(i32 146, double %152), !dbg !132
  call void @_show_Double(double %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @95, i32 0, i32 0), i32 58), !dbg !132
  %153 = fmul double %137, %152, !dbg !132
  call void @DoubleErrBits(i32 147, double %153), !dbg !133
  call void @_show_Double(double %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @96, i32 0, i32 0), i32 58), !dbg !133
  %154 = fadd double 0x3FC5555555555555, %153, !dbg !133
  call void @DoubleErrBits(i32 148, double %154), !dbg !134
  call void @_show_Double(double %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @97, i32 0, i32 0), i32 58), !dbg !134
  %155 = fmul double %136, %154, !dbg !134
  call void @DoubleErrBits(i32 149, double %155), !dbg !135
  call void @_show_Double(double %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @98, i32 0, i32 0), i32 58), !dbg !135
  %156 = fadd double 1.000000e+00, %155, !dbg !135
  call void @DoubleErrBits(i32 150, double %156), !dbg !114
  call void @_show_Double(double %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @99, i32 0, i32 0), i32 58), !dbg !114
  store double %156, double* %20, align 8, !dbg !114
  %157 = load double, double* %10, align 8, !dbg !136
  %158 = load double, double* %10, align 8, !dbg !137
  %159 = fmul double %157, %158, !dbg !138
  call void @DoubleErrBits(i32 153, double %159), !dbg !139
  call void @_show_Double(double %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @103, i32 0, i32 0), i32 59), !dbg !139
  %160 = load double, double* %10, align 8, !dbg !139
  %161 = fmul double %159, %160, !dbg !140
  call void @DoubleErrBits(i32 155, double %161), !dbg !141
  call void @_show_Double(double %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @105, i32 0, i32 0), i32 59), !dbg !141
  %162 = fdiv double -3.000000e+00, %161, !dbg !141
  call void @DoubleDivErrBits(i32 156, double %161), !dbg !142
  call void @_show_DoubleDiv(double -3.000000e+00, double %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @106, i32 0, i32 0), i32 59), !dbg !142
  %163 = load double, double* %20, align 8, !dbg !142
  %164 = fmul double %162, %163, !dbg !143
  call void @DoubleErrBits(i32 158, double %164), !dbg !144
  call void @_show_Double(double %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @108, i32 0, i32 0), i32 59), !dbg !144
  %165 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !144
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %165, i32 0, i32 0, !dbg !145
  store double %164, double* %166, align 8, !dbg !146
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !147
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !148
  %169 = load double, double* %168, align 8, !dbg !148
  %170 = call double @llvm.fabs.f64(double %169), !dbg !149
  %171 = fmul double 0x3CB0000000000000, %170, !dbg !150
  call void @DoubleErrBits(i32 165, double %171), !dbg !151
  call void @_show_Double(double %171, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @116, i32 0, i32 0), i32 60), !dbg !151
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !151
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 1, !dbg !152
  store double %171, double* %173, align 8, !dbg !153
  store i32 0, i32* %9, align 4, !dbg !154
  br label %294, !dbg !154

; <label>:174:                                    ; preds = %117
  %175 = load i32, i32* @__afl_prev_loc, !dbg !155, !nosanitize !58
  %176 = load i8*, i8** @__afl_area_ptr, !dbg !155, !nosanitize !58
  %177 = xor i32 %175, 19610, !dbg !155
  %178 = getelementptr i8, i8* %176, i32 %177, !dbg !155
  %179 = load i8, i8* %178, !dbg !155, !nosanitize !58
  %180 = add i8 %179, 1, !dbg !155
  store i8 %180, i8* %178, !dbg !155, !nosanitize !58
  store i32 9805, i32* @__afl_prev_loc, !dbg !155, !nosanitize !58
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !157, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %23, metadata !160, metadata !DIExpression()), !dbg !162
  %181 = load double, double* %10, align 8, !dbg !163
  %182 = call i32 @gsl_sf_cos_e(double %181, %struct.gsl_sf_result_struct* %21), !dbg !164
  store i32 %182, i32* %23, align 4, !dbg !162
  call void @llvm.dbg.declare(metadata i32* %24, metadata !165, metadata !DIExpression()), !dbg !166
  %183 = load double, double* %10, align 8, !dbg !167
  %184 = call i32 @gsl_sf_sin_e(double %183, %struct.gsl_sf_result_struct* %22), !dbg !168
  store i32 %184, i32* %24, align 4, !dbg !166
  call void @llvm.dbg.declare(metadata double* %25, metadata !169, metadata !DIExpression()), !dbg !170
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !171
  %186 = load double, double* %185, align 8, !dbg !171
  store double %186, double* %25, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata double* %26, metadata !172, metadata !DIExpression()), !dbg !173
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !174
  %188 = load double, double* %187, align 8, !dbg !174
  store double %188, double* %26, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata double* %27, metadata !175, metadata !DIExpression()), !dbg !176
  %189 = load double, double* %10, align 8, !dbg !177
  %190 = load double, double* %10, align 8, !dbg !178
  %191 = fmul double %189, %190, !dbg !179
  call void @DoubleErrBits(i32 185, double %191), !dbg !180
  call void @_show_Double(double %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @143, i32 0, i32 0), i32 70), !dbg !180
  %192 = fdiv double 3.000000e+00, %191, !dbg !180
  call void @DoubleDivErrBits(i32 186, double %191), !dbg !176
  call void @_show_DoubleDiv(double 3.000000e+00, double %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @144, i32 0, i32 0), i32 70), !dbg !176
  store double %192, double* %27, align 8, !dbg !176
  %193 = load double, double* %27, align 8, !dbg !181
  %194 = fsub double 1.000000e+00, %193, !dbg !182
  call void @DoubleErrBits(i32 188, double %194), !dbg !183
  call void @_show_Double(double %194, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @147, i32 0, i32 0), i32 71), !dbg !183
  %195 = load double, double* %10, align 8, !dbg !183
  %196 = fdiv double %194, %195, !dbg !184
  call void @DoubleDivErrBits(i32 190, double %195), !dbg !185
  call void @_show_DoubleDiv(double %194, double %195, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @149, i32 0, i32 0), i32 71), !dbg !185
  %197 = load double, double* %26, align 8, !dbg !185
  %198 = fmul double %196, %197, !dbg !186
  call void @DoubleErrBits(i32 192, double %198), !dbg !187
  call void @_show_Double(double %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @151, i32 0, i32 0), i32 71), !dbg !187
  %199 = load double, double* %27, align 8, !dbg !187
  %200 = load double, double* %25, align 8, !dbg !188
  %201 = fmul double %199, %200, !dbg !189
  call void @DoubleErrBits(i32 195, double %201), !dbg !190
  call void @_show_Double(double %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @154, i32 0, i32 0), i32 71), !dbg !190
  %202 = fsub double %198, %201, !dbg !190
  call void @DoubleErrBits(i32 196, double %202), !dbg !191
  call void @_show_Double(double %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @155, i32 0, i32 0), i32 71), !dbg !191
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !191
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 0, !dbg !192
  store double %202, double* %204, align 8, !dbg !193
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !194
  %206 = load double, double* %205, align 8, !dbg !194
  %207 = load double, double* %27, align 8, !dbg !195
  %208 = fsub double 1.000000e+00, %207, !dbg !196
  call void @DoubleErrBits(i32 202, double %208), !dbg !197
  call void @_show_Double(double %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @162, i32 0, i32 0), i32 72), !dbg !197
  %209 = load double, double* %10, align 8, !dbg !197
  %210 = fdiv double %208, %209, !dbg !198
  call void @DoubleDivErrBits(i32 204, double %209), !dbg !199
  call void @_show_DoubleDiv(double %208, double %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @164, i32 0, i32 0), i32 72), !dbg !199
  %211 = call double @llvm.fabs.f64(double %210), !dbg !199
  %212 = fmul double %206, %211, !dbg !200
  call void @DoubleErrBits(i32 206, double %212), !dbg !201
  call void @_show_Double(double %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @166, i32 0, i32 0), i32 72), !dbg !201
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !201
  %214 = load double, double* %213, align 8, !dbg !201
  %215 = load double, double* %27, align 8, !dbg !202
  %216 = call double @llvm.fabs.f64(double %215), !dbg !203
  %217 = fmul double %214, %216, !dbg !204
  call void @DoubleErrBits(i32 211, double %217), !dbg !205
  call void @_show_Double(double %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @171, i32 0, i32 0), i32 72), !dbg !205
  %218 = fadd double %212, %217, !dbg !205
  call void @DoubleErrBits(i32 212, double %218), !dbg !206
  call void @_show_Double(double %218, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @172, i32 0, i32 0), i32 72), !dbg !206
  %219 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !206
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %219, i32 0, i32 1, !dbg !207
  store double %218, double* %220, align 8, !dbg !208
  %221 = load double, double* %26, align 8, !dbg !209
  %222 = load double, double* %10, align 8, !dbg !210
  %223 = fdiv double %221, %222, !dbg !211
  call void @DoubleDivErrBits(i32 217, double %222), !dbg !212
  call void @_show_DoubleDiv(double %221, double %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @178, i32 0, i32 0), i32 73), !dbg !212
  %224 = call double @llvm.fabs.f64(double %223), !dbg !212
  %225 = load double, double* %25, align 8, !dbg !213
  %226 = load double, double* %10, align 8, !dbg !214
  %227 = load double, double* %10, align 8, !dbg !215
  %228 = fmul double %226, %227, !dbg !216
  call void @DoubleErrBits(i32 222, double %228), !dbg !217
  call void @_show_Double(double %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @183, i32 0, i32 0), i32 73), !dbg !217
  %229 = fdiv double %225, %228, !dbg !217
  call void @DoubleDivErrBits(i32 223, double %228), !dbg !218
  call void @_show_DoubleDiv(double %225, double %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @184, i32 0, i32 0), i32 73), !dbg !218
  %230 = call double @llvm.fabs.f64(double %229), !dbg !218
  %231 = fadd double %224, %230, !dbg !219
  call void @DoubleErrBits(i32 225, double %231), !dbg !220
  call void @_show_Double(double %231, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @186, i32 0, i32 0), i32 73), !dbg !220
  %232 = fmul double 0x3CB0000000000000, %231, !dbg !220
  call void @DoubleErrBits(i32 226, double %232), !dbg !221
  call void @_show_Double(double %232, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @187, i32 0, i32 0), i32 73), !dbg !221
  %233 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !221
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %233, i32 0, i32 1, !dbg !222
  %235 = load double, double* %234, align 8, !dbg !223
  %236 = fadd double %235, %232, !dbg !223
  call void @DoubleErrBits(i32 230, double %236), !dbg !223
  call void @_show_Double(double %236, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @191, i32 0, i32 0), i32 73), !dbg !223
  store double %236, double* %234, align 8, !dbg !223
  %237 = load i32, i32* %23, align 4, !dbg !224
  %238 = icmp ne i32 %237, 0, !dbg !224
  br i1 %238, label %239, label %247, !dbg !224

; <label>:239:                                    ; preds = %174
  %240 = load i32, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  %241 = load i8*, i8** @__afl_area_ptr, !dbg !224, !nosanitize !58
  %242 = xor i32 %240, 55662, !dbg !224
  %243 = getelementptr i8, i8* %241, i32 %242, !dbg !224
  %244 = load i8, i8* %243, !dbg !224, !nosanitize !58
  %245 = add i8 %244, 1, !dbg !224
  store i8 %245, i8* %243, !dbg !224, !nosanitize !58
  store i32 27831, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  %246 = load i32, i32* %23, align 4, !dbg !224
  br label %279, !dbg !224

; <label>:247:                                    ; preds = %174
  %248 = load i32, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  %249 = load i8*, i8** @__afl_area_ptr, !dbg !224, !nosanitize !58
  %250 = xor i32 %248, 8984, !dbg !224
  %251 = getelementptr i8, i8* %249, i32 %250, !dbg !224
  %252 = load i8, i8* %251, !dbg !224, !nosanitize !58
  %253 = add i8 %252, 1, !dbg !224
  store i8 %253, i8* %251, !dbg !224, !nosanitize !58
  store i32 4492, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  %254 = load i32, i32* %24, align 4, !dbg !224
  %255 = icmp ne i32 %254, 0, !dbg !224
  br i1 %255, label %256, label %264, !dbg !224

; <label>:256:                                    ; preds = %247
  %257 = load i32, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  %258 = load i8*, i8** @__afl_area_ptr, !dbg !224, !nosanitize !58
  %259 = xor i32 %257, 61206, !dbg !224
  %260 = getelementptr i8, i8* %258, i32 %259, !dbg !224
  %261 = load i8, i8* %260, !dbg !224, !nosanitize !58
  %262 = add i8 %261, 1, !dbg !224
  store i8 %262, i8* %260, !dbg !224, !nosanitize !58
  store i32 30603, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  %263 = load i32, i32* %24, align 4, !dbg !224
  br label %271, !dbg !224

; <label>:264:                                    ; preds = %247
  %265 = load i32, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  %266 = load i8*, i8** @__afl_area_ptr, !dbg !224, !nosanitize !58
  %267 = xor i32 %265, 50520, !dbg !224
  %268 = getelementptr i8, i8* %266, i32 %267, !dbg !224
  %269 = load i8, i8* %268, !dbg !224, !nosanitize !58
  %270 = add i8 %269, 1, !dbg !224
  store i8 %270, i8* %268, !dbg !224, !nosanitize !58
  store i32 25260, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  br label %271, !dbg !224

; <label>:271:                                    ; preds = %264, %256
  %272 = phi i32 [ %263, %256 ], [ 0, %264 ], !dbg !224
  %273 = load i32, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  %274 = load i8*, i8** @__afl_area_ptr, !dbg !224, !nosanitize !58
  %275 = xor i32 %273, 5555, !dbg !224
  %276 = getelementptr i8, i8* %274, i32 %275, !dbg !224
  %277 = load i8, i8* %276, !dbg !224, !nosanitize !58
  %278 = add i8 %277, 1, !dbg !224
  store i8 %278, i8* %276, !dbg !224, !nosanitize !58
  store i32 2777, i32* @__afl_prev_loc, !dbg !224, !nosanitize !58
  br label %279, !dbg !224

; <label>:279:                                    ; preds = %271, %239
  %280 = phi i32 [ %246, %239 ], [ %272, %271 ], !dbg !224
  %281 = load i32, i32* @__afl_prev_loc, !dbg !225, !nosanitize !58
  %282 = load i8*, i8** @__afl_area_ptr, !dbg !225, !nosanitize !58
  %283 = xor i32 %281, 52056, !dbg !225
  %284 = getelementptr i8, i8* %282, i32 %283, !dbg !225
  %285 = load i8, i8* %284, !dbg !225, !nosanitize !58
  %286 = add i8 %285, 1, !dbg !225
  store i8 %286, i8* %284, !dbg !225, !nosanitize !58
  store i32 26028, i32* @__afl_prev_loc, !dbg !225, !nosanitize !58
  store i32 %280, i32* %9, align 4, !dbg !225
  br label %294, !dbg !225

; <label>:287:                                    ; preds = %110
  %288 = load i32, i32* @__afl_prev_loc, !nosanitize !58
  %289 = load i8*, i8** @__afl_area_ptr, !nosanitize !58
  %290 = xor i32 %288, 10036
  %291 = getelementptr i8, i8* %289, i32 %290
  %292 = load i8, i8* %291, !nosanitize !58
  %293 = add i8 %292, 1
  store i8 %293, i8* %291, !nosanitize !58
  store i32 5018, i32* @__afl_prev_loc, !nosanitize !58
  br label %294

; <label>:294:                                    ; preds = %48, %96, %126, %279, %287, %62
  %295 = load i32, i32* @__afl_prev_loc, !dbg !226, !nosanitize !58
  %296 = load i8*, i8** @__afl_area_ptr, !dbg !226, !nosanitize !58
  %297 = xor i32 %295, 32846, !dbg !226
  %298 = getelementptr i8, i8* %296, i32 %297, !dbg !226
  %299 = load i8, i8* %298, !dbg !226, !nosanitize !58
  %300 = add i8 %299, 1, !dbg !226
  store i8 %300, i8* %298, !dbg !226, !nosanitize !58
  store i32 16423, i32* @__afl_prev_loc, !dbg !226, !nosanitize !58
  %301 = load i32, i32* %9, align 4, !dbg !226
  ret i32 %301, !dbg !226
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #1

declare i32 @gsl_sf_cos_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_sin_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: noinline nounwind optnone uwtable
define double @gsl_sf_bessel_y2(double) #0 !dbg !227 {
  %2 = load i32, i32* @__afl_prev_loc, !nosanitize !58
  %3 = load i8*, i8** @__afl_area_ptr, !nosanitize !58
  %4 = xor i32 %2, 28552
  %5 = getelementptr i8, i8* %3, i32 %4
  %6 = load i8, i8* %5, !nosanitize !58
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, !nosanitize !58
  store i32 14276, i32* @__afl_prev_loc, !nosanitize !58
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %11, metadata !234, metadata !DIExpression()), !dbg !233
  %12 = load double, double* %9, align 8, !dbg !233
  %13 = call i32 @gsl_sf_bessel_y2_e(double %12, %struct.gsl_sf_result_struct* %10), !dbg !233
  store i32 %13, i32* %11, align 4, !dbg !233
  %14 = load i32, i32* %11, align 4, !dbg !235
  %15 = icmp ne i32 %14, 0, !dbg !235
  br i1 %15, label %16, label %40, !dbg !233

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* @__afl_prev_loc, !dbg !237, !nosanitize !58
  %18 = load i8*, i8** @__afl_area_ptr, !dbg !237, !nosanitize !58
  %19 = xor i32 %17, 30503, !dbg !237
  %20 = getelementptr i8, i8* %18, i32 %19, !dbg !237
  %21 = load i8, i8* %20, !dbg !237, !nosanitize !58
  %22 = add i8 %21, 1, !dbg !237
  store i8 %22, i8* %20, !dbg !237, !nosanitize !58
  store i32 15251, i32* @__afl_prev_loc, !dbg !237, !nosanitize !58
  br label %23, !dbg !237, !llvm.loop !239

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* @__afl_prev_loc, !dbg !240, !nosanitize !58
  %25 = load i8*, i8** @__afl_area_ptr, !dbg !240, !nosanitize !58
  %26 = xor i32 %24, 2381, !dbg !240
  %27 = getelementptr i8, i8* %25, i32 %26, !dbg !240
  %28 = load i8, i8* %27, !dbg !240, !nosanitize !58
  %29 = add i8 %28, 1, !dbg !240
  store i8 %29, i8* %27, !dbg !240, !nosanitize !58
  store i32 1190, i32* @__afl_prev_loc, !dbg !240, !nosanitize !58
  %30 = load i32, i32* %11, align 4, !dbg !240
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 86, i32 %30), !dbg !240
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !240
  %32 = load double, double* %31, align 8, !dbg !240
  store double %32, double* %8, align 8, !dbg !240
  br label %49, !dbg !240
                                                  ; No predecessors!
  %34 = load i32, i32* @__afl_prev_loc, !dbg !237, !nosanitize !58
  %35 = load i8*, i8** @__afl_area_ptr, !dbg !237, !nosanitize !58
  %36 = xor i32 %34, 2931, !dbg !237
  %37 = getelementptr i8, i8* %35, i32 %36, !dbg !237
  %38 = load i8, i8* %37, !dbg !237, !nosanitize !58
  %39 = add i8 %38, 1, !dbg !237
  store i8 %39, i8* %37, !dbg !237, !nosanitize !58
  store i32 1465, i32* @__afl_prev_loc, !dbg !237, !nosanitize !58
  br label %40, !dbg !237

; <label>:40:                                     ; preds = %33, %1
  %41 = load i32, i32* @__afl_prev_loc, !dbg !233, !nosanitize !58
  %42 = load i8*, i8** @__afl_area_ptr, !dbg !233, !nosanitize !58
  %43 = xor i32 %41, 11101, !dbg !233
  %44 = getelementptr i8, i8* %42, i32 %43, !dbg !233
  %45 = load i8, i8* %44, !dbg !233, !nosanitize !58
  %46 = add i8 %45, 1, !dbg !233
  store i8 %46, i8* %44, !dbg !233, !nosanitize !58
  store i32 5550, i32* @__afl_prev_loc, !dbg !233, !nosanitize !58
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !233
  %48 = load double, double* %47, align 8, !dbg !233
  store double %48, double* %8, align 8, !dbg !233
  br label %49, !dbg !233

; <label>:49:                                     ; preds = %40, %23
  %50 = load i32, i32* @__afl_prev_loc, !dbg !242, !nosanitize !58
  %51 = load i8*, i8** @__afl_area_ptr, !dbg !242, !nosanitize !58
  %52 = xor i32 %50, 49893, !dbg !242
  %53 = getelementptr i8, i8* %51, i32 %52, !dbg !242
  %54 = load i8, i8* %53, !dbg !242, !nosanitize !58
  %55 = add i8 %54, 1, !dbg !242
  store i8 %55, i8* %53, !dbg !242, !nosanitize !58
  store i32 24946, i32* @__afl_prev_loc, !dbg !242, !nosanitize !58
  %56 = load double, double* %8, align 8, !dbg !242
  ret double %56, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 !dbg !243 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !58
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !58
  %5 = xor i32 %3, 38825
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !58
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !58
  store i32 19412, i32* @__afl_prev_loc, !nosanitize !58
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %9, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !249, metadata !DIExpression()), !dbg !250
  store i8** %1, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata double* %12, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata double* %13, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !257, metadata !DIExpression()), !dbg !318
  store %struct._IO_FILE* null, %struct._IO_FILE** %14, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata i8** %15, metadata !319, metadata !DIExpression()), !dbg !322
  %16 = load i8**, i8*** %11, align 8, !dbg !323
  %17 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !323
  %18 = load i8*, i8** %17, align 8, !dbg !323
  store i8* %18, i8** %15, align 8, !dbg !322
  %19 = load i8*, i8** %15, align 8, !dbg !324
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !325
  store %struct._IO_FILE* %20, %struct._IO_FILE** %14, align 8, !dbg !326
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !327
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), double* %12), !dbg !328
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !329
  %24 = call i32 @fclose(%struct._IO_FILE* %23), !dbg !330
  %25 = load double, double* %12, align 8, !dbg !331
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), double %25), !dbg !332
  %27 = load double, double* %12, align 8, !dbg !333
  %28 = call double @gsl_sf_bessel_y2(double %27), !dbg !334
  store double %28, double* %13, align 8, !dbg !335
  %29 = load double, double* %13, align 8, !dbg !336
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), double %29), !dbg !337
  ret i32 0, !dbg !338
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @printf(i8*, ...) #2

declare void @_show_Float(float)

declare void @_show_Double(double, i8*, i32)

declare void @_show_FloatDiv(float, float)

declare void @_show_DoubleDiv(double, double, i8*, i32)

declare void @DoubleErrBits(i32, double)

declare void @DoubleDivErrBits(i32, double)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "bessely2.c", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_bessel_y2")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 39, size: 32, elements: !5)
!4 = !DIFile(filename: "/usr/local/include/gsl/gsl_errno.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_bessel_y2")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!6 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!8 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!9 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!10 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!11 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!12 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!13 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!14 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!15 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!16 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!17 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!18 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!19 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!20 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!21 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!22 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!23 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!24 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!25 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!26 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!27 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!28 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!29 = !DIEnumerator(name: "GSL_ESING", value: 21)
!30 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!31 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!32 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!33 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!34 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!35 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!36 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!37 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!38 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!39 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!40 = !DIEnumerator(name: "GSL_EOF", value: 32)
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!45 = distinct !DISubprogram(name: "gsl_sf_bessel_y2_e", scope: !1, file: !1, line: 39, type: !46, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !51}
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "/usr/local/include/gsl/gsl_sf_result.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_bessel_y2")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !50, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !50, size: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 39, type: !49)
!60 = !DILocation(line: 39, column: 37, scope: !45)
!61 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 39, type: !51)
!62 = !DILocation(line: 39, column: 56, scope: !45)
!63 = !DILocation(line: 43, column: 6, scope: !64)
!64 = distinct !DILexicalBlock(scope: !45, file: !1, line: 43, column: 6)
!65 = !DILocation(line: 43, column: 8, scope: !64)
!66 = !DILocation(line: 43, column: 6, scope: !45)
!67 = !DILocation(line: 44, column: 5, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 43, column: 16)
!69 = distinct !{!69, !67, !67}
!70 = !DILocation(line: 44, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 44, column: 5)
!72 = distinct !{!72, !70, !70}
!73 = !DILocation(line: 44, column: 5, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 44, column: 5)
!75 = !DILocation(line: 45, column: 3, scope: !68)
!76 = !DILocation(line: 46, column: 11, scope: !77)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 46, column: 11)
!78 = !DILocation(line: 46, column: 13, scope: !77)
!79 = !DILocation(line: 46, column: 11, scope: !64)
!80 = !DILocation(line: 47, column: 5, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 46, column: 38)
!82 = distinct !{!82, !80, !80}
!83 = !DILocation(line: 47, column: 5, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 47, column: 5)
!85 = distinct !{!85, !83, !83}
!86 = !DILocation(line: 47, column: 5, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 47, column: 5)
!88 = !DILocation(line: 48, column: 3, scope: !81)
!89 = !DILocation(line: 49, column: 11, scope: !90)
!90 = distinct !DILexicalBlock(scope: !77, file: !1, line: 49, column: 11)
!91 = !DILocation(line: 49, column: 13, scope: !90)
!92 = !DILocation(line: 49, column: 11, scope: !77)
!93 = !DILocation(line: 50, column: 18, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 49, column: 20)
!95 = !DILocalVariable(name: "y", scope: !94, file: !1, line: 50, type: !49)
!96 = !DILocation(line: 50, column: 22, scope: !94)
!97 = !DILocation(line: 50, column: 24, scope: !94)
!98 = !DILocation(line: 50, column: 23, scope: !94)
!99 = !DILocalVariable(name: "c1", scope: !94, file: !1, line: 51, type: !49)
!100 = !DILocation(line: 51, column: 18, scope: !94)
!101 = !DILocalVariable(name: "c2", scope: !94, file: !1, line: 52, type: !49)
!102 = !DILocation(line: 52, column: 18, scope: !94)
!103 = !DILocalVariable(name: "c3", scope: !94, file: !1, line: 53, type: !49)
!104 = !DILocation(line: 53, column: 18, scope: !94)
!105 = !DILocalVariable(name: "c4", scope: !94, file: !1, line: 54, type: !49)
!106 = !DILocation(line: 54, column: 18, scope: !94)
!107 = !DILocalVariable(name: "c5", scope: !94, file: !1, line: 55, type: !49)
!108 = !DILocation(line: 55, column: 18, scope: !94)
!109 = !DILocalVariable(name: "c6", scope: !94, file: !1, line: 56, type: !49)
!110 = !DILocation(line: 56, column: 18, scope: !94)
!111 = !DILocalVariable(name: "c7", scope: !94, file: !1, line: 57, type: !49)
!112 = !DILocation(line: 57, column: 18, scope: !94)
!113 = !DILocalVariable(name: "sum", scope: !94, file: !1, line: 58, type: !49)
!114 = !DILocation(line: 58, column: 18, scope: !94)
!115 = !DILocation(line: 58, column: 30, scope: !94)
!116 = !DILocation(line: 58, column: 38, scope: !94)
!117 = !DILocation(line: 58, column: 46, scope: !94)
!118 = !DILocation(line: 58, column: 54, scope: !94)
!119 = !DILocation(line: 58, column: 62, scope: !94)
!120 = !DILocation(line: 58, column: 70, scope: !94)
!121 = !DILocation(line: 58, column: 78, scope: !94)
!122 = !DILocation(line: 58, column: 79, scope: !94)
!123 = !DILocation(line: 58, column: 76, scope: !94)
!124 = !DILocation(line: 58, column: 71, scope: !94)
!125 = !DILocation(line: 58, column: 68, scope: !94)
!126 = !DILocation(line: 58, column: 63, scope: !94)
!127 = !DILocation(line: 58, column: 60, scope: !94)
!128 = !DILocation(line: 58, column: 55, scope: !94)
!129 = !DILocation(line: 58, column: 52, scope: !94)
!130 = !DILocation(line: 58, column: 47, scope: !94)
!131 = !DILocation(line: 58, column: 44, scope: !94)
!132 = !DILocation(line: 58, column: 39, scope: !94)
!133 = !DILocation(line: 58, column: 36, scope: !94)
!134 = !DILocation(line: 58, column: 31, scope: !94)
!135 = !DILocation(line: 58, column: 28, scope: !94)
!136 = !DILocation(line: 59, column: 25, scope: !94)
!137 = !DILocation(line: 59, column: 27, scope: !94)
!138 = !DILocation(line: 59, column: 26, scope: !94)
!139 = !DILocation(line: 59, column: 29, scope: !94)
!140 = !DILocation(line: 59, column: 28, scope: !94)
!141 = !DILocation(line: 59, column: 23, scope: !94)
!142 = !DILocation(line: 59, column: 34, scope: !94)
!143 = !DILocation(line: 59, column: 32, scope: !94)
!144 = !DILocation(line: 59, column: 5, scope: !94)
!145 = !DILocation(line: 59, column: 13, scope: !94)
!146 = !DILocation(line: 59, column: 17, scope: !94)
!147 = !DILocation(line: 60, column: 42, scope: !94)
!148 = !DILocation(line: 60, column: 50, scope: !94)
!149 = !DILocation(line: 60, column: 37, scope: !94)
!150 = !DILocation(line: 60, column: 35, scope: !94)
!151 = !DILocation(line: 60, column: 5, scope: !94)
!152 = !DILocation(line: 60, column: 13, scope: !94)
!153 = !DILocation(line: 60, column: 17, scope: !94)
!154 = !DILocation(line: 61, column: 5, scope: !94)
!155 = !DILocation(line: 64, column: 19, scope: !156)
!156 = distinct !DILexicalBlock(scope: !90, file: !1, line: 63, column: 8)
!157 = !DILocalVariable(name: "cos_result", scope: !156, file: !1, line: 64, type: !52)
!158 = !DILocalVariable(name: "sin_result", scope: !156, file: !1, line: 65, type: !52)
!159 = !DILocation(line: 65, column: 19, scope: !156)
!160 = !DILocalVariable(name: "stat_cos", scope: !156, file: !1, line: 66, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!162 = !DILocation(line: 66, column: 15, scope: !156)
!163 = !DILocation(line: 66, column: 39, scope: !156)
!164 = !DILocation(line: 66, column: 26, scope: !156)
!165 = !DILocalVariable(name: "stat_sin", scope: !156, file: !1, line: 67, type: !161)
!166 = !DILocation(line: 67, column: 15, scope: !156)
!167 = !DILocation(line: 67, column: 39, scope: !156)
!168 = !DILocation(line: 67, column: 26, scope: !156)
!169 = !DILocalVariable(name: "sx", scope: !156, file: !1, line: 68, type: !49)
!170 = !DILocation(line: 68, column: 18, scope: !156)
!171 = !DILocation(line: 68, column: 34, scope: !156)
!172 = !DILocalVariable(name: "cx", scope: !156, file: !1, line: 69, type: !49)
!173 = !DILocation(line: 69, column: 18, scope: !156)
!174 = !DILocation(line: 69, column: 34, scope: !156)
!175 = !DILocalVariable(name: "a", scope: !156, file: !1, line: 70, type: !49)
!176 = !DILocation(line: 70, column: 18, scope: !156)
!177 = !DILocation(line: 70, column: 28, scope: !156)
!178 = !DILocation(line: 70, column: 30, scope: !156)
!179 = !DILocation(line: 70, column: 29, scope: !156)
!180 = !DILocation(line: 70, column: 26, scope: !156)
!181 = !DILocation(line: 71, column: 27, scope: !156)
!182 = !DILocation(line: 71, column: 25, scope: !156)
!183 = !DILocation(line: 71, column: 30, scope: !156)
!184 = !DILocation(line: 71, column: 29, scope: !156)
!185 = !DILocation(line: 71, column: 34, scope: !156)
!186 = !DILocation(line: 71, column: 32, scope: !156)
!187 = !DILocation(line: 71, column: 39, scope: !156)
!188 = !DILocation(line: 71, column: 43, scope: !156)
!189 = !DILocation(line: 71, column: 41, scope: !156)
!190 = !DILocation(line: 71, column: 37, scope: !156)
!191 = !DILocation(line: 71, column: 5, scope: !156)
!192 = !DILocation(line: 71, column: 13, scope: !156)
!193 = !DILocation(line: 71, column: 18, scope: !156)
!194 = !DILocation(line: 72, column: 31, scope: !156)
!195 = !DILocation(line: 72, column: 49, scope: !156)
!196 = !DILocation(line: 72, column: 47, scope: !156)
!197 = !DILocation(line: 72, column: 52, scope: !156)
!198 = !DILocation(line: 72, column: 51, scope: !156)
!199 = !DILocation(line: 72, column: 37, scope: !156)
!200 = !DILocation(line: 72, column: 35, scope: !156)
!201 = !DILocation(line: 72, column: 68, scope: !156)
!202 = !DILocation(line: 72, column: 79, scope: !156)
!203 = !DILocation(line: 72, column: 74, scope: !156)
!204 = !DILocation(line: 72, column: 72, scope: !156)
!205 = !DILocation(line: 72, column: 55, scope: !156)
!206 = !DILocation(line: 72, column: 5, scope: !156)
!207 = !DILocation(line: 72, column: 13, scope: !156)
!208 = !DILocation(line: 72, column: 18, scope: !156)
!209 = !DILocation(line: 73, column: 44, scope: !156)
!210 = !DILocation(line: 73, column: 47, scope: !156)
!211 = !DILocation(line: 73, column: 46, scope: !156)
!212 = !DILocation(line: 73, column: 39, scope: !156)
!213 = !DILocation(line: 73, column: 57, scope: !156)
!214 = !DILocation(line: 73, column: 61, scope: !156)
!215 = !DILocation(line: 73, column: 63, scope: !156)
!216 = !DILocation(line: 73, column: 62, scope: !156)
!217 = !DILocation(line: 73, column: 59, scope: !156)
!218 = !DILocation(line: 73, column: 52, scope: !156)
!219 = !DILocation(line: 73, column: 50, scope: !156)
!220 = !DILocation(line: 73, column: 36, scope: !156)
!221 = !DILocation(line: 73, column: 5, scope: !156)
!222 = !DILocation(line: 73, column: 13, scope: !156)
!223 = !DILocation(line: 73, column: 17, scope: !156)
!224 = !DILocation(line: 74, column: 12, scope: !156)
!225 = !DILocation(line: 74, column: 5, scope: !156)
!226 = !DILocation(line: 76, column: 1, scope: !45)
!227 = distinct !DISubprogram(name: "gsl_sf_bessel_y2", scope: !1, file: !1, line: 84, type: !228, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!228 = !DISubroutineType(types: !229)
!229 = !{!50, !49}
!230 = !DILocalVariable(name: "x", arg: 1, scope: !227, file: !1, line: 84, type: !49)
!231 = !DILocation(line: 84, column: 38, scope: !227)
!232 = !DILocalVariable(name: "result", scope: !227, file: !1, line: 86, type: !52)
!233 = !DILocation(line: 86, column: 3, scope: !227)
!234 = !DILocalVariable(name: "status", scope: !227, file: !1, line: 86, type: !48)
!235 = !DILocation(line: 86, column: 3, scope: !236)
!236 = distinct !DILexicalBlock(scope: !227, file: !1, line: 86, column: 3)
!237 = !DILocation(line: 86, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !1, line: 86, column: 3)
!239 = distinct !{!239, !237, !237}
!240 = !DILocation(line: 86, column: 3, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !1, line: 86, column: 3)
!242 = !DILocation(line: 87, column: 1, scope: !227)
!243 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 89, type: !244, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!244 = !DISubroutineType(types: !245)
!245 = !{!48, !48, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!249 = !DILocalVariable(name: "argc", arg: 1, scope: !243, file: !1, line: 89, type: !48)
!250 = !DILocation(line: 89, column: 14, scope: !243)
!251 = !DILocalVariable(name: "argv", arg: 2, scope: !243, file: !1, line: 89, type: !246)
!252 = !DILocation(line: 89, column: 27, scope: !243)
!253 = !DILocalVariable(name: "a", scope: !243, file: !1, line: 91, type: !50)
!254 = !DILocation(line: 91, column: 12, scope: !243)
!255 = !DILocalVariable(name: "b", scope: !243, file: !1, line: 91, type: !50)
!256 = !DILocation(line: 91, column: 15, scope: !243)
!257 = !DILocalVariable(name: "fp", scope: !243, file: !1, line: 92, type: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 7, baseType: !261)
!260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_bessel_y2")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !262, line: 49, size: 1728, elements: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_bessel_y2")
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !279, !281, !282, !283, !287, !289, !291, !295, !298, !300, !303, !306, !307, !309, !313, !314}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !261, file: !262, line: 51, baseType: !48, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !261, file: !262, line: 54, baseType: !247, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !261, file: !262, line: 55, baseType: !247, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !261, file: !262, line: 56, baseType: !247, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !261, file: !262, line: 57, baseType: !247, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !261, file: !262, line: 58, baseType: !247, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !261, file: !262, line: 59, baseType: !247, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !261, file: !262, line: 60, baseType: !247, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !261, file: !262, line: 61, baseType: !247, size: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !261, file: !262, line: 64, baseType: !247, size: 64, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !261, file: !262, line: 65, baseType: !247, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !261, file: !262, line: 66, baseType: !247, size: 64, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !261, file: !262, line: 68, baseType: !277, size: 64, offset: 768)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !262, line: 36, flags: DIFlagFwdDecl)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !261, file: !262, line: 70, baseType: !280, size: 64, offset: 832)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !261, file: !262, line: 72, baseType: !48, size: 32, offset: 896)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !261, file: !262, line: 73, baseType: !48, size: 32, offset: 928)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !261, file: !262, line: 74, baseType: !284, size: 64, offset: 960)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !285, line: 152, baseType: !286)
!285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_bessel_y2")
!286 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !261, file: !262, line: 77, baseType: !288, size: 16, offset: 1024)
!288 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !261, file: !262, line: 78, baseType: !290, size: 8, offset: 1040)
!290 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !261, file: !262, line: 79, baseType: !292, size: 8, offset: 1048)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 8, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 1)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !261, file: !262, line: 81, baseType: !296, size: 64, offset: 1088)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !262, line: 43, baseType: null)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !261, file: !262, line: 89, baseType: !299, size: 64, offset: 1152)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !285, line: 153, baseType: !286)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !261, file: !262, line: 91, baseType: !301, size: 64, offset: 1216)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !262, line: 37, flags: DIFlagFwdDecl)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !261, file: !262, line: 92, baseType: !304, size: 64, offset: 1280)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !262, line: 38, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !261, file: !262, line: 93, baseType: !280, size: 64, offset: 1344)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !261, file: !262, line: 94, baseType: !308, size: 64, offset: 1408)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !261, file: !262, line: 95, baseType: !310, size: 64, offset: 1472)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !311, line: 62, baseType: !312)
!311 = !DIFile(filename: "/home/savcuda/Desktop/FloatFuz/clang+llvm/lib/clang/6.0.1/include/stddef.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_bessel_y2")
!312 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !261, file: !262, line: 96, baseType: !48, size: 32, offset: 1536)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !261, file: !262, line: 98, baseType: !315, size: 160, offset: 1568)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 160, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 20)
!318 = !DILocation(line: 92, column: 11, scope: !243)
!319 = !DILocalVariable(name: "filename", scope: !243, file: !1, line: 93, type: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!322 = !DILocation(line: 93, column: 17, scope: !243)
!323 = !DILocation(line: 93, column: 28, scope: !243)
!324 = !DILocation(line: 94, column: 16, scope: !243)
!325 = !DILocation(line: 94, column: 10, scope: !243)
!326 = !DILocation(line: 94, column: 8, scope: !243)
!327 = !DILocation(line: 95, column: 12, scope: !243)
!328 = !DILocation(line: 95, column: 5, scope: !243)
!329 = !DILocation(line: 96, column: 12, scope: !243)
!330 = !DILocation(line: 96, column: 5, scope: !243)
!331 = !DILocation(line: 98, column: 24, scope: !243)
!332 = !DILocation(line: 98, column: 5, scope: !243)
!333 = !DILocation(line: 100, column: 26, scope: !243)
!334 = !DILocation(line: 100, column: 9, scope: !243)
!335 = !DILocation(line: 100, column: 7, scope: !243)
!336 = !DILocation(line: 103, column: 39, scope: !243)
!337 = !DILocation(line: 103, column: 5, scope: !243)
!338 = !DILocation(line: 105, column: 5, scope: !243)
