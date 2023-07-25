; ModuleID = 'sin.c'
source_filename = "sin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@sin_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([12 x double], [12 x double]* @sin_data, i32 0, i32 0), i32 11, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8, !dbg !0
@cos_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([11 x double], [11 x double]* @cos_data, i32 0, i32 0), i32 10, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8, !dbg !50
@.str = private unnamed_addr constant [25 x i8] c"gsl_sf_sin_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sin.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%.15e\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"The Value of b is %f\0A\00", align 1
@sin_data = internal global [12 x double] [double 0xBFD516D6ED5A909E, double 0x3F64C95F8909975F, double 0x3F4484E2F770F8F9, double 0xBED3806BE0E5860C, double 0xBEA3192DC15885EE, double 0x3E30035896CBFD12, double 0x3DF4CCB1745F7AEF, double 0xBD7E9CA84CF05BCA, double 0xBD3DB5727EAFF830, double 0x3CC359222F7327B9, double 0x3C7DF529F4EE609B, double 0xBC01720EAB8B78D9], align 16, !dbg !44
@cos_data = internal global [11 x double] [double 0x3FC52B8F3111FF6A, double 0xBF4BCDF9CE308462, double 0xBF2B89555B0F99C2, double 0x3EB38F2B9C42CF35, double 0x3E833C6A8FD9C1B5, double 0xBE09B0EA9D1E67BC, double 0xBDD0C261C93AC254, double 0x3D5475A7A2BEFBF3, double 0x3D13F154A7D83B0B, double 0xBC9629F4559019C6, double 0xBC513B0F0BC54B44], align 16, !dbg !63
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32
@0 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@1 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@2 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@3 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@4 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@5 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@6 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@7 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@8 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@9 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@10 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@11 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@12 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@13 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@14 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@15 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@16 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@17 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@18 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@19 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@20 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@21 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@22 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@23 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@24 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@25 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@26 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@27 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@28 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@29 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@30 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@31 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@32 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@33 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@34 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@35 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@36 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@37 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@38 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@39 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@40 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@41 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@42 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@43 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@44 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@45 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@46 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@47 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@48 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@49 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@50 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@51 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@52 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@53 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@54 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@55 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@56 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@57 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@58 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@59 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@60 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@61 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@62 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@63 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@64 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@65 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@66 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@67 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@68 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@69 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@70 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@71 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@72 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@73 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@74 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@75 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@76 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@77 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@78 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@79 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@80 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@81 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@82 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@83 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@84 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@85 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@86 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@87 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@88 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@89 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@90 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@91 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@92 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@93 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@94 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@95 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@96 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@97 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@98 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@99 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@100 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@101 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@102 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@103 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@104 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@105 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@106 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@107 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@108 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@109 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@110 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@111 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@112 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@113 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@114 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@115 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@116 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@117 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@118 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@119 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@120 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@121 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@122 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@123 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@124 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@125 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@126 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@127 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@128 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@129 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@130 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@131 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@132 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@133 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@134 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@135 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@136 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@137 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@138 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@139 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@140 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@141 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@142 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@143 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@144 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@145 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@146 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@147 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@148 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@149 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@150 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@151 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@152 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@153 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@154 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@155 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@156 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@157 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@158 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@159 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@160 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@161 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@162 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@163 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@164 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@165 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@166 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@167 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@168 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@169 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@170 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@171 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@172 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@173 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@174 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@175 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@176 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@177 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@178 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@179 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@180 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@181 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@182 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@183 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@184 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@185 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@186 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@187 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@188 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@189 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@190 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@191 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@192 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@193 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@194 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@195 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@196 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@197 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@198 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@199 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@200 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@201 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@202 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@203 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@204 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@205 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@206 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@207 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@208 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@209 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@210 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@211 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@212 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@213 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@214 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@215 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@216 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@217 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@218 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@219 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@220 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@221 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@222 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@223 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@224 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@225 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@226 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@227 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@228 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@229 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@230 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@231 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@232 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@233 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@234 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@235 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@236 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@237 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@238 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@239 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@240 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@241 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@242 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@243 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@244 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@245 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@246 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@247 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@248 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@249 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@250 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@251 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@252 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@253 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@254 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@255 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@256 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@257 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@258 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@259 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@260 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@261 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@262 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@263 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@264 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@265 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@266 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@267 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@268 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@269 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@270 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@271 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@272 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@273 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@274 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@275 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@276 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@277 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@278 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@279 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@280 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@281 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@282 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@283 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@284 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@285 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@286 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@287 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@288 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@289 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@290 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@291 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@292 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@293 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@294 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@295 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@296 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@297 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@298 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@299 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@300 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@301 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@302 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@303 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@304 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@305 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@306 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@307 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@308 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@309 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@310 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@311 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@312 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@313 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@314 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@315 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@316 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@317 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@318 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@319 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@320 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@321 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@322 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@323 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@324 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@325 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@326 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@327 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@328 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@329 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@330 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@331 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@332 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@333 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@334 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@335 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@336 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@337 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@338 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@339 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@340 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@341 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@342 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@343 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@344 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@345 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@346 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@347 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@348 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@349 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@350 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@351 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@352 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@353 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@354 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@355 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@356 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@357 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@358 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@359 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@360 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@361 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@362 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@363 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@364 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@365 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@366 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@367 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@368 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@369 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@370 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@371 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@372 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@373 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@374 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@375 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@376 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@377 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@378 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@379 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@380 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@381 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@382 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@383 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@384 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@385 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@386 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@387 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@388 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@389 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@390 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@391 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@392 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@393 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@394 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@395 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@396 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@397 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@398 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@399 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@400 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@401 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@402 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@403 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@404 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@405 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@406 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@407 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@408 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@409 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@410 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@411 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@412 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@413 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@414 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@415 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@416 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@417 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@418 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@419 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@420 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@421 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@422 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@423 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@424 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@425 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@426 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@427 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@428 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@429 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@430 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@431 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@432 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@433 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@434 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@435 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@436 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@437 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@438 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@439 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@440 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@441 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@442 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@443 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@444 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@445 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@446 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@447 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@448 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@449 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@450 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@451 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@452 = private unnamed_addr constant [6 x i8] c"sin.c\00"
@453 = private unnamed_addr constant [6 x i8] c"sin.c\00"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @gsl_sf_sin_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !72 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !82
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !82
  %5 = xor i32 %3, 37276
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !82
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !82
  store i32 18638, i32* @__afl_prev_loc, !nosanitize !82
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca double, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca double, align 8
  store double %0, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !83, metadata !DIExpression()), !dbg !84
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata double* %12, metadata !87, metadata !DIExpression()), !dbg !90
  store double 0x3FE921FB40000000, double* %12, align 8, !dbg !90
  call void @llvm.dbg.declare(metadata double* %13, metadata !91, metadata !DIExpression()), !dbg !92
  store double 0x3E64442D00000000, double* %13, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata double* %14, metadata !93, metadata !DIExpression()), !dbg !94
  store double 0x3CE8469898CC5170, double* %14, align 8, !dbg !94
  call void @llvm.dbg.declare(metadata double* %15, metadata !95, metadata !DIExpression()), !dbg !96
  %27 = load double, double* %10, align 8, !dbg !97
  %28 = fcmp oge double %27, 0.000000e+00, !dbg !97
  %29 = zext i1 %28 to i64, !dbg !97
  %30 = select i1 %28, i32 1, i32 -1, !dbg !97
  %31 = sitofp i32 %30 to double, !dbg !97
  store double %31, double* %15, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata double* %16, metadata !98, metadata !DIExpression()), !dbg !99
  %32 = load double, double* %10, align 8, !dbg !100
  %33 = call double @llvm.fabs.f64(double %32), !dbg !101
  store double %33, double* %16, align 8, !dbg !99
  %34 = load double, double* %16, align 8, !dbg !102
  %35 = fcmp olt double %34, 0x3F20000000000000, !dbg !104
  br i1 %35, label %36, label %62, !dbg !105

; <label>:36:                                     ; preds = %2
  %37 = load i32, i32* @__afl_prev_loc, !dbg !106, !nosanitize !82
  %38 = load i8*, i8** @__afl_area_ptr, !dbg !106, !nosanitize !82
  %39 = xor i32 %37, 29605, !dbg !106
  %40 = getelementptr i8, i8* %38, i32 %39, !dbg !106
  %41 = load i8, i8* %40, !dbg !106, !nosanitize !82
  %42 = add i8 %41, 1, !dbg !106
  store i8 %42, i8* %40, !dbg !106, !nosanitize !82
  store i32 14802, i32* @__afl_prev_loc, !dbg !106, !nosanitize !82
  call void @llvm.dbg.declare(metadata double* %17, metadata !108, metadata !DIExpression()), !dbg !106
  %43 = load double, double* %10, align 8, !dbg !109
  %44 = load double, double* %10, align 8, !dbg !110
  %45 = fmul double %43, %44, !dbg !111
  call void @DoubleErrBits(i32 39, double %45), !dbg !106
  call void @_show_Double(double %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @46, i32 0, i32 0), i32 102), !dbg !106
  store double %45, double* %17, align 8, !dbg !106
  %46 = load double, double* %10, align 8, !dbg !112
  %47 = load double, double* %17, align 8, !dbg !113
  %48 = fdiv double %47, 6.000000e+00, !dbg !114
  call void @DoubleDivErrBits(i32 42, double 6.000000e+00), !dbg !115
  call void @_show_DoubleDiv(double %47, double 6.000000e+00, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @50, i32 0, i32 0), i32 103), !dbg !115
  %49 = fsub double 1.000000e+00, %48, !dbg !115
  call void @DoubleErrBits(i32 43, double %49), !dbg !116
  call void @_show_Double(double %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @51, i32 0, i32 0), i32 103), !dbg !116
  %50 = fmul double %46, %49, !dbg !116
  call void @DoubleErrBits(i32 44, double %50), !dbg !117
  call void @_show_Double(double %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @52, i32 0, i32 0), i32 103), !dbg !117
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !117
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !118
  store double %50, double* %52, align 8, !dbg !119
  %53 = load double, double* %10, align 8, !dbg !120
  %54 = load double, double* %17, align 8, !dbg !121
  %55 = fmul double %53, %54, !dbg !122
  call void @DoubleErrBits(i32 49, double %55), !dbg !123
  call void @_show_Double(double %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @58, i32 0, i32 0), i32 104), !dbg !123
  %56 = load double, double* %17, align 8, !dbg !123
  %57 = fmul double %55, %56, !dbg !124
  call void @DoubleErrBits(i32 51, double %57), !dbg !125
  call void @_show_Double(double %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @60, i32 0, i32 0), i32 104), !dbg !125
  %58 = fdiv double %57, 1.000000e+02, !dbg !125
  call void @DoubleDivErrBits(i32 52, double 1.000000e+02), !dbg !126
  call void @_show_DoubleDiv(double %57, double 1.000000e+02, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @61, i32 0, i32 0), i32 104), !dbg !126
  %59 = call double @llvm.fabs.f64(double %58), !dbg !126
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !127
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !128
  store double %59, double* %61, align 8, !dbg !129
  store i32 0, i32* %9, align 4, !dbg !130
  br label %301, !dbg !130

; <label>:62:                                     ; preds = %2
  %63 = load i32, i32* @__afl_prev_loc, !dbg !131, !nosanitize !82
  %64 = load i8*, i8** @__afl_area_ptr, !dbg !131, !nosanitize !82
  %65 = xor i32 %63, 22945, !dbg !131
  %66 = getelementptr i8, i8* %64, i32 %65, !dbg !131
  %67 = load i8, i8* %66, !dbg !131, !nosanitize !82
  %68 = add i8 %67, 1, !dbg !131
  store i8 %68, i8* %66, !dbg !131, !nosanitize !82
  store i32 11472, i32* @__afl_prev_loc, !dbg !131, !nosanitize !82
  call void @llvm.dbg.declare(metadata double* %18, metadata !133, metadata !DIExpression()), !dbg !131
  %69 = load double, double* %15, align 8, !dbg !134
  store double %69, double* %18, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata double* %19, metadata !135, metadata !DIExpression()), !dbg !136
  %70 = load double, double* %16, align 8, !dbg !137
  %71 = fdiv double %70, 0x3FE921FB54442D18, !dbg !138
  call void @DoubleDivErrBits(i32 65, double 0x3FE921FB54442D18), !dbg !139
  call void @_show_DoubleDiv(double %70, double 0x3FE921FB54442D18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @73, i32 0, i32 0), i32 109), !dbg !139
  %72 = call double @llvm.floor.f64(double %71), !dbg !139
  store double %72, double* %19, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %20, metadata !140, metadata !DIExpression()), !dbg !141
  %73 = load double, double* %19, align 8, !dbg !142
  %74 = load double, double* %19, align 8, !dbg !143
  %75 = call double @ldexp(double %74, i32 -3) #4, !dbg !144
  %76 = call double @llvm.floor.f64(double %75), !dbg !145
  %77 = call double @ldexp(double %76, i32 3) #4, !dbg !146
  %78 = fsub double %73, %77, !dbg !147
  call void @DoubleErrBits(i32 72, double %78), !dbg !142
  call void @_show_Double(double %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @82, i32 0, i32 0), i32 110), !dbg !142
  %79 = fptosi double %78 to i32, !dbg !142
  store i32 %79, i32* %20, align 4, !dbg !141
  call void @llvm.dbg.declare(metadata i32* %21, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata double* %22, metadata !150, metadata !DIExpression()), !dbg !151
  %80 = load i32, i32* %20, align 4, !dbg !152
  %81 = and i32 %80, 1, !dbg !152
  %82 = icmp ne i32 %81, 0, !dbg !152
  br i1 %82, label %83, label %96, !dbg !154

; <label>:83:                                     ; preds = %62
  %84 = load i32, i32* @__afl_prev_loc, !dbg !155, !nosanitize !82
  %85 = load i8*, i8** @__afl_area_ptr, !dbg !155, !nosanitize !82
  %86 = xor i32 %84, 28661, !dbg !155
  %87 = getelementptr i8, i8* %85, i32 %86, !dbg !155
  %88 = load i8, i8* %87, !dbg !155, !nosanitize !82
  %89 = add i8 %88, 1, !dbg !155
  store i8 %89, i8* %87, !dbg !155, !nosanitize !82
  store i32 14330, i32* @__afl_prev_loc, !dbg !155, !nosanitize !82
  %90 = load i32, i32* %20, align 4, !dbg !155
  %91 = add nsw i32 %90, 1, !dbg !155
  store i32 %91, i32* %20, align 4, !dbg !155
  %92 = load i32, i32* %20, align 4, !dbg !157
  %93 = and i32 %92, 7, !dbg !157
  store i32 %93, i32* %20, align 4, !dbg !157
  %94 = load double, double* %19, align 8, !dbg !158
  %95 = fadd double %94, 1.000000e+00, !dbg !158
  call void @DoubleErrBits(i32 89, double %95), !dbg !158
  call void @_show_Double(double %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @98, i32 0, i32 0), i32 117), !dbg !158
  store double %95, double* %19, align 8, !dbg !158
  br label %96, !dbg !159

; <label>:96:                                     ; preds = %83, %62
  %97 = load i32, i32* @__afl_prev_loc, !dbg !160, !nosanitize !82
  %98 = load i8*, i8** @__afl_area_ptr, !dbg !160, !nosanitize !82
  %99 = xor i32 %97, 64331, !dbg !160
  %100 = getelementptr i8, i8* %98, i32 %99, !dbg !160
  %101 = load i8, i8* %100, !dbg !160, !nosanitize !82
  %102 = add i8 %101, 1, !dbg !160
  store i8 %102, i8* %100, !dbg !160, !nosanitize !82
  store i32 32165, i32* @__afl_prev_loc, !dbg !160, !nosanitize !82
  %103 = load i32, i32* %20, align 4, !dbg !160
  %104 = icmp sgt i32 %103, 3, !dbg !162
  br i1 %104, label %105, label %116, !dbg !163

; <label>:105:                                    ; preds = %96
  %106 = load i32, i32* @__afl_prev_loc, !dbg !164, !nosanitize !82
  %107 = load i8*, i8** @__afl_area_ptr, !dbg !164, !nosanitize !82
  %108 = xor i32 %106, 3016, !dbg !164
  %109 = getelementptr i8, i8* %107, i32 %108, !dbg !164
  %110 = load i8, i8* %109, !dbg !164, !nosanitize !82
  %111 = add i8 %110, 1, !dbg !164
  store i8 %111, i8* %109, !dbg !164, !nosanitize !82
  store i32 1508, i32* @__afl_prev_loc, !dbg !164, !nosanitize !82
  %112 = load i32, i32* %20, align 4, !dbg !164
  %113 = sub nsw i32 %112, 4, !dbg !164
  store i32 %113, i32* %20, align 4, !dbg !164
  %114 = load double, double* %18, align 8, !dbg !166
  %115 = fsub double -0.000000e+00, %114, !dbg !167
  call void @DoubleErrBits(i32 109, double %115), !dbg !168
  call void @_show_Double(double %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @108, i32 0, i32 0), i32 122), !dbg !168
  store double %115, double* %18, align 8, !dbg !168
  br label %116, !dbg !169

; <label>:116:                                    ; preds = %105, %96
  %117 = load i32, i32* @__afl_prev_loc, !dbg !170, !nosanitize !82
  %118 = load i8*, i8** @__afl_area_ptr, !dbg !170, !nosanitize !82
  %119 = xor i32 %117, 17071, !dbg !170
  %120 = getelementptr i8, i8* %118, i32 %119, !dbg !170
  %121 = load i8, i8* %120, !dbg !170, !nosanitize !82
  %122 = add i8 %121, 1, !dbg !170
  store i8 %122, i8* %120, !dbg !170, !nosanitize !82
  store i32 8535, i32* @__afl_prev_loc, !dbg !170, !nosanitize !82
  %123 = load double, double* %16, align 8, !dbg !170
  %124 = load double, double* %19, align 8, !dbg !171
  %125 = fmul double %124, 0x3FE921FB40000000, !dbg !172
  call void @DoubleErrBits(i32 119, double %125), !dbg !173
  call void @_show_Double(double %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @113, i32 0, i32 0), i32 125), !dbg !173
  %126 = fsub double %123, %125, !dbg !173
  call void @DoubleErrBits(i32 120, double %126), !dbg !174
  call void @_show_Double(double %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @114, i32 0, i32 0), i32 125), !dbg !174
  %127 = load double, double* %19, align 8, !dbg !174
  %128 = fmul double %127, 0x3E64442D00000000, !dbg !175
  call void @DoubleErrBits(i32 122, double %128), !dbg !176
  call void @_show_Double(double %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @116, i32 0, i32 0), i32 125), !dbg !176
  %129 = fsub double %126, %128, !dbg !176
  call void @DoubleErrBits(i32 123, double %129), !dbg !177
  call void @_show_Double(double %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @117, i32 0, i32 0), i32 125), !dbg !177
  %130 = load double, double* %19, align 8, !dbg !177
  %131 = fmul double %130, 0x3CE8469898CC5170, !dbg !178
  call void @DoubleErrBits(i32 125, double %131), !dbg !179
  call void @_show_Double(double %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @119, i32 0, i32 0), i32 125), !dbg !179
  %132 = fsub double %129, %131, !dbg !179
  call void @DoubleErrBits(i32 126, double %132), !dbg !180
  call void @_show_Double(double %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @120, i32 0, i32 0), i32 125), !dbg !180
  store double %132, double* %22, align 8, !dbg !180
  %133 = load i32, i32* %20, align 4, !dbg !181
  %134 = icmp eq i32 %133, 0, !dbg !183
  br i1 %134, label %135, label %160, !dbg !184

; <label>:135:                                    ; preds = %116
  %136 = load i32, i32* @__afl_prev_loc, !dbg !185, !nosanitize !82
  %137 = load i8*, i8** @__afl_area_ptr, !dbg !185, !nosanitize !82
  %138 = xor i32 %136, 19800, !dbg !185
  %139 = getelementptr i8, i8* %137, i32 %138, !dbg !185
  %140 = load i8, i8* %139, !dbg !185, !nosanitize !82
  %141 = add i8 %140, 1, !dbg !185
  store i8 %141, i8* %139, !dbg !185, !nosanitize !82
  store i32 9900, i32* @__afl_prev_loc, !dbg !185, !nosanitize !82
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !187, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata double* %24, metadata !188, metadata !DIExpression()), !dbg !189
  %142 = load double, double* %22, align 8, !dbg !190
  %143 = call double @llvm.fabs.f64(double %142), !dbg !191
  %144 = fmul double 8.000000e+00, %143, !dbg !192
  call void @DoubleErrBits(i32 138, double %144), !dbg !193
  call void @_show_Double(double %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @129, i32 0, i32 0), i32 129), !dbg !193
  %145 = fdiv double %144, 0x400921FB54442D18, !dbg !193
  call void @DoubleDivErrBits(i32 139, double 0x400921FB54442D18), !dbg !194
  call void @_show_DoubleDiv(double %144, double 0x400921FB54442D18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @130, i32 0, i32 0), i32 129), !dbg !194
  %146 = fsub double %145, 1.000000e+00, !dbg !194
  call void @DoubleErrBits(i32 140, double %146), !dbg !189
  call void @_show_Double(double %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @131, i32 0, i32 0), i32 129), !dbg !189
  store double %146, double* %24, align 8, !dbg !189
  %147 = load double, double* %24, align 8, !dbg !195
  %148 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @sin_cs, double %147, %struct.gsl_sf_result_struct* %23), !dbg !196
  store i32 %148, i32* %21, align 4, !dbg !197
  %149 = load double, double* %22, align 8, !dbg !198
  %150 = load double, double* %22, align 8, !dbg !199
  %151 = load double, double* %22, align 8, !dbg !200
  %152 = fmul double %150, %151, !dbg !201
  call void @DoubleErrBits(i32 146, double %152), !dbg !202
  call void @_show_Double(double %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @139, i32 0, i32 0), i32 131), !dbg !202
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !202
  %154 = load double, double* %153, align 8, !dbg !202
  %155 = fmul double %152, %154, !dbg !203
  call void @DoubleErrBits(i32 149, double %155), !dbg !204
  call void @_show_Double(double %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @142, i32 0, i32 0), i32 131), !dbg !204
  %156 = fadd double 1.000000e+00, %155, !dbg !204
  call void @DoubleErrBits(i32 150, double %156), !dbg !205
  call void @_show_Double(double %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @143, i32 0, i32 0), i32 131), !dbg !205
  %157 = fmul double %149, %156, !dbg !205
  call void @DoubleErrBits(i32 151, double %157), !dbg !206
  call void @_show_Double(double %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @144, i32 0, i32 0), i32 131), !dbg !206
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !206
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 0, !dbg !207
  store double %157, double* %159, align 8, !dbg !208
  br label %189, !dbg !209

; <label>:160:                                    ; preds = %116
  %161 = load i32, i32* @__afl_prev_loc, !dbg !210, !nosanitize !82
  %162 = load i8*, i8** @__afl_area_ptr, !dbg !210, !nosanitize !82
  %163 = xor i32 %161, 37767, !dbg !210
  %164 = getelementptr i8, i8* %162, i32 %163, !dbg !210
  %165 = load i8, i8* %164, !dbg !210, !nosanitize !82
  %166 = add i8 %165, 1, !dbg !210
  store i8 %166, i8* %164, !dbg !210, !nosanitize !82
  store i32 18883, i32* @__afl_prev_loc, !dbg !210, !nosanitize !82
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !212, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata double* %26, metadata !213, metadata !DIExpression()), !dbg !214
  %167 = load double, double* %22, align 8, !dbg !215
  %168 = call double @llvm.fabs.f64(double %167), !dbg !216
  %169 = fmul double 8.000000e+00, %168, !dbg !217
  call void @DoubleErrBits(i32 163, double %169), !dbg !218
  call void @_show_Double(double %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @153, i32 0, i32 0), i32 135), !dbg !218
  %170 = fdiv double %169, 0x400921FB54442D18, !dbg !218
  call void @DoubleDivErrBits(i32 164, double 0x400921FB54442D18), !dbg !219
  call void @_show_DoubleDiv(double %169, double 0x400921FB54442D18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @154, i32 0, i32 0), i32 135), !dbg !219
  %171 = fsub double %170, 1.000000e+00, !dbg !219
  call void @DoubleErrBits(i32 165, double %171), !dbg !214
  call void @_show_Double(double %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @155, i32 0, i32 0), i32 135), !dbg !214
  store double %171, double* %26, align 8, !dbg !214
  %172 = load double, double* %26, align 8, !dbg !220
  %173 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @cos_cs, double %172, %struct.gsl_sf_result_struct* %25), !dbg !221
  store i32 %173, i32* %21, align 4, !dbg !222
  %174 = load double, double* %22, align 8, !dbg !223
  %175 = fmul double 5.000000e-01, %174, !dbg !224
  call void @DoubleErrBits(i32 169, double %175), !dbg !225
  call void @_show_Double(double %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @161, i32 0, i32 0), i32 137), !dbg !225
  %176 = load double, double* %22, align 8, !dbg !225
  %177 = fmul double %175, %176, !dbg !226
  call void @DoubleErrBits(i32 171, double %177), !dbg !227
  call void @_show_Double(double %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @163, i32 0, i32 0), i32 137), !dbg !227
  %178 = load double, double* %22, align 8, !dbg !227
  %179 = load double, double* %22, align 8, !dbg !228
  %180 = fmul double %178, %179, !dbg !229
  call void @DoubleErrBits(i32 174, double %180), !dbg !230
  call void @_show_Double(double %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @166, i32 0, i32 0), i32 137), !dbg !230
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !230
  %182 = load double, double* %181, align 8, !dbg !230
  %183 = fmul double %180, %182, !dbg !231
  call void @DoubleErrBits(i32 177, double %183), !dbg !232
  call void @_show_Double(double %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @169, i32 0, i32 0), i32 137), !dbg !232
  %184 = fsub double 1.000000e+00, %183, !dbg !232
  call void @DoubleErrBits(i32 178, double %184), !dbg !233
  call void @_show_Double(double %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @170, i32 0, i32 0), i32 137), !dbg !233
  %185 = fmul double %177, %184, !dbg !233
  call void @DoubleErrBits(i32 179, double %185), !dbg !234
  call void @_show_Double(double %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @171, i32 0, i32 0), i32 137), !dbg !234
  %186 = fsub double 1.000000e+00, %185, !dbg !234
  call void @DoubleErrBits(i32 180, double %186), !dbg !235
  call void @_show_Double(double %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @172, i32 0, i32 0), i32 137), !dbg !235
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !235
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 0, !dbg !236
  store double %186, double* %188, align 8, !dbg !237
  br label %189

; <label>:189:                                    ; preds = %160, %135
  %190 = load i32, i32* @__afl_prev_loc, !dbg !238, !nosanitize !82
  %191 = load i8*, i8** @__afl_area_ptr, !dbg !238, !nosanitize !82
  %192 = xor i32 %190, 25006, !dbg !238
  %193 = getelementptr i8, i8* %191, i32 %192, !dbg !238
  %194 = load i8, i8* %193, !dbg !238, !nosanitize !82
  %195 = add i8 %194, 1, !dbg !238
  store i8 %195, i8* %193, !dbg !238, !nosanitize !82
  store i32 12503, i32* @__afl_prev_loc, !dbg !238, !nosanitize !82
  %196 = load double, double* %18, align 8, !dbg !238
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !239
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 0, !dbg !240
  %199 = load double, double* %198, align 8, !dbg !241
  %200 = fmul double %199, %196, !dbg !241
  call void @DoubleErrBits(i32 194, double %200), !dbg !241
  call void @_show_Double(double %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @181, i32 0, i32 0), i32 140), !dbg !241
  store double %200, double* %198, align 8, !dbg !241
  %201 = load double, double* %16, align 8, !dbg !242
  %202 = fcmp ogt double %201, 0x4330000000000000, !dbg !244
  br i1 %202, label %203, label %216, !dbg !245

; <label>:203:                                    ; preds = %189
  %204 = load i32, i32* @__afl_prev_loc, !dbg !246, !nosanitize !82
  %205 = load i8*, i8** @__afl_area_ptr, !dbg !246, !nosanitize !82
  %206 = xor i32 %204, 26849, !dbg !246
  %207 = getelementptr i8, i8* %205, i32 %206, !dbg !246
  %208 = load i8, i8* %207, !dbg !246, !nosanitize !82
  %209 = add i8 %208, 1, !dbg !246
  store i8 %209, i8* %207, !dbg !246, !nosanitize !82
  store i32 13424, i32* @__afl_prev_loc, !dbg !246, !nosanitize !82
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !246
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 0, !dbg !248
  %212 = load double, double* %211, align 8, !dbg !248
  %213 = call double @llvm.fabs.f64(double %212), !dbg !249
  %214 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !250
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %214, i32 0, i32 1, !dbg !251
  store double %213, double* %215, align 8, !dbg !252
  br label %293, !dbg !253

; <label>:216:                                    ; preds = %189
  %217 = load i32, i32* @__afl_prev_loc, !dbg !254, !nosanitize !82
  %218 = load i8*, i8** @__afl_area_ptr, !dbg !254, !nosanitize !82
  %219 = xor i32 %217, 30293, !dbg !254
  %220 = getelementptr i8, i8* %218, i32 %219, !dbg !254
  %221 = load i8, i8* %220, !dbg !254, !nosanitize !82
  %222 = add i8 %221, 1, !dbg !254
  store i8 %222, i8* %220, !dbg !254, !nosanitize !82
  store i32 15146, i32* @__afl_prev_loc, !dbg !254, !nosanitize !82
  %223 = load double, double* %16, align 8, !dbg !254
  %224 = fcmp ogt double %223, 0x41F9000000000000, !dbg !256
  br i1 %224, label %225, label %242, !dbg !257

; <label>:225:                                    ; preds = %216
  %226 = load i32, i32* @__afl_prev_loc, !dbg !258, !nosanitize !82
  %227 = load i8*, i8** @__afl_area_ptr, !dbg !258, !nosanitize !82
  %228 = xor i32 %226, 52428, !dbg !258
  %229 = getelementptr i8, i8* %227, i32 %228, !dbg !258
  %230 = load i8, i8* %229, !dbg !258, !nosanitize !82
  %231 = add i8 %230, 1, !dbg !258
  store i8 %231, i8* %229, !dbg !258, !nosanitize !82
  store i32 26214, i32* @__afl_prev_loc, !dbg !258, !nosanitize !82
  %232 = load double, double* %16, align 8, !dbg !258
  %233 = fmul double 2.000000e+00, %232, !dbg !260
  call void @DoubleErrBits(i32 227, double %233), !dbg !261
  call void @_show_Double(double %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @198, i32 0, i32 0), i32 146), !dbg !261
  %234 = fmul double %233, 0x3CB0000000000000, !dbg !261
  call void @DoubleErrBits(i32 228, double %234), !dbg !262
  call void @_show_Double(double %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @199, i32 0, i32 0), i32 146), !dbg !262
  %235 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !262
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %235, i32 0, i32 0, !dbg !263
  %237 = load double, double* %236, align 8, !dbg !263
  %238 = call double @llvm.fabs.f64(double %237), !dbg !264
  %239 = fmul double %234, %238, !dbg !265
  call void @DoubleErrBits(i32 233, double %239), !dbg !266
  call void @_show_Double(double %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @204, i32 0, i32 0), i32 146), !dbg !266
  %240 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !266
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %240, i32 0, i32 1, !dbg !267
  store double %239, double* %241, align 8, !dbg !268
  br label %286, !dbg !269

; <label>:242:                                    ; preds = %216
  %243 = load i32, i32* @__afl_prev_loc, !dbg !270, !nosanitize !82
  %244 = load i8*, i8** @__afl_area_ptr, !dbg !270, !nosanitize !82
  %245 = xor i32 %243, 5738, !dbg !270
  %246 = getelementptr i8, i8* %244, i32 %245, !dbg !270
  %247 = load i8, i8* %246, !dbg !270, !nosanitize !82
  %248 = add i8 %247, 1, !dbg !270
  store i8 %248, i8* %246, !dbg !270, !nosanitize !82
  store i32 2869, i32* @__afl_prev_loc, !dbg !270, !nosanitize !82
  %249 = load double, double* %16, align 8, !dbg !270
  %250 = fcmp ogt double %249, 0x415999999999999A, !dbg !272
  br i1 %250, label %251, label %265, !dbg !273

; <label>:251:                                    ; preds = %242
  %252 = load i32, i32* @__afl_prev_loc, !dbg !274, !nosanitize !82
  %253 = load i8*, i8** @__afl_area_ptr, !dbg !274, !nosanitize !82
  %254 = xor i32 %252, 29651, !dbg !274
  %255 = getelementptr i8, i8* %253, i32 %254, !dbg !274
  %256 = load i8, i8* %255, !dbg !274, !nosanitize !82
  %257 = add i8 %256, 1, !dbg !274
  store i8 %257, i8* %255, !dbg !274, !nosanitize !82
  store i32 14825, i32* @__afl_prev_loc, !dbg !274, !nosanitize !82
  %258 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !274
  %259 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %258, i32 0, i32 0, !dbg !276
  %260 = load double, double* %259, align 8, !dbg !276
  %261 = call double @llvm.fabs.f64(double %260), !dbg !277
  %262 = fmul double 0x3E60000000000000, %261, !dbg !278
  call void @DoubleErrBits(i32 256, double %262), !dbg !279
  call void @_show_Double(double %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @216, i32 0, i32 0), i32 149), !dbg !279
  %263 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !279
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %263, i32 0, i32 1, !dbg !280
  store double %262, double* %264, align 8, !dbg !281
  br label %279, !dbg !282

; <label>:265:                                    ; preds = %242
  %266 = load i32, i32* @__afl_prev_loc, !dbg !283, !nosanitize !82
  %267 = load i8*, i8** @__afl_area_ptr, !dbg !283, !nosanitize !82
  %268 = xor i32 %266, 38448, !dbg !283
  %269 = getelementptr i8, i8* %267, i32 %268, !dbg !283
  %270 = load i8, i8* %269, !dbg !283, !nosanitize !82
  %271 = add i8 %270, 1, !dbg !283
  store i8 %271, i8* %269, !dbg !283, !nosanitize !82
  store i32 19224, i32* @__afl_prev_loc, !dbg !283, !nosanitize !82
  %272 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !283
  %273 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %272, i32 0, i32 0, !dbg !285
  %274 = load double, double* %273, align 8, !dbg !285
  %275 = call double @llvm.fabs.f64(double %274), !dbg !286
  %276 = fmul double 0x3CC0000000000000, %275, !dbg !287
  call void @DoubleErrBits(i32 270, double %276), !dbg !288
  call void @_show_Double(double %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @225, i32 0, i32 0), i32 152), !dbg !288
  %277 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !288
  %278 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %277, i32 0, i32 1, !dbg !289
  store double %276, double* %278, align 8, !dbg !290
  br label %279

; <label>:279:                                    ; preds = %265, %251
  %280 = load i32, i32* @__afl_prev_loc, !nosanitize !82
  %281 = load i8*, i8** @__afl_area_ptr, !nosanitize !82
  %282 = xor i32 %280, 46420
  %283 = getelementptr i8, i8* %281, i32 %282
  %284 = load i8, i8* %283, !nosanitize !82
  %285 = add i8 %284, 1
  store i8 %285, i8* %283, !nosanitize !82
  store i32 23210, i32* @__afl_prev_loc, !nosanitize !82
  br label %286

; <label>:286:                                    ; preds = %279, %225
  %287 = load i32, i32* @__afl_prev_loc, !nosanitize !82
  %288 = load i8*, i8** @__afl_area_ptr, !nosanitize !82
  %289 = xor i32 %287, 38664
  %290 = getelementptr i8, i8* %288, i32 %289
  %291 = load i8, i8* %290, !nosanitize !82
  %292 = add i8 %291, 1
  store i8 %292, i8* %290, !nosanitize !82
  store i32 19332, i32* @__afl_prev_loc, !nosanitize !82
  br label %293

; <label>:293:                                    ; preds = %286, %203
  %294 = load i32, i32* @__afl_prev_loc, !dbg !291, !nosanitize !82
  %295 = load i8*, i8** @__afl_area_ptr, !dbg !291, !nosanitize !82
  %296 = xor i32 %294, 18689, !dbg !291
  %297 = getelementptr i8, i8* %295, i32 %296, !dbg !291
  %298 = load i8, i8* %297, !dbg !291, !nosanitize !82
  %299 = add i8 %298, 1, !dbg !291
  store i8 %299, i8* %297, !dbg !291, !nosanitize !82
  store i32 9344, i32* @__afl_prev_loc, !dbg !291, !nosanitize !82
  %300 = load i32, i32* %21, align 4, !dbg !291
  store i32 %300, i32* %9, align 4, !dbg !292
  br label %301, !dbg !292

; <label>:301:                                    ; preds = %293, %36
  %302 = load i32, i32* @__afl_prev_loc, !dbg !293, !nosanitize !82
  %303 = load i8*, i8** @__afl_area_ptr, !dbg !293, !nosanitize !82
  %304 = xor i32 %302, 62451, !dbg !293
  %305 = getelementptr i8, i8* %303, i32 %304, !dbg !293
  %306 = load i8, i8* %305, !dbg !293, !nosanitize !82
  %307 = add i8 %306, 1, !dbg !293
  store i8 %307, i8* %305, !dbg !293, !nosanitize !82
  store i32 31225, i32* @__afl_prev_loc, !dbg !293, !nosanitize !82
  %308 = load i32, i32* %9, align 4, !dbg !293
  ret i32 %308, !dbg !293
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #1

; Function Attrs: nounwind
declare double @ldexp(double, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #0 !dbg !294 {
  %4 = load i32, i32* @__afl_prev_loc, !nosanitize !82
  %5 = load i8*, i8** @__afl_area_ptr, !nosanitize !82
  %6 = xor i32 %4, 5743
  %7 = getelementptr i8, i8* %5, i32 %6
  %8 = load i8, i8* %7, !nosanitize !82
  %9 = add i8 %8, 1
  store i8 %9, i8* %7, !nosanitize !82
  store i32 2871, i32* @__afl_prev_loc, !nosanitize !82
  %10 = alloca %struct.cheb_series_struct*, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store %struct.cheb_series_struct* %0, %struct.cheb_series_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %10, metadata !300, metadata !DIExpression()), !dbg !301
  store double %1, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !302, metadata !DIExpression()), !dbg !303
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %12, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i32* %13, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata double* %14, metadata !308, metadata !DIExpression()), !dbg !309
  store double 0.000000e+00, double* %14, align 8, !dbg !309
  call void @llvm.dbg.declare(metadata double* %15, metadata !310, metadata !DIExpression()), !dbg !311
  store double 0.000000e+00, double* %15, align 8, !dbg !311
  call void @llvm.dbg.declare(metadata double* %16, metadata !312, metadata !DIExpression()), !dbg !313
  %21 = load double, double* %11, align 8, !dbg !314
  %22 = fmul double 2.000000e+00, %21, !dbg !315
  call void @DoubleErrBits(i32 16, double %22), !dbg !316
  call void @_show_Double(double %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @261, i32 0, i32 0), i32 11), !dbg !316
  %23 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !316
  %24 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %23, i32 0, i32 2, !dbg !317
  %25 = load double, double* %24, align 8, !dbg !317
  %26 = fsub double %22, %25, !dbg !318
  call void @DoubleErrBits(i32 20, double %26), !dbg !319
  call void @_show_Double(double %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @265, i32 0, i32 0), i32 11), !dbg !319
  %27 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !319
  %28 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %27, i32 0, i32 3, !dbg !320
  %29 = load double, double* %28, align 8, !dbg !320
  %30 = fsub double %26, %29, !dbg !321
  call void @DoubleErrBits(i32 24, double %30), !dbg !322
  call void @_show_Double(double %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @269, i32 0, i32 0), i32 11), !dbg !322
  %31 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !322
  %32 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %31, i32 0, i32 3, !dbg !323
  %33 = load double, double* %32, align 8, !dbg !323
  %34 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !324
  %35 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %34, i32 0, i32 2, !dbg !325
  %36 = load double, double* %35, align 8, !dbg !325
  %37 = fsub double %33, %36, !dbg !326
  call void @DoubleErrBits(i32 31, double %37), !dbg !327
  call void @_show_Double(double %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @276, i32 0, i32 0), i32 11), !dbg !327
  %38 = fdiv double %30, %37, !dbg !327
  call void @DoubleDivErrBits(i32 32, double %37), !dbg !313
  call void @_show_DoubleDiv(double %30, double %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @277, i32 0, i32 0), i32 11), !dbg !313
  store double %38, double* %16, align 8, !dbg !313
  call void @llvm.dbg.declare(metadata double* %17, metadata !328, metadata !DIExpression()), !dbg !329
  %39 = load double, double* %16, align 8, !dbg !330
  %40 = fmul double 2.000000e+00, %39, !dbg !331
  call void @DoubleErrBits(i32 34, double %40), !dbg !329
  call void @_show_Double(double %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @281, i32 0, i32 0), i32 12), !dbg !329
  store double %40, double* %17, align 8, !dbg !329
  call void @llvm.dbg.declare(metadata double* %18, metadata !332, metadata !DIExpression()), !dbg !333
  store double 0.000000e+00, double* %18, align 8, !dbg !333
  %41 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !334
  %42 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %41, i32 0, i32 1, !dbg !336
  %43 = load i32, i32* %42, align 8, !dbg !336
  store i32 %43, i32* %13, align 4, !dbg !337
  br label %44, !dbg !338

; <label>:44:                                     ; preds = %93, %3
  %45 = load i32, i32* @__afl_prev_loc, !dbg !339, !nosanitize !82
  %46 = load i8*, i8** @__afl_area_ptr, !dbg !339, !nosanitize !82
  %47 = xor i32 %45, 48123, !dbg !339
  %48 = getelementptr i8, i8* %46, i32 %47, !dbg !339
  %49 = load i8, i8* %48, !dbg !339, !nosanitize !82
  %50 = add i8 %49, 1, !dbg !339
  store i8 %50, i8* %48, !dbg !339, !nosanitize !82
  store i32 24061, i32* @__afl_prev_loc, !dbg !339, !nosanitize !82
  %51 = load i32, i32* %13, align 4, !dbg !339
  %52 = icmp sge i32 %51, 1, !dbg !341
  br i1 %52, label %53, label %102, !dbg !342

; <label>:53:                                     ; preds = %44
  %54 = load i32, i32* @__afl_prev_loc, !dbg !343, !nosanitize !82
  %55 = load i8*, i8** @__afl_area_ptr, !dbg !343, !nosanitize !82
  %56 = xor i32 %54, 26210, !dbg !343
  %57 = getelementptr i8, i8* %55, i32 %56, !dbg !343
  %58 = load i8, i8* %57, !dbg !343, !nosanitize !82
  %59 = add i8 %58, 1, !dbg !343
  store i8 %59, i8* %57, !dbg !343, !nosanitize !82
  store i32 13105, i32* @__afl_prev_loc, !dbg !343, !nosanitize !82
  call void @llvm.dbg.declare(metadata double* %19, metadata !345, metadata !DIExpression()), !dbg !343
  %60 = load double, double* %14, align 8, !dbg !346
  store double %60, double* %19, align 8, !dbg !343
  %61 = load double, double* %17, align 8, !dbg !347
  %62 = load double, double* %14, align 8, !dbg !348
  %63 = fmul double %61, %62, !dbg !349
  call void @DoubleErrBits(i32 57, double %63), !dbg !350
  call void @_show_Double(double %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @298, i32 0, i32 0), i32 18), !dbg !350
  %64 = load double, double* %15, align 8, !dbg !350
  %65 = fsub double %63, %64, !dbg !351
  call void @DoubleErrBits(i32 59, double %65), !dbg !352
  call void @_show_Double(double %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @300, i32 0, i32 0), i32 18), !dbg !352
  %66 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !352
  %67 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %66, i32 0, i32 0, !dbg !353
  %68 = load double*, double** %67, align 8, !dbg !353
  %69 = load i32, i32* %13, align 4, !dbg !354
  %70 = sext i32 %69 to i64, !dbg !352
  %71 = getelementptr inbounds double, double* %68, i64 %70, !dbg !352
  %72 = load double, double* %71, align 8, !dbg !352
  %73 = fadd double %65, %72, !dbg !355
  call void @DoubleErrBits(i32 67, double %73), !dbg !356
  call void @_show_Double(double %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @308, i32 0, i32 0), i32 18), !dbg !356
  store double %73, double* %14, align 8, !dbg !356
  %74 = load double, double* %17, align 8, !dbg !357
  %75 = load double, double* %19, align 8, !dbg !358
  %76 = fmul double %74, %75, !dbg !359
  call void @DoubleErrBits(i32 70, double %76), !dbg !360
  call void @_show_Double(double %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @312, i32 0, i32 0), i32 19), !dbg !360
  %77 = call double @llvm.fabs.f64(double %76), !dbg !360
  %78 = load double, double* %15, align 8, !dbg !361
  %79 = call double @llvm.fabs.f64(double %78), !dbg !362
  %80 = fadd double %77, %79, !dbg !363
  call void @DoubleErrBits(i32 74, double %80), !dbg !364
  call void @_show_Double(double %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @316, i32 0, i32 0), i32 19), !dbg !364
  %81 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !364
  %82 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %81, i32 0, i32 0, !dbg !365
  %83 = load double*, double** %82, align 8, !dbg !365
  %84 = load i32, i32* %13, align 4, !dbg !366
  %85 = sext i32 %84 to i64, !dbg !364
  %86 = getelementptr inbounds double, double* %83, i64 %85, !dbg !364
  %87 = load double, double* %86, align 8, !dbg !364
  %88 = call double @llvm.fabs.f64(double %87), !dbg !367
  %89 = fadd double %80, %88, !dbg !368
  call void @DoubleErrBits(i32 83, double %89), !dbg !369
  call void @_show_Double(double %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @325, i32 0, i32 0), i32 19), !dbg !369
  %90 = load double, double* %18, align 8, !dbg !369
  %91 = fadd double %90, %89, !dbg !369
  call void @DoubleErrBits(i32 85, double %91), !dbg !369
  call void @_show_Double(double %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @327, i32 0, i32 0), i32 19), !dbg !369
  store double %91, double* %18, align 8, !dbg !369
  %92 = load double, double* %19, align 8, !dbg !370
  store double %92, double* %15, align 8, !dbg !371
  br label %93, !dbg !372

; <label>:93:                                     ; preds = %53
  %94 = load i32, i32* @__afl_prev_loc, !dbg !373, !nosanitize !82
  %95 = load i8*, i8** @__afl_area_ptr, !dbg !373, !nosanitize !82
  %96 = xor i32 %94, 42339, !dbg !373
  %97 = getelementptr i8, i8* %95, i32 %96, !dbg !373
  %98 = load i8, i8* %97, !dbg !373, !nosanitize !82
  %99 = add i8 %98, 1, !dbg !373
  store i8 %99, i8* %97, !dbg !373, !nosanitize !82
  store i32 21169, i32* @__afl_prev_loc, !dbg !373, !nosanitize !82
  %100 = load i32, i32* %13, align 4, !dbg !373
  %101 = add nsw i32 %100, -1, !dbg !373
  store i32 %101, i32* %13, align 4, !dbg !373
  br label %44, !dbg !374, !llvm.loop !375

; <label>:102:                                    ; preds = %44
  %103 = load i32, i32* @__afl_prev_loc, !dbg !377, !nosanitize !82
  %104 = load i8*, i8** @__afl_area_ptr, !dbg !377, !nosanitize !82
  %105 = xor i32 %103, 11576, !dbg !377
  %106 = getelementptr i8, i8* %104, i32 %105, !dbg !377
  %107 = load i8, i8* %106, !dbg !377, !nosanitize !82
  %108 = add i8 %107, 1, !dbg !377
  store i8 %108, i8* %106, !dbg !377, !nosanitize !82
  store i32 5788, i32* @__afl_prev_loc, !dbg !377, !nosanitize !82
  call void @llvm.dbg.declare(metadata double* %20, metadata !379, metadata !DIExpression()), !dbg !377
  %109 = load double, double* %14, align 8, !dbg !380
  store double %109, double* %20, align 8, !dbg !377
  %110 = load double, double* %16, align 8, !dbg !381
  %111 = load double, double* %14, align 8, !dbg !382
  %112 = fmul double %110, %111, !dbg !383
  call void @DoubleErrBits(i32 106, double %112), !dbg !384
  call void @_show_Double(double %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @341, i32 0, i32 0), i32 25), !dbg !384
  %113 = load double, double* %15, align 8, !dbg !384
  %114 = fsub double %112, %113, !dbg !385
  call void @DoubleErrBits(i32 108, double %114), !dbg !386
  call void @_show_Double(double %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @343, i32 0, i32 0), i32 25), !dbg !386
  %115 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !386
  %116 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %115, i32 0, i32 0, !dbg !387
  %117 = load double*, double** %116, align 8, !dbg !387
  %118 = getelementptr inbounds double, double* %117, i64 0, !dbg !386
  %119 = load double, double* %118, align 8, !dbg !386
  %120 = fmul double 5.000000e-01, %119, !dbg !388
  call void @DoubleErrBits(i32 114, double %120), !dbg !389
  call void @_show_Double(double %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @349, i32 0, i32 0), i32 25), !dbg !389
  %121 = fadd double %114, %120, !dbg !389
  call void @DoubleErrBits(i32 115, double %121), !dbg !390
  call void @_show_Double(double %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @350, i32 0, i32 0), i32 25), !dbg !390
  store double %121, double* %14, align 8, !dbg !390
  %122 = load double, double* %16, align 8, !dbg !391
  %123 = load double, double* %20, align 8, !dbg !392
  %124 = fmul double %122, %123, !dbg !393
  call void @DoubleErrBits(i32 118, double %124), !dbg !394
  call void @_show_Double(double %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @354, i32 0, i32 0), i32 26), !dbg !394
  %125 = call double @llvm.fabs.f64(double %124), !dbg !394
  %126 = load double, double* %15, align 8, !dbg !395
  %127 = call double @llvm.fabs.f64(double %126), !dbg !396
  %128 = fadd double %125, %127, !dbg !397
  call void @DoubleErrBits(i32 122, double %128), !dbg !398
  call void @_show_Double(double %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @358, i32 0, i32 0), i32 26), !dbg !398
  %129 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !398
  %130 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %129, i32 0, i32 0, !dbg !399
  %131 = load double*, double** %130, align 8, !dbg !399
  %132 = getelementptr inbounds double, double* %131, i64 0, !dbg !398
  %133 = load double, double* %132, align 8, !dbg !398
  %134 = call double @llvm.fabs.f64(double %133), !dbg !400
  %135 = fmul double 5.000000e-01, %134, !dbg !401
  call void @DoubleErrBits(i32 129, double %135), !dbg !402
  call void @_show_Double(double %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @365, i32 0, i32 0), i32 26), !dbg !402
  %136 = fadd double %128, %135, !dbg !402
  call void @DoubleErrBits(i32 130, double %136), !dbg !403
  call void @_show_Double(double %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @366, i32 0, i32 0), i32 26), !dbg !403
  %137 = load double, double* %18, align 8, !dbg !403
  %138 = fadd double %137, %136, !dbg !403
  call void @DoubleErrBits(i32 132, double %138), !dbg !403
  call void @_show_Double(double %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @368, i32 0, i32 0), i32 26), !dbg !403
  store double %138, double* %18, align 8, !dbg !403
  %139 = load double, double* %14, align 8, !dbg !404
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !405
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !406
  store double %139, double* %141, align 8, !dbg !407
  %142 = load double, double* %18, align 8, !dbg !408
  %143 = fmul double 0x3CB0000000000000, %142, !dbg !409
  call void @DoubleErrBits(i32 137, double %143), !dbg !410
  call void @_show_Double(double %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @375, i32 0, i32 0), i32 30), !dbg !410
  %144 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !410
  %145 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %144, i32 0, i32 0, !dbg !411
  %146 = load double*, double** %145, align 8, !dbg !411
  %147 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !412
  %148 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %147, i32 0, i32 1, !dbg !413
  %149 = load i32, i32* %148, align 8, !dbg !413
  %150 = sext i32 %149 to i64, !dbg !410
  %151 = getelementptr inbounds double, double* %146, i64 %150, !dbg !410
  %152 = load double, double* %151, align 8, !dbg !410
  %153 = call double @llvm.fabs.f64(double %152), !dbg !414
  %154 = fadd double %143, %153, !dbg !415
  call void @DoubleErrBits(i32 148, double %154), !dbg !416
  call void @_show_Double(double %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @386, i32 0, i32 0), i32 30), !dbg !416
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !416
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 1, !dbg !417
  store double %154, double* %156, align 8, !dbg !418
  ret i32 0, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define double @gsl_sf_sin(double) #0 !dbg !420 {
  %2 = load i32, i32* @__afl_prev_loc, !nosanitize !82
  %3 = load i8*, i8** @__afl_area_ptr, !nosanitize !82
  %4 = xor i32 %2, 8019
  %5 = getelementptr i8, i8* %3, i32 %4
  %6 = load i8, i8* %5, !nosanitize !82
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, !nosanitize !82
  store i32 4009, i32* @__afl_prev_loc, !nosanitize !82
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata i32* %11, metadata !427, metadata !DIExpression()), !dbg !426
  %12 = load double, double* %9, align 8, !dbg !426
  %13 = call i32 @gsl_sf_sin_e(double %12, %struct.gsl_sf_result_struct* %10), !dbg !426
  store i32 %13, i32* %11, align 4, !dbg !426
  %14 = load i32, i32* %11, align 4, !dbg !428
  %15 = icmp ne i32 %14, 0, !dbg !428
  br i1 %15, label %16, label %40, !dbg !426

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* @__afl_prev_loc, !dbg !430, !nosanitize !82
  %18 = load i8*, i8** @__afl_area_ptr, !dbg !430, !nosanitize !82
  %19 = xor i32 %17, 8803, !dbg !430
  %20 = getelementptr i8, i8* %18, i32 %19, !dbg !430
  %21 = load i8, i8* %20, !dbg !430, !nosanitize !82
  %22 = add i8 %21, 1, !dbg !430
  store i8 %22, i8* %20, !dbg !430, !nosanitize !82
  store i32 4401, i32* @__afl_prev_loc, !dbg !430, !nosanitize !82
  br label %23, !dbg !430, !llvm.loop !432

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* @__afl_prev_loc, !dbg !433, !nosanitize !82
  %25 = load i8*, i8** @__afl_area_ptr, !dbg !433, !nosanitize !82
  %26 = xor i32 %24, 64068, !dbg !433
  %27 = getelementptr i8, i8* %25, i32 %26, !dbg !433
  %28 = load i8, i8* %27, !dbg !433, !nosanitize !82
  %29 = add i8 %28, 1, !dbg !433
  store i8 %29, i8* %27, !dbg !433, !nosanitize !82
  store i32 32034, i32* @__afl_prev_loc, !dbg !433, !nosanitize !82
  %30 = load i32, i32* %11, align 4, !dbg !433
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 168, i32 %30), !dbg !433
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !433
  %32 = load double, double* %31, align 8, !dbg !433
  store double %32, double* %8, align 8, !dbg !433
  br label %49, !dbg !433
                                                  ; No predecessors!
  %34 = load i32, i32* @__afl_prev_loc, !dbg !430, !nosanitize !82
  %35 = load i8*, i8** @__afl_area_ptr, !dbg !430, !nosanitize !82
  %36 = xor i32 %34, 36110, !dbg !430
  %37 = getelementptr i8, i8* %35, i32 %36, !dbg !430
  %38 = load i8, i8* %37, !dbg !430, !nosanitize !82
  %39 = add i8 %38, 1, !dbg !430
  store i8 %39, i8* %37, !dbg !430, !nosanitize !82
  store i32 18055, i32* @__afl_prev_loc, !dbg !430, !nosanitize !82
  br label %40, !dbg !430

; <label>:40:                                     ; preds = %33, %1
  %41 = load i32, i32* @__afl_prev_loc, !dbg !426, !nosanitize !82
  %42 = load i8*, i8** @__afl_area_ptr, !dbg !426, !nosanitize !82
  %43 = xor i32 %41, 45818, !dbg !426
  %44 = getelementptr i8, i8* %42, i32 %43, !dbg !426
  %45 = load i8, i8* %44, !dbg !426, !nosanitize !82
  %46 = add i8 %45, 1, !dbg !426
  store i8 %46, i8* %44, !dbg !426, !nosanitize !82
  store i32 22909, i32* @__afl_prev_loc, !dbg !426, !nosanitize !82
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !426
  %48 = load double, double* %47, align 8, !dbg !426
  store double %48, double* %8, align 8, !dbg !426
  br label %49, !dbg !426

; <label>:49:                                     ; preds = %40, %23
  %50 = load i32, i32* @__afl_prev_loc, !dbg !435, !nosanitize !82
  %51 = load i8*, i8** @__afl_area_ptr, !dbg !435, !nosanitize !82
  %52 = xor i32 %50, 28456, !dbg !435
  %53 = getelementptr i8, i8* %51, i32 %52, !dbg !435
  %54 = load i8, i8* %53, !dbg !435, !nosanitize !82
  %55 = add i8 %54, 1, !dbg !435
  store i8 %55, i8* %53, !dbg !435, !nosanitize !82
  store i32 14228, i32* @__afl_prev_loc, !dbg !435, !nosanitize !82
  %56 = load double, double* %8, align 8, !dbg !435
  ret double %56, !dbg !435
}

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 !dbg !436 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !82
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !82
  %5 = xor i32 %3, 1616
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !82
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !82
  store i32 808, i32* @__afl_prev_loc, !nosanitize !82
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %9, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !442, metadata !DIExpression()), !dbg !443
  store i8** %1, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata double* %12, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.declare(metadata double* %13, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !450, metadata !DIExpression()), !dbg !511
  store %struct._IO_FILE* null, %struct._IO_FILE** %14, align 8, !dbg !511
  call void @llvm.dbg.declare(metadata i8** %15, metadata !512, metadata !DIExpression()), !dbg !515
  %16 = load i8**, i8*** %11, align 8, !dbg !516
  %17 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !516
  %18 = load i8*, i8** %17, align 8, !dbg !516
  store i8* %18, i8** %15, align 8, !dbg !515
  %19 = load i8*, i8** %15, align 8, !dbg !517
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !518
  store %struct._IO_FILE* %20, %struct._IO_FILE** %14, align 8, !dbg !519
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !520
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), double* %12), !dbg !521
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !522
  %24 = call i32 @fclose(%struct._IO_FILE* %23), !dbg !523
  %25 = load double, double* %12, align 8, !dbg !524
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %25), !dbg !525
  %27 = load double, double* %12, align 8, !dbg !526
  %28 = call double @gsl_sf_sin(double %27), !dbg !527
  store double %28, double* %13, align 8, !dbg !528
  %29 = load double, double* %13, align 8, !dbg !529
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), double %29), !dbg !530
  ret i32 0, !dbg !531
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @printf(i8*, ...) #3

declare void @_show_Float(float)

declare void @_show_Double(double, i8*, i32)

declare void @_show_FloatDiv(float, float)

declare void @_show_DoubleDiv(double, double, i8*, i32)

declare void @DoubleErrBits(i32, double)

declare void @DoubleDivErrBits(i32, double)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sin_cs", scope: !2, file: !3, line: 51, type: !52, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !43)
!3 = !DIFile(filename: "sin.c", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_sin")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 39, size: 32, elements: !7)
!6 = !DIFile(filename: "/usr/local/include/gsl/gsl_errno.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_sin")
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!8 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!9 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!10 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!11 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!12 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!13 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!14 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!15 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!16 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!17 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!18 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!19 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!20 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!21 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!22 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!23 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!24 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!25 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!26 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!27 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!28 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!29 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!30 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!31 = !DIEnumerator(name: "GSL_ESING", value: 21)
!32 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!33 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!34 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!35 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!36 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!37 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!38 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!39 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!40 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!41 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!42 = !DIEnumerator(name: "GSL_EOF", value: 32)
!43 = !{!0, !44, !50, !63}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "sin_data", scope: !2, file: !3, line: 37, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 768, elements: !48)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !{!49}
!49 = !DISubrange(count: 12)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "cos_cs", scope: !2, file: !3, line: 74, type: !52, isLocal: true, isDefinition: true)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !53, line: 29, baseType: !54)
!53 = !DIFile(filename: "./../chebyshev.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_sin")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !53, line: 22, size: 320, elements: !55)
!55 = !{!56, !58, !60, !61, !62}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !54, file: !53, line: 23, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !54, file: !53, line: 24, baseType: !59, size: 32, offset: 64)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !54, file: !53, line: 25, baseType: !47, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !54, file: !53, line: 26, baseType: !47, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !54, file: !53, line: 27, baseType: !59, size: 32, offset: 256)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "cos_data", scope: !2, file: !3, line: 61, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 704, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 11)
!68 = !{i32 2, !"Dwarf Version", i32 4}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!72 = distinct !DISubprogram(name: "gsl_sf_sin_e", scope: !3, file: !3, line: 89, type: !73, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !82)
!73 = !DISubroutineType(types: !74)
!74 = !{!59, !47, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !77, line: 41, baseType: !78)
!77 = !DIFile(filename: "/usr/local/include/gsl/gsl_sf_result.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_sin")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !77, line: 37, size: 128, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !78, file: !77, line: 38, baseType: !47, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !78, file: !77, line: 39, baseType: !47, size: 64, offset: 64)
!82 = !{}
!83 = !DILocalVariable(name: "x", arg: 1, scope: !72, file: !3, line: 89, type: !47)
!84 = !DILocation(line: 89, column: 21, scope: !72)
!85 = !DILocalVariable(name: "result", arg: 2, scope: !72, file: !3, line: 89, type: !75)
!86 = !DILocation(line: 89, column: 40, scope: !72)
!87 = !DILocalVariable(name: "P1", scope: !88, file: !3, line: 94, type: !89)
!88 = distinct !DILexicalBlock(scope: !72, file: !3, line: 93, column: 3)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!90 = !DILocation(line: 94, column: 18, scope: !88)
!91 = !DILocalVariable(name: "P2", scope: !88, file: !3, line: 95, type: !89)
!92 = !DILocation(line: 95, column: 18, scope: !88)
!93 = !DILocalVariable(name: "P3", scope: !88, file: !3, line: 96, type: !89)
!94 = !DILocation(line: 96, column: 18, scope: !88)
!95 = !DILocalVariable(name: "sgn_x", scope: !88, file: !3, line: 98, type: !89)
!96 = !DILocation(line: 98, column: 18, scope: !88)
!97 = !DILocation(line: 98, column: 26, scope: !88)
!98 = !DILocalVariable(name: "abs_x", scope: !88, file: !3, line: 99, type: !89)
!99 = !DILocation(line: 99, column: 18, scope: !88)
!100 = !DILocation(line: 99, column: 31, scope: !88)
!101 = !DILocation(line: 99, column: 26, scope: !88)
!102 = !DILocation(line: 101, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !88, file: !3, line: 101, column: 8)
!104 = !DILocation(line: 101, column: 14, scope: !103)
!105 = !DILocation(line: 101, column: 8, scope: !88)
!106 = !DILocation(line: 102, column: 20, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 101, column: 39)
!108 = !DILocalVariable(name: "x2", scope: !107, file: !3, line: 102, type: !89)
!109 = !DILocation(line: 102, column: 25, scope: !107)
!110 = !DILocation(line: 102, column: 27, scope: !107)
!111 = !DILocation(line: 102, column: 26, scope: !107)
!112 = !DILocation(line: 103, column: 21, scope: !107)
!113 = !DILocation(line: 103, column: 32, scope: !107)
!114 = !DILocation(line: 103, column: 34, scope: !107)
!115 = !DILocation(line: 103, column: 30, scope: !107)
!116 = !DILocation(line: 103, column: 23, scope: !107)
!117 = !DILocation(line: 103, column: 7, scope: !107)
!118 = !DILocation(line: 103, column: 15, scope: !107)
!119 = !DILocation(line: 103, column: 19, scope: !107)
!120 = !DILocation(line: 104, column: 26, scope: !107)
!121 = !DILocation(line: 104, column: 28, scope: !107)
!122 = !DILocation(line: 104, column: 27, scope: !107)
!123 = !DILocation(line: 104, column: 31, scope: !107)
!124 = !DILocation(line: 104, column: 30, scope: !107)
!125 = !DILocation(line: 104, column: 34, scope: !107)
!126 = !DILocation(line: 104, column: 21, scope: !107)
!127 = !DILocation(line: 104, column: 7, scope: !107)
!128 = !DILocation(line: 104, column: 15, scope: !107)
!129 = !DILocation(line: 104, column: 19, scope: !107)
!130 = !DILocation(line: 105, column: 7, scope: !107)
!131 = !DILocation(line: 108, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !103, file: !3, line: 107, column: 10)
!133 = !DILocalVariable(name: "sgn_result", scope: !132, file: !3, line: 108, type: !47)
!134 = !DILocation(line: 108, column: 27, scope: !132)
!135 = !DILocalVariable(name: "y", scope: !132, file: !3, line: 109, type: !47)
!136 = !DILocation(line: 109, column: 14, scope: !132)
!137 = !DILocation(line: 109, column: 24, scope: !132)
!138 = !DILocation(line: 109, column: 29, scope: !132)
!139 = !DILocation(line: 109, column: 18, scope: !132)
!140 = !DILocalVariable(name: "octant", scope: !132, file: !3, line: 110, type: !59)
!141 = !DILocation(line: 110, column: 11, scope: !132)
!142 = !DILocation(line: 110, column: 20, scope: !132)
!143 = !DILocation(line: 110, column: 42, scope: !132)
!144 = !DILocation(line: 110, column: 36, scope: !132)
!145 = !DILocation(line: 110, column: 30, scope: !132)
!146 = !DILocation(line: 110, column: 24, scope: !132)
!147 = !DILocation(line: 110, column: 22, scope: !132)
!148 = !DILocalVariable(name: "stat_cs", scope: !132, file: !3, line: 111, type: !59)
!149 = !DILocation(line: 111, column: 11, scope: !132)
!150 = !DILocalVariable(name: "z", scope: !132, file: !3, line: 112, type: !47)
!151 = !DILocation(line: 112, column: 14, scope: !132)
!152 = !DILocation(line: 114, column: 10, scope: !153)
!153 = distinct !DILexicalBlock(scope: !132, file: !3, line: 114, column: 10)
!154 = !DILocation(line: 114, column: 10, scope: !132)
!155 = !DILocation(line: 115, column: 16, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !3, line: 114, column: 30)
!157 = !DILocation(line: 116, column: 16, scope: !156)
!158 = !DILocation(line: 117, column: 11, scope: !156)
!159 = !DILocation(line: 118, column: 7, scope: !156)
!160 = !DILocation(line: 120, column: 10, scope: !161)
!161 = distinct !DILexicalBlock(scope: !132, file: !3, line: 120, column: 10)
!162 = !DILocation(line: 120, column: 17, scope: !161)
!163 = !DILocation(line: 120, column: 10, scope: !132)
!164 = !DILocation(line: 121, column: 16, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !3, line: 120, column: 22)
!166 = !DILocation(line: 122, column: 23, scope: !165)
!167 = !DILocation(line: 122, column: 22, scope: !165)
!168 = !DILocation(line: 122, column: 20, scope: !165)
!169 = !DILocation(line: 123, column: 7, scope: !165)
!170 = !DILocation(line: 125, column: 13, scope: !132)
!171 = !DILocation(line: 125, column: 21, scope: !132)
!172 = !DILocation(line: 125, column: 23, scope: !132)
!173 = !DILocation(line: 125, column: 19, scope: !132)
!174 = !DILocation(line: 125, column: 31, scope: !132)
!175 = !DILocation(line: 125, column: 33, scope: !132)
!176 = !DILocation(line: 125, column: 29, scope: !132)
!177 = !DILocation(line: 125, column: 41, scope: !132)
!178 = !DILocation(line: 125, column: 43, scope: !132)
!179 = !DILocation(line: 125, column: 39, scope: !132)
!180 = !DILocation(line: 125, column: 9, scope: !132)
!181 = !DILocation(line: 127, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !132, file: !3, line: 127, column: 10)
!183 = !DILocation(line: 127, column: 17, scope: !182)
!184 = !DILocation(line: 127, column: 10, scope: !132)
!185 = !DILocation(line: 128, column: 23, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !3, line: 127, column: 23)
!187 = !DILocalVariable(name: "sin_cs_result", scope: !186, file: !3, line: 128, type: !76)
!188 = !DILocalVariable(name: "t", scope: !186, file: !3, line: 129, type: !89)
!189 = !DILocation(line: 129, column: 22, scope: !186)
!190 = !DILocation(line: 129, column: 35, scope: !186)
!191 = !DILocation(line: 129, column: 30, scope: !186)
!192 = !DILocation(line: 129, column: 29, scope: !186)
!193 = !DILocation(line: 129, column: 37, scope: !186)
!194 = !DILocation(line: 129, column: 43, scope: !186)
!195 = !DILocation(line: 130, column: 40, scope: !186)
!196 = !DILocation(line: 130, column: 19, scope: !186)
!197 = !DILocation(line: 130, column: 17, scope: !186)
!198 = !DILocation(line: 131, column: 23, scope: !186)
!199 = !DILocation(line: 131, column: 34, scope: !186)
!200 = !DILocation(line: 131, column: 36, scope: !186)
!201 = !DILocation(line: 131, column: 35, scope: !186)
!202 = !DILocation(line: 131, column: 54, scope: !186)
!203 = !DILocation(line: 131, column: 38, scope: !186)
!204 = !DILocation(line: 131, column: 32, scope: !186)
!205 = !DILocation(line: 131, column: 25, scope: !186)
!206 = !DILocation(line: 131, column: 9, scope: !186)
!207 = !DILocation(line: 131, column: 17, scope: !186)
!208 = !DILocation(line: 131, column: 21, scope: !186)
!209 = !DILocation(line: 132, column: 7, scope: !186)
!210 = !DILocation(line: 134, column: 23, scope: !211)
!211 = distinct !DILexicalBlock(scope: !182, file: !3, line: 133, column: 12)
!212 = !DILocalVariable(name: "cos_cs_result", scope: !211, file: !3, line: 134, type: !76)
!213 = !DILocalVariable(name: "t", scope: !211, file: !3, line: 135, type: !89)
!214 = !DILocation(line: 135, column: 22, scope: !211)
!215 = !DILocation(line: 135, column: 35, scope: !211)
!216 = !DILocation(line: 135, column: 30, scope: !211)
!217 = !DILocation(line: 135, column: 29, scope: !211)
!218 = !DILocation(line: 135, column: 37, scope: !211)
!219 = !DILocation(line: 135, column: 43, scope: !211)
!220 = !DILocation(line: 136, column: 40, scope: !211)
!221 = !DILocation(line: 136, column: 19, scope: !211)
!222 = !DILocation(line: 136, column: 17, scope: !211)
!223 = !DILocation(line: 137, column: 33, scope: !211)
!224 = !DILocation(line: 137, column: 32, scope: !211)
!225 = !DILocation(line: 137, column: 35, scope: !211)
!226 = !DILocation(line: 137, column: 34, scope: !211)
!227 = !DILocation(line: 137, column: 46, scope: !211)
!228 = !DILocation(line: 137, column: 48, scope: !211)
!229 = !DILocation(line: 137, column: 47, scope: !211)
!230 = !DILocation(line: 137, column: 66, scope: !211)
!231 = !DILocation(line: 137, column: 50, scope: !211)
!232 = !DILocation(line: 137, column: 44, scope: !211)
!233 = !DILocation(line: 137, column: 37, scope: !211)
!234 = !DILocation(line: 137, column: 27, scope: !211)
!235 = !DILocation(line: 137, column: 9, scope: !211)
!236 = !DILocation(line: 137, column: 17, scope: !211)
!237 = !DILocation(line: 137, column: 21, scope: !211)
!238 = !DILocation(line: 140, column: 22, scope: !132)
!239 = !DILocation(line: 140, column: 7, scope: !132)
!240 = !DILocation(line: 140, column: 15, scope: !132)
!241 = !DILocation(line: 140, column: 19, scope: !132)
!242 = !DILocation(line: 142, column: 10, scope: !243)
!243 = distinct !DILexicalBlock(scope: !132, file: !3, line: 142, column: 10)
!244 = !DILocation(line: 142, column: 16, scope: !243)
!245 = !DILocation(line: 142, column: 10, scope: !132)
!246 = !DILocation(line: 143, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !3, line: 142, column: 39)
!248 = !DILocation(line: 143, column: 36, scope: !247)
!249 = !DILocation(line: 143, column: 23, scope: !247)
!250 = !DILocation(line: 143, column: 9, scope: !247)
!251 = !DILocation(line: 143, column: 17, scope: !247)
!252 = !DILocation(line: 143, column: 21, scope: !247)
!253 = !DILocation(line: 144, column: 7, scope: !247)
!254 = !DILocation(line: 145, column: 15, scope: !255)
!255 = distinct !DILexicalBlock(scope: !243, file: !3, line: 145, column: 15)
!256 = !DILocation(line: 145, column: 21, scope: !255)
!257 = !DILocation(line: 145, column: 15, scope: !243)
!258 = !DILocation(line: 146, column: 29, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 145, column: 51)
!260 = !DILocation(line: 146, column: 27, scope: !259)
!261 = !DILocation(line: 146, column: 35, scope: !259)
!262 = !DILocation(line: 146, column: 60, scope: !259)
!263 = !DILocation(line: 146, column: 68, scope: !259)
!264 = !DILocation(line: 146, column: 55, scope: !259)
!265 = !DILocation(line: 146, column: 53, scope: !259)
!266 = !DILocation(line: 146, column: 9, scope: !259)
!267 = !DILocation(line: 146, column: 17, scope: !259)
!268 = !DILocation(line: 146, column: 21, scope: !259)
!269 = !DILocation(line: 147, column: 7, scope: !259)
!270 = !DILocation(line: 148, column: 15, scope: !271)
!271 = distinct !DILexicalBlock(scope: !255, file: !3, line: 148, column: 15)
!272 = !DILocation(line: 148, column: 21, scope: !271)
!273 = !DILocation(line: 148, column: 15, scope: !255)
!274 = !DILocation(line: 149, column: 57, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 148, column: 49)
!276 = !DILocation(line: 149, column: 65, scope: !275)
!277 = !DILocation(line: 149, column: 52, scope: !275)
!278 = !DILocation(line: 149, column: 50, scope: !275)
!279 = !DILocation(line: 149, column: 9, scope: !275)
!280 = !DILocation(line: 149, column: 17, scope: !275)
!281 = !DILocation(line: 149, column: 21, scope: !275)
!282 = !DILocation(line: 150, column: 7, scope: !275)
!283 = !DILocation(line: 152, column: 52, scope: !284)
!284 = distinct !DILexicalBlock(scope: !271, file: !3, line: 151, column: 12)
!285 = !DILocation(line: 152, column: 60, scope: !284)
!286 = !DILocation(line: 152, column: 47, scope: !284)
!287 = !DILocation(line: 152, column: 45, scope: !284)
!288 = !DILocation(line: 152, column: 9, scope: !284)
!289 = !DILocation(line: 152, column: 17, scope: !284)
!290 = !DILocation(line: 152, column: 21, scope: !284)
!291 = !DILocation(line: 155, column: 14, scope: !132)
!292 = !DILocation(line: 155, column: 7, scope: !132)
!293 = !DILocation(line: 158, column: 1, scope: !72)
!294 = distinct !DISubprogram(name: "cheb_eval_e", scope: !295, file: !295, line: 3, type: !296, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !82)
!295 = !DIFile(filename: "./../cheb_eval.c", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_sin")
!296 = !DISubroutineType(types: !297)
!297 = !{!59, !298, !89, !75}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!300 = !DILocalVariable(name: "cs", arg: 1, scope: !294, file: !295, line: 3, type: !298)
!301 = !DILocation(line: 3, column: 33, scope: !294)
!302 = !DILocalVariable(name: "x", arg: 2, scope: !294, file: !295, line: 4, type: !89)
!303 = !DILocation(line: 4, column: 26, scope: !294)
!304 = !DILocalVariable(name: "result", arg: 3, scope: !294, file: !295, line: 5, type: !75)
!305 = !DILocation(line: 5, column: 29, scope: !294)
!306 = !DILocalVariable(name: "j", scope: !294, file: !295, line: 7, type: !59)
!307 = !DILocation(line: 7, column: 7, scope: !294)
!308 = !DILocalVariable(name: "d", scope: !294, file: !295, line: 8, type: !47)
!309 = !DILocation(line: 8, column: 10, scope: !294)
!310 = !DILocalVariable(name: "dd", scope: !294, file: !295, line: 9, type: !47)
!311 = !DILocation(line: 9, column: 10, scope: !294)
!312 = !DILocalVariable(name: "y", scope: !294, file: !295, line: 11, type: !47)
!313 = !DILocation(line: 11, column: 10, scope: !294)
!314 = !DILocation(line: 11, column: 20, scope: !294)
!315 = !DILocation(line: 11, column: 19, scope: !294)
!316 = !DILocation(line: 11, column: 24, scope: !294)
!317 = !DILocation(line: 11, column: 28, scope: !294)
!318 = !DILocation(line: 11, column: 22, scope: !294)
!319 = !DILocation(line: 11, column: 32, scope: !294)
!320 = !DILocation(line: 11, column: 36, scope: !294)
!321 = !DILocation(line: 11, column: 30, scope: !294)
!322 = !DILocation(line: 11, column: 42, scope: !294)
!323 = !DILocation(line: 11, column: 46, scope: !294)
!324 = !DILocation(line: 11, column: 50, scope: !294)
!325 = !DILocation(line: 11, column: 54, scope: !294)
!326 = !DILocation(line: 11, column: 48, scope: !294)
!327 = !DILocation(line: 11, column: 39, scope: !294)
!328 = !DILocalVariable(name: "y2", scope: !294, file: !295, line: 12, type: !47)
!329 = !DILocation(line: 12, column: 10, scope: !294)
!330 = !DILocation(line: 12, column: 21, scope: !294)
!331 = !DILocation(line: 12, column: 19, scope: !294)
!332 = !DILocalVariable(name: "e", scope: !294, file: !295, line: 14, type: !47)
!333 = !DILocation(line: 14, column: 10, scope: !294)
!334 = !DILocation(line: 16, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !294, file: !295, line: 16, column: 3)
!336 = !DILocation(line: 16, column: 15, scope: !335)
!337 = !DILocation(line: 16, column: 9, scope: !335)
!338 = !DILocation(line: 16, column: 7, scope: !335)
!339 = !DILocation(line: 16, column: 22, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !295, line: 16, column: 3)
!341 = !DILocation(line: 16, column: 23, scope: !340)
!342 = !DILocation(line: 16, column: 3, scope: !335)
!343 = !DILocation(line: 17, column: 12, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !295, line: 16, column: 33)
!345 = !DILocalVariable(name: "temp", scope: !344, file: !295, line: 17, type: !47)
!346 = !DILocation(line: 17, column: 19, scope: !344)
!347 = !DILocation(line: 18, column: 9, scope: !344)
!348 = !DILocation(line: 18, column: 12, scope: !344)
!349 = !DILocation(line: 18, column: 11, scope: !344)
!350 = !DILocation(line: 18, column: 16, scope: !344)
!351 = !DILocation(line: 18, column: 14, scope: !344)
!352 = !DILocation(line: 18, column: 21, scope: !344)
!353 = !DILocation(line: 18, column: 25, scope: !344)
!354 = !DILocation(line: 18, column: 27, scope: !344)
!355 = !DILocation(line: 18, column: 19, scope: !344)
!356 = !DILocation(line: 18, column: 7, scope: !344)
!357 = !DILocation(line: 19, column: 15, scope: !344)
!358 = !DILocation(line: 19, column: 18, scope: !344)
!359 = !DILocation(line: 19, column: 17, scope: !344)
!360 = !DILocation(line: 19, column: 10, scope: !344)
!361 = !DILocation(line: 19, column: 31, scope: !344)
!362 = !DILocation(line: 19, column: 26, scope: !344)
!363 = !DILocation(line: 19, column: 24, scope: !344)
!364 = !DILocation(line: 19, column: 42, scope: !344)
!365 = !DILocation(line: 19, column: 46, scope: !344)
!366 = !DILocation(line: 19, column: 48, scope: !344)
!367 = !DILocation(line: 19, column: 37, scope: !344)
!368 = !DILocation(line: 19, column: 35, scope: !344)
!369 = !DILocation(line: 19, column: 7, scope: !344)
!370 = !DILocation(line: 20, column: 10, scope: !344)
!371 = !DILocation(line: 20, column: 8, scope: !344)
!372 = !DILocation(line: 21, column: 3, scope: !344)
!373 = !DILocation(line: 16, column: 29, scope: !340)
!374 = !DILocation(line: 16, column: 3, scope: !340)
!375 = distinct !{!375, !342, !376}
!376 = !DILocation(line: 21, column: 3, scope: !335)
!377 = !DILocation(line: 24, column: 12, scope: !378)
!378 = distinct !DILexicalBlock(scope: !294, file: !295, line: 23, column: 3)
!379 = !DILocalVariable(name: "temp", scope: !378, file: !295, line: 24, type: !47)
!380 = !DILocation(line: 24, column: 19, scope: !378)
!381 = !DILocation(line: 25, column: 9, scope: !378)
!382 = !DILocation(line: 25, column: 11, scope: !378)
!383 = !DILocation(line: 25, column: 10, scope: !378)
!384 = !DILocation(line: 25, column: 15, scope: !378)
!385 = !DILocation(line: 25, column: 13, scope: !378)
!386 = !DILocation(line: 25, column: 26, scope: !378)
!387 = !DILocation(line: 25, column: 30, scope: !378)
!388 = !DILocation(line: 25, column: 24, scope: !378)
!389 = !DILocation(line: 25, column: 18, scope: !378)
!390 = !DILocation(line: 25, column: 7, scope: !378)
!391 = !DILocation(line: 26, column: 15, scope: !378)
!392 = !DILocation(line: 26, column: 17, scope: !378)
!393 = !DILocation(line: 26, column: 16, scope: !378)
!394 = !DILocation(line: 26, column: 10, scope: !378)
!395 = !DILocation(line: 26, column: 30, scope: !378)
!396 = !DILocation(line: 26, column: 25, scope: !378)
!397 = !DILocation(line: 26, column: 23, scope: !378)
!398 = !DILocation(line: 26, column: 47, scope: !378)
!399 = !DILocation(line: 26, column: 51, scope: !378)
!400 = !DILocation(line: 26, column: 42, scope: !378)
!401 = !DILocation(line: 26, column: 40, scope: !378)
!402 = !DILocation(line: 26, column: 34, scope: !378)
!403 = !DILocation(line: 26, column: 7, scope: !378)
!404 = !DILocation(line: 29, column: 17, scope: !294)
!405 = !DILocation(line: 29, column: 3, scope: !294)
!406 = !DILocation(line: 29, column: 11, scope: !294)
!407 = !DILocation(line: 29, column: 15, scope: !294)
!408 = !DILocation(line: 30, column: 35, scope: !294)
!409 = !DILocation(line: 30, column: 33, scope: !294)
!410 = !DILocation(line: 30, column: 44, scope: !294)
!411 = !DILocation(line: 30, column: 48, scope: !294)
!412 = !DILocation(line: 30, column: 50, scope: !294)
!413 = !DILocation(line: 30, column: 54, scope: !294)
!414 = !DILocation(line: 30, column: 39, scope: !294)
!415 = !DILocation(line: 30, column: 37, scope: !294)
!416 = !DILocation(line: 30, column: 3, scope: !294)
!417 = !DILocation(line: 30, column: 11, scope: !294)
!418 = !DILocation(line: 30, column: 15, scope: !294)
!419 = !DILocation(line: 32, column: 3, scope: !294)
!420 = distinct !DISubprogram(name: "gsl_sf_sin", scope: !3, file: !3, line: 166, type: !421, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !82)
!421 = !DISubroutineType(types: !422)
!422 = !{!47, !89}
!423 = !DILocalVariable(name: "x", arg: 1, scope: !420, file: !3, line: 166, type: !89)
!424 = !DILocation(line: 166, column: 32, scope: !420)
!425 = !DILocalVariable(name: "result", scope: !420, file: !3, line: 168, type: !76)
!426 = !DILocation(line: 168, column: 3, scope: !420)
!427 = !DILocalVariable(name: "status", scope: !420, file: !3, line: 168, type: !59)
!428 = !DILocation(line: 168, column: 3, scope: !429)
!429 = distinct !DILexicalBlock(scope: !420, file: !3, line: 168, column: 3)
!430 = !DILocation(line: 168, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !429, file: !3, line: 168, column: 3)
!432 = distinct !{!432, !430, !430}
!433 = !DILocation(line: 168, column: 3, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !3, line: 168, column: 3)
!435 = !DILocation(line: 169, column: 1, scope: !420)
!436 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 173, type: !437, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !82)
!437 = !DISubroutineType(types: !438)
!438 = !{!59, !59, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!442 = !DILocalVariable(name: "argc", arg: 1, scope: !436, file: !3, line: 173, type: !59)
!443 = !DILocation(line: 173, column: 14, scope: !436)
!444 = !DILocalVariable(name: "argv", arg: 2, scope: !436, file: !3, line: 173, type: !439)
!445 = !DILocation(line: 173, column: 27, scope: !436)
!446 = !DILocalVariable(name: "a", scope: !436, file: !3, line: 175, type: !47)
!447 = !DILocation(line: 175, column: 12, scope: !436)
!448 = !DILocalVariable(name: "b", scope: !436, file: !3, line: 175, type: !47)
!449 = !DILocation(line: 175, column: 15, scope: !436)
!450 = !DILocalVariable(name: "fp", scope: !436, file: !3, line: 176, type: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !453, line: 7, baseType: !454)
!453 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_sin")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !455, line: 49, size: 1728, elements: !456)
!455 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_sin")
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !472, !474, !475, !476, !480, !482, !484, !488, !491, !493, !496, !499, !500, !502, !506, !507}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !454, file: !455, line: 51, baseType: !59, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !454, file: !455, line: 54, baseType: !440, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !454, file: !455, line: 55, baseType: !440, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !454, file: !455, line: 56, baseType: !440, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !454, file: !455, line: 57, baseType: !440, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !454, file: !455, line: 58, baseType: !440, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !454, file: !455, line: 59, baseType: !440, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !454, file: !455, line: 60, baseType: !440, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !454, file: !455, line: 61, baseType: !440, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !454, file: !455, line: 64, baseType: !440, size: 64, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !454, file: !455, line: 65, baseType: !440, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !454, file: !455, line: 66, baseType: !440, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !454, file: !455, line: 68, baseType: !470, size: 64, offset: 768)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !455, line: 36, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !454, file: !455, line: 70, baseType: !473, size: 64, offset: 832)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !454, file: !455, line: 72, baseType: !59, size: 32, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !454, file: !455, line: 73, baseType: !59, size: 32, offset: 928)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !454, file: !455, line: 74, baseType: !477, size: 64, offset: 960)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !478, line: 152, baseType: !479)
!478 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_sin")
!479 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !454, file: !455, line: 77, baseType: !481, size: 16, offset: 1024)
!481 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !454, file: !455, line: 78, baseType: !483, size: 8, offset: 1040)
!483 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !454, file: !455, line: 79, baseType: !485, size: 8, offset: 1048)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 8, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 1)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !454, file: !455, line: 81, baseType: !489, size: 64, offset: 1088)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !455, line: 43, baseType: null)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !454, file: !455, line: 89, baseType: !492, size: 64, offset: 1152)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !478, line: 153, baseType: !479)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !454, file: !455, line: 91, baseType: !494, size: 64, offset: 1216)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !455, line: 37, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !454, file: !455, line: 92, baseType: !497, size: 64, offset: 1280)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !455, line: 38, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !454, file: !455, line: 93, baseType: !473, size: 64, offset: 1344)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !454, file: !455, line: 94, baseType: !501, size: 64, offset: 1408)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !454, file: !455, line: 95, baseType: !503, size: 64, offset: 1472)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !504, line: 62, baseType: !505)
!504 = !DIFile(filename: "/home/savcuda/Desktop/FloatFuz/clang+llvm/lib/clang/6.0.1/include/stddef.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_sin")
!505 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !454, file: !455, line: 96, baseType: !59, size: 32, offset: 1536)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !454, file: !455, line: 98, baseType: !508, size: 160, offset: 1568)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 160, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 20)
!511 = !DILocation(line: 176, column: 11, scope: !436)
!512 = !DILocalVariable(name: "filename", scope: !436, file: !3, line: 177, type: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!515 = !DILocation(line: 177, column: 17, scope: !436)
!516 = !DILocation(line: 177, column: 28, scope: !436)
!517 = !DILocation(line: 178, column: 16, scope: !436)
!518 = !DILocation(line: 178, column: 10, scope: !436)
!519 = !DILocation(line: 178, column: 8, scope: !436)
!520 = !DILocation(line: 179, column: 12, scope: !436)
!521 = !DILocation(line: 179, column: 5, scope: !436)
!522 = !DILocation(line: 180, column: 12, scope: !436)
!523 = !DILocation(line: 180, column: 5, scope: !436)
!524 = !DILocation(line: 182, column: 24, scope: !436)
!525 = !DILocation(line: 182, column: 5, scope: !436)
!526 = !DILocation(line: 184, column: 20, scope: !436)
!527 = !DILocation(line: 184, column: 9, scope: !436)
!528 = !DILocation(line: 184, column: 7, scope: !436)
!529 = !DILocation(line: 187, column: 39, scope: !436)
!530 = !DILocation(line: 187, column: 5, scope: !436)
!531 = !DILocation(line: 189, column: 5, scope: !436)
