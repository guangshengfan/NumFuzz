; ModuleID = 'expintE2scaled.c'
source_filename = "expintE2scaled.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_E2_scaled_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%.15e\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"The Value of b is %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@AE11_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([39 x double], [39 x double]* @AE11_data, i32 0, i32 0), i32 38, double -1.000000e+00, double 1.000000e+00, i32 20 }, align 8, !dbg !0
@AE12_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @AE12_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8, !dbg !50
@E11_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([19 x double], [19 x double]* @E11_data, i32 0, i32 0), i32 18, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8, !dbg !68
@.str.8 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@E12_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([16 x double], [16 x double]* @E12_data, i32 0, i32 0), i32 15, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8, !dbg !75
@AE13_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @AE13_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8, !dbg !82
@AE14_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([26 x double], [26 x double]* @AE14_data, i32 0, i32 0), i32 25, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8, !dbg !86
@AE11_data = internal global [39 x double] [double 0x3FBF1AD618F044DF, double 0xBFB0A9A87F0D6293, double 0x3F740F8F46851DF9, double 0xBF454633A6CCE18E, double 0x3F18998663F01ADE, double 0x3E9C339B261640BC, double 0xBEE103D5BB9AAB3D, double 0x3EC78613786DBCF4, double 0x3E6E53896974958F, double 0xBE9723C6C96448E2, double 0x3E6F4038BD973D1B, double 0x3E64C8753A8F884E, double 0xBE4ABE3D048C8226, double 0xBE35FBDB0B4CF7A6, double 0x3E227532D4BEE2DB, double 0x3E0DD70DD6257CBA, double 0xBDF79D8E7C1D6A26, double 0xBDE8B607D41BA0A3, double 0x3DCA14E059932535, double 0x3DC6391238D631A5, double 0xBD8F2C3766A739DE, double 0xBDA3780BBF472071, double -9.601510e-13, double 0x3D7DC83D06C8BD15, double 6.079900e-13, double -2.243380e-13, double -2.003270e-13, double -6.246000e-15, double 4.557100e-14, double 1.638300e-14, double -5.561000e-15, double -6.074000e-15, double -8.620000e-16, double 1.223000e-15, double 7.160000e-16, double -2.400000e-17, double -2.010000e-16, double -8.200000e-17, double 1.700000e-17], align 16, !dbg !44
@AE12_data = internal global [25 x double] [double 0x3FE2A32A03C719BA, double 0xBFC444C66FFFF02B, double 0xBF7BB4DB6710AAA4, double 0x3F74FED642164FBE, double 0x3F3C85FD51ED19A0, double 0xBF22D2DD6C505977, double 0xBF05EA7A701079D6, double 0xBEC6C2F917FC2887, double 0x3EB35125CD543029, double 0x3E9C3AB65C98BE9D, double 0x3E71DF79324B4BE3, double 0x3E06C0473BD28C1A, double 0xBE286E40B43F5CA9, double 0xBE1029594928050C, double 0xBDE864671E054CAB, double 0xBDB167CFB5DD2F89, double 0x3D898F20746803A5, double 0x3D7F207894EAA0FD, double 4.927350e-13, double 9.370900e-14, double 1.070700e-14, double -5.370000e-16, double -7.160000e-16, double -2.440000e-16, double -5.800000e-17], align 16, !dbg !63
@E11_data = internal global [19 x double] [double 0xC0301D0BD2B40793, double 0x401F2D216A1D5FE7, double 0xBFFF49579CA6CE02, double 0x3FD7E5579C3127C2, double 0xBFAD25471CC32C31, double 0x3F7D895CF3089CDB, double 0xBF4997E9FCA6E946, double 0x3F135E10C6179A12, double 0xBEDA0445B08214F5, double 0x3E9F6AED8E51A362, double 0xBE613AD021ADF608, double 0x3E214F789ACCD237, double 0xBDE00B503B5D3E9D, double 0x3D9B9A73DA68CF00, double 0xBD562735D31E6432, double 0x3D10A98869E609EA, double -6.545700e-16, double 2.733000e-17, double -1.080000e-18], align 16, !dbg !70
@E12_data = internal global [16 x double] [double 0xBFA324CF6B72236A, double 0x3FA5DFEB15C8ADAA, double 0xBFC0AE445CAF33EF, double 0x3F8D87C610FC0172, double 0xBF560E3FDE8933CC, double 0x3F1C2178C9AB7FF5, double 0xBEDF29E6B730A23C, double 0x3E9E73C3E3AE0B72, double 0xBE5A971FB1379A1F, double 0x3E14F8FC1DAFFB75, double 0xBDCE27A67D72C000, double 0x3D83E938E81DB5D9, double 0xBD384ED1D16C533F, double 3.062910e-15, double -1.014800e-16, double 3.150000e-18], align 16, !dbg !77
@AE13_data = internal global [25 x double] [double 0xBFE3627E93639ECB, double 0xBFBCCF1C1668E374, double 0x3F8B826041F79E1F, double 0xBF5F91C6441CC96F, double 0x3F34422526AEBE51, double 0xBF0C154190DDAF92, double 0x3EE49C445132B1D8, double 0xBEBFA1991F1EC704, double 0x3E9929799AB5A0F3, double 0xBE749F44873ABCF5, double 0x3E51556DAD3D8637, double 0xBE2DC79424A8F98F, double 0x3E0A121296222EF5, double 0xBDE73562B1C0EAD6, double 0x3DC4F887E60BE657, double 0xBDA33441AF38DBBC, double 0x3D81CCE77BC8F968, double -4.741320e-13, double 1.122110e-13, double -2.680400e-14, double 0x3CFD146A061406CD, double -1.568000e-15, double 3.830000e-16, double 0xBC9B17F9CC2CD364, double 2.300000e-17], align 16, !dbg !84
@AE14_data = internal global [26 x double] [double 0xBFC83AB6B55CB8D9, double 0xBFB623A1699A5ACE, double 0x3F7D9704FDF957C5, double 0xBF4A88B9A7027465, double 0x3F1CD564E82AD33F, double 0xBEF201EE402CD659, double 0x3EC90B96158D12D3, double 0xBEA2FD9A024B975C, double 0x3E7EF1299403D73D, double 0xBE5ACA499664FCC2, double 0x3E3872C6D255FBC4, double 0xBE175D2833E46755, double 0x3DF7425C9CCBD929, double 0xBDD804B7A91C9ADE, double 0x3DB9A2D637369C57, double -6.411480e-12, double 1.812240e-12, double -5.253800e-13, double 1.559200e-13, double -4.729000e-14, double 1.463000e-14, double -4.610000e-15, double 1.480000e-15, double -4.800000e-16, double 1.600000e-16, double -5.000000e-17], align 16, !dbg !88
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32
@0 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@1 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@2 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@3 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@4 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@5 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@6 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@7 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@8 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@9 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@10 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@11 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@12 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@13 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@14 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@15 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@16 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@17 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@18 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@19 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@20 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@21 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@22 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@23 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@24 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@25 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@26 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@27 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@28 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@29 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@30 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@31 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@32 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@33 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@34 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@35 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@36 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@37 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@38 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@39 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@40 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@41 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@42 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@43 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@44 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@45 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@46 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@47 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@48 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@49 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@50 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@51 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@52 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@53 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@54 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@55 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@56 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@57 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@58 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@59 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@60 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@61 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@62 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@63 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@64 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@65 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@66 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@67 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@68 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@69 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@70 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@71 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@72 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@73 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@74 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@75 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@76 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@77 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@78 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@79 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@80 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@81 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@82 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@83 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@84 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@85 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@86 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@87 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@88 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@89 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@90 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@91 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@92 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@93 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@94 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@95 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@96 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@97 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@98 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@99 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@100 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@101 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@102 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@103 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@104 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@105 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@106 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@107 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@108 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@109 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@110 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@111 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@112 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@113 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@114 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@115 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@116 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@117 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@118 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@119 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@120 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@121 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@122 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@123 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@124 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@125 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@126 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@127 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@128 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@129 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@130 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@131 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@132 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@133 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@134 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@135 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@136 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@137 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@138 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@139 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@140 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@141 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@142 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@143 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@144 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@145 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@146 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@147 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@148 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@149 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@150 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@151 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@152 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@153 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@154 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@155 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@156 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@157 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@158 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@159 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@160 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@161 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@162 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@163 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@164 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@165 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@166 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@167 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@168 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@169 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@170 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@171 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@172 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@173 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@174 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@175 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@176 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@177 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@178 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@179 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@180 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@181 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@182 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@183 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@184 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@185 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@186 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@187 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@188 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@189 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@190 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@191 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@192 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@193 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@194 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@195 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@196 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@197 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@198 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@199 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@200 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@201 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@202 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@203 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@204 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@205 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@206 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@207 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@208 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@209 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@210 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@211 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@212 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@213 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@214 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@215 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@216 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@217 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@218 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@219 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@220 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@221 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@222 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@223 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@224 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@225 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@226 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@227 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@228 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@229 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@230 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@231 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@232 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@233 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@234 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@235 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@236 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@237 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@238 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@239 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@240 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@241 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@242 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@243 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@244 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@245 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@246 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@247 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@248 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@249 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@250 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@251 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@252 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@253 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@254 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@255 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@256 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@257 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@258 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@259 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@260 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@261 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@262 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@263 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@264 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@265 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@266 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@267 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@268 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@269 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@270 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@271 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@272 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@273 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@274 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@275 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@276 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@277 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@278 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@279 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@280 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@281 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@282 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@283 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@284 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@285 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@286 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@287 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@288 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@289 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@290 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@291 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@292 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@293 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@294 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@295 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@296 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@297 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@298 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@299 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@300 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@301 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@302 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@303 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@304 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@305 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@306 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@307 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@308 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@309 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@310 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@311 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@312 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@313 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@314 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@315 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@316 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@317 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@318 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@319 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@320 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@321 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@322 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@323 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@324 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@325 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@326 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@327 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@328 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@329 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@330 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@331 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@332 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@333 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@334 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@335 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@336 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@337 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@338 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@339 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@340 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@341 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@342 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@343 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@344 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@345 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@346 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@347 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@348 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@349 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@350 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@351 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@352 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@353 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@354 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@355 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@356 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@357 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@358 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@359 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@360 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@361 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@362 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@363 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@364 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@365 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@366 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@367 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@368 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@369 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@370 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@371 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@372 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@373 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@374 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@375 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@376 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@377 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@378 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@379 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@380 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@381 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@382 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@383 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@384 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@385 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@386 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@387 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@388 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@389 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@390 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@391 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@392 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@393 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@394 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@395 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@396 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@397 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@398 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@399 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@400 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@401 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@402 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@403 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@404 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@405 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@406 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@407 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@408 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@409 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@410 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@411 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@412 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@413 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@414 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@415 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@416 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@417 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@418 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@419 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@420 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@421 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@422 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@423 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@424 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@425 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@426 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@427 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@428 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@429 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@430 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@431 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@432 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@433 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@434 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@435 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@436 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@437 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@438 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@439 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@440 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@441 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@442 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@443 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@444 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@445 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@446 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@447 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@448 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@449 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@450 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@451 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@452 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@453 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@454 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@455 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@456 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@457 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@458 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@459 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@460 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@461 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@462 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@463 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@464 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@465 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@466 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@467 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@468 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@469 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@470 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@471 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@472 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@473 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@474 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@475 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@476 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@477 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@478 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@479 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@480 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@481 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@482 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@483 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@484 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@485 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@486 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@487 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@488 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@489 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@490 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@491 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@492 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@493 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@494 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@495 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@496 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@497 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@498 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@499 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@500 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@501 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@502 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@503 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@504 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@505 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@506 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@507 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@508 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@509 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@510 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@511 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@512 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@513 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@514 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@515 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@516 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@517 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@518 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@519 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@520 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@521 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@522 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@523 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@524 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@525 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@526 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@527 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@528 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@529 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@530 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@531 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@532 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@533 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@534 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@535 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@536 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@537 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@538 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@539 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@540 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@541 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@542 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@543 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@544 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@545 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@546 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@547 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@548 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@549 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@550 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@551 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@552 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@553 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@554 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@555 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@556 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@557 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@558 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@559 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@560 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@561 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@562 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@563 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@564 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@565 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@566 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@567 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@568 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@569 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@570 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@571 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@572 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@573 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@574 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@575 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@576 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@577 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@578 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@579 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@580 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@581 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@582 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@583 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@584 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@585 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@586 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@587 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@588 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@589 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@590 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@591 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@592 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@593 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@594 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@595 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@596 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@597 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@598 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@599 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@600 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@601 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@602 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@603 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@604 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@605 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@606 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@607 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@608 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@609 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@610 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@611 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@612 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@613 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@614 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@615 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@616 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@617 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@618 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@619 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@620 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@621 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@622 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@623 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@624 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@625 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@626 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@627 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@628 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@629 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@630 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@631 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@632 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@633 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@634 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@635 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@636 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@637 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@638 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@639 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@640 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@641 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@642 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@643 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@644 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@645 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@646 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@647 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@648 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@649 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@650 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@651 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@652 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@653 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@654 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@655 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@656 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@657 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@658 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@659 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@660 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@661 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@662 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@663 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@664 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@665 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@666 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@667 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@668 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@669 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@670 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@671 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@672 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@673 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@674 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@675 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@676 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@677 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@678 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@679 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@680 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@681 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@682 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@683 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@684 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@685 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@686 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@687 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@688 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@689 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@690 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@691 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@692 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@693 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@694 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@695 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@696 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@697 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@698 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@699 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@700 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@701 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@702 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@703 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@704 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@705 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@706 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@707 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@708 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@709 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@710 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@711 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@712 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@713 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@714 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@715 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@716 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@717 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@718 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@719 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@720 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@721 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@722 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@723 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@724 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@725 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@726 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@727 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@728 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@729 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@730 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@731 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@732 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@733 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@734 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@735 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@736 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@737 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@738 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@739 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@740 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@741 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@742 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@743 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@744 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@745 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@746 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@747 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@748 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@749 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@750 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@751 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@752 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@753 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@754 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@755 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@756 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@757 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@758 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@759 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@760 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@761 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@762 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@763 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@764 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@765 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@766 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@767 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@768 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@769 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@770 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@771 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@772 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@773 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@774 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@775 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@776 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@777 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@778 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@779 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@780 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@781 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@782 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@783 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@784 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@785 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@786 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@787 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@788 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@789 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@790 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@791 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@792 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@793 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@794 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@795 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@796 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@797 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@798 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@799 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@800 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@801 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@802 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@803 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@804 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@805 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@806 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@807 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@808 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@809 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@810 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@811 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@812 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@813 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@814 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@815 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@816 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@817 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@818 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@819 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@820 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@821 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@822 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@823 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@824 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@825 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@826 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@827 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@828 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@829 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@830 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@831 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@832 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@833 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@834 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@835 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@836 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@837 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@838 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@839 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@840 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@841 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@842 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@843 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@844 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@845 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@846 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@847 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@848 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@849 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@850 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@851 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@852 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@853 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@854 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@855 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@856 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@857 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@858 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@859 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@860 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@861 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@862 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@863 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@864 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@865 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@866 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@867 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@868 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@869 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@870 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@871 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@872 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@873 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@874 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@875 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@876 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@877 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@878 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@879 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@880 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@881 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@882 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@883 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@884 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@885 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@886 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@887 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@888 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@889 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@890 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@891 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@892 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@893 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@894 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@895 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@896 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@897 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@898 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@899 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@900 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@901 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@902 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@903 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@904 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@905 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@906 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@907 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@908 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@909 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@910 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@911 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@912 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@913 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@914 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@915 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@916 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@917 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@918 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@919 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@920 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@921 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@922 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@923 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@924 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@925 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@926 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@927 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@928 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@929 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@930 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@931 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@932 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@933 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@934 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"
@935 = private unnamed_addr constant [17 x i8] c"expintE2scaled.c\00"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @gsl_sf_expint_E2_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !97 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %5 = xor i32 %3, 30732
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !108
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !108
  store i32 15366, i32* @__afl_prev_loc, !nosanitize !108
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !109, metadata !DIExpression()), !dbg !110
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !111, metadata !DIExpression()), !dbg !112
  %11 = load double, double* %9, align 8, !dbg !113
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !114
  %13 = call i32 @expint_E2_impl(double %11, %struct.gsl_sf_result_struct* %12, i32 1), !dbg !115
  ret i32 %13, !dbg !116
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expint_E2_impl(double, %struct.gsl_sf_result_struct*, i32) #0 !dbg !117 {
  %4 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %5 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %6 = xor i32 %4, 22108
  %7 = getelementptr i8, i8* %5, i32 %6
  %8 = load i8, i8* %7, !nosanitize !108
  %9 = add i8 %8, 1
  store i8 %9, i8* %7, !nosanitize !108
  store i32 11054, i32* @__afl_prev_loc, !nosanitize !108
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  store double %0, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !121, metadata !DIExpression()), !dbg !122
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %12, metadata !123, metadata !DIExpression()), !dbg !124
  store i32 %2, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata double* %14, metadata !127, metadata !DIExpression()), !dbg !128
  store double 0x4086232BDD7ABCD2, double* %14, align 8, !dbg !128
  call void @llvm.dbg.declare(metadata double* %15, metadata !129, metadata !DIExpression()), !dbg !130
  %36 = call double @log(double 0x4086232BDD7ABCD2) #4, !dbg !131
  %37 = fsub double 0x4086232BDD7ABCD2, %36, !dbg !132
  call void @DoubleErrBits(i32 542, double %37), !dbg !130
  call void @_show_Double(double %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @47, i32 0, i32 0), i32 372), !dbg !130
  store double %37, double* %15, align 8, !dbg !130
  %38 = load double, double* %11, align 8, !dbg !133
  %39 = load double, double* %15, align 8, !dbg !135
  %40 = fsub double -0.000000e+00, %39, !dbg !136
  call void @DoubleErrBits(i32 545, double %40), !dbg !137
  call void @_show_Double(double %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @51, i32 0, i32 0), i32 376), !dbg !137
  %41 = fcmp olt double %38, %40, !dbg !137
  br i1 %41, label %42, label %90, !dbg !138

; <label>:42:                                     ; preds = %3
  %43 = load i32, i32* @__afl_prev_loc, !dbg !139, !nosanitize !108
  %44 = load i8*, i8** @__afl_area_ptr, !dbg !139, !nosanitize !108
  %45 = xor i32 %43, 37636, !dbg !139
  %46 = getelementptr i8, i8* %44, i32 %45, !dbg !139
  %47 = load i8, i8* %46, !dbg !139, !nosanitize !108
  %48 = add i8 %47, 1, !dbg !139
  store i8 %48, i8* %46, !dbg !139, !nosanitize !108
  store i32 18818, i32* @__afl_prev_loc, !dbg !139, !nosanitize !108
  %49 = load i32, i32* %13, align 4, !dbg !139
  %50 = icmp ne i32 %49, 0, !dbg !139
  br i1 %50, label %90, label %51, !dbg !140

; <label>:51:                                     ; preds = %42
  %52 = load i32, i32* @__afl_prev_loc, !dbg !141, !nosanitize !108
  %53 = load i8*, i8** @__afl_area_ptr, !dbg !141, !nosanitize !108
  %54 = xor i32 %52, 39178, !dbg !141
  %55 = getelementptr i8, i8* %53, i32 %54, !dbg !141
  %56 = load i8, i8* %55, !dbg !141, !nosanitize !108
  %57 = add i8 %56, 1, !dbg !141
  store i8 %57, i8* %55, !dbg !141, !nosanitize !108
  store i32 19589, i32* @__afl_prev_loc, !dbg !141, !nosanitize !108
  br label %58, !dbg !141, !llvm.loop !143

; <label>:58:                                     ; preds = %51
  %59 = load i32, i32* @__afl_prev_loc, !dbg !144, !nosanitize !108
  %60 = load i8*, i8** @__afl_area_ptr, !dbg !144, !nosanitize !108
  %61 = xor i32 %59, 7951, !dbg !144
  %62 = getelementptr i8, i8* %60, i32 %61, !dbg !144
  %63 = load i8, i8* %62, !dbg !144, !nosanitize !108
  %64 = add i8 %63, 1, !dbg !144
  store i8 %64, i8* %62, !dbg !144, !nosanitize !108
  store i32 3975, i32* @__afl_prev_loc, !dbg !144, !nosanitize !108
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !144
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !144
  store double 0x7FF0000000000000, double* %66, align 8, !dbg !144
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !144
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !144
  store double 0x7FF0000000000000, double* %68, align 8, !dbg !144
  br label %69, !dbg !144, !llvm.loop !146

; <label>:69:                                     ; preds = %58
  %70 = load i32, i32* @__afl_prev_loc, !dbg !147, !nosanitize !108
  %71 = load i8*, i8** @__afl_area_ptr, !dbg !147, !nosanitize !108
  %72 = xor i32 %70, 7597, !dbg !147
  %73 = getelementptr i8, i8* %71, i32 %72, !dbg !147
  %74 = load i8, i8* %73, !dbg !147, !nosanitize !108
  %75 = add i8 %74, 1, !dbg !147
  store i8 %75, i8* %73, !dbg !147, !nosanitize !108
  store i32 3798, i32* @__afl_prev_loc, !dbg !147, !nosanitize !108
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 377, i32 16), !dbg !147
  store i32 16, i32* %10, align 4, !dbg !147
  br label %413, !dbg !147
                                                  ; No predecessors!
  %77 = load i32, i32* @__afl_prev_loc, !dbg !144, !nosanitize !108
  %78 = load i8*, i8** @__afl_area_ptr, !dbg !144, !nosanitize !108
  %79 = xor i32 %77, 3086, !dbg !144
  %80 = getelementptr i8, i8* %78, i32 %79, !dbg !144
  %81 = load i8, i8* %80, !dbg !144, !nosanitize !108
  %82 = add i8 %81, 1, !dbg !144
  store i8 %82, i8* %80, !dbg !144, !nosanitize !108
  store i32 1543, i32* @__afl_prev_loc, !dbg !144, !nosanitize !108
  br label %83, !dbg !144

; <label>:83:                                     ; preds = %76
  %84 = load i32, i32* @__afl_prev_loc, !dbg !149, !nosanitize !108
  %85 = load i8*, i8** @__afl_area_ptr, !dbg !149, !nosanitize !108
  %86 = xor i32 %84, 6421, !dbg !149
  %87 = getelementptr i8, i8* %85, i32 %86, !dbg !149
  %88 = load i8, i8* %87, !dbg !149, !nosanitize !108
  %89 = add i8 %88, 1, !dbg !149
  store i8 %89, i8* %87, !dbg !149, !nosanitize !108
  store i32 3210, i32* @__afl_prev_loc, !dbg !149, !nosanitize !108
  br label %413, !dbg !149

; <label>:90:                                     ; preds = %42, %3
  %91 = load i32, i32* @__afl_prev_loc, !dbg !150, !nosanitize !108
  %92 = load i8*, i8** @__afl_area_ptr, !dbg !150, !nosanitize !108
  %93 = xor i32 %91, 23901, !dbg !150
  %94 = getelementptr i8, i8* %92, i32 %93, !dbg !150
  %95 = load i8, i8* %94, !dbg !150, !nosanitize !108
  %96 = add i8 %95, 1, !dbg !150
  store i8 %96, i8* %94, !dbg !150, !nosanitize !108
  store i32 11950, i32* @__afl_prev_loc, !dbg !150, !nosanitize !108
  %97 = load double, double* %11, align 8, !dbg !150
  %98 = fcmp oeq double %97, 0.000000e+00, !dbg !152
  br i1 %98, label %99, label %110, !dbg !153

; <label>:99:                                     ; preds = %90
  %100 = load i32, i32* @__afl_prev_loc, !dbg !154, !nosanitize !108
  %101 = load i8*, i8** @__afl_area_ptr, !dbg !154, !nosanitize !108
  %102 = xor i32 %100, 53050, !dbg !154
  %103 = getelementptr i8, i8* %101, i32 %102, !dbg !154
  %104 = load i8, i8* %103, !dbg !154, !nosanitize !108
  %105 = add i8 %104, 1, !dbg !154
  store i8 %105, i8* %103, !dbg !154, !nosanitize !108
  store i32 26525, i32* @__afl_prev_loc, !dbg !154, !nosanitize !108
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !154
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !156
  store double 1.000000e+00, double* %107, align 8, !dbg !157
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !158
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !159
  store double 0.000000e+00, double* %109, align 8, !dbg !160
  store i32 0, i32* %10, align 4, !dbg !161
  br label %413, !dbg !161

; <label>:110:                                    ; preds = %90
  %111 = load i32, i32* @__afl_prev_loc, !dbg !162, !nosanitize !108
  %112 = load i8*, i8** @__afl_area_ptr, !dbg !162, !nosanitize !108
  %113 = xor i32 %111, 37784, !dbg !162
  %114 = getelementptr i8, i8* %112, i32 %113, !dbg !162
  %115 = load i8, i8* %114, !dbg !162, !nosanitize !108
  %116 = add i8 %115, 1, !dbg !162
  store i8 %116, i8* %114, !dbg !162, !nosanitize !108
  store i32 18892, i32* @__afl_prev_loc, !dbg !162, !nosanitize !108
  %117 = load double, double* %11, align 8, !dbg !162
  %118 = fcmp olt double %117, 1.000000e+02, !dbg !164
  br i1 %118, label %119, label %184, !dbg !165

; <label>:119:                                    ; preds = %110
  %120 = load i32, i32* @__afl_prev_loc, !dbg !166, !nosanitize !108
  %121 = load i8*, i8** @__afl_area_ptr, !dbg !166, !nosanitize !108
  %122 = xor i32 %120, 2264, !dbg !166
  %123 = getelementptr i8, i8* %121, i32 %122, !dbg !166
  %124 = load i8, i8* %123, !dbg !166, !nosanitize !108
  %125 = add i8 %124, 1, !dbg !166
  store i8 %125, i8* %123, !dbg !166, !nosanitize !108
  store i32 1132, i32* @__afl_prev_loc, !dbg !166, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %16, metadata !168, metadata !DIExpression()), !dbg !166
  %126 = load i32, i32* %13, align 4, !dbg !169
  %127 = icmp ne i32 %126, 0, !dbg !169
  br i1 %127, label %128, label %135, !dbg !169

; <label>:128:                                    ; preds = %119
  %129 = load i32, i32* @__afl_prev_loc, !dbg !169, !nosanitize !108
  %130 = load i8*, i8** @__afl_area_ptr, !dbg !169, !nosanitize !108
  %131 = xor i32 %129, 2316, !dbg !169
  %132 = getelementptr i8, i8* %130, i32 %131, !dbg !169
  %133 = load i8, i8* %132, !dbg !169, !nosanitize !108
  %134 = add i8 %133, 1, !dbg !169
  store i8 %134, i8* %132, !dbg !169, !nosanitize !108
  store i32 1158, i32* @__afl_prev_loc, !dbg !169, !nosanitize !108
  br label %145, !dbg !169

; <label>:135:                                    ; preds = %119
  %136 = load i32, i32* @__afl_prev_loc, !dbg !170, !nosanitize !108
  %137 = load i8*, i8** @__afl_area_ptr, !dbg !170, !nosanitize !108
  %138 = xor i32 %136, 55026, !dbg !170
  %139 = getelementptr i8, i8* %137, i32 %138, !dbg !170
  %140 = load i8, i8* %139, !dbg !170, !nosanitize !108
  %141 = add i8 %140, 1, !dbg !170
  store i8 %141, i8* %139, !dbg !170, !nosanitize !108
  store i32 27513, i32* @__afl_prev_loc, !dbg !170, !nosanitize !108
  %142 = load double, double* %11, align 8, !dbg !170
  %143 = fsub double -0.000000e+00, %142, !dbg !171
  call void @DoubleErrBits(i32 2169, double %143), !dbg !172
  call void @_show_Double(double %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @90, i32 0, i32 0), i32 384), !dbg !172
  %144 = call double @exp(double %143) #4, !dbg !172
  br label %145, !dbg !169

; <label>:145:                                    ; preds = %135, %128
  %146 = phi double [ 1.000000e+00, %128 ], [ %144, %135 ], !dbg !169
  %147 = load i32, i32* @__afl_prev_loc, !dbg !166, !nosanitize !108
  %148 = load i8*, i8** @__afl_area_ptr, !dbg !166, !nosanitize !108
  %149 = xor i32 %147, 43392, !dbg !166
  %150 = getelementptr i8, i8* %148, i32 %149, !dbg !166
  %151 = load i8, i8* %150, !dbg !166, !nosanitize !108
  %152 = add i8 %151, 1, !dbg !166
  store i8 %152, i8* %150, !dbg !166, !nosanitize !108
  store i32 21696, i32* @__afl_prev_loc, !dbg !166, !nosanitize !108
  store double %146, double* %16, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %18, metadata !175, metadata !DIExpression()), !dbg !176
  %153 = load double, double* %11, align 8, !dbg !177
  %154 = load i32, i32* %13, align 4, !dbg !178
  %155 = call i32 @expint_E1_impl(double %153, %struct.gsl_sf_result_struct* %17, i32 %154), !dbg !179
  store i32 %155, i32* %18, align 4, !dbg !176
  %156 = load double, double* %16, align 8, !dbg !180
  %157 = load double, double* %11, align 8, !dbg !181
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !182
  %159 = load double, double* %158, align 8, !dbg !182
  %160 = fmul double %157, %159, !dbg !183
  call void @DoubleErrBits(i32 2428, double %160), !dbg !184
  call void @_show_Double(double %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @105, i32 0, i32 0), i32 387), !dbg !184
  %161 = fsub double %156, %160, !dbg !184
  call void @DoubleErrBits(i32 2429, double %161), !dbg !185
  call void @_show_Double(double %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @106, i32 0, i32 0), i32 387), !dbg !185
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !185
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 0, !dbg !186
  store double %161, double* %163, align 8, !dbg !187
  %164 = load double, double* %16, align 8, !dbg !188
  %165 = fmul double 0x3CB0000000000000, %164, !dbg !189
  call void @DoubleErrBits(i32 2433, double %165), !dbg !190
  call void @_show_Double(double %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @111, i32 0, i32 0), i32 388), !dbg !190
  %166 = load double, double* %11, align 8, !dbg !190
  %167 = call double @llvm.fabs.f64(double %166), !dbg !191
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !192
  %169 = load double, double* %168, align 8, !dbg !192
  %170 = fmul double %167, %169, !dbg !193
  call void @DoubleErrBits(i32 2559, double %170), !dbg !194
  call void @_show_Double(double %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @116, i32 0, i32 0), i32 388), !dbg !194
  %171 = fadd double %165, %170, !dbg !194
  call void @DoubleErrBits(i32 2560, double %171), !dbg !195
  call void @_show_Double(double %171, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @117, i32 0, i32 0), i32 388), !dbg !195
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !195
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 1, !dbg !196
  store double %171, double* %173, align 8, !dbg !197
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !198
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 0, !dbg !199
  %176 = load double, double* %175, align 8, !dbg !199
  %177 = call double @llvm.fabs.f64(double %176), !dbg !200
  %178 = fmul double 0x3CC0000000000000, %177, !dbg !201
  call void @DoubleErrBits(i32 2688, double %178), !dbg !202
  call void @_show_Double(double %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @125, i32 0, i32 0), i32 389), !dbg !202
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !202
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 1, !dbg !203
  %181 = load double, double* %180, align 8, !dbg !204
  %182 = fadd double %181, %178, !dbg !204
  call void @DoubleErrBits(i32 2692, double %182), !dbg !204
  call void @_show_Double(double %182, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @129, i32 0, i32 0), i32 389), !dbg !204
  store double %182, double* %180, align 8, !dbg !204
  %183 = load i32, i32* %18, align 4, !dbg !205
  store i32 %183, i32* %10, align 4, !dbg !206
  br label %413, !dbg !206

; <label>:184:                                    ; preds = %110
  %185 = load i32, i32* @__afl_prev_loc, !dbg !207, !nosanitize !108
  %186 = load i8*, i8** @__afl_area_ptr, !dbg !207, !nosanitize !108
  %187 = xor i32 %185, 29616, !dbg !207
  %188 = getelementptr i8, i8* %186, i32 %187, !dbg !207
  %189 = load i8, i8* %188, !dbg !207, !nosanitize !108
  %190 = add i8 %189, 1, !dbg !207
  store i8 %190, i8* %188, !dbg !207, !nosanitize !108
  store i32 14808, i32* @__afl_prev_loc, !dbg !207, !nosanitize !108
  %191 = load double, double* %11, align 8, !dbg !207
  %192 = load double, double* %15, align 8, !dbg !209
  %193 = fcmp olt double %191, %192, !dbg !210
  br i1 %193, label %203, label %194, !dbg !211

; <label>:194:                                    ; preds = %184
  %195 = load i32, i32* @__afl_prev_loc, !dbg !212, !nosanitize !108
  %196 = load i8*, i8** @__afl_area_ptr, !dbg !212, !nosanitize !108
  %197 = xor i32 %195, 24018, !dbg !212
  %198 = getelementptr i8, i8* %196, i32 %197, !dbg !212
  %199 = load i8, i8* %198, !dbg !212, !nosanitize !108
  %200 = add i8 %199, 1, !dbg !212
  store i8 %200, i8* %198, !dbg !212, !nosanitize !108
  store i32 12009, i32* @__afl_prev_loc, !dbg !212, !nosanitize !108
  %201 = load i32, i32* %13, align 4, !dbg !212
  %202 = icmp ne i32 %201, 0, !dbg !212
  br i1 %202, label %203, label %353, !dbg !213

; <label>:203:                                    ; preds = %194, %184
  %204 = load i32, i32* @__afl_prev_loc, !dbg !214, !nosanitize !108
  %205 = load i8*, i8** @__afl_area_ptr, !dbg !214, !nosanitize !108
  %206 = xor i32 %204, 7574, !dbg !214
  %207 = getelementptr i8, i8* %205, i32 %206, !dbg !214
  %208 = load i8, i8* %207, !dbg !214, !nosanitize !108
  %209 = add i8 %208, 1, !dbg !214
  store i8 %209, i8* %207, !dbg !214, !nosanitize !108
  store i32 3787, i32* @__afl_prev_loc, !dbg !214, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %19, metadata !216, metadata !DIExpression()), !dbg !214
  %210 = load i32, i32* %13, align 4, !dbg !217
  %211 = icmp ne i32 %210, 0, !dbg !217
  br i1 %211, label %212, label %219, !dbg !217

; <label>:212:                                    ; preds = %203
  %213 = load i32, i32* @__afl_prev_loc, !dbg !217, !nosanitize !108
  %214 = load i8*, i8** @__afl_area_ptr, !dbg !217, !nosanitize !108
  %215 = xor i32 %213, 41596, !dbg !217
  %216 = getelementptr i8, i8* %214, i32 %215, !dbg !217
  %217 = load i8, i8* %216, !dbg !217, !nosanitize !108
  %218 = add i8 %217, 1, !dbg !217
  store i8 %218, i8* %216, !dbg !217, !nosanitize !108
  store i32 20798, i32* @__afl_prev_loc, !dbg !217, !nosanitize !108
  br label %229, !dbg !217

; <label>:219:                                    ; preds = %203
  %220 = load i32, i32* @__afl_prev_loc, !dbg !218, !nosanitize !108
  %221 = load i8*, i8** @__afl_area_ptr, !dbg !218, !nosanitize !108
  %222 = xor i32 %220, 51945, !dbg !218
  %223 = getelementptr i8, i8* %221, i32 %222, !dbg !218
  %224 = load i8, i8* %223, !dbg !218, !nosanitize !108
  %225 = add i8 %224, 1, !dbg !218
  store i8 %225, i8* %223, !dbg !218, !nosanitize !108
  store i32 25972, i32* @__afl_prev_loc, !dbg !218, !nosanitize !108
  %226 = load double, double* %11, align 8, !dbg !218
  %227 = fsub double -0.000000e+00, %226, !dbg !219
  call void @DoubleErrBits(i32 2797, double %227), !dbg !220
  call void @_show_Double(double %227, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @147, i32 0, i32 0), i32 393), !dbg !220
  %228 = call double @exp(double %227) #4, !dbg !220
  br label %229, !dbg !217

; <label>:229:                                    ; preds = %219, %212
  %230 = phi double [ 1.000000e+00, %212 ], [ %228, %219 ], !dbg !217
  %231 = load i32, i32* @__afl_prev_loc, !dbg !214, !nosanitize !108
  %232 = load i8*, i8** @__afl_area_ptr, !dbg !214, !nosanitize !108
  %233 = xor i32 %231, 23257, !dbg !214
  %234 = getelementptr i8, i8* %232, i32 %233, !dbg !214
  %235 = load i8, i8* %234, !dbg !214, !nosanitize !108
  %236 = add i8 %235, 1, !dbg !214
  store i8 %236, i8* %234, !dbg !214, !nosanitize !108
  store i32 11628, i32* @__afl_prev_loc, !dbg !214, !nosanitize !108
  store double %230, double* %19, align 8, !dbg !214
  call void @llvm.dbg.declare(metadata double* %20, metadata !221, metadata !DIExpression()), !dbg !222
  store double -2.000000e+00, double* %20, align 8, !dbg !222
  call void @llvm.dbg.declare(metadata double* %21, metadata !223, metadata !DIExpression()), !dbg !224
  store double 6.000000e+00, double* %21, align 8, !dbg !224
  call void @llvm.dbg.declare(metadata double* %22, metadata !225, metadata !DIExpression()), !dbg !226
  store double -2.400000e+01, double* %22, align 8, !dbg !226
  call void @llvm.dbg.declare(metadata double* %23, metadata !227, metadata !DIExpression()), !dbg !228
  store double 1.200000e+02, double* %23, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata double* %24, metadata !229, metadata !DIExpression()), !dbg !230
  store double -7.200000e+02, double* %24, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata double* %25, metadata !231, metadata !DIExpression()), !dbg !232
  store double 5.040000e+03, double* %25, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata double* %26, metadata !233, metadata !DIExpression()), !dbg !234
  store double -4.032000e+04, double* %26, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata double* %27, metadata !235, metadata !DIExpression()), !dbg !236
  store double 3.628800e+05, double* %27, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata double* %28, metadata !237, metadata !DIExpression()), !dbg !238
  store double -3.628800e+06, double* %28, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata double* %29, metadata !239, metadata !DIExpression()), !dbg !240
  store double 3.991680e+07, double* %29, align 8, !dbg !240
  call void @llvm.dbg.declare(metadata double* %30, metadata !241, metadata !DIExpression()), !dbg !242
  store double 0xC1BC8CFC00000000, double* %30, align 8, !dbg !242
  call void @llvm.dbg.declare(metadata double* %31, metadata !243, metadata !DIExpression()), !dbg !244
  store double 0x41F7328CC0000000, double* %31, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata double* %32, metadata !245, metadata !DIExpression()), !dbg !246
  store double 0xC2344C3B28000000, double* %32, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata double* %33, metadata !247, metadata !DIExpression()), !dbg !248
  %237 = load double, double* %11, align 8, !dbg !249
  %238 = fdiv double 1.000000e+00, %237, !dbg !250
  call void @DoubleDivErrBits(i32 2929, double %237), !dbg !248
  call void @_show_DoubleDiv(double 1.000000e+00, double %237, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @180, i32 0, i32 0), i32 407), !dbg !248
  store double %238, double* %33, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata double* %34, metadata !251, metadata !DIExpression()), !dbg !252
  %239 = load double, double* %33, align 8, !dbg !253
  %240 = load double, double* %33, align 8, !dbg !254
  %241 = load double, double* %33, align 8, !dbg !255
  %242 = load double, double* %33, align 8, !dbg !256
  %243 = load double, double* %33, align 8, !dbg !257
  %244 = load double, double* %33, align 8, !dbg !258
  %245 = load double, double* %33, align 8, !dbg !259
  %246 = fmul double %245, 0xC2344C3B28000000, !dbg !260
  call void @DoubleErrBits(i32 3058, double %246), !dbg !261
  call void @_show_Double(double %246, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @190, i32 0, i32 0), i32 408), !dbg !261
  %247 = fadd double 0x41F7328CC0000000, %246, !dbg !261
  call void @DoubleErrBits(i32 3059, double %247), !dbg !262
  call void @_show_Double(double %247, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @191, i32 0, i32 0), i32 408), !dbg !262
  %248 = fmul double %244, %247, !dbg !262
  call void @DoubleErrBits(i32 3060, double %248), !dbg !263
  call void @_show_Double(double %248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @192, i32 0, i32 0), i32 408), !dbg !263
  %249 = fadd double 0xC1BC8CFC00000000, %248, !dbg !263
  call void @DoubleErrBits(i32 3061, double %249), !dbg !264
  call void @_show_Double(double %249, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @193, i32 0, i32 0), i32 408), !dbg !264
  %250 = fmul double %243, %249, !dbg !264
  call void @DoubleErrBits(i32 3062, double %250), !dbg !265
  call void @_show_Double(double %250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @194, i32 0, i32 0), i32 408), !dbg !265
  %251 = fadd double 3.991680e+07, %250, !dbg !265
  call void @DoubleErrBits(i32 3063, double %251), !dbg !266
  call void @_show_Double(double %251, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @195, i32 0, i32 0), i32 408), !dbg !266
  %252 = fmul double %242, %251, !dbg !266
  call void @DoubleErrBits(i32 3064, double %252), !dbg !267
  call void @_show_Double(double %252, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @196, i32 0, i32 0), i32 408), !dbg !267
  %253 = fadd double -3.628800e+06, %252, !dbg !267
  call void @DoubleErrBits(i32 3065, double %253), !dbg !268
  call void @_show_Double(double %253, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @197, i32 0, i32 0), i32 408), !dbg !268
  %254 = fmul double %241, %253, !dbg !268
  call void @DoubleErrBits(i32 3066, double %254), !dbg !269
  call void @_show_Double(double %254, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @198, i32 0, i32 0), i32 408), !dbg !269
  %255 = fadd double 3.628800e+05, %254, !dbg !269
  call void @DoubleErrBits(i32 3067, double %255), !dbg !270
  call void @_show_Double(double %255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @199, i32 0, i32 0), i32 408), !dbg !270
  %256 = fmul double %240, %255, !dbg !270
  call void @DoubleErrBits(i32 3189, double %256), !dbg !271
  call void @_show_Double(double %256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @200, i32 0, i32 0), i32 408), !dbg !271
  %257 = fadd double -4.032000e+04, %256, !dbg !271
  call void @DoubleErrBits(i32 3190, double %257), !dbg !272
  call void @_show_Double(double %257, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @201, i32 0, i32 0), i32 408), !dbg !272
  %258 = fmul double %239, %257, !dbg !272
  call void @DoubleErrBits(i32 3191, double %258), !dbg !273
  call void @_show_Double(double %258, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @202, i32 0, i32 0), i32 408), !dbg !273
  %259 = fadd double 5.040000e+03, %258, !dbg !273
  call void @DoubleErrBits(i32 3192, double %259), !dbg !252
  call void @_show_Double(double %259, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @203, i32 0, i32 0), i32 408), !dbg !252
  store double %259, double* %34, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %35, metadata !274, metadata !DIExpression()), !dbg !275
  %260 = load double, double* %33, align 8, !dbg !276
  %261 = load double, double* %33, align 8, !dbg !277
  %262 = load double, double* %33, align 8, !dbg !278
  %263 = load double, double* %33, align 8, !dbg !279
  %264 = load double, double* %33, align 8, !dbg !280
  %265 = load double, double* %33, align 8, !dbg !281
  %266 = load double, double* %34, align 8, !dbg !282
  %267 = fmul double %265, %266, !dbg !283
  call void @DoubleErrBits(i32 3321, double %267), !dbg !284
  call void @_show_Double(double %267, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @213, i32 0, i32 0), i32 409), !dbg !284
  %268 = fadd double -7.200000e+02, %267, !dbg !284
  call void @DoubleErrBits(i32 3322, double %268), !dbg !285
  call void @_show_Double(double %268, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @214, i32 0, i32 0), i32 409), !dbg !285
  %269 = fmul double %264, %268, !dbg !285
  call void @DoubleErrBits(i32 3323, double %269), !dbg !286
  call void @_show_Double(double %269, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @215, i32 0, i32 0), i32 409), !dbg !286
  %270 = fadd double 1.200000e+02, %269, !dbg !286
  call void @DoubleErrBits(i32 3324, double %270), !dbg !287
  call void @_show_Double(double %270, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @216, i32 0, i32 0), i32 409), !dbg !287
  %271 = fmul double %263, %270, !dbg !287
  call void @DoubleErrBits(i32 3325, double %271), !dbg !288
  call void @_show_Double(double %271, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @217, i32 0, i32 0), i32 409), !dbg !288
  %272 = fadd double -2.400000e+01, %271, !dbg !288
  call void @DoubleErrBits(i32 3326, double %272), !dbg !289
  call void @_show_Double(double %272, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @218, i32 0, i32 0), i32 409), !dbg !289
  %273 = fmul double %262, %272, !dbg !289
  call void @DoubleErrBits(i32 3327, double %273), !dbg !290
  call void @_show_Double(double %273, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @219, i32 0, i32 0), i32 409), !dbg !290
  %274 = fadd double 6.000000e+00, %273, !dbg !290
  call void @DoubleErrBits(i32 3328, double %274), !dbg !291
  call void @_show_Double(double %274, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @220, i32 0, i32 0), i32 409), !dbg !291
  %275 = fmul double %261, %274, !dbg !291
  call void @DoubleErrBits(i32 3329, double %275), !dbg !292
  call void @_show_Double(double %275, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @221, i32 0, i32 0), i32 409), !dbg !292
  %276 = fadd double -2.000000e+00, %275, !dbg !292
  call void @DoubleErrBits(i32 3451, double %276), !dbg !293
  call void @_show_Double(double %276, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @222, i32 0, i32 0), i32 409), !dbg !293
  %277 = fmul double %260, %276, !dbg !293
  call void @DoubleErrBits(i32 3452, double %277), !dbg !275
  call void @_show_Double(double %277, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @223, i32 0, i32 0), i32 409), !dbg !275
  store double %277, double* %35, align 8, !dbg !275
  %278 = load double, double* %19, align 8, !dbg !294
  %279 = load double, double* %35, align 8, !dbg !295
  %280 = fadd double 1.000000e+00, %279, !dbg !296
  call void @DoubleErrBits(i32 3455, double %280), !dbg !297
  call void @_show_Double(double %280, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @227, i32 0, i32 0), i32 410), !dbg !297
  %281 = fmul double %278, %280, !dbg !297
  call void @DoubleErrBits(i32 3456, double %281), !dbg !298
  call void @_show_Double(double %281, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @228, i32 0, i32 0), i32 410), !dbg !298
  %282 = load double, double* %11, align 8, !dbg !298
  %283 = fdiv double %281, %282, !dbg !299
  call void @DoubleDivErrBits(i32 3458, double %282), !dbg !300
  call void @_show_DoubleDiv(double %281, double %282, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @230, i32 0, i32 0), i32 410), !dbg !300
  %284 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !300
  %285 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %284, i32 0, i32 0, !dbg !301
  store double %283, double* %285, align 8, !dbg !302
  %286 = load double, double* %11, align 8, !dbg !303
  %287 = fadd double %286, 1.000000e+00, !dbg !304
  call void @DoubleErrBits(i32 3583, double %287), !dbg !305
  call void @_show_Double(double %287, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @235, i32 0, i32 0), i32 411), !dbg !305
  %288 = fmul double 2.000000e+00, %287, !dbg !305
  call void @DoubleErrBits(i32 3584, double %288), !dbg !306
  call void @_show_Double(double %288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @236, i32 0, i32 0), i32 411), !dbg !306
  %289 = fmul double %288, 0x3CB0000000000000, !dbg !306
  call void @DoubleErrBits(i32 3585, double %289), !dbg !307
  call void @_show_Double(double %289, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @237, i32 0, i32 0), i32 411), !dbg !307
  %290 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !307
  %291 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %290, i32 0, i32 0, !dbg !308
  %292 = load double, double* %291, align 8, !dbg !308
  %293 = fmul double %289, %292, !dbg !309
  call void @DoubleErrBits(i32 3589, double %293), !dbg !310
  call void @_show_Double(double %293, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @241, i32 0, i32 0), i32 411), !dbg !310
  %294 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !310
  %295 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %294, i32 0, i32 1, !dbg !311
  store double %293, double* %295, align 8, !dbg !312
  %296 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !313
  %297 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %296, i32 0, i32 0, !dbg !315
  %298 = load double, double* %297, align 8, !dbg !315
  %299 = fcmp oeq double %298, 0.000000e+00, !dbg !316
  br i1 %299, label %300, label %339, !dbg !317

; <label>:300:                                    ; preds = %229
  %301 = load i32, i32* @__afl_prev_loc, !dbg !318, !nosanitize !108
  %302 = load i8*, i8** @__afl_area_ptr, !dbg !318, !nosanitize !108
  %303 = xor i32 %301, 14626, !dbg !318
  %304 = getelementptr i8, i8* %302, i32 %303, !dbg !318
  %305 = load i8, i8* %304, !dbg !318, !nosanitize !108
  %306 = add i8 %305, 1, !dbg !318
  store i8 %306, i8* %304, !dbg !318, !nosanitize !108
  store i32 7313, i32* @__afl_prev_loc, !dbg !318, !nosanitize !108
  br label %307, !dbg !318, !llvm.loop !319

; <label>:307:                                    ; preds = %300
  %308 = load i32, i32* @__afl_prev_loc, !dbg !320, !nosanitize !108
  %309 = load i8*, i8** @__afl_area_ptr, !dbg !320, !nosanitize !108
  %310 = xor i32 %308, 60239, !dbg !320
  %311 = getelementptr i8, i8* %309, i32 %310, !dbg !320
  %312 = load i8, i8* %311, !dbg !320, !nosanitize !108
  %313 = add i8 %312, 1, !dbg !320
  store i8 %313, i8* %311, !dbg !320, !nosanitize !108
  store i32 30119, i32* @__afl_prev_loc, !dbg !320, !nosanitize !108
  %314 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !320
  %315 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %314, i32 0, i32 0, !dbg !320
  store double 0.000000e+00, double* %315, align 8, !dbg !320
  %316 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !320
  %317 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %316, i32 0, i32 1, !dbg !320
  store double 0x10000000000000, double* %317, align 8, !dbg !320
  br label %318, !dbg !320, !llvm.loop !322

; <label>:318:                                    ; preds = %307
  %319 = load i32, i32* @__afl_prev_loc, !dbg !323, !nosanitize !108
  %320 = load i8*, i8** @__afl_area_ptr, !dbg !323, !nosanitize !108
  %321 = xor i32 %319, 1345, !dbg !323
  %322 = getelementptr i8, i8* %320, i32 %321, !dbg !323
  %323 = load i8, i8* %322, !dbg !323, !nosanitize !108
  %324 = add i8 %323, 1, !dbg !323
  store i8 %324, i8* %322, !dbg !323, !nosanitize !108
  store i32 672, i32* @__afl_prev_loc, !dbg !323, !nosanitize !108
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 413, i32 15), !dbg !323
  store i32 15, i32* %10, align 4, !dbg !323
  br label %413, !dbg !323
                                                  ; No predecessors!
  %326 = load i32, i32* @__afl_prev_loc, !dbg !320, !nosanitize !108
  %327 = load i8*, i8** @__afl_area_ptr, !dbg !320, !nosanitize !108
  %328 = xor i32 %326, 46194, !dbg !320
  %329 = getelementptr i8, i8* %327, i32 %328, !dbg !320
  %330 = load i8, i8* %329, !dbg !320, !nosanitize !108
  %331 = add i8 %330, 1, !dbg !320
  store i8 %331, i8* %329, !dbg !320, !nosanitize !108
  store i32 23097, i32* @__afl_prev_loc, !dbg !320, !nosanitize !108
  br label %332, !dbg !320

; <label>:332:                                    ; preds = %325
  %333 = load i32, i32* @__afl_prev_loc, !dbg !320, !nosanitize !108
  %334 = load i8*, i8** @__afl_area_ptr, !dbg !320, !nosanitize !108
  %335 = xor i32 %333, 11083, !dbg !320
  %336 = getelementptr i8, i8* %334, i32 %335, !dbg !320
  %337 = load i8, i8* %336, !dbg !320, !nosanitize !108
  %338 = add i8 %337, 1, !dbg !320
  store i8 %338, i8* %336, !dbg !320, !nosanitize !108
  store i32 5541, i32* @__afl_prev_loc, !dbg !320, !nosanitize !108
  br label %346, !dbg !320

; <label>:339:                                    ; preds = %229
  %340 = load i32, i32* @__afl_prev_loc, !dbg !325, !nosanitize !108
  %341 = load i8*, i8** @__afl_area_ptr, !dbg !325, !nosanitize !108
  %342 = xor i32 %340, 59246, !dbg !325
  %343 = getelementptr i8, i8* %341, i32 %342, !dbg !325
  %344 = load i8, i8* %343, !dbg !325, !nosanitize !108
  %345 = add i8 %344, 1, !dbg !325
  store i8 %345, i8* %343, !dbg !325, !nosanitize !108
  store i32 29623, i32* @__afl_prev_loc, !dbg !325, !nosanitize !108
  store i32 0, i32* %10, align 4, !dbg !325
  br label %413, !dbg !325

; <label>:346:                                    ; preds = %332
  %347 = load i32, i32* @__afl_prev_loc, !dbg !326, !nosanitize !108
  %348 = load i8*, i8** @__afl_area_ptr, !dbg !326, !nosanitize !108
  %349 = xor i32 %347, 48239, !dbg !326
  %350 = getelementptr i8, i8* %348, i32 %349, !dbg !326
  %351 = load i8, i8* %350, !dbg !326, !nosanitize !108
  %352 = add i8 %351, 1, !dbg !326
  store i8 %352, i8* %350, !dbg !326, !nosanitize !108
  store i32 24119, i32* @__afl_prev_loc, !dbg !326, !nosanitize !108
  br label %392, !dbg !326

; <label>:353:                                    ; preds = %194
  %354 = load i32, i32* @__afl_prev_loc, !dbg !327, !nosanitize !108
  %355 = load i8*, i8** @__afl_area_ptr, !dbg !327, !nosanitize !108
  %356 = xor i32 %354, 21838, !dbg !327
  %357 = getelementptr i8, i8* %355, i32 %356, !dbg !327
  %358 = load i8, i8* %357, !dbg !327, !nosanitize !108
  %359 = add i8 %358, 1, !dbg !327
  store i8 %359, i8* %357, !dbg !327, !nosanitize !108
  store i32 10919, i32* @__afl_prev_loc, !dbg !327, !nosanitize !108
  br label %360, !dbg !327, !llvm.loop !329

; <label>:360:                                    ; preds = %353
  %361 = load i32, i32* @__afl_prev_loc, !dbg !330, !nosanitize !108
  %362 = load i8*, i8** @__afl_area_ptr, !dbg !330, !nosanitize !108
  %363 = xor i32 %361, 11160, !dbg !330
  %364 = getelementptr i8, i8* %362, i32 %363, !dbg !330
  %365 = load i8, i8* %364, !dbg !330, !nosanitize !108
  %366 = add i8 %365, 1, !dbg !330
  store i8 %366, i8* %364, !dbg !330, !nosanitize !108
  store i32 5580, i32* @__afl_prev_loc, !dbg !330, !nosanitize !108
  %367 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !330
  %368 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %367, i32 0, i32 0, !dbg !330
  store double 0.000000e+00, double* %368, align 8, !dbg !330
  %369 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !330
  %370 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %369, i32 0, i32 1, !dbg !330
  store double 0x10000000000000, double* %370, align 8, !dbg !330
  br label %371, !dbg !330, !llvm.loop !332

; <label>:371:                                    ; preds = %360
  %372 = load i32, i32* @__afl_prev_loc, !dbg !333, !nosanitize !108
  %373 = load i8*, i8** @__afl_area_ptr, !dbg !333, !nosanitize !108
  %374 = xor i32 %372, 43174, !dbg !333
  %375 = getelementptr i8, i8* %373, i32 %374, !dbg !333
  %376 = load i8, i8* %375, !dbg !333, !nosanitize !108
  %377 = add i8 %376, 1, !dbg !333
  store i8 %377, i8* %375, !dbg !333, !nosanitize !108
  store i32 21587, i32* @__afl_prev_loc, !dbg !333, !nosanitize !108
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 418, i32 15), !dbg !333
  store i32 15, i32* %10, align 4, !dbg !333
  br label %413, !dbg !333
                                                  ; No predecessors!
  %379 = load i32, i32* @__afl_prev_loc, !dbg !330, !nosanitize !108
  %380 = load i8*, i8** @__afl_area_ptr, !dbg !330, !nosanitize !108
  %381 = xor i32 %379, 8283, !dbg !330
  %382 = getelementptr i8, i8* %380, i32 %381, !dbg !330
  %383 = load i8, i8* %382, !dbg !330, !nosanitize !108
  %384 = add i8 %383, 1, !dbg !330
  store i8 %384, i8* %382, !dbg !330, !nosanitize !108
  store i32 4141, i32* @__afl_prev_loc, !dbg !330, !nosanitize !108
  br label %385, !dbg !330

; <label>:385:                                    ; preds = %378
  %386 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %387 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %388 = xor i32 %386, 26964
  %389 = getelementptr i8, i8* %387, i32 %388
  %390 = load i8, i8* %389, !nosanitize !108
  %391 = add i8 %390, 1
  store i8 %391, i8* %389, !nosanitize !108
  store i32 13482, i32* @__afl_prev_loc, !nosanitize !108
  br label %392

; <label>:392:                                    ; preds = %385, %346
  %393 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %394 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %395 = xor i32 %393, 63310
  %396 = getelementptr i8, i8* %394, i32 %395
  %397 = load i8, i8* %396, !nosanitize !108
  %398 = add i8 %397, 1
  store i8 %398, i8* %396, !nosanitize !108
  store i32 31655, i32* @__afl_prev_loc, !nosanitize !108
  br label %399

; <label>:399:                                    ; preds = %392
  %400 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %401 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %402 = xor i32 %400, 62610
  %403 = getelementptr i8, i8* %401, i32 %402
  %404 = load i8, i8* %403, !nosanitize !108
  %405 = add i8 %404, 1
  store i8 %405, i8* %403, !nosanitize !108
  store i32 31305, i32* @__afl_prev_loc, !nosanitize !108
  br label %406

; <label>:406:                                    ; preds = %399
  %407 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %408 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %409 = xor i32 %407, 52572
  %410 = getelementptr i8, i8* %408, i32 %409
  %411 = load i8, i8* %410, !nosanitize !108
  %412 = add i8 %411, 1
  store i8 %412, i8* %410, !nosanitize !108
  store i32 26286, i32* @__afl_prev_loc, !nosanitize !108
  br label %413

; <label>:413:                                    ; preds = %69, %99, %145, %318, %339, %371, %406, %83
  %414 = load i32, i32* @__afl_prev_loc, !dbg !335, !nosanitize !108
  %415 = load i8*, i8** @__afl_area_ptr, !dbg !335, !nosanitize !108
  %416 = xor i32 %414, 43726, !dbg !335
  %417 = getelementptr i8, i8* %415, i32 %416, !dbg !335
  %418 = load i8, i8* %417, !dbg !335, !nosanitize !108
  %419 = add i8 %418, 1, !dbg !335
  store i8 %419, i8* %417, !dbg !335, !nosanitize !108
  store i32 21863, i32* @__afl_prev_loc, !dbg !335, !nosanitize !108
  %420 = load i32, i32* %10, align 4, !dbg !335
  ret i32 %420, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define double @gsl_sf_expint_E2_scaled(double) #0 !dbg !336 {
  %2 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %3 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %4 = xor i32 %2, 46675
  %5 = getelementptr i8, i8* %3, i32 %4
  %6 = load i8, i8* %5, !nosanitize !108
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, !nosanitize !108
  store i32 23337, i32* @__afl_prev_loc, !nosanitize !108
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %11, metadata !343, metadata !DIExpression()), !dbg !342
  %12 = load double, double* %9, align 8, !dbg !342
  %13 = call i32 @gsl_sf_expint_E2_scaled_e(double %12, %struct.gsl_sf_result_struct* %10), !dbg !342
  store i32 %13, i32* %11, align 4, !dbg !342
  %14 = load i32, i32* %11, align 4, !dbg !344
  %15 = icmp ne i32 %14, 0, !dbg !344
  br i1 %15, label %16, label %40, !dbg !342

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* @__afl_prev_loc, !dbg !346, !nosanitize !108
  %18 = load i8*, i8** @__afl_area_ptr, !dbg !346, !nosanitize !108
  %19 = xor i32 %17, 22709, !dbg !346
  %20 = getelementptr i8, i8* %18, i32 %19, !dbg !346
  %21 = load i8, i8* %20, !dbg !346, !nosanitize !108
  %22 = add i8 %21, 1, !dbg !346
  store i8 %22, i8* %20, !dbg !346, !nosanitize !108
  store i32 11354, i32* @__afl_prev_loc, !dbg !346, !nosanitize !108
  br label %23, !dbg !346, !llvm.loop !348

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* @__afl_prev_loc, !dbg !349, !nosanitize !108
  %25 = load i8*, i8** @__afl_area_ptr, !dbg !349, !nosanitize !108
  %26 = xor i32 %24, 57034, !dbg !349
  %27 = getelementptr i8, i8* %25, i32 %26, !dbg !349
  %28 = load i8, i8* %27, !dbg !349, !nosanitize !108
  %29 = add i8 %28, 1, !dbg !349
  store i8 %29, i8* %27, !dbg !349, !nosanitize !108
  store i32 28517, i32* @__afl_prev_loc, !dbg !349, !nosanitize !108
  %30 = load i32, i32* %11, align 4, !dbg !349
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 452, i32 %30), !dbg !349
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !349
  %32 = load double, double* %31, align 8, !dbg !349
  store double %32, double* %8, align 8, !dbg !349
  br label %49, !dbg !349
                                                  ; No predecessors!
  %34 = load i32, i32* @__afl_prev_loc, !dbg !346, !nosanitize !108
  %35 = load i8*, i8** @__afl_area_ptr, !dbg !346, !nosanitize !108
  %36 = xor i32 %34, 36879, !dbg !346
  %37 = getelementptr i8, i8* %35, i32 %36, !dbg !346
  %38 = load i8, i8* %37, !dbg !346, !nosanitize !108
  %39 = add i8 %38, 1, !dbg !346
  store i8 %39, i8* %37, !dbg !346, !nosanitize !108
  store i32 18439, i32* @__afl_prev_loc, !dbg !346, !nosanitize !108
  br label %40, !dbg !346

; <label>:40:                                     ; preds = %33, %1
  %41 = load i32, i32* @__afl_prev_loc, !dbg !342, !nosanitize !108
  %42 = load i8*, i8** @__afl_area_ptr, !dbg !342, !nosanitize !108
  %43 = xor i32 %41, 21810, !dbg !342
  %44 = getelementptr i8, i8* %42, i32 %43, !dbg !342
  %45 = load i8, i8* %44, !dbg !342, !nosanitize !108
  %46 = add i8 %45, 1, !dbg !342
  store i8 %46, i8* %44, !dbg !342, !nosanitize !108
  store i32 10905, i32* @__afl_prev_loc, !dbg !342, !nosanitize !108
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !342
  %48 = load double, double* %47, align 8, !dbg !342
  store double %48, double* %8, align 8, !dbg !342
  br label %49, !dbg !342

; <label>:49:                                     ; preds = %40, %23
  %50 = load i32, i32* @__afl_prev_loc, !dbg !351, !nosanitize !108
  %51 = load i8*, i8** @__afl_area_ptr, !dbg !351, !nosanitize !108
  %52 = xor i32 %50, 15928, !dbg !351
  %53 = getelementptr i8, i8* %51, i32 %52, !dbg !351
  %54 = load i8, i8* %53, !dbg !351, !nosanitize !108
  %55 = add i8 %54, 1, !dbg !351
  store i8 %55, i8* %53, !dbg !351, !nosanitize !108
  store i32 7964, i32* @__afl_prev_loc, !dbg !351, !nosanitize !108
  %56 = load double, double* %8, align 8, !dbg !351
  ret double %56, !dbg !351
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 !dbg !352 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %5 = xor i32 %3, 26615
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !108
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !108
  store i32 13307, i32* @__afl_prev_loc, !nosanitize !108
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %9, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !358, metadata !DIExpression()), !dbg !359
  store i8** %1, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata double* %12, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata double* %13, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !366, metadata !DIExpression()), !dbg !427
  store %struct._IO_FILE* null, %struct._IO_FILE** %14, align 8, !dbg !427
  call void @llvm.dbg.declare(metadata i8** %15, metadata !428, metadata !DIExpression()), !dbg !431
  %16 = load i8**, i8*** %11, align 8, !dbg !432
  %17 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !432
  %18 = load i8*, i8** %17, align 8, !dbg !432
  store i8* %18, i8** %15, align 8, !dbg !431
  %19 = load i8*, i8** %15, align 8, !dbg !433
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !434
  store %struct._IO_FILE* %20, %struct._IO_FILE** %14, align 8, !dbg !435
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !436
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), double* %12), !dbg !437
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !438
  %24 = call i32 @fclose(%struct._IO_FILE* %23), !dbg !439
  %25 = load double, double* %12, align 8, !dbg !440
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %25), !dbg !441
  %27 = load double, double* %12, align 8, !dbg !442
  %28 = call double @gsl_sf_expint_E2_scaled(double %27), !dbg !443
  store double %28, double* %13, align 8, !dbg !444
  %29 = load double, double* %13, align 8, !dbg !445
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), double %29), !dbg !446
  ret i32 0, !dbg !447
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expint_E1_impl(double, %struct.gsl_sf_result_struct*, i32) #0 !dbg !448 {
  %4 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %5 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %6 = xor i32 %4, 42244
  %7 = getelementptr i8, i8* %5, i32 %6
  %8 = load i8, i8* %7, !nosanitize !108
  %9 = add i8 %8, 1
  store i8 %9, i8* %7, !nosanitize !108
  store i32 21122, i32* @__afl_prev_loc, !nosanitize !108
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca double, align 8
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca double, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !449, metadata !DIExpression()), !dbg !450
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %12, metadata !451, metadata !DIExpression()), !dbg !452
  store i32 %2, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !453, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.declare(metadata double* %14, metadata !455, metadata !DIExpression()), !dbg !456
  store double 0x4086232BDD7ABCD2, double* %14, align 8, !dbg !456
  call void @llvm.dbg.declare(metadata double* %15, metadata !457, metadata !DIExpression()), !dbg !458
  %30 = call double @log(double 0x4086232BDD7ABCD2) #4, !dbg !459
  %31 = fsub double 0x4086232BDD7ABCD2, %30, !dbg !460
  call void @DoubleErrBits(i32 729, double %31), !dbg !458
  call void @_show_Double(double %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @378, i32 0, i32 0), i32 293), !dbg !458
  store double %31, double* %15, align 8, !dbg !458
  %32 = load double, double* %11, align 8, !dbg !461
  %33 = load double, double* %15, align 8, !dbg !463
  %34 = fsub double -0.000000e+00, %33, !dbg !464
  call void @DoubleErrBits(i32 732, double %34), !dbg !465
  call void @_show_Double(double %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @382, i32 0, i32 0), i32 297), !dbg !465
  %35 = fcmp olt double %32, %34, !dbg !465
  br i1 %35, label %36, label %84, !dbg !466

; <label>:36:                                     ; preds = %3
  %37 = load i32, i32* @__afl_prev_loc, !dbg !467, !nosanitize !108
  %38 = load i8*, i8** @__afl_area_ptr, !dbg !467, !nosanitize !108
  %39 = xor i32 %37, 37460, !dbg !467
  %40 = getelementptr i8, i8* %38, i32 %39, !dbg !467
  %41 = load i8, i8* %40, !dbg !467, !nosanitize !108
  %42 = add i8 %41, 1, !dbg !467
  store i8 %42, i8* %40, !dbg !467, !nosanitize !108
  store i32 18730, i32* @__afl_prev_loc, !dbg !467, !nosanitize !108
  %43 = load i32, i32* %13, align 4, !dbg !467
  %44 = icmp ne i32 %43, 0, !dbg !467
  br i1 %44, label %84, label %45, !dbg !468

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* @__afl_prev_loc, !dbg !469, !nosanitize !108
  %47 = load i8*, i8** @__afl_area_ptr, !dbg !469, !nosanitize !108
  %48 = xor i32 %46, 13016, !dbg !469
  %49 = getelementptr i8, i8* %47, i32 %48, !dbg !469
  %50 = load i8, i8* %49, !dbg !469, !nosanitize !108
  %51 = add i8 %50, 1, !dbg !469
  store i8 %51, i8* %49, !dbg !469, !nosanitize !108
  store i32 6508, i32* @__afl_prev_loc, !dbg !469, !nosanitize !108
  br label %52, !dbg !469, !llvm.loop !471

; <label>:52:                                     ; preds = %45
  %53 = load i32, i32* @__afl_prev_loc, !dbg !472, !nosanitize !108
  %54 = load i8*, i8** @__afl_area_ptr, !dbg !472, !nosanitize !108
  %55 = xor i32 %53, 21538, !dbg !472
  %56 = getelementptr i8, i8* %54, i32 %55, !dbg !472
  %57 = load i8, i8* %56, !dbg !472, !nosanitize !108
  %58 = add i8 %57, 1, !dbg !472
  store i8 %58, i8* %56, !dbg !472, !nosanitize !108
  store i32 10769, i32* @__afl_prev_loc, !dbg !472, !nosanitize !108
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !472
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 0, !dbg !472
  store double 0x7FF0000000000000, double* %60, align 8, !dbg !472
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !472
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !472
  store double 0x7FF0000000000000, double* %62, align 8, !dbg !472
  br label %63, !dbg !472, !llvm.loop !474

; <label>:63:                                     ; preds = %52
  %64 = load i32, i32* @__afl_prev_loc, !dbg !475, !nosanitize !108
  %65 = load i8*, i8** @__afl_area_ptr, !dbg !475, !nosanitize !108
  %66 = xor i32 %64, 61601, !dbg !475
  %67 = getelementptr i8, i8* %65, i32 %66, !dbg !475
  %68 = load i8, i8* %67, !dbg !475, !nosanitize !108
  %69 = add i8 %68, 1, !dbg !475
  store i8 %69, i8* %67, !dbg !475, !nosanitize !108
  store i32 30800, i32* @__afl_prev_loc, !dbg !475, !nosanitize !108
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 298, i32 16), !dbg !475
  store i32 16, i32* %10, align 4, !dbg !475
  br label %742, !dbg !475
                                                  ; No predecessors!
  %71 = load i32, i32* @__afl_prev_loc, !dbg !472, !nosanitize !108
  %72 = load i8*, i8** @__afl_area_ptr, !dbg !472, !nosanitize !108
  %73 = xor i32 %71, 43005, !dbg !472
  %74 = getelementptr i8, i8* %72, i32 %73, !dbg !472
  %75 = load i8, i8* %74, !dbg !472, !nosanitize !108
  %76 = add i8 %75, 1, !dbg !472
  store i8 %76, i8* %74, !dbg !472, !nosanitize !108
  store i32 21502, i32* @__afl_prev_loc, !dbg !472, !nosanitize !108
  br label %77, !dbg !472

; <label>:77:                                     ; preds = %70
  %78 = load i32, i32* @__afl_prev_loc, !dbg !477, !nosanitize !108
  %79 = load i8*, i8** @__afl_area_ptr, !dbg !477, !nosanitize !108
  %80 = xor i32 %78, 3496, !dbg !477
  %81 = getelementptr i8, i8* %79, i32 %80, !dbg !477
  %82 = load i8, i8* %81, !dbg !477, !nosanitize !108
  %83 = add i8 %82, 1, !dbg !477
  store i8 %83, i8* %81, !dbg !477, !nosanitize !108
  store i32 1748, i32* @__afl_prev_loc, !dbg !477, !nosanitize !108
  br label %742, !dbg !477

; <label>:84:                                     ; preds = %36, %3
  %85 = load i32, i32* @__afl_prev_loc, !dbg !478, !nosanitize !108
  %86 = load i8*, i8** @__afl_area_ptr, !dbg !478, !nosanitize !108
  %87 = xor i32 %85, 13471, !dbg !478
  %88 = getelementptr i8, i8* %86, i32 %87, !dbg !478
  %89 = load i8, i8* %88, !dbg !478, !nosanitize !108
  %90 = add i8 %89, 1, !dbg !478
  store i8 %90, i8* %88, !dbg !478, !nosanitize !108
  store i32 6735, i32* @__afl_prev_loc, !dbg !478, !nosanitize !108
  %91 = load double, double* %11, align 8, !dbg !478
  %92 = fcmp ole double %91, -1.000000e+01, !dbg !480
  br i1 %92, label %93, label %160, !dbg !481

; <label>:93:                                     ; preds = %84
  %94 = load i32, i32* @__afl_prev_loc, !dbg !482, !nosanitize !108
  %95 = load i8*, i8** @__afl_area_ptr, !dbg !482, !nosanitize !108
  %96 = xor i32 %94, 31703, !dbg !482
  %97 = getelementptr i8, i8* %95, i32 %96, !dbg !482
  %98 = load i8, i8* %97, !dbg !482, !nosanitize !108
  %99 = add i8 %98, 1, !dbg !482
  store i8 %99, i8* %97, !dbg !482, !nosanitize !108
  store i32 15851, i32* @__afl_prev_loc, !dbg !482, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %16, metadata !484, metadata !DIExpression()), !dbg !482
  %100 = load double, double* %11, align 8, !dbg !485
  %101 = fdiv double 1.000000e+00, %100, !dbg !486
  call void @DoubleDivErrBits(i32 1646, double %100), !dbg !487
  call void @_show_DoubleDiv(double 1.000000e+00, double %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @406, i32 0, i32 0), i32 301), !dbg !487
  %102 = load i32, i32* %13, align 4, !dbg !487
  %103 = icmp ne i32 %102, 0, !dbg !487
  br i1 %103, label %104, label %111, !dbg !487

; <label>:104:                                    ; preds = %93
  %105 = load i32, i32* @__afl_prev_loc, !dbg !487, !nosanitize !108
  %106 = load i8*, i8** @__afl_area_ptr, !dbg !487, !nosanitize !108
  %107 = xor i32 %105, 20116, !dbg !487
  %108 = getelementptr i8, i8* %106, i32 %107, !dbg !487
  %109 = load i8, i8* %108, !dbg !487, !nosanitize !108
  %110 = add i8 %109, 1, !dbg !487
  store i8 %110, i8* %108, !dbg !487, !nosanitize !108
  store i32 10058, i32* @__afl_prev_loc, !dbg !487, !nosanitize !108
  br label %121, !dbg !487

; <label>:111:                                    ; preds = %93
  %112 = load i32, i32* @__afl_prev_loc, !dbg !488, !nosanitize !108
  %113 = load i8*, i8** @__afl_area_ptr, !dbg !488, !nosanitize !108
  %114 = xor i32 %112, 42630, !dbg !488
  %115 = getelementptr i8, i8* %113, i32 %114, !dbg !488
  %116 = load i8, i8* %115, !dbg !488, !nosanitize !108
  %117 = add i8 %116, 1, !dbg !488
  store i8 %117, i8* %115, !dbg !488, !nosanitize !108
  store i32 21315, i32* @__afl_prev_loc, !dbg !488, !nosanitize !108
  %118 = load double, double* %11, align 8, !dbg !488
  %119 = fsub double -0.000000e+00, %118, !dbg !489
  call void @DoubleErrBits(i32 2905, double %119), !dbg !490
  call void @_show_Double(double %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @412, i32 0, i32 0), i32 301), !dbg !490
  %120 = call double @exp(double %119) #4, !dbg !490
  br label %121, !dbg !487

; <label>:121:                                    ; preds = %111, %104
  %122 = phi double [ 1.000000e+00, %104 ], [ %120, %111 ], !dbg !487
  %123 = load i32, i32* @__afl_prev_loc, !dbg !491, !nosanitize !108
  %124 = load i8*, i8** @__afl_area_ptr, !dbg !491, !nosanitize !108
  %125 = xor i32 %123, 57780, !dbg !491
  %126 = getelementptr i8, i8* %124, i32 %125, !dbg !491
  %127 = load i8, i8* %126, !dbg !491, !nosanitize !108
  %128 = add i8 %127, 1, !dbg !491
  store i8 %128, i8* %126, !dbg !491, !nosanitize !108
  store i32 28890, i32* @__afl_prev_loc, !dbg !491, !nosanitize !108
  %129 = fmul double %101, %122, !dbg !491
  call void @DoubleErrBits(i32 3036, double %129), !dbg !482
  call void @_show_Double(double %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @416, i32 0, i32 0), i32 301), !dbg !482
  store double %129, double* %16, align 8, !dbg !482
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !492, metadata !DIExpression()), !dbg !493
  %130 = load double, double* %11, align 8, !dbg !494
  %131 = fdiv double 2.000000e+01, %130, !dbg !495
  call void @DoubleDivErrBits(i32 3038, double %130), !dbg !496
  call void @_show_DoubleDiv(double 2.000000e+01, double %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @420, i32 0, i32 0), i32 303), !dbg !496
  %132 = fadd double %131, 1.000000e+00, !dbg !496
  call void @DoubleErrBits(i32 3039, double %132), !dbg !497
  call void @_show_Double(double %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @421, i32 0, i32 0), i32 303), !dbg !497
  %133 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE11_cs, double %132, %struct.gsl_sf_result_struct* %17), !dbg !497
  %134 = load double, double* %16, align 8, !dbg !498
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !499
  %136 = load double, double* %135, align 8, !dbg !499
  %137 = fadd double 1.000000e+00, %136, !dbg !500
  call void @DoubleErrBits(i32 3165, double %137), !dbg !501
  call void @_show_Double(double %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @426, i32 0, i32 0), i32 304), !dbg !501
  %138 = fmul double %134, %137, !dbg !501
  call void @DoubleErrBits(i32 3166, double %138), !dbg !502
  call void @_show_Double(double %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @427, i32 0, i32 0), i32 304), !dbg !502
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !502
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !503
  store double %138, double* %140, align 8, !dbg !504
  %141 = load double, double* %16, align 8, !dbg !505
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !506
  %143 = load double, double* %142, align 8, !dbg !506
  %144 = fmul double %141, %143, !dbg !507
  call void @DoubleErrBits(i32 3172, double %144), !dbg !508
  call void @_show_Double(double %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @434, i32 0, i32 0), i32 305), !dbg !508
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !508
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 1, !dbg !509
  store double %144, double* %146, align 8, !dbg !510
  %147 = load double, double* %11, align 8, !dbg !511
  %148 = call double @llvm.fabs.f64(double %147), !dbg !512
  %149 = fadd double %148, 1.000000e+00, !dbg !513
  call void @DoubleErrBits(i32 3298, double %149), !dbg !514
  call void @_show_Double(double %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @440, i32 0, i32 0), i32 306), !dbg !514
  %150 = fmul double 0x3CC0000000000000, %149, !dbg !514
  call void @DoubleErrBits(i32 3299, double %150), !dbg !515
  call void @_show_Double(double %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @441, i32 0, i32 0), i32 306), !dbg !515
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !515
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 0, !dbg !516
  %153 = load double, double* %152, align 8, !dbg !516
  %154 = call double @llvm.fabs.f64(double %153), !dbg !517
  %155 = fmul double %150, %154, !dbg !518
  call void @DoubleErrBits(i32 3304, double %155), !dbg !519
  call void @_show_Double(double %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @446, i32 0, i32 0), i32 306), !dbg !519
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !519
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !520
  %158 = load double, double* %157, align 8, !dbg !521
  %159 = fadd double %158, %155, !dbg !521
  call void @DoubleErrBits(i32 3429, double %159), !dbg !521
  call void @_show_Double(double %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @450, i32 0, i32 0), i32 306), !dbg !521
  store double %159, double* %157, align 8, !dbg !521
  store i32 0, i32* %10, align 4, !dbg !522
  br label %742, !dbg !522

; <label>:160:                                    ; preds = %84
  %161 = load i32, i32* @__afl_prev_loc, !dbg !523, !nosanitize !108
  %162 = load i8*, i8** @__afl_area_ptr, !dbg !523, !nosanitize !108
  %163 = xor i32 %161, 14195, !dbg !523
  %164 = getelementptr i8, i8* %162, i32 %163, !dbg !523
  %165 = load i8, i8* %164, !dbg !523, !nosanitize !108
  %166 = add i8 %165, 1, !dbg !523
  store i8 %166, i8* %164, !dbg !523, !nosanitize !108
  store i32 7097, i32* @__afl_prev_loc, !dbg !523, !nosanitize !108
  %167 = load double, double* %11, align 8, !dbg !523
  %168 = fcmp ole double %167, -4.000000e+00, !dbg !525
  br i1 %168, label %169, label %233, !dbg !526

; <label>:169:                                    ; preds = %160
  %170 = load i32, i32* @__afl_prev_loc, !dbg !527, !nosanitize !108
  %171 = load i8*, i8** @__afl_area_ptr, !dbg !527, !nosanitize !108
  %172 = xor i32 %170, 44562, !dbg !527
  %173 = getelementptr i8, i8* %171, i32 %172, !dbg !527
  %174 = load i8, i8* %173, !dbg !527, !nosanitize !108
  %175 = add i8 %174, 1, !dbg !527
  store i8 %175, i8* %173, !dbg !527, !nosanitize !108
  store i32 22281, i32* @__afl_prev_loc, !dbg !527, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %18, metadata !529, metadata !DIExpression()), !dbg !527
  %176 = load double, double* %11, align 8, !dbg !530
  %177 = fdiv double 1.000000e+00, %176, !dbg !531
  call void @DoubleDivErrBits(i32 3689, double %176), !dbg !532
  call void @_show_DoubleDiv(double 1.000000e+00, double %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @459, i32 0, i32 0), i32 310), !dbg !532
  %178 = load i32, i32* %13, align 4, !dbg !532
  %179 = icmp ne i32 %178, 0, !dbg !532
  br i1 %179, label %180, label %187, !dbg !532

; <label>:180:                                    ; preds = %169
  %181 = load i32, i32* @__afl_prev_loc, !dbg !532, !nosanitize !108
  %182 = load i8*, i8** @__afl_area_ptr, !dbg !532, !nosanitize !108
  %183 = xor i32 %181, 18569, !dbg !532
  %184 = getelementptr i8, i8* %182, i32 %183, !dbg !532
  %185 = load i8, i8* %184, !dbg !532, !nosanitize !108
  %186 = add i8 %185, 1, !dbg !532
  store i8 %186, i8* %184, !dbg !532, !nosanitize !108
  store i32 9284, i32* @__afl_prev_loc, !dbg !532, !nosanitize !108
  br label %197, !dbg !532

; <label>:187:                                    ; preds = %169
  %188 = load i32, i32* @__afl_prev_loc, !dbg !533, !nosanitize !108
  %189 = load i8*, i8** @__afl_area_ptr, !dbg !533, !nosanitize !108
  %190 = xor i32 %188, 2353, !dbg !533
  %191 = getelementptr i8, i8* %189, i32 %190, !dbg !533
  %192 = load i8, i8* %191, !dbg !533, !nosanitize !108
  %193 = add i8 %192, 1, !dbg !533
  store i8 %193, i8* %191, !dbg !533, !nosanitize !108
  store i32 1176, i32* @__afl_prev_loc, !dbg !533, !nosanitize !108
  %194 = load double, double* %11, align 8, !dbg !533
  %195 = fsub double -0.000000e+00, %194, !dbg !534
  call void @DoubleErrBits(i32 3828, double %195), !dbg !535
  call void @_show_Double(double %195, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @465, i32 0, i32 0), i32 310), !dbg !535
  %196 = call double @exp(double %195) #4, !dbg !535
  br label %197, !dbg !532

; <label>:197:                                    ; preds = %187, %180
  %198 = phi double [ 1.000000e+00, %180 ], [ %196, %187 ], !dbg !532
  %199 = load i32, i32* @__afl_prev_loc, !dbg !536, !nosanitize !108
  %200 = load i8*, i8** @__afl_area_ptr, !dbg !536, !nosanitize !108
  %201 = xor i32 %199, 43416, !dbg !536
  %202 = getelementptr i8, i8* %200, i32 %201, !dbg !536
  %203 = load i8, i8* %202, !dbg !536, !nosanitize !108
  %204 = add i8 %203, 1, !dbg !536
  store i8 %204, i8* %202, !dbg !536, !nosanitize !108
  store i32 21708, i32* @__afl_prev_loc, !dbg !536, !nosanitize !108
  %205 = fmul double %177, %198, !dbg !536
  call void @DoubleErrBits(i32 3959, double %205), !dbg !527
  call void @_show_Double(double %205, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @469, i32 0, i32 0), i32 310), !dbg !527
  store double %205, double* %18, align 8, !dbg !527
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !537, metadata !DIExpression()), !dbg !538
  %206 = load double, double* %11, align 8, !dbg !539
  %207 = fdiv double 4.000000e+01, %206, !dbg !540
  call void @DoubleDivErrBits(i32 3537, double %206), !dbg !541
  call void @_show_DoubleDiv(double 4.000000e+01, double %206, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @473, i32 0, i32 0), i32 312), !dbg !541
  %208 = fadd double %207, 7.000000e+00, !dbg !541
  call void @DoubleErrBits(i32 3538, double %208), !dbg !542
  call void @_show_Double(double %208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @474, i32 0, i32 0), i32 312), !dbg !542
  %209 = fdiv double %208, 3.000000e+00, !dbg !542
  call void @DoubleDivErrBits(i32 3539, double 3.000000e+00), !dbg !543
  call void @_show_DoubleDiv(double %208, double 3.000000e+00, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @475, i32 0, i32 0), i32 312), !dbg !543
  %210 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE12_cs, double %209, %struct.gsl_sf_result_struct* %19), !dbg !543
  %211 = load double, double* %18, align 8, !dbg !544
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !545
  %213 = load double, double* %212, align 8, !dbg !545
  %214 = fadd double 1.000000e+00, %213, !dbg !546
  call void @DoubleErrBits(i32 3544, double %214), !dbg !547
  call void @_show_Double(double %214, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @480, i32 0, i32 0), i32 313), !dbg !547
  %215 = fmul double %211, %214, !dbg !547
  call void @DoubleErrBits(i32 3545, double %215), !dbg !548
  call void @_show_Double(double %215, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @481, i32 0, i32 0), i32 313), !dbg !548
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !548
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 0, !dbg !549
  store double %215, double* %217, align 8, !dbg !550
  %218 = load double, double* %18, align 8, !dbg !551
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !552
  %220 = load double, double* %219, align 8, !dbg !552
  %221 = fmul double %218, %220, !dbg !553
  call void @DoubleErrBits(i32 3672, double %221), !dbg !554
  call void @_show_Double(double %221, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @488, i32 0, i32 0), i32 314), !dbg !554
  %222 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !554
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %222, i32 0, i32 1, !dbg !555
  store double %221, double* %223, align 8, !dbg !556
  %224 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !557
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %224, i32 0, i32 0, !dbg !558
  %226 = load double, double* %225, align 8, !dbg !558
  %227 = call double @llvm.fabs.f64(double %226), !dbg !559
  %228 = fmul double 0x3CC0000000000000, %227, !dbg !560
  call void @DoubleErrBits(i32 3800, double %228), !dbg !561
  call void @_show_Double(double %228, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @496, i32 0, i32 0), i32 315), !dbg !561
  %229 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !561
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %229, i32 0, i32 1, !dbg !562
  %231 = load double, double* %230, align 8, !dbg !563
  %232 = fadd double %231, %228, !dbg !563
  call void @DoubleErrBits(i32 3804, double %232), !dbg !563
  call void @_show_Double(double %232, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @500, i32 0, i32 0), i32 315), !dbg !563
  store double %232, double* %230, align 8, !dbg !563
  store i32 0, i32* %10, align 4, !dbg !564
  br label %742, !dbg !564

; <label>:233:                                    ; preds = %160
  %234 = load i32, i32* @__afl_prev_loc, !dbg !565, !nosanitize !108
  %235 = load i8*, i8** @__afl_area_ptr, !dbg !565, !nosanitize !108
  %236 = xor i32 %234, 15159, !dbg !565
  %237 = getelementptr i8, i8* %235, i32 %236, !dbg !565
  %238 = load i8, i8* %237, !dbg !565, !nosanitize !108
  %239 = add i8 %238, 1, !dbg !565
  store i8 %239, i8* %237, !dbg !565, !nosanitize !108
  store i32 7579, i32* @__afl_prev_loc, !dbg !565, !nosanitize !108
  %240 = load double, double* %11, align 8, !dbg !565
  %241 = fcmp ole double %240, -1.000000e+00, !dbg !567
  br i1 %241, label %242, label %311, !dbg !568

; <label>:242:                                    ; preds = %233
  %243 = load i32, i32* @__afl_prev_loc, !dbg !569, !nosanitize !108
  %244 = load i8*, i8** @__afl_area_ptr, !dbg !569, !nosanitize !108
  %245 = xor i32 %243, 20021, !dbg !569
  %246 = getelementptr i8, i8* %244, i32 %245, !dbg !569
  %247 = load i8, i8* %246, !dbg !569, !nosanitize !108
  %248 = add i8 %247, 1, !dbg !569
  store i8 %248, i8* %246, !dbg !569, !nosanitize !108
  store i32 10010, i32* @__afl_prev_loc, !dbg !569, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %20, metadata !571, metadata !DIExpression()), !dbg !569
  %249 = load double, double* %11, align 8, !dbg !572
  %250 = call double @llvm.fabs.f64(double %249), !dbg !573
  %251 = call double @log(double %250) #4, !dbg !574
  %252 = fsub double -0.000000e+00, %251, !dbg !575
  call void @DoubleErrBits(i32 4066, double %252), !dbg !569
  call void @_show_Double(double %252, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @511, i32 0, i32 0), i32 319), !dbg !569
  store double %252, double* %20, align 8, !dbg !569
  call void @llvm.dbg.declare(metadata double* %21, metadata !576, metadata !DIExpression()), !dbg !577
  %253 = load i32, i32* %13, align 4, !dbg !578
  %254 = icmp ne i32 %253, 0, !dbg !578
  br i1 %254, label %255, label %264, !dbg !578

; <label>:255:                                    ; preds = %242
  %256 = load i32, i32* @__afl_prev_loc, !dbg !579, !nosanitize !108
  %257 = load i8*, i8** @__afl_area_ptr, !dbg !579, !nosanitize !108
  %258 = xor i32 %256, 30877, !dbg !579
  %259 = getelementptr i8, i8* %257, i32 %258, !dbg !579
  %260 = load i8, i8* %259, !dbg !579, !nosanitize !108
  %261 = add i8 %260, 1, !dbg !579
  store i8 %261, i8* %259, !dbg !579, !nosanitize !108
  store i32 15438, i32* @__afl_prev_loc, !dbg !579, !nosanitize !108
  %262 = load double, double* %11, align 8, !dbg !579
  %263 = call double @exp(double %262) #4, !dbg !580
  br label %271, !dbg !578

; <label>:264:                                    ; preds = %242
  %265 = load i32, i32* @__afl_prev_loc, !dbg !578, !nosanitize !108
  %266 = load i8*, i8** @__afl_area_ptr, !dbg !578, !nosanitize !108
  %267 = xor i32 %265, 56009, !dbg !578
  %268 = getelementptr i8, i8* %266, i32 %267, !dbg !578
  %269 = load i8, i8* %268, !dbg !578, !nosanitize !108
  %270 = add i8 %269, 1, !dbg !578
  store i8 %270, i8* %268, !dbg !578, !nosanitize !108
  store i32 28004, i32* @__afl_prev_loc, !dbg !578, !nosanitize !108
  br label %271, !dbg !578

; <label>:271:                                    ; preds = %264, %255
  %272 = phi double [ %263, %255 ], [ 1.000000e+00, %264 ], !dbg !578
  %273 = load i32, i32* @__afl_prev_loc, !dbg !577, !nosanitize !108
  %274 = load i8*, i8** @__afl_area_ptr, !dbg !577, !nosanitize !108
  %275 = xor i32 %273, 9226, !dbg !577
  %276 = getelementptr i8, i8* %274, i32 %275, !dbg !577
  %277 = load i8, i8* %276, !dbg !577, !nosanitize !108
  %278 = add i8 %277, 1, !dbg !577
  store i8 %278, i8* %276, !dbg !577, !nosanitize !108
  store i32 4613, i32* @__afl_prev_loc, !dbg !577, !nosanitize !108
  store double %272, double* %21, align 8, !dbg !577
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !581, metadata !DIExpression()), !dbg !582
  %279 = load double, double* %11, align 8, !dbg !583
  %280 = fmul double 2.000000e+00, %279, !dbg !584
  call void @DoubleErrBits(i32 358, double %280), !dbg !585
  call void @_show_Double(double %280, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @525, i32 0, i32 0), i32 322), !dbg !585
  %281 = fadd double %280, 5.000000e+00, !dbg !585
  call void @DoubleErrBits(i32 359, double %281), !dbg !586
  call void @_show_Double(double %281, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @526, i32 0, i32 0), i32 322), !dbg !586
  %282 = fdiv double %281, 3.000000e+00, !dbg !586
  call void @DoubleDivErrBits(i32 360, double 3.000000e+00), !dbg !587
  call void @_show_DoubleDiv(double %281, double 3.000000e+00, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @527, i32 0, i32 0), i32 322), !dbg !587
  %283 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @E11_cs, double %282, %struct.gsl_sf_result_struct* %22), !dbg !587
  %284 = load double, double* %21, align 8, !dbg !588
  %285 = load double, double* %20, align 8, !dbg !589
  %286 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !590
  %287 = load double, double* %286, align 8, !dbg !590
  %288 = fadd double %285, %287, !dbg !591
  call void @DoubleErrBits(i32 487, double %288), !dbg !592
  call void @_show_Double(double %288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @533, i32 0, i32 0), i32 323), !dbg !592
  %289 = fmul double %284, %288, !dbg !592
  call void @DoubleErrBits(i32 488, double %289), !dbg !593
  call void @_show_Double(double %289, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @534, i32 0, i32 0), i32 323), !dbg !593
  %290 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !593
  %291 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %290, i32 0, i32 0, !dbg !594
  store double %289, double* %291, align 8, !dbg !595
  %292 = load double, double* %21, align 8, !dbg !596
  %293 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !597
  %294 = load double, double* %293, align 8, !dbg !597
  %295 = load double, double* %20, align 8, !dbg !598
  %296 = call double @llvm.fabs.f64(double %295), !dbg !599
  %297 = fmul double 0x3CB0000000000000, %296, !dbg !600
  call void @DoubleErrBits(i32 617, double %297), !dbg !601
  call void @_show_Double(double %297, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @543, i32 0, i32 0), i32 324), !dbg !601
  %298 = fadd double %294, %297, !dbg !601
  call void @DoubleErrBits(i32 618, double %298), !dbg !602
  call void @_show_Double(double %298, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @544, i32 0, i32 0), i32 324), !dbg !602
  %299 = fmul double %292, %298, !dbg !602
  call void @DoubleErrBits(i32 619, double %299), !dbg !603
  call void @_show_Double(double %299, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @545, i32 0, i32 0), i32 324), !dbg !603
  %300 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !603
  %301 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %300, i32 0, i32 1, !dbg !604
  store double %299, double* %301, align 8, !dbg !605
  %302 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !606
  %303 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %302, i32 0, i32 0, !dbg !607
  %304 = load double, double* %303, align 8, !dbg !607
  %305 = call double @llvm.fabs.f64(double %304), !dbg !608
  %306 = fmul double 0x3CC0000000000000, %305, !dbg !609
  call void @DoubleErrBits(i32 202, double %306), !dbg !610
  call void @_show_Double(double %306, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @553, i32 0, i32 0), i32 325), !dbg !610
  %307 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !610
  %308 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %307, i32 0, i32 1, !dbg !611
  %309 = load double, double* %308, align 8, !dbg !612
  %310 = fadd double %309, %306, !dbg !612
  call void @DoubleErrBits(i32 206, double %310), !dbg !612
  call void @_show_Double(double %310, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @557, i32 0, i32 0), i32 325), !dbg !612
  store double %310, double* %308, align 8, !dbg !612
  store i32 0, i32* %10, align 4, !dbg !613
  br label %742, !dbg !613

; <label>:311:                                    ; preds = %233
  %312 = load i32, i32* @__afl_prev_loc, !dbg !614, !nosanitize !108
  %313 = load i8*, i8** @__afl_area_ptr, !dbg !614, !nosanitize !108
  %314 = xor i32 %312, 38387, !dbg !614
  %315 = getelementptr i8, i8* %313, i32 %314, !dbg !614
  %316 = load i8, i8* %315, !dbg !614, !nosanitize !108
  %317 = add i8 %316, 1, !dbg !614
  store i8 %317, i8* %315, !dbg !614, !nosanitize !108
  store i32 19193, i32* @__afl_prev_loc, !dbg !614, !nosanitize !108
  %318 = load double, double* %11, align 8, !dbg !614
  %319 = fcmp oeq double %318, 0.000000e+00, !dbg !616
  br i1 %319, label %320, label %359, !dbg !617

; <label>:320:                                    ; preds = %311
  %321 = load i32, i32* @__afl_prev_loc, !dbg !618, !nosanitize !108
  %322 = load i8*, i8** @__afl_area_ptr, !dbg !618, !nosanitize !108
  %323 = xor i32 %321, 41193, !dbg !618
  %324 = getelementptr i8, i8* %322, i32 %323, !dbg !618
  %325 = load i8, i8* %324, !dbg !618, !nosanitize !108
  %326 = add i8 %325, 1, !dbg !618
  store i8 %326, i8* %324, !dbg !618, !nosanitize !108
  store i32 20596, i32* @__afl_prev_loc, !dbg !618, !nosanitize !108
  br label %327, !dbg !618, !llvm.loop !620

; <label>:327:                                    ; preds = %320
  %328 = load i32, i32* @__afl_prev_loc, !dbg !621, !nosanitize !108
  %329 = load i8*, i8** @__afl_area_ptr, !dbg !621, !nosanitize !108
  %330 = xor i32 %328, 17307, !dbg !621
  %331 = getelementptr i8, i8* %329, i32 %330, !dbg !621
  %332 = load i8, i8* %331, !dbg !621, !nosanitize !108
  %333 = add i8 %332, 1, !dbg !621
  store i8 %333, i8* %331, !dbg !621, !nosanitize !108
  store i32 8653, i32* @__afl_prev_loc, !dbg !621, !nosanitize !108
  %334 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !621
  %335 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %334, i32 0, i32 0, !dbg !621
  store double 0x7FF8000000000000, double* %335, align 8, !dbg !621
  %336 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !621
  %337 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %336, i32 0, i32 1, !dbg !621
  store double 0x7FF8000000000000, double* %337, align 8, !dbg !621
  br label %338, !dbg !621, !llvm.loop !623

; <label>:338:                                    ; preds = %327
  %339 = load i32, i32* @__afl_prev_loc, !dbg !624, !nosanitize !108
  %340 = load i8*, i8** @__afl_area_ptr, !dbg !624, !nosanitize !108
  %341 = xor i32 %339, 58966, !dbg !624
  %342 = getelementptr i8, i8* %340, i32 %341, !dbg !624
  %343 = load i8, i8* %342, !dbg !624, !nosanitize !108
  %344 = add i8 %343, 1, !dbg !624
  store i8 %344, i8* %342, !dbg !624, !nosanitize !108
  store i32 29483, i32* @__afl_prev_loc, !dbg !624, !nosanitize !108
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 329, i32 1), !dbg !624
  store i32 1, i32* %10, align 4, !dbg !624
  br label %742, !dbg !624
                                                  ; No predecessors!
  %346 = load i32, i32* @__afl_prev_loc, !dbg !621, !nosanitize !108
  %347 = load i8*, i8** @__afl_area_ptr, !dbg !621, !nosanitize !108
  %348 = xor i32 %346, 7388, !dbg !621
  %349 = getelementptr i8, i8* %347, i32 %348, !dbg !621
  %350 = load i8, i8* %349, !dbg !621, !nosanitize !108
  %351 = add i8 %350, 1, !dbg !621
  store i8 %351, i8* %349, !dbg !621, !nosanitize !108
  store i32 3694, i32* @__afl_prev_loc, !dbg !621, !nosanitize !108
  br label %352, !dbg !621

; <label>:352:                                    ; preds = %345
  %353 = load i32, i32* @__afl_prev_loc, !dbg !626, !nosanitize !108
  %354 = load i8*, i8** @__afl_area_ptr, !dbg !626, !nosanitize !108
  %355 = xor i32 %353, 8374, !dbg !626
  %356 = getelementptr i8, i8* %354, i32 %355, !dbg !626
  %357 = load i8, i8* %356, !dbg !626, !nosanitize !108
  %358 = add i8 %357, 1, !dbg !626
  store i8 %358, i8* %356, !dbg !626, !nosanitize !108
  store i32 4187, i32* @__afl_prev_loc, !dbg !626, !nosanitize !108
  br label %714, !dbg !626

; <label>:359:                                    ; preds = %311
  %360 = load i32, i32* @__afl_prev_loc, !dbg !627, !nosanitize !108
  %361 = load i8*, i8** @__afl_area_ptr, !dbg !627, !nosanitize !108
  %362 = xor i32 %360, 65266, !dbg !627
  %363 = getelementptr i8, i8* %361, i32 %362, !dbg !627
  %364 = load i8, i8* %363, !dbg !627, !nosanitize !108
  %365 = add i8 %364, 1, !dbg !627
  store i8 %365, i8* %363, !dbg !627, !nosanitize !108
  store i32 32633, i32* @__afl_prev_loc, !dbg !627, !nosanitize !108
  %366 = load double, double* %11, align 8, !dbg !627
  %367 = fcmp ole double %366, 1.000000e+00, !dbg !629
  br i1 %367, label %368, label %437, !dbg !630

; <label>:368:                                    ; preds = %359
  %369 = load i32, i32* @__afl_prev_loc, !dbg !631, !nosanitize !108
  %370 = load i8*, i8** @__afl_area_ptr, !dbg !631, !nosanitize !108
  %371 = xor i32 %369, 51707, !dbg !631
  %372 = getelementptr i8, i8* %370, i32 %371, !dbg !631
  %373 = load i8, i8* %372, !dbg !631, !nosanitize !108
  %374 = add i8 %373, 1, !dbg !631
  store i8 %374, i8* %372, !dbg !631, !nosanitize !108
  store i32 25853, i32* @__afl_prev_loc, !dbg !631, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %23, metadata !633, metadata !DIExpression()), !dbg !631
  %375 = load double, double* %11, align 8, !dbg !634
  %376 = call double @llvm.fabs.f64(double %375), !dbg !635
  %377 = call double @log(double %376) #4, !dbg !636
  %378 = fsub double -0.000000e+00, %377, !dbg !637
  call void @DoubleErrBits(i32 1121, double %378), !dbg !631
  call void @_show_Double(double %378, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @584, i32 0, i32 0), i32 332), !dbg !631
  store double %378, double* %23, align 8, !dbg !631
  call void @llvm.dbg.declare(metadata double* %24, metadata !638, metadata !DIExpression()), !dbg !639
  %379 = load i32, i32* %13, align 4, !dbg !640
  %380 = icmp ne i32 %379, 0, !dbg !640
  br i1 %380, label %381, label %390, !dbg !640

; <label>:381:                                    ; preds = %368
  %382 = load i32, i32* @__afl_prev_loc, !dbg !641, !nosanitize !108
  %383 = load i8*, i8** @__afl_area_ptr, !dbg !641, !nosanitize !108
  %384 = xor i32 %382, 58577, !dbg !641
  %385 = getelementptr i8, i8* %383, i32 %384, !dbg !641
  %386 = load i8, i8* %385, !dbg !641, !nosanitize !108
  %387 = add i8 %386, 1, !dbg !641
  store i8 %387, i8* %385, !dbg !641, !nosanitize !108
  store i32 29288, i32* @__afl_prev_loc, !dbg !641, !nosanitize !108
  %388 = load double, double* %11, align 8, !dbg !641
  %389 = call double @exp(double %388) #4, !dbg !642
  br label %397, !dbg !640

; <label>:390:                                    ; preds = %368
  %391 = load i32, i32* @__afl_prev_loc, !dbg !640, !nosanitize !108
  %392 = load i8*, i8** @__afl_area_ptr, !dbg !640, !nosanitize !108
  %393 = xor i32 %391, 13576, !dbg !640
  %394 = getelementptr i8, i8* %392, i32 %393, !dbg !640
  %395 = load i8, i8* %394, !dbg !640, !nosanitize !108
  %396 = add i8 %395, 1, !dbg !640
  store i8 %396, i8* %394, !dbg !640, !nosanitize !108
  store i32 6788, i32* @__afl_prev_loc, !dbg !640, !nosanitize !108
  br label %397, !dbg !640

; <label>:397:                                    ; preds = %390, %381
  %398 = phi double [ %389, %381 ], [ 1.000000e+00, %390 ], !dbg !640
  %399 = load i32, i32* @__afl_prev_loc, !dbg !639, !nosanitize !108
  %400 = load i8*, i8** @__afl_area_ptr, !dbg !639, !nosanitize !108
  %401 = xor i32 %399, 28338, !dbg !639
  %402 = getelementptr i8, i8* %400, i32 %401, !dbg !639
  %403 = load i8, i8* %402, !dbg !639, !nosanitize !108
  %404 = add i8 %403, 1, !dbg !639
  store i8 %404, i8* %402, !dbg !639, !nosanitize !108
  store i32 14169, i32* @__afl_prev_loc, !dbg !639, !nosanitize !108
  store double %398, double* %24, align 8, !dbg !639
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !643, metadata !DIExpression()), !dbg !644
  %405 = load double, double* %11, align 8, !dbg !645
  %406 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @E12_cs, double %405, %struct.gsl_sf_result_struct* %25), !dbg !646
  %407 = load double, double* %24, align 8, !dbg !647
  %408 = load double, double* %23, align 8, !dbg !648
  %409 = fsub double %408, 6.875000e-01, !dbg !649
  call void @DoubleErrBits(i32 970, double %409), !dbg !650
  call void @_show_Double(double %409, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @601, i32 0, i32 0), i32 336), !dbg !650
  %410 = load double, double* %11, align 8, !dbg !650
  %411 = fadd double %409, %410, !dbg !651
  call void @DoubleErrBits(i32 972, double %411), !dbg !652
  call void @_show_Double(double %411, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @603, i32 0, i32 0), i32 336), !dbg !652
  %412 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !652
  %413 = load double, double* %412, align 8, !dbg !652
  %414 = fadd double %411, %413, !dbg !653
  call void @DoubleErrBits(i32 975, double %414), !dbg !654
  call void @_show_Double(double %414, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @606, i32 0, i32 0), i32 336), !dbg !654
  %415 = fmul double %407, %414, !dbg !654
  call void @DoubleErrBits(i32 976, double %415), !dbg !655
  call void @_show_Double(double %415, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @607, i32 0, i32 0), i32 336), !dbg !655
  %416 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !655
  %417 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %416, i32 0, i32 0, !dbg !656
  store double %415, double* %417, align 8, !dbg !657
  %418 = load double, double* %24, align 8, !dbg !658
  %419 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !659
  %420 = load double, double* %419, align 8, !dbg !659
  %421 = load double, double* %23, align 8, !dbg !660
  %422 = call double @llvm.fabs.f64(double %421), !dbg !661
  %423 = fmul double 0x3CB0000000000000, %422, !dbg !662
  call void @DoubleErrBits(i32 1105, double %423), !dbg !663
  call void @_show_Double(double %423, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @616, i32 0, i32 0), i32 337), !dbg !663
  %424 = fadd double %420, %423, !dbg !663
  call void @DoubleErrBits(i32 1106, double %424), !dbg !664
  call void @_show_Double(double %424, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @617, i32 0, i32 0), i32 337), !dbg !664
  %425 = fmul double %418, %424, !dbg !664
  call void @DoubleErrBits(i32 1107, double %425), !dbg !665
  call void @_show_Double(double %425, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @618, i32 0, i32 0), i32 337), !dbg !665
  %426 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !665
  %427 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %426, i32 0, i32 1, !dbg !666
  store double %425, double* %427, align 8, !dbg !667
  %428 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !668
  %429 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %428, i32 0, i32 0, !dbg !669
  %430 = load double, double* %429, align 8, !dbg !669
  %431 = call double @llvm.fabs.f64(double %430), !dbg !670
  %432 = fmul double 0x3CC0000000000000, %431, !dbg !671
  call void @DoubleErrBits(i32 1235, double %432), !dbg !672
  call void @_show_Double(double %432, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @626, i32 0, i32 0), i32 338), !dbg !672
  %433 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !672
  %434 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %433, i32 0, i32 1, !dbg !673
  %435 = load double, double* %434, align 8, !dbg !674
  %436 = fadd double %435, %432, !dbg !674
  call void @DoubleErrBits(i32 1360, double %436), !dbg !674
  call void @_show_Double(double %436, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @630, i32 0, i32 0), i32 338), !dbg !674
  store double %436, double* %434, align 8, !dbg !674
  store i32 0, i32* %10, align 4, !dbg !675
  br label %742, !dbg !675

; <label>:437:                                    ; preds = %359
  %438 = load i32, i32* @__afl_prev_loc, !dbg !676, !nosanitize !108
  %439 = load i8*, i8** @__afl_area_ptr, !dbg !676, !nosanitize !108
  %440 = xor i32 %438, 27354, !dbg !676
  %441 = getelementptr i8, i8* %439, i32 %440, !dbg !676
  %442 = load i8, i8* %441, !dbg !676, !nosanitize !108
  %443 = add i8 %442, 1, !dbg !676
  store i8 %443, i8* %441, !dbg !676, !nosanitize !108
  store i32 13677, i32* @__afl_prev_loc, !dbg !676, !nosanitize !108
  %444 = load double, double* %11, align 8, !dbg !676
  %445 = fcmp ole double %444, 4.000000e+00, !dbg !678
  br i1 %445, label %446, label %510, !dbg !679

; <label>:446:                                    ; preds = %437
  %447 = load i32, i32* @__afl_prev_loc, !dbg !680, !nosanitize !108
  %448 = load i8*, i8** @__afl_area_ptr, !dbg !680, !nosanitize !108
  %449 = xor i32 %447, 65432, !dbg !680
  %450 = getelementptr i8, i8* %448, i32 %449, !dbg !680
  %451 = load i8, i8* %450, !dbg !680, !nosanitize !108
  %452 = add i8 %451, 1, !dbg !680
  store i8 %452, i8* %450, !dbg !680, !nosanitize !108
  store i32 32716, i32* @__afl_prev_loc, !dbg !680, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %26, metadata !682, metadata !DIExpression()), !dbg !680
  %453 = load double, double* %11, align 8, !dbg !683
  %454 = fdiv double 1.000000e+00, %453, !dbg !684
  call void @DoubleDivErrBits(i32 1499, double %453), !dbg !685
  call void @_show_DoubleDiv(double 1.000000e+00, double %453, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @639, i32 0, i32 0), i32 342), !dbg !685
  %455 = load i32, i32* %13, align 4, !dbg !685
  %456 = icmp ne i32 %455, 0, !dbg !685
  br i1 %456, label %457, label %464, !dbg !685

; <label>:457:                                    ; preds = %446
  %458 = load i32, i32* @__afl_prev_loc, !dbg !685, !nosanitize !108
  %459 = load i8*, i8** @__afl_area_ptr, !dbg !685, !nosanitize !108
  %460 = xor i32 %458, 64446, !dbg !685
  %461 = getelementptr i8, i8* %459, i32 %460, !dbg !685
  %462 = load i8, i8* %461, !dbg !685, !nosanitize !108
  %463 = add i8 %462, 1, !dbg !685
  store i8 %463, i8* %461, !dbg !685, !nosanitize !108
  store i32 32223, i32* @__afl_prev_loc, !dbg !685, !nosanitize !108
  br label %474, !dbg !685

; <label>:464:                                    ; preds = %446
  %465 = load i32, i32* @__afl_prev_loc, !dbg !686, !nosanitize !108
  %466 = load i8*, i8** @__afl_area_ptr, !dbg !686, !nosanitize !108
  %467 = xor i32 %465, 1041, !dbg !686
  %468 = getelementptr i8, i8* %466, i32 %467, !dbg !686
  %469 = load i8, i8* %468, !dbg !686, !nosanitize !108
  %470 = add i8 %469, 1, !dbg !686
  store i8 %470, i8* %468, !dbg !686, !nosanitize !108
  store i32 520, i32* @__afl_prev_loc, !dbg !686, !nosanitize !108
  %471 = load double, double* %11, align 8, !dbg !686
  %472 = fsub double -0.000000e+00, %471, !dbg !687
  call void @DoubleErrBits(i32 1759, double %472), !dbg !688
  call void @_show_Double(double %472, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @645, i32 0, i32 0), i32 342), !dbg !688
  %473 = call double @exp(double %472) #4, !dbg !688
  br label %474, !dbg !685

; <label>:474:                                    ; preds = %464, %457
  %475 = phi double [ 1.000000e+00, %457 ], [ %473, %464 ], !dbg !685
  %476 = load i32, i32* @__afl_prev_loc, !dbg !689, !nosanitize !108
  %477 = load i8*, i8** @__afl_area_ptr, !dbg !689, !nosanitize !108
  %478 = xor i32 %476, 49875, !dbg !689
  %479 = getelementptr i8, i8* %477, i32 %478, !dbg !689
  %480 = load i8, i8* %479, !dbg !689, !nosanitize !108
  %481 = add i8 %480, 1, !dbg !689
  store i8 %481, i8* %479, !dbg !689, !nosanitize !108
  store i32 24937, i32* @__afl_prev_loc, !dbg !689, !nosanitize !108
  %482 = fmul double %454, %475, !dbg !689
  call void @DoubleErrBits(i32 1890, double %482), !dbg !680
  call void @_show_Double(double %482, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @649, i32 0, i32 0), i32 342), !dbg !680
  store double %482, double* %26, align 8, !dbg !680
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !690, metadata !DIExpression()), !dbg !691
  %483 = load double, double* %11, align 8, !dbg !692
  %484 = fdiv double 8.000000e+00, %483, !dbg !693
  call void @DoubleDivErrBits(i32 1892, double %483), !dbg !694
  call void @_show_DoubleDiv(double 8.000000e+00, double %483, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @653, i32 0, i32 0), i32 344), !dbg !694
  %485 = fsub double %484, 5.000000e+00, !dbg !694
  call void @DoubleErrBits(i32 1893, double %485), !dbg !695
  call void @_show_Double(double %485, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @654, i32 0, i32 0), i32 344), !dbg !695
  %486 = fdiv double %485, 3.000000e+00, !dbg !695
  call void @DoubleDivErrBits(i32 2015, double 3.000000e+00), !dbg !696
  call void @_show_DoubleDiv(double %485, double 3.000000e+00, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @655, i32 0, i32 0), i32 344), !dbg !696
  %487 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE13_cs, double %486, %struct.gsl_sf_result_struct* %27), !dbg !696
  %488 = load double, double* %26, align 8, !dbg !697
  %489 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !698
  %490 = load double, double* %489, align 8, !dbg !698
  %491 = fadd double 1.000000e+00, %490, !dbg !699
  call void @DoubleErrBits(i32 2020, double %491), !dbg !700
  call void @_show_Double(double %491, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @660, i32 0, i32 0), i32 345), !dbg !700
  %492 = fmul double %488, %491, !dbg !700
  call void @DoubleErrBits(i32 2021, double %492), !dbg !701
  call void @_show_Double(double %492, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @661, i32 0, i32 0), i32 345), !dbg !701
  %493 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !701
  %494 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %493, i32 0, i32 0, !dbg !702
  store double %492, double* %494, align 8, !dbg !703
  %495 = load double, double* %26, align 8, !dbg !704
  %496 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !705
  %497 = load double, double* %496, align 8, !dbg !705
  %498 = fmul double %495, %497, !dbg !706
  call void @DoubleErrBits(i32 2148, double %498), !dbg !707
  call void @_show_Double(double %498, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @668, i32 0, i32 0), i32 346), !dbg !707
  %499 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !707
  %500 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %499, i32 0, i32 1, !dbg !708
  store double %498, double* %500, align 8, !dbg !709
  %501 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !710
  %502 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %501, i32 0, i32 0, !dbg !711
  %503 = load double, double* %502, align 8, !dbg !711
  %504 = call double @llvm.fabs.f64(double %503), !dbg !712
  %505 = fmul double 0x3CC0000000000000, %504, !dbg !713
  call void @DoubleErrBits(i32 2155, double %505), !dbg !714
  call void @_show_Double(double %505, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @676, i32 0, i32 0), i32 347), !dbg !714
  %506 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !714
  %507 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %506, i32 0, i32 1, !dbg !715
  %508 = load double, double* %507, align 8, !dbg !716
  %509 = fadd double %508, %505, !dbg !716
  call void @DoubleErrBits(i32 1735, double %509), !dbg !716
  call void @_show_Double(double %509, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @680, i32 0, i32 0), i32 347), !dbg !716
  store double %509, double* %507, align 8, !dbg !716
  store i32 0, i32* %10, align 4, !dbg !717
  br label %742, !dbg !717

; <label>:510:                                    ; preds = %437
  %511 = load i32, i32* @__afl_prev_loc, !dbg !718, !nosanitize !108
  %512 = load i8*, i8** @__afl_area_ptr, !dbg !718, !nosanitize !108
  %513 = xor i32 %511, 30833, !dbg !718
  %514 = getelementptr i8, i8* %512, i32 %513, !dbg !718
  %515 = load i8, i8* %514, !dbg !718, !nosanitize !108
  %516 = add i8 %515, 1, !dbg !718
  store i8 %516, i8* %514, !dbg !718, !nosanitize !108
  store i32 15416, i32* @__afl_prev_loc, !dbg !718, !nosanitize !108
  %517 = load double, double* %11, align 8, !dbg !718
  %518 = load double, double* %15, align 8, !dbg !720
  %519 = fcmp ole double %517, %518, !dbg !721
  br i1 %519, label %529, label %520, !dbg !722

; <label>:520:                                    ; preds = %510
  %521 = load i32, i32* @__afl_prev_loc, !dbg !723, !nosanitize !108
  %522 = load i8*, i8** @__afl_area_ptr, !dbg !723, !nosanitize !108
  %523 = xor i32 %521, 43982, !dbg !723
  %524 = getelementptr i8, i8* %522, i32 %523, !dbg !723
  %525 = load i8, i8* %524, !dbg !723, !nosanitize !108
  %526 = add i8 %525, 1, !dbg !723
  store i8 %526, i8* %524, !dbg !723, !nosanitize !108
  store i32 21991, i32* @__afl_prev_loc, !dbg !723, !nosanitize !108
  %527 = load i32, i32* %13, align 4, !dbg !723
  %528 = icmp ne i32 %527, 0, !dbg !723
  br i1 %528, label %529, label %654, !dbg !724

; <label>:529:                                    ; preds = %520, %510
  %530 = load i32, i32* @__afl_prev_loc, !dbg !725, !nosanitize !108
  %531 = load i8*, i8** @__afl_area_ptr, !dbg !725, !nosanitize !108
  %532 = xor i32 %530, 21306, !dbg !725
  %533 = getelementptr i8, i8* %531, i32 %532, !dbg !725
  %534 = load i8, i8* %533, !dbg !725, !nosanitize !108
  %535 = add i8 %534, 1, !dbg !725
  store i8 %535, i8* %533, !dbg !725, !nosanitize !108
  store i32 10653, i32* @__afl_prev_loc, !dbg !725, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %28, metadata !727, metadata !DIExpression()), !dbg !725
  %536 = load double, double* %11, align 8, !dbg !728
  %537 = fdiv double 1.000000e+00, %536, !dbg !729
  call void @DoubleDivErrBits(i32 2126, double %536), !dbg !730
  call void @_show_DoubleDiv(double 1.000000e+00, double %536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @693, i32 0, i32 0), i32 351), !dbg !730
  %538 = load i32, i32* %13, align 4, !dbg !730
  %539 = icmp ne i32 %538, 0, !dbg !730
  br i1 %539, label %540, label %547, !dbg !730

; <label>:540:                                    ; preds = %529
  %541 = load i32, i32* @__afl_prev_loc, !dbg !730, !nosanitize !108
  %542 = load i8*, i8** @__afl_area_ptr, !dbg !730, !nosanitize !108
  %543 = xor i32 %541, 42541, !dbg !730
  %544 = getelementptr i8, i8* %542, i32 %543, !dbg !730
  %545 = load i8, i8* %544, !dbg !730, !nosanitize !108
  %546 = add i8 %545, 1, !dbg !730
  store i8 %546, i8* %544, !dbg !730, !nosanitize !108
  store i32 21270, i32* @__afl_prev_loc, !dbg !730, !nosanitize !108
  br label %557, !dbg !730

; <label>:547:                                    ; preds = %529
  %548 = load i32, i32* @__afl_prev_loc, !dbg !731, !nosanitize !108
  %549 = load i8*, i8** @__afl_area_ptr, !dbg !731, !nosanitize !108
  %550 = xor i32 %548, 23087, !dbg !731
  %551 = getelementptr i8, i8* %549, i32 %550, !dbg !731
  %552 = load i8, i8* %551, !dbg !731, !nosanitize !108
  %553 = add i8 %552, 1, !dbg !731
  store i8 %553, i8* %551, !dbg !731, !nosanitize !108
  store i32 11543, i32* @__afl_prev_loc, !dbg !731, !nosanitize !108
  %554 = load double, double* %11, align 8, !dbg !731
  %555 = fsub double -0.000000e+00, %554, !dbg !732
  call void @DoubleErrBits(i32 2265, double %555), !dbg !733
  call void @_show_Double(double %555, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @699, i32 0, i32 0), i32 351), !dbg !733
  %556 = call double @exp(double %555) #4, !dbg !733
  br label %557, !dbg !730

; <label>:557:                                    ; preds = %547, %540
  %558 = phi double [ 1.000000e+00, %540 ], [ %556, %547 ], !dbg !730
  %559 = load i32, i32* @__afl_prev_loc, !dbg !734, !nosanitize !108
  %560 = load i8*, i8** @__afl_area_ptr, !dbg !734, !nosanitize !108
  %561 = xor i32 %559, 50277, !dbg !734
  %562 = getelementptr i8, i8* %560, i32 %561, !dbg !734
  %563 = load i8, i8* %562, !dbg !734, !nosanitize !108
  %564 = add i8 %563, 1, !dbg !734
  store i8 %564, i8* %562, !dbg !734, !nosanitize !108
  store i32 25138, i32* @__afl_prev_loc, !dbg !734, !nosanitize !108
  %565 = fmul double %537, %558, !dbg !734
  call void @DoubleErrBits(i32 2396, double %565), !dbg !725
  call void @_show_Double(double %565, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @703, i32 0, i32 0), i32 351), !dbg !725
  store double %565, double* %28, align 8, !dbg !725
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !735, metadata !DIExpression()), !dbg !736
  %566 = load double, double* %11, align 8, !dbg !737
  %567 = fdiv double 8.000000e+00, %566, !dbg !738
  call void @DoubleDivErrBits(i32 2519, double %566), !dbg !739
  call void @_show_DoubleDiv(double 8.000000e+00, double %566, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @707, i32 0, i32 0), i32 353), !dbg !739
  %568 = fsub double %567, 1.000000e+00, !dbg !739
  call void @DoubleErrBits(i32 2520, double %568), !dbg !740
  call void @_show_Double(double %568, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @708, i32 0, i32 0), i32 353), !dbg !740
  %569 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE14_cs, double %568, %struct.gsl_sf_result_struct* %29), !dbg !740
  %570 = load double, double* %28, align 8, !dbg !741
  %571 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !742
  %572 = load double, double* %571, align 8, !dbg !742
  %573 = fadd double 1.000000e+00, %572, !dbg !743
  call void @DoubleErrBits(i32 2525, double %573), !dbg !744
  call void @_show_Double(double %573, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @713, i32 0, i32 0), i32 354), !dbg !744
  %574 = fmul double %570, %573, !dbg !744
  call void @DoubleErrBits(i32 2526, double %574), !dbg !745
  call void @_show_Double(double %574, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @714, i32 0, i32 0), i32 354), !dbg !745
  %575 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !745
  %576 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %575, i32 0, i32 0, !dbg !746
  store double %574, double* %576, align 8, !dbg !747
  %577 = load double, double* %28, align 8, !dbg !748
  %578 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !749
  %579 = load double, double* %578, align 8, !dbg !749
  %580 = fadd double 0x3CB0000000000000, %579, !dbg !750
  call void @DoubleErrBits(i32 2653, double %580), !dbg !751
  call void @_show_Double(double %580, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @721, i32 0, i32 0), i32 355), !dbg !751
  %581 = fmul double %577, %580, !dbg !751
  call void @DoubleErrBits(i32 2654, double %581), !dbg !752
  call void @_show_Double(double %581, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @722, i32 0, i32 0), i32 355), !dbg !752
  %582 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !752
  %583 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %582, i32 0, i32 1, !dbg !753
  store double %581, double* %583, align 8, !dbg !754
  %584 = load double, double* %11, align 8, !dbg !755
  %585 = fadd double %584, 1.000000e+00, !dbg !756
  call void @DoubleErrBits(i32 2658, double %585), !dbg !757
  call void @_show_Double(double %585, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @727, i32 0, i32 0), i32 356), !dbg !757
  %586 = fmul double 2.000000e+00, %585, !dbg !757
  call void @DoubleErrBits(i32 2780, double %586), !dbg !758
  call void @_show_Double(double %586, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @728, i32 0, i32 0), i32 356), !dbg !758
  %587 = fmul double %586, 0x3CB0000000000000, !dbg !758
  call void @DoubleErrBits(i32 2781, double %587), !dbg !759
  call void @_show_Double(double %587, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @729, i32 0, i32 0), i32 356), !dbg !759
  %588 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !759
  %589 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %588, i32 0, i32 0, !dbg !760
  %590 = load double, double* %589, align 8, !dbg !760
  %591 = call double @llvm.fabs.f64(double %590), !dbg !761
  %592 = fmul double %587, %591, !dbg !762
  call void @DoubleErrBits(i32 2786, double %592), !dbg !763
  call void @_show_Double(double %592, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @734, i32 0, i32 0), i32 356), !dbg !763
  %593 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !763
  %594 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %593, i32 0, i32 1, !dbg !764
  %595 = load double, double* %594, align 8, !dbg !765
  %596 = fadd double %595, %592, !dbg !765
  call void @DoubleErrBits(i32 2911, double %596), !dbg !765
  call void @_show_Double(double %596, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @738, i32 0, i32 0), i32 356), !dbg !765
  store double %596, double* %594, align 8, !dbg !765
  %597 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !766
  %598 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %597, i32 0, i32 0, !dbg !768
  %599 = load double, double* %598, align 8, !dbg !768
  %600 = fcmp oeq double %599, 0.000000e+00, !dbg !769
  br i1 %600, label %601, label %640, !dbg !770

; <label>:601:                                    ; preds = %557
  %602 = load i32, i32* @__afl_prev_loc, !dbg !771, !nosanitize !108
  %603 = load i8*, i8** @__afl_area_ptr, !dbg !771, !nosanitize !108
  %604 = xor i32 %602, 38315, !dbg !771
  %605 = getelementptr i8, i8* %603, i32 %604, !dbg !771
  %606 = load i8, i8* %605, !dbg !771, !nosanitize !108
  %607 = add i8 %606, 1, !dbg !771
  store i8 %607, i8* %605, !dbg !771, !nosanitize !108
  store i32 19157, i32* @__afl_prev_loc, !dbg !771, !nosanitize !108
  br label %608, !dbg !771, !llvm.loop !772

; <label>:608:                                    ; preds = %601
  %609 = load i32, i32* @__afl_prev_loc, !dbg !773, !nosanitize !108
  %610 = load i8*, i8** @__afl_area_ptr, !dbg !773, !nosanitize !108
  %611 = xor i32 %609, 41116, !dbg !773
  %612 = getelementptr i8, i8* %610, i32 %611, !dbg !773
  %613 = load i8, i8* %612, !dbg !773, !nosanitize !108
  %614 = add i8 %613, 1, !dbg !773
  store i8 %614, i8* %612, !dbg !773, !nosanitize !108
  store i32 20558, i32* @__afl_prev_loc, !dbg !773, !nosanitize !108
  %615 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !773
  %616 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %615, i32 0, i32 0, !dbg !773
  store double 0.000000e+00, double* %616, align 8, !dbg !773
  %617 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !773
  %618 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %617, i32 0, i32 1, !dbg !773
  store double 0x10000000000000, double* %618, align 8, !dbg !773
  br label %619, !dbg !773, !llvm.loop !775

; <label>:619:                                    ; preds = %608
  %620 = load i32, i32* @__afl_prev_loc, !dbg !776, !nosanitize !108
  %621 = load i8*, i8** @__afl_area_ptr, !dbg !776, !nosanitize !108
  %622 = xor i32 %620, 24973, !dbg !776
  %623 = getelementptr i8, i8* %621, i32 %622, !dbg !776
  %624 = load i8, i8* %623, !dbg !776, !nosanitize !108
  %625 = add i8 %624, 1, !dbg !776
  store i8 %625, i8* %623, !dbg !776, !nosanitize !108
  store i32 12486, i32* @__afl_prev_loc, !dbg !776, !nosanitize !108
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 358, i32 15), !dbg !776
  store i32 15, i32* %10, align 4, !dbg !776
  br label %742, !dbg !776
                                                  ; No predecessors!
  %627 = load i32, i32* @__afl_prev_loc, !dbg !773, !nosanitize !108
  %628 = load i8*, i8** @__afl_area_ptr, !dbg !773, !nosanitize !108
  %629 = xor i32 %627, 2278, !dbg !773
  %630 = getelementptr i8, i8* %628, i32 %629, !dbg !773
  %631 = load i8, i8* %630, !dbg !773, !nosanitize !108
  %632 = add i8 %631, 1, !dbg !773
  store i8 %632, i8* %630, !dbg !773, !nosanitize !108
  store i32 1139, i32* @__afl_prev_loc, !dbg !773, !nosanitize !108
  br label %633, !dbg !773

; <label>:633:                                    ; preds = %626
  %634 = load i32, i32* @__afl_prev_loc, !dbg !773, !nosanitize !108
  %635 = load i8*, i8** @__afl_area_ptr, !dbg !773, !nosanitize !108
  %636 = xor i32 %634, 17891, !dbg !773
  %637 = getelementptr i8, i8* %635, i32 %636, !dbg !773
  %638 = load i8, i8* %637, !dbg !773, !nosanitize !108
  %639 = add i8 %638, 1, !dbg !773
  store i8 %639, i8* %637, !dbg !773, !nosanitize !108
  store i32 8945, i32* @__afl_prev_loc, !dbg !773, !nosanitize !108
  br label %647, !dbg !773

; <label>:640:                                    ; preds = %557
  %641 = load i32, i32* @__afl_prev_loc, !dbg !778, !nosanitize !108
  %642 = load i8*, i8** @__afl_area_ptr, !dbg !778, !nosanitize !108
  %643 = xor i32 %641, 36135, !dbg !778
  %644 = getelementptr i8, i8* %642, i32 %643, !dbg !778
  %645 = load i8, i8* %644, !dbg !778, !nosanitize !108
  %646 = add i8 %645, 1, !dbg !778
  store i8 %646, i8* %644, !dbg !778, !nosanitize !108
  store i32 18067, i32* @__afl_prev_loc, !dbg !778, !nosanitize !108
  store i32 0, i32* %10, align 4, !dbg !778
  br label %742, !dbg !778

; <label>:647:                                    ; preds = %633
  %648 = load i32, i32* @__afl_prev_loc, !dbg !779, !nosanitize !108
  %649 = load i8*, i8** @__afl_area_ptr, !dbg !779, !nosanitize !108
  %650 = xor i32 %648, 22327, !dbg !779
  %651 = getelementptr i8, i8* %649, i32 %650, !dbg !779
  %652 = load i8, i8* %651, !dbg !779, !nosanitize !108
  %653 = add i8 %652, 1, !dbg !779
  store i8 %653, i8* %651, !dbg !779, !nosanitize !108
  store i32 11163, i32* @__afl_prev_loc, !dbg !779, !nosanitize !108
  br label %693, !dbg !779

; <label>:654:                                    ; preds = %520
  %655 = load i32, i32* @__afl_prev_loc, !dbg !780, !nosanitize !108
  %656 = load i8*, i8** @__afl_area_ptr, !dbg !780, !nosanitize !108
  %657 = xor i32 %655, 8157, !dbg !780
  %658 = getelementptr i8, i8* %656, i32 %657, !dbg !780
  %659 = load i8, i8* %658, !dbg !780, !nosanitize !108
  %660 = add i8 %659, 1, !dbg !780
  store i8 %660, i8* %658, !dbg !780, !nosanitize !108
  store i32 4078, i32* @__afl_prev_loc, !dbg !780, !nosanitize !108
  br label %661, !dbg !780, !llvm.loop !782

; <label>:661:                                    ; preds = %654
  %662 = load i32, i32* @__afl_prev_loc, !dbg !783, !nosanitize !108
  %663 = load i8*, i8** @__afl_area_ptr, !dbg !783, !nosanitize !108
  %664 = xor i32 %662, 43182, !dbg !783
  %665 = getelementptr i8, i8* %663, i32 %664, !dbg !783
  %666 = load i8, i8* %665, !dbg !783, !nosanitize !108
  %667 = add i8 %666, 1, !dbg !783
  store i8 %667, i8* %665, !dbg !783, !nosanitize !108
  store i32 21591, i32* @__afl_prev_loc, !dbg !783, !nosanitize !108
  %668 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !783
  %669 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %668, i32 0, i32 0, !dbg !783
  store double 0.000000e+00, double* %669, align 8, !dbg !783
  %670 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !783
  %671 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %670, i32 0, i32 1, !dbg !783
  store double 0x10000000000000, double* %671, align 8, !dbg !783
  br label %672, !dbg !783, !llvm.loop !785

; <label>:672:                                    ; preds = %661
  %673 = load i32, i32* @__afl_prev_loc, !dbg !786, !nosanitize !108
  %674 = load i8*, i8** @__afl_area_ptr, !dbg !786, !nosanitize !108
  %675 = xor i32 %673, 62796, !dbg !786
  %676 = getelementptr i8, i8* %674, i32 %675, !dbg !786
  %677 = load i8, i8* %676, !dbg !786, !nosanitize !108
  %678 = add i8 %677, 1, !dbg !786
  store i8 %678, i8* %676, !dbg !786, !nosanitize !108
  store i32 31398, i32* @__afl_prev_loc, !dbg !786, !nosanitize !108
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 363, i32 15), !dbg !786
  store i32 15, i32* %10, align 4, !dbg !786
  br label %742, !dbg !786
                                                  ; No predecessors!
  %680 = load i32, i32* @__afl_prev_loc, !dbg !783, !nosanitize !108
  %681 = load i8*, i8** @__afl_area_ptr, !dbg !783, !nosanitize !108
  %682 = xor i32 %680, 18029, !dbg !783
  %683 = getelementptr i8, i8* %681, i32 %682, !dbg !783
  %684 = load i8, i8* %683, !dbg !783, !nosanitize !108
  %685 = add i8 %684, 1, !dbg !783
  store i8 %685, i8* %683, !dbg !783, !nosanitize !108
  store i32 9014, i32* @__afl_prev_loc, !dbg !783, !nosanitize !108
  br label %686, !dbg !783

; <label>:686:                                    ; preds = %679
  %687 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %688 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %689 = xor i32 %687, 56620
  %690 = getelementptr i8, i8* %688, i32 %689
  %691 = load i8, i8* %690, !nosanitize !108
  %692 = add i8 %691, 1
  store i8 %692, i8* %690, !nosanitize !108
  store i32 28310, i32* @__afl_prev_loc, !nosanitize !108
  br label %693

; <label>:693:                                    ; preds = %686, %647
  %694 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %695 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %696 = xor i32 %694, 13118
  %697 = getelementptr i8, i8* %695, i32 %696
  %698 = load i8, i8* %697, !nosanitize !108
  %699 = add i8 %698, 1
  store i8 %699, i8* %697, !nosanitize !108
  store i32 6559, i32* @__afl_prev_loc, !nosanitize !108
  br label %700

; <label>:700:                                    ; preds = %693
  %701 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %702 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %703 = xor i32 %701, 2493
  %704 = getelementptr i8, i8* %702, i32 %703
  %705 = load i8, i8* %704, !nosanitize !108
  %706 = add i8 %705, 1
  store i8 %706, i8* %704, !nosanitize !108
  store i32 1246, i32* @__afl_prev_loc, !nosanitize !108
  br label %707

; <label>:707:                                    ; preds = %700
  %708 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %709 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %710 = xor i32 %708, 19005
  %711 = getelementptr i8, i8* %709, i32 %710
  %712 = load i8, i8* %711, !nosanitize !108
  %713 = add i8 %712, 1
  store i8 %713, i8* %711, !nosanitize !108
  store i32 9502, i32* @__afl_prev_loc, !nosanitize !108
  br label %714

; <label>:714:                                    ; preds = %707, %352
  %715 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %716 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %717 = xor i32 %715, 59023
  %718 = getelementptr i8, i8* %716, i32 %717
  %719 = load i8, i8* %718, !nosanitize !108
  %720 = add i8 %719, 1
  store i8 %720, i8* %718, !nosanitize !108
  store i32 29511, i32* @__afl_prev_loc, !nosanitize !108
  br label %721

; <label>:721:                                    ; preds = %714
  %722 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %723 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %724 = xor i32 %722, 23683
  %725 = getelementptr i8, i8* %723, i32 %724
  %726 = load i8, i8* %725, !nosanitize !108
  %727 = add i8 %726, 1
  store i8 %727, i8* %725, !nosanitize !108
  store i32 11841, i32* @__afl_prev_loc, !nosanitize !108
  br label %728

; <label>:728:                                    ; preds = %721
  %729 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %730 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %731 = xor i32 %729, 23141
  %732 = getelementptr i8, i8* %730, i32 %731
  %733 = load i8, i8* %732, !nosanitize !108
  %734 = add i8 %733, 1
  store i8 %734, i8* %732, !nosanitize !108
  store i32 11570, i32* @__afl_prev_loc, !nosanitize !108
  br label %735

; <label>:735:                                    ; preds = %728
  %736 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %737 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %738 = xor i32 %736, 23760
  %739 = getelementptr i8, i8* %737, i32 %738
  %740 = load i8, i8* %739, !nosanitize !108
  %741 = add i8 %740, 1
  store i8 %741, i8* %739, !nosanitize !108
  store i32 11880, i32* @__afl_prev_loc, !nosanitize !108
  br label %742

; <label>:742:                                    ; preds = %63, %121, %197, %271, %338, %397, %474, %619, %640, %672, %735, %77
  %743 = load i32, i32* @__afl_prev_loc, !dbg !788, !nosanitize !108
  %744 = load i8*, i8** @__afl_area_ptr, !dbg !788, !nosanitize !108
  %745 = xor i32 %743, 36431, !dbg !788
  %746 = getelementptr i8, i8* %744, i32 %745, !dbg !788
  %747 = load i8, i8* %746, !dbg !788, !nosanitize !108
  %748 = add i8 %747, 1, !dbg !788
  store i8 %748, i8* %746, !dbg !788, !nosanitize !108
  store i32 18215, i32* @__afl_prev_loc, !dbg !788, !nosanitize !108
  %749 = load i32, i32* %10, align 4, !dbg !788
  ret i32 %749, !dbg !788
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #0 !dbg !789 {
  %4 = load i32, i32* @__afl_prev_loc, !nosanitize !108
  %5 = load i8*, i8** @__afl_area_ptr, !nosanitize !108
  %6 = xor i32 %4, 55051
  %7 = getelementptr i8, i8* %5, i32 %6
  %8 = load i8, i8* %7, !nosanitize !108
  %9 = add i8 %8, 1
  store i8 %9, i8* %7, !nosanitize !108
  store i32 27525, i32* @__afl_prev_loc, !nosanitize !108
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %10, metadata !795, metadata !DIExpression()), !dbg !796
  store double %1, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !797, metadata !DIExpression()), !dbg !798
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %12, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata i32* %13, metadata !801, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata double* %14, metadata !803, metadata !DIExpression()), !dbg !804
  store double 0.000000e+00, double* %14, align 8, !dbg !804
  call void @llvm.dbg.declare(metadata double* %15, metadata !805, metadata !DIExpression()), !dbg !806
  store double 0.000000e+00, double* %15, align 8, !dbg !806
  call void @llvm.dbg.declare(metadata double* %16, metadata !807, metadata !DIExpression()), !dbg !808
  %21 = load double, double* %11, align 8, !dbg !809
  %22 = fmul double 2.000000e+00, %21, !dbg !810
  call void @DoubleErrBits(i32 3944, double %22), !dbg !811
  call void @_show_Double(double %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @807, i32 0, i32 0), i32 11), !dbg !811
  %23 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !811
  %24 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %23, i32 0, i32 2, !dbg !812
  %25 = load double, double* %24, align 8, !dbg !812
  %26 = fsub double %22, %25, !dbg !813
  call void @DoubleErrBits(i32 4069, double %26), !dbg !814
  call void @_show_Double(double %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @811, i32 0, i32 0), i32 11), !dbg !814
  %27 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !814
  %28 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %27, i32 0, i32 3, !dbg !815
  %29 = load double, double* %28, align 8, !dbg !815
  %30 = fsub double %26, %29, !dbg !816
  call void @DoubleErrBits(i32 4073, double %30), !dbg !817
  call void @_show_Double(double %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @815, i32 0, i32 0), i32 11), !dbg !817
  %31 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !817
  %32 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %31, i32 0, i32 3, !dbg !818
  %33 = load double, double* %32, align 8, !dbg !818
  %34 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !819
  %35 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %34, i32 0, i32 2, !dbg !820
  %36 = load double, double* %35, align 8, !dbg !820
  %37 = fsub double %33, %36, !dbg !821
  call void @DoubleErrBits(i32 102, double %37), !dbg !822
  call void @_show_Double(double %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @822, i32 0, i32 0), i32 11), !dbg !822
  %38 = fdiv double %30, %37, !dbg !822
  call void @DoubleDivErrBits(i32 103, double %37), !dbg !808
  call void @_show_DoubleDiv(double %30, double %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @823, i32 0, i32 0), i32 11), !dbg !808
  store double %38, double* %16, align 8, !dbg !808
  call void @llvm.dbg.declare(metadata double* %17, metadata !823, metadata !DIExpression()), !dbg !824
  %39 = load double, double* %16, align 8, !dbg !825
  %40 = fmul double 2.000000e+00, %39, !dbg !826
  call void @DoubleErrBits(i32 105, double %40), !dbg !824
  call void @_show_Double(double %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @827, i32 0, i32 0), i32 12), !dbg !824
  store double %40, double* %17, align 8, !dbg !824
  call void @llvm.dbg.declare(metadata double* %18, metadata !827, metadata !DIExpression()), !dbg !828
  store double 0.000000e+00, double* %18, align 8, !dbg !828
  %41 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !829
  %42 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %41, i32 0, i32 1, !dbg !831
  %43 = load i32, i32* %42, align 8, !dbg !831
  store i32 %43, i32* %13, align 4, !dbg !832
  br label %44, !dbg !833

; <label>:44:                                     ; preds = %93, %3
  %45 = load i32, i32* @__afl_prev_loc, !dbg !834, !nosanitize !108
  %46 = load i8*, i8** @__afl_area_ptr, !dbg !834, !nosanitize !108
  %47 = xor i32 %45, 59439, !dbg !834
  %48 = getelementptr i8, i8* %46, i32 %47, !dbg !834
  %49 = load i8, i8* %48, !dbg !834, !nosanitize !108
  %50 = add i8 %49, 1, !dbg !834
  store i8 %50, i8* %48, !dbg !834, !nosanitize !108
  store i32 29719, i32* @__afl_prev_loc, !dbg !834, !nosanitize !108
  %51 = load i32, i32* %13, align 4, !dbg !834
  %52 = icmp sge i32 %51, 1, !dbg !836
  br i1 %52, label %53, label %102, !dbg !837

; <label>:53:                                     ; preds = %44
  %54 = load i32, i32* @__afl_prev_loc, !dbg !838, !nosanitize !108
  %55 = load i8*, i8** @__afl_area_ptr, !dbg !838, !nosanitize !108
  %56 = xor i32 %54, 42077, !dbg !838
  %57 = getelementptr i8, i8* %55, i32 %56, !dbg !838
  %58 = load i8, i8* %57, !dbg !838, !nosanitize !108
  %59 = add i8 %58, 1, !dbg !838
  store i8 %59, i8* %57, !dbg !838, !nosanitize !108
  store i32 21038, i32* @__afl_prev_loc, !dbg !838, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %19, metadata !840, metadata !DIExpression()), !dbg !838
  %60 = load double, double* %14, align 8, !dbg !841
  store double %60, double* %19, align 8, !dbg !838
  %61 = load double, double* %17, align 8, !dbg !842
  %62 = load double, double* %14, align 8, !dbg !843
  %63 = fmul double %61, %62, !dbg !844
  call void @DoubleErrBits(i32 370, double %63), !dbg !845
  call void @_show_Double(double %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @844, i32 0, i32 0), i32 18), !dbg !845
  %64 = load double, double* %15, align 8, !dbg !845
  %65 = fsub double %63, %64, !dbg !846
  call void @DoubleErrBits(i32 372, double %65), !dbg !847
  call void @_show_Double(double %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @846, i32 0, i32 0), i32 18), !dbg !847
  %66 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !847
  %67 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %66, i32 0, i32 0, !dbg !848
  %68 = load double*, double** %67, align 8, !dbg !848
  %69 = load i32, i32* %13, align 4, !dbg !849
  %70 = sext i32 %69 to i64, !dbg !847
  %71 = getelementptr inbounds double, double* %68, i64 %70, !dbg !847
  %72 = load double, double* %71, align 8, !dbg !847
  %73 = fadd double %65, %72, !dbg !850
  call void @DoubleErrBits(i32 501, double %73), !dbg !851
  call void @_show_Double(double %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @854, i32 0, i32 0), i32 18), !dbg !851
  store double %73, double* %14, align 8, !dbg !851
  %74 = load double, double* %17, align 8, !dbg !852
  %75 = load double, double* %19, align 8, !dbg !853
  %76 = fmul double %74, %75, !dbg !854
  call void @DoubleErrBits(i32 625, double %76), !dbg !855
  call void @_show_Double(double %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @858, i32 0, i32 0), i32 19), !dbg !855
  %77 = call double @llvm.fabs.f64(double %76), !dbg !855
  %78 = load double, double* %15, align 8, !dbg !856
  %79 = call double @llvm.fabs.f64(double %78), !dbg !857
  %80 = fadd double %77, %79, !dbg !858
  call void @DoubleErrBits(i32 629, double %80), !dbg !859
  call void @_show_Double(double %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @862, i32 0, i32 0), i32 19), !dbg !859
  %81 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !859
  %82 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %81, i32 0, i32 0, !dbg !860
  %83 = load double*, double** %82, align 8, !dbg !860
  %84 = load i32, i32* %13, align 4, !dbg !861
  %85 = sext i32 %84 to i64, !dbg !859
  %86 = getelementptr inbounds double, double* %83, i64 %85, !dbg !859
  %87 = load double, double* %86, align 8, !dbg !859
  %88 = call double @llvm.fabs.f64(double %87), !dbg !862
  %89 = fadd double %80, %88, !dbg !863
  call void @DoubleErrBits(i32 759, double %89), !dbg !864
  call void @_show_Double(double %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @871, i32 0, i32 0), i32 19), !dbg !864
  %90 = load double, double* %18, align 8, !dbg !864
  %91 = fadd double %90, %89, !dbg !864
  call void @DoubleErrBits(i32 761, double %91), !dbg !864
  call void @_show_Double(double %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @873, i32 0, i32 0), i32 19), !dbg !864
  store double %91, double* %18, align 8, !dbg !864
  %92 = load double, double* %19, align 8, !dbg !865
  store double %92, double* %15, align 8, !dbg !866
  br label %93, !dbg !867

; <label>:93:                                     ; preds = %53
  %94 = load i32, i32* @__afl_prev_loc, !dbg !868, !nosanitize !108
  %95 = load i8*, i8** @__afl_area_ptr, !dbg !868, !nosanitize !108
  %96 = xor i32 %94, 35210, !dbg !868
  %97 = getelementptr i8, i8* %95, i32 %96, !dbg !868
  %98 = load i8, i8* %97, !dbg !868, !nosanitize !108
  %99 = add i8 %98, 1, !dbg !868
  store i8 %99, i8* %97, !dbg !868, !nosanitize !108
  store i32 17605, i32* @__afl_prev_loc, !dbg !868, !nosanitize !108
  %100 = load i32, i32* %13, align 4, !dbg !868
  %101 = add nsw i32 %100, -1, !dbg !868
  store i32 %101, i32* %13, align 4, !dbg !868
  br label %44, !dbg !869, !llvm.loop !870

; <label>:102:                                    ; preds = %44
  %103 = load i32, i32* @__afl_prev_loc, !dbg !872, !nosanitize !108
  %104 = load i8*, i8** @__afl_area_ptr, !dbg !872, !nosanitize !108
  %105 = xor i32 %103, 60093, !dbg !872
  %106 = getelementptr i8, i8* %104, i32 %105, !dbg !872
  %107 = load i8, i8* %106, !dbg !872, !nosanitize !108
  %108 = add i8 %107, 1, !dbg !872
  store i8 %108, i8* %106, !dbg !872, !nosanitize !108
  store i32 30046, i32* @__afl_prev_loc, !dbg !872, !nosanitize !108
  call void @llvm.dbg.declare(metadata double* %20, metadata !874, metadata !DIExpression()), !dbg !872
  %109 = load double, double* %14, align 8, !dbg !875
  store double %109, double* %20, align 8, !dbg !872
  %110 = load double, double* %16, align 8, !dbg !876
  %111 = load double, double* %14, align 8, !dbg !877
  %112 = fmul double %110, %111, !dbg !878
  call void @DoubleErrBits(i32 1307, double %112), !dbg !879
  call void @_show_Double(double %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @887, i32 0, i32 0), i32 25), !dbg !879
  %113 = load double, double* %15, align 8, !dbg !879
  %114 = fsub double %112, %113, !dbg !880
  call void @DoubleErrBits(i32 1309, double %114), !dbg !881
  call void @_show_Double(double %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @889, i32 0, i32 0), i32 25), !dbg !881
  %115 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !881
  %116 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %115, i32 0, i32 0, !dbg !882
  %117 = load double*, double** %116, align 8, !dbg !882
  %118 = getelementptr inbounds double, double* %117, i64 0, !dbg !881
  %119 = load double, double* %118, align 8, !dbg !881
  %120 = fmul double 5.000000e-01, %119, !dbg !883
  call void @DoubleErrBits(i32 1436, double %120), !dbg !884
  call void @_show_Double(double %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @895, i32 0, i32 0), i32 25), !dbg !884
  %121 = fadd double %114, %120, !dbg !884
  call void @DoubleErrBits(i32 1437, double %121), !dbg !885
  call void @_show_Double(double %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @896, i32 0, i32 0), i32 25), !dbg !885
  store double %121, double* %14, align 8, !dbg !885
  %122 = load double, double* %16, align 8, !dbg !886
  %123 = load double, double* %20, align 8, !dbg !887
  %124 = fmul double %122, %123, !dbg !888
  call void @DoubleErrBits(i32 1440, double %124), !dbg !889
  call void @_show_Double(double %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @900, i32 0, i32 0), i32 26), !dbg !889
  %125 = call double @llvm.fabs.f64(double %124), !dbg !889
  %126 = load double, double* %15, align 8, !dbg !890
  %127 = call double @llvm.fabs.f64(double %126), !dbg !891
  %128 = fadd double %125, %127, !dbg !892
  call void @DoubleErrBits(i32 1565, double %128), !dbg !893
  call void @_show_Double(double %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @904, i32 0, i32 0), i32 26), !dbg !893
  %129 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !893
  %130 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %129, i32 0, i32 0, !dbg !894
  %131 = load double*, double** %130, align 8, !dbg !894
  %132 = getelementptr inbounds double, double* %131, i64 0, !dbg !893
  %133 = load double, double* %132, align 8, !dbg !893
  %134 = call double @llvm.fabs.f64(double %133), !dbg !895
  %135 = fmul double 5.000000e-01, %134, !dbg !896
  call void @DoubleErrBits(i32 1572, double %135), !dbg !897
  call void @_show_Double(double %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @911, i32 0, i32 0), i32 26), !dbg !897
  %136 = fadd double %128, %135, !dbg !897
  call void @DoubleErrBits(i32 1694, double %136), !dbg !898
  call void @_show_Double(double %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @912, i32 0, i32 0), i32 26), !dbg !898
  %137 = load double, double* %18, align 8, !dbg !898
  %138 = fadd double %137, %136, !dbg !898
  call void @DoubleErrBits(i32 1696, double %138), !dbg !898
  call void @_show_Double(double %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @914, i32 0, i32 0), i32 26), !dbg !898
  store double %138, double* %18, align 8, !dbg !898
  %139 = load double, double* %14, align 8, !dbg !899
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !900
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !901
  store double %139, double* %141, align 8, !dbg !902
  %142 = load double, double* %18, align 8, !dbg !903
  %143 = fmul double 0x3CB0000000000000, %142, !dbg !904
  call void @DoubleErrBits(i32 1701, double %143), !dbg !905
  call void @_show_Double(double %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @921, i32 0, i32 0), i32 30), !dbg !905
  %144 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !905
  %145 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %144, i32 0, i32 0, !dbg !906
  %146 = load double*, double** %145, align 8, !dbg !906
  %147 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %10, align 8, !dbg !907
  %148 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %147, i32 0, i32 1, !dbg !908
  %149 = load i32, i32* %148, align 8, !dbg !908
  %150 = sext i32 %149 to i64, !dbg !905
  %151 = getelementptr inbounds double, double* %146, i64 %150, !dbg !905
  %152 = load double, double* %151, align 8, !dbg !905
  %153 = call double @llvm.fabs.f64(double %152), !dbg !909
  %154 = fadd double %143, %153, !dbg !910
  call void @DoubleErrBits(i32 1833, double %154), !dbg !911
  call void @_show_Double(double %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @932, i32 0, i32 0), i32 30), !dbg !911
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !911
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 1, !dbg !912
  store double %154, double* %156, align 8, !dbg !913
  ret i32 0, !dbg !914
}

declare void @_show_Float(float)

declare void @_show_Double(double, i8*, i32)

declare void @_show_FloatDiv(float, float)

declare void @_show_DoubleDiv(double, double, i8*, i32)

declare void @DoubleErrBits(i32, double)

declare void @DoubleDivErrBits(i32, double)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!93, !94, !95}
!llvm.ident = !{!96}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "AE11_cs", scope: !2, file: !3, line: 123, type: !52, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !43)
!3 = !DIFile(filename: "expintE2scaled.c", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_expint_E2_scaled")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 39, size: 32, elements: !7)
!6 = !DIFile(filename: "/usr/local/include/gsl/gsl_errno.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_expint_E2_scaled")
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
!43 = !{!0, !44, !50, !63, !68, !70, !75, !77, !82, !84, !86, !88}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "AE11_data", scope: !2, file: !3, line: 82, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2496, elements: !48)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !{!49}
!49 = !DISubrange(count: 39)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "AE12_cs", scope: !2, file: !3, line: 157, type: !52, isLocal: true, isDefinition: true)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !53, line: 29, baseType: !54)
!53 = !DIFile(filename: "./../chebyshev.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_expint_E2_scaled")
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
!64 = distinct !DIGlobalVariable(name: "AE12_data", scope: !2, file: !3, line: 130, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1600, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 25)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "E11_cs", scope: !2, file: !3, line: 185, type: !52, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "E11_data", scope: !2, file: !3, line: 164, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1216, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 19)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "E12_cs", scope: !2, file: !3, line: 210, type: !52, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "E12_data", scope: !2, file: !3, line: 192, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1024, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 16)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "AE13_cs", scope: !2, file: !3, line: 244, type: !52, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "AE13_data", scope: !2, file: !3, line: 217, type: !65, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "AE14_cs", scope: !2, file: !3, line: 279, type: !52, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "AE14_data", scope: !2, file: !3, line: 251, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1664, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 26)
!93 = !{i32 2, !"Dwarf Version", i32 4}
!94 = !{i32 2, !"Debug Info Version", i32 3}
!95 = !{i32 1, !"wchar_size", i32 4}
!96 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!97 = distinct !DISubprogram(name: "gsl_sf_expint_E2_scaled_e", scope: !3, file: !3, line: 426, type: !98, isLocal: false, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !108)
!98 = !DISubroutineType(types: !99)
!99 = !{!59, !100, !101}
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !103, line: 41, baseType: !104)
!103 = !DIFile(filename: "/usr/local/include/gsl/gsl_sf_result.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_expint_E2_scaled")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !103, line: 37, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !104, file: !103, line: 38, baseType: !47, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !104, file: !103, line: 39, baseType: !47, size: 64, offset: 64)
!108 = !{}
!109 = !DILocalVariable(name: "x", arg: 1, scope: !97, file: !3, line: 426, type: !100)
!110 = !DILocation(line: 426, column: 44, scope: !97)
!111 = !DILocalVariable(name: "result", arg: 2, scope: !97, file: !3, line: 426, type: !101)
!112 = !DILocation(line: 426, column: 63, scope: !97)
!113 = !DILocation(line: 428, column: 25, scope: !97)
!114 = !DILocation(line: 428, column: 28, scope: !97)
!115 = !DILocation(line: 428, column: 10, scope: !97)
!116 = !DILocation(line: 428, column: 3, scope: !97)
!117 = distinct !DISubprogram(name: "expint_E2_impl", scope: !3, file: !3, line: 369, type: !118, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !108)
!118 = !DISubroutineType(types: !119)
!119 = !{!59, !100, !101, !120}
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!121 = !DILocalVariable(name: "x", arg: 1, scope: !117, file: !3, line: 369, type: !100)
!122 = !DILocation(line: 369, column: 33, scope: !117)
!123 = !DILocalVariable(name: "result", arg: 2, scope: !117, file: !3, line: 369, type: !101)
!124 = !DILocation(line: 369, column: 52, scope: !117)
!125 = !DILocalVariable(name: "scale", arg: 3, scope: !117, file: !3, line: 369, type: !120)
!126 = !DILocation(line: 369, column: 70, scope: !117)
!127 = !DILocalVariable(name: "xmaxt", scope: !117, file: !3, line: 371, type: !100)
!128 = !DILocation(line: 371, column: 16, scope: !117)
!129 = !DILocalVariable(name: "xmax", scope: !117, file: !3, line: 372, type: !100)
!130 = !DILocation(line: 372, column: 16, scope: !117)
!131 = !DILocation(line: 372, column: 32, scope: !117)
!132 = !DILocation(line: 372, column: 30, scope: !117)
!133 = !DILocation(line: 376, column: 6, scope: !134)
!134 = distinct !DILexicalBlock(scope: !117, file: !3, line: 376, column: 6)
!135 = !DILocation(line: 376, column: 11, scope: !134)
!136 = !DILocation(line: 376, column: 10, scope: !134)
!137 = !DILocation(line: 376, column: 8, scope: !134)
!138 = !DILocation(line: 376, column: 16, scope: !134)
!139 = !DILocation(line: 376, column: 20, scope: !134)
!140 = !DILocation(line: 376, column: 6, scope: !117)
!141 = !DILocation(line: 377, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !134, file: !3, line: 376, column: 27)
!143 = distinct !{!143, !141, !141}
!144 = !DILocation(line: 377, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !3, line: 377, column: 5)
!146 = distinct !{!146, !144, !144}
!147 = !DILocation(line: 377, column: 5, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !3, line: 377, column: 5)
!149 = !DILocation(line: 378, column: 3, scope: !142)
!150 = !DILocation(line: 379, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !134, file: !3, line: 379, column: 12)
!152 = !DILocation(line: 379, column: 14, scope: !151)
!153 = !DILocation(line: 379, column: 12, scope: !134)
!154 = !DILocation(line: 380, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !3, line: 379, column: 22)
!156 = !DILocation(line: 380, column: 13, scope: !155)
!157 = !DILocation(line: 380, column: 17, scope: !155)
!158 = !DILocation(line: 381, column: 5, scope: !155)
!159 = !DILocation(line: 381, column: 13, scope: !155)
!160 = !DILocation(line: 381, column: 17, scope: !155)
!161 = !DILocation(line: 382, column: 5, scope: !155)
!162 = !DILocation(line: 383, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !3, line: 383, column: 13)
!164 = !DILocation(line: 383, column: 15, scope: !163)
!165 = !DILocation(line: 383, column: 13, scope: !151)
!166 = !DILocation(line: 384, column: 18, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !3, line: 383, column: 24)
!168 = !DILocalVariable(name: "ex", scope: !167, file: !3, line: 384, type: !100)
!169 = !DILocation(line: 384, column: 25, scope: !167)
!170 = !DILocation(line: 384, column: 44, scope: !167)
!171 = !DILocation(line: 384, column: 43, scope: !167)
!172 = !DILocation(line: 384, column: 39, scope: !167)
!173 = !DILocalVariable(name: "result_E1", scope: !167, file: !3, line: 385, type: !102)
!174 = !DILocation(line: 385, column: 19, scope: !167)
!175 = !DILocalVariable(name: "stat_E1", scope: !167, file: !3, line: 386, type: !59)
!176 = !DILocation(line: 386, column: 9, scope: !167)
!177 = !DILocation(line: 386, column: 34, scope: !167)
!178 = !DILocation(line: 386, column: 49, scope: !167)
!179 = !DILocation(line: 386, column: 19, scope: !167)
!180 = !DILocation(line: 387, column: 20, scope: !167)
!181 = !DILocation(line: 387, column: 25, scope: !167)
!182 = !DILocation(line: 387, column: 37, scope: !167)
!183 = !DILocation(line: 387, column: 26, scope: !167)
!184 = !DILocation(line: 387, column: 23, scope: !167)
!185 = !DILocation(line: 387, column: 5, scope: !167)
!186 = !DILocation(line: 387, column: 13, scope: !167)
!187 = !DILocation(line: 387, column: 18, scope: !167)
!188 = !DILocation(line: 388, column: 36, scope: !167)
!189 = !DILocation(line: 388, column: 35, scope: !167)
!190 = !DILocation(line: 388, column: 46, scope: !167)
!191 = !DILocation(line: 388, column: 41, scope: !167)
!192 = !DILocation(line: 388, column: 61, scope: !167)
!193 = !DILocation(line: 388, column: 49, scope: !167)
!194 = !DILocation(line: 388, column: 39, scope: !167)
!195 = !DILocation(line: 388, column: 5, scope: !167)
!196 = !DILocation(line: 388, column: 13, scope: !167)
!197 = !DILocation(line: 388, column: 18, scope: !167)
!198 = !DILocation(line: 389, column: 49, scope: !167)
!199 = !DILocation(line: 389, column: 57, scope: !167)
!200 = !DILocation(line: 389, column: 44, scope: !167)
!201 = !DILocation(line: 389, column: 42, scope: !167)
!202 = !DILocation(line: 389, column: 5, scope: !167)
!203 = !DILocation(line: 389, column: 13, scope: !167)
!204 = !DILocation(line: 389, column: 17, scope: !167)
!205 = !DILocation(line: 390, column: 12, scope: !167)
!206 = !DILocation(line: 390, column: 5, scope: !167)
!207 = !DILocation(line: 392, column: 11, scope: !208)
!208 = distinct !DILexicalBlock(scope: !163, file: !3, line: 392, column: 11)
!209 = !DILocation(line: 392, column: 15, scope: !208)
!210 = !DILocation(line: 392, column: 13, scope: !208)
!211 = !DILocation(line: 392, column: 20, scope: !208)
!212 = !DILocation(line: 392, column: 23, scope: !208)
!213 = !DILocation(line: 392, column: 11, scope: !163)
!214 = !DILocation(line: 393, column: 18, scope: !215)
!215 = distinct !DILexicalBlock(scope: !208, file: !3, line: 392, column: 30)
!216 = !DILocalVariable(name: "s", scope: !215, file: !3, line: 393, type: !100)
!217 = !DILocation(line: 393, column: 24, scope: !215)
!218 = !DILocation(line: 393, column: 43, scope: !215)
!219 = !DILocation(line: 393, column: 42, scope: !215)
!220 = !DILocation(line: 393, column: 38, scope: !215)
!221 = !DILocalVariable(name: "c1", scope: !215, file: !3, line: 394, type: !100)
!222 = !DILocation(line: 394, column: 18, scope: !215)
!223 = !DILocalVariable(name: "c2", scope: !215, file: !3, line: 395, type: !100)
!224 = !DILocation(line: 395, column: 18, scope: !215)
!225 = !DILocalVariable(name: "c3", scope: !215, file: !3, line: 396, type: !100)
!226 = !DILocation(line: 396, column: 18, scope: !215)
!227 = !DILocalVariable(name: "c4", scope: !215, file: !3, line: 397, type: !100)
!228 = !DILocation(line: 397, column: 18, scope: !215)
!229 = !DILocalVariable(name: "c5", scope: !215, file: !3, line: 398, type: !100)
!230 = !DILocation(line: 398, column: 18, scope: !215)
!231 = !DILocalVariable(name: "c6", scope: !215, file: !3, line: 399, type: !100)
!232 = !DILocation(line: 399, column: 18, scope: !215)
!233 = !DILocalVariable(name: "c7", scope: !215, file: !3, line: 400, type: !100)
!234 = !DILocation(line: 400, column: 18, scope: !215)
!235 = !DILocalVariable(name: "c8", scope: !215, file: !3, line: 401, type: !100)
!236 = !DILocation(line: 401, column: 18, scope: !215)
!237 = !DILocalVariable(name: "c9", scope: !215, file: !3, line: 402, type: !100)
!238 = !DILocation(line: 402, column: 18, scope: !215)
!239 = !DILocalVariable(name: "c10", scope: !215, file: !3, line: 403, type: !100)
!240 = !DILocation(line: 403, column: 18, scope: !215)
!241 = !DILocalVariable(name: "c11", scope: !215, file: !3, line: 404, type: !100)
!242 = !DILocation(line: 404, column: 18, scope: !215)
!243 = !DILocalVariable(name: "c12", scope: !215, file: !3, line: 405, type: !100)
!244 = !DILocation(line: 405, column: 18, scope: !215)
!245 = !DILocalVariable(name: "c13", scope: !215, file: !3, line: 406, type: !100)
!246 = !DILocation(line: 406, column: 18, scope: !215)
!247 = !DILocalVariable(name: "y", scope: !215, file: !3, line: 407, type: !100)
!248 = !DILocation(line: 407, column: 18, scope: !215)
!249 = !DILocation(line: 407, column: 26, scope: !215)
!250 = !DILocation(line: 407, column: 25, scope: !215)
!251 = !DILocalVariable(name: "sum6", scope: !215, file: !3, line: 408, type: !100)
!252 = !DILocation(line: 408, column: 18, scope: !215)
!253 = !DILocation(line: 408, column: 28, scope: !215)
!254 = !DILocation(line: 408, column: 34, scope: !215)
!255 = !DILocation(line: 408, column: 40, scope: !215)
!256 = !DILocation(line: 408, column: 46, scope: !215)
!257 = !DILocation(line: 408, column: 53, scope: !215)
!258 = !DILocation(line: 408, column: 60, scope: !215)
!259 = !DILocation(line: 408, column: 67, scope: !215)
!260 = !DILocation(line: 408, column: 68, scope: !215)
!261 = !DILocation(line: 408, column: 66, scope: !215)
!262 = !DILocation(line: 408, column: 61, scope: !215)
!263 = !DILocation(line: 408, column: 59, scope: !215)
!264 = !DILocation(line: 408, column: 54, scope: !215)
!265 = !DILocation(line: 408, column: 52, scope: !215)
!266 = !DILocation(line: 408, column: 47, scope: !215)
!267 = !DILocation(line: 408, column: 45, scope: !215)
!268 = !DILocation(line: 408, column: 41, scope: !215)
!269 = !DILocation(line: 408, column: 39, scope: !215)
!270 = !DILocation(line: 408, column: 35, scope: !215)
!271 = !DILocation(line: 408, column: 33, scope: !215)
!272 = !DILocation(line: 408, column: 29, scope: !215)
!273 = !DILocation(line: 408, column: 27, scope: !215)
!274 = !DILocalVariable(name: "sum", scope: !215, file: !3, line: 409, type: !100)
!275 = !DILocation(line: 409, column: 18, scope: !215)
!276 = !DILocation(line: 409, column: 25, scope: !215)
!277 = !DILocation(line: 409, column: 31, scope: !215)
!278 = !DILocation(line: 409, column: 37, scope: !215)
!279 = !DILocation(line: 409, column: 43, scope: !215)
!280 = !DILocation(line: 409, column: 49, scope: !215)
!281 = !DILocation(line: 409, column: 55, scope: !215)
!282 = !DILocation(line: 409, column: 57, scope: !215)
!283 = !DILocation(line: 409, column: 56, scope: !215)
!284 = !DILocation(line: 409, column: 54, scope: !215)
!285 = !DILocation(line: 409, column: 50, scope: !215)
!286 = !DILocation(line: 409, column: 48, scope: !215)
!287 = !DILocation(line: 409, column: 44, scope: !215)
!288 = !DILocation(line: 409, column: 42, scope: !215)
!289 = !DILocation(line: 409, column: 38, scope: !215)
!290 = !DILocation(line: 409, column: 36, scope: !215)
!291 = !DILocation(line: 409, column: 32, scope: !215)
!292 = !DILocation(line: 409, column: 30, scope: !215)
!293 = !DILocation(line: 409, column: 26, scope: !215)
!294 = !DILocation(line: 410, column: 19, scope: !215)
!295 = !DILocation(line: 410, column: 30, scope: !215)
!296 = !DILocation(line: 410, column: 28, scope: !215)
!297 = !DILocation(line: 410, column: 21, scope: !215)
!298 = !DILocation(line: 410, column: 35, scope: !215)
!299 = !DILocation(line: 410, column: 34, scope: !215)
!300 = !DILocation(line: 410, column: 5, scope: !215)
!301 = !DILocation(line: 410, column: 13, scope: !215)
!302 = !DILocation(line: 410, column: 17, scope: !215)
!303 = !DILocation(line: 411, column: 26, scope: !215)
!304 = !DILocation(line: 411, column: 28, scope: !215)
!305 = !DILocation(line: 411, column: 23, scope: !215)
!306 = !DILocation(line: 411, column: 35, scope: !215)
!307 = !DILocation(line: 411, column: 55, scope: !215)
!308 = !DILocation(line: 411, column: 63, scope: !215)
!309 = !DILocation(line: 411, column: 53, scope: !215)
!310 = !DILocation(line: 411, column: 5, scope: !215)
!311 = !DILocation(line: 411, column: 13, scope: !215)
!312 = !DILocation(line: 411, column: 17, scope: !215)
!313 = !DILocation(line: 412, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !215, file: !3, line: 412, column: 8)
!315 = !DILocation(line: 412, column: 16, scope: !314)
!316 = !DILocation(line: 412, column: 20, scope: !314)
!317 = !DILocation(line: 412, column: 8, scope: !215)
!318 = !DILocation(line: 413, column: 7, scope: !314)
!319 = distinct !{!319, !318, !318}
!320 = !DILocation(line: 413, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !314, file: !3, line: 413, column: 7)
!322 = distinct !{!322, !320, !320}
!323 = !DILocation(line: 413, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !3, line: 413, column: 7)
!325 = !DILocation(line: 415, column: 7, scope: !314)
!326 = !DILocation(line: 416, column: 3, scope: !215)
!327 = !DILocation(line: 418, column: 5, scope: !328)
!328 = distinct !DILexicalBlock(scope: !208, file: !3, line: 417, column: 8)
!329 = distinct !{!329, !327, !327}
!330 = !DILocation(line: 418, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !3, line: 418, column: 5)
!332 = distinct !{!332, !330, !330}
!333 = !DILocation(line: 418, column: 5, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !3, line: 418, column: 5)
!335 = !DILocation(line: 420, column: 1, scope: !117)
!336 = distinct !DISubprogram(name: "gsl_sf_expint_E2_scaled", scope: !3, file: !3, line: 450, type: !337, isLocal: false, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !108)
!337 = !DISubroutineType(types: !338)
!338 = !{!47, !100}
!339 = !DILocalVariable(name: "x", arg: 1, scope: !336, file: !3, line: 450, type: !100)
!340 = !DILocation(line: 450, column: 45, scope: !336)
!341 = !DILocalVariable(name: "result", scope: !336, file: !3, line: 452, type: !102)
!342 = !DILocation(line: 452, column: 3, scope: !336)
!343 = !DILocalVariable(name: "status", scope: !336, file: !3, line: 452, type: !59)
!344 = !DILocation(line: 452, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !336, file: !3, line: 452, column: 3)
!346 = !DILocation(line: 452, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !345, file: !3, line: 452, column: 3)
!348 = distinct !{!348, !346, !346}
!349 = !DILocation(line: 452, column: 3, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !3, line: 452, column: 3)
!351 = !DILocation(line: 453, column: 1, scope: !336)
!352 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 457, type: !353, isLocal: false, isDefinition: true, scopeLine: 458, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !108)
!353 = !DISubroutineType(types: !354)
!354 = !{!59, !59, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!358 = !DILocalVariable(name: "argc", arg: 1, scope: !352, file: !3, line: 457, type: !59)
!359 = !DILocation(line: 457, column: 14, scope: !352)
!360 = !DILocalVariable(name: "argv", arg: 2, scope: !352, file: !3, line: 457, type: !355)
!361 = !DILocation(line: 457, column: 27, scope: !352)
!362 = !DILocalVariable(name: "a", scope: !352, file: !3, line: 459, type: !47)
!363 = !DILocation(line: 459, column: 12, scope: !352)
!364 = !DILocalVariable(name: "b", scope: !352, file: !3, line: 459, type: !47)
!365 = !DILocation(line: 459, column: 15, scope: !352)
!366 = !DILocalVariable(name: "fp", scope: !352, file: !3, line: 460, type: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !369, line: 7, baseType: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_expint_E2_scaled")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !371, line: 49, size: 1728, elements: !372)
!371 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_expint_E2_scaled")
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !388, !390, !391, !392, !396, !398, !400, !404, !407, !409, !412, !415, !416, !418, !422, !423}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !370, file: !371, line: 51, baseType: !59, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !370, file: !371, line: 54, baseType: !356, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !370, file: !371, line: 55, baseType: !356, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !370, file: !371, line: 56, baseType: !356, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !370, file: !371, line: 57, baseType: !356, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !370, file: !371, line: 58, baseType: !356, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !370, file: !371, line: 59, baseType: !356, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !370, file: !371, line: 60, baseType: !356, size: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !370, file: !371, line: 61, baseType: !356, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !370, file: !371, line: 64, baseType: !356, size: 64, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !370, file: !371, line: 65, baseType: !356, size: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !370, file: !371, line: 66, baseType: !356, size: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !370, file: !371, line: 68, baseType: !386, size: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !371, line: 36, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !370, file: !371, line: 70, baseType: !389, size: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !370, file: !371, line: 72, baseType: !59, size: 32, offset: 896)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !370, file: !371, line: 73, baseType: !59, size: 32, offset: 928)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !370, file: !371, line: 74, baseType: !393, size: 64, offset: 960)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !394, line: 152, baseType: !395)
!394 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_expint_E2_scaled")
!395 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !370, file: !371, line: 77, baseType: !397, size: 16, offset: 1024)
!397 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !370, file: !371, line: 78, baseType: !399, size: 8, offset: 1040)
!399 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !370, file: !371, line: 79, baseType: !401, size: 8, offset: 1048)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 8, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 1)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !370, file: !371, line: 81, baseType: !405, size: 64, offset: 1088)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !371, line: 43, baseType: null)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !370, file: !371, line: 89, baseType: !408, size: 64, offset: 1152)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !394, line: 153, baseType: !395)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !370, file: !371, line: 91, baseType: !410, size: 64, offset: 1216)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !371, line: 37, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !370, file: !371, line: 92, baseType: !413, size: 64, offset: 1280)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !371, line: 38, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !370, file: !371, line: 93, baseType: !389, size: 64, offset: 1344)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !370, file: !371, line: 94, baseType: !417, size: 64, offset: 1408)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !370, file: !371, line: 95, baseType: !419, size: 64, offset: 1472)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !420, line: 62, baseType: !421)
!420 = !DIFile(filename: "/home/savcuda/Desktop/FloatFuz/clang+llvm/lib/clang/6.0.1/include/stddef.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_expint_E2_scaled")
!421 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !370, file: !371, line: 96, baseType: !59, size: 32, offset: 1536)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !370, file: !371, line: 98, baseType: !424, size: 160, offset: 1568)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 160, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 20)
!427 = !DILocation(line: 460, column: 11, scope: !352)
!428 = !DILocalVariable(name: "filename", scope: !352, file: !3, line: 461, type: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!431 = !DILocation(line: 461, column: 17, scope: !352)
!432 = !DILocation(line: 461, column: 28, scope: !352)
!433 = !DILocation(line: 462, column: 16, scope: !352)
!434 = !DILocation(line: 462, column: 10, scope: !352)
!435 = !DILocation(line: 462, column: 8, scope: !352)
!436 = !DILocation(line: 463, column: 12, scope: !352)
!437 = !DILocation(line: 463, column: 5, scope: !352)
!438 = !DILocation(line: 464, column: 12, scope: !352)
!439 = !DILocation(line: 464, column: 5, scope: !352)
!440 = !DILocation(line: 466, column: 24, scope: !352)
!441 = !DILocation(line: 466, column: 5, scope: !352)
!442 = !DILocation(line: 468, column: 33, scope: !352)
!443 = !DILocation(line: 468, column: 9, scope: !352)
!444 = !DILocation(line: 468, column: 7, scope: !352)
!445 = !DILocation(line: 471, column: 39, scope: !352)
!446 = !DILocation(line: 471, column: 5, scope: !352)
!447 = !DILocation(line: 473, column: 5, scope: !352)
!448 = distinct !DISubprogram(name: "expint_E1_impl", scope: !3, file: !3, line: 290, type: !118, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !108)
!449 = !DILocalVariable(name: "x", arg: 1, scope: !448, file: !3, line: 290, type: !100)
!450 = !DILocation(line: 290, column: 33, scope: !448)
!451 = !DILocalVariable(name: "result", arg: 2, scope: !448, file: !3, line: 290, type: !101)
!452 = !DILocation(line: 290, column: 52, scope: !448)
!453 = !DILocalVariable(name: "scale", arg: 3, scope: !448, file: !3, line: 290, type: !120)
!454 = !DILocation(line: 290, column: 70, scope: !448)
!455 = !DILocalVariable(name: "xmaxt", scope: !448, file: !3, line: 292, type: !100)
!456 = !DILocation(line: 292, column: 16, scope: !448)
!457 = !DILocalVariable(name: "xmax", scope: !448, file: !3, line: 293, type: !100)
!458 = !DILocation(line: 293, column: 16, scope: !448)
!459 = !DILocation(line: 293, column: 32, scope: !448)
!460 = !DILocation(line: 293, column: 30, scope: !448)
!461 = !DILocation(line: 297, column: 6, scope: !462)
!462 = distinct !DILexicalBlock(scope: !448, file: !3, line: 297, column: 6)
!463 = !DILocation(line: 297, column: 11, scope: !462)
!464 = !DILocation(line: 297, column: 10, scope: !462)
!465 = !DILocation(line: 297, column: 8, scope: !462)
!466 = !DILocation(line: 297, column: 16, scope: !462)
!467 = !DILocation(line: 297, column: 20, scope: !462)
!468 = !DILocation(line: 297, column: 6, scope: !448)
!469 = !DILocation(line: 298, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !3, line: 297, column: 27)
!471 = distinct !{!471, !469, !469}
!472 = !DILocation(line: 298, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 298, column: 7)
!474 = distinct !{!474, !472, !472}
!475 = !DILocation(line: 298, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !3, line: 298, column: 7)
!477 = !DILocation(line: 299, column: 3, scope: !470)
!478 = !DILocation(line: 300, column: 11, scope: !479)
!479 = distinct !DILexicalBlock(scope: !462, file: !3, line: 300, column: 11)
!480 = !DILocation(line: 300, column: 13, scope: !479)
!481 = !DILocation(line: 300, column: 11, scope: !462)
!482 = !DILocation(line: 301, column: 18, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !3, line: 300, column: 23)
!484 = !DILocalVariable(name: "s", scope: !483, file: !3, line: 301, type: !100)
!485 = !DILocation(line: 301, column: 26, scope: !483)
!486 = !DILocation(line: 301, column: 25, scope: !483)
!487 = !DILocation(line: 301, column: 32, scope: !483)
!488 = !DILocation(line: 301, column: 51, scope: !483)
!489 = !DILocation(line: 301, column: 50, scope: !483)
!490 = !DILocation(line: 301, column: 46, scope: !483)
!491 = !DILocation(line: 301, column: 28, scope: !483)
!492 = !DILocalVariable(name: "result_c", scope: !483, file: !3, line: 302, type: !102)
!493 = !DILocation(line: 302, column: 19, scope: !483)
!494 = !DILocation(line: 303, column: 32, scope: !483)
!495 = !DILocation(line: 303, column: 31, scope: !483)
!496 = !DILocation(line: 303, column: 33, scope: !483)
!497 = !DILocation(line: 303, column: 5, scope: !483)
!498 = !DILocation(line: 304, column: 20, scope: !483)
!499 = !DILocation(line: 304, column: 40, scope: !483)
!500 = !DILocation(line: 304, column: 29, scope: !483)
!501 = !DILocation(line: 304, column: 22, scope: !483)
!502 = !DILocation(line: 304, column: 5, scope: !483)
!503 = !DILocation(line: 304, column: 13, scope: !483)
!504 = !DILocation(line: 304, column: 18, scope: !483)
!505 = !DILocation(line: 305, column: 20, scope: !483)
!506 = !DILocation(line: 305, column: 33, scope: !483)
!507 = !DILocation(line: 305, column: 22, scope: !483)
!508 = !DILocation(line: 305, column: 5, scope: !483)
!509 = !DILocation(line: 305, column: 13, scope: !483)
!510 = !DILocation(line: 305, column: 18, scope: !483)
!511 = !DILocation(line: 306, column: 50, scope: !483)
!512 = !DILocation(line: 306, column: 45, scope: !483)
!513 = !DILocation(line: 306, column: 53, scope: !483)
!514 = !DILocation(line: 306, column: 42, scope: !483)
!515 = !DILocation(line: 306, column: 67, scope: !483)
!516 = !DILocation(line: 306, column: 75, scope: !483)
!517 = !DILocation(line: 306, column: 62, scope: !483)
!518 = !DILocation(line: 306, column: 60, scope: !483)
!519 = !DILocation(line: 306, column: 5, scope: !483)
!520 = !DILocation(line: 306, column: 13, scope: !483)
!521 = !DILocation(line: 306, column: 17, scope: !483)
!522 = !DILocation(line: 307, column: 5, scope: !483)
!523 = !DILocation(line: 309, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !479, file: !3, line: 309, column: 11)
!525 = !DILocation(line: 309, column: 13, scope: !524)
!526 = !DILocation(line: 309, column: 11, scope: !479)
!527 = !DILocation(line: 310, column: 18, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !3, line: 309, column: 22)
!529 = !DILocalVariable(name: "s", scope: !528, file: !3, line: 310, type: !100)
!530 = !DILocation(line: 310, column: 26, scope: !528)
!531 = !DILocation(line: 310, column: 25, scope: !528)
!532 = !DILocation(line: 310, column: 32, scope: !528)
!533 = !DILocation(line: 310, column: 51, scope: !528)
!534 = !DILocation(line: 310, column: 50, scope: !528)
!535 = !DILocation(line: 310, column: 46, scope: !528)
!536 = !DILocation(line: 310, column: 28, scope: !528)
!537 = !DILocalVariable(name: "result_c", scope: !528, file: !3, line: 311, type: !102)
!538 = !DILocation(line: 311, column: 19, scope: !528)
!539 = !DILocation(line: 312, column: 33, scope: !528)
!540 = !DILocation(line: 312, column: 32, scope: !528)
!541 = !DILocation(line: 312, column: 34, scope: !528)
!542 = !DILocation(line: 312, column: 39, scope: !528)
!543 = !DILocation(line: 312, column: 5, scope: !528)
!544 = !DILocation(line: 313, column: 20, scope: !528)
!545 = !DILocation(line: 313, column: 40, scope: !528)
!546 = !DILocation(line: 313, column: 29, scope: !528)
!547 = !DILocation(line: 313, column: 22, scope: !528)
!548 = !DILocation(line: 313, column: 5, scope: !528)
!549 = !DILocation(line: 313, column: 13, scope: !528)
!550 = !DILocation(line: 313, column: 18, scope: !528)
!551 = !DILocation(line: 314, column: 20, scope: !528)
!552 = !DILocation(line: 314, column: 33, scope: !528)
!553 = !DILocation(line: 314, column: 22, scope: !528)
!554 = !DILocation(line: 314, column: 5, scope: !528)
!555 = !DILocation(line: 314, column: 13, scope: !528)
!556 = !DILocation(line: 314, column: 18, scope: !528)
!557 = !DILocation(line: 315, column: 49, scope: !528)
!558 = !DILocation(line: 315, column: 57, scope: !528)
!559 = !DILocation(line: 315, column: 44, scope: !528)
!560 = !DILocation(line: 315, column: 42, scope: !528)
!561 = !DILocation(line: 315, column: 5, scope: !528)
!562 = !DILocation(line: 315, column: 13, scope: !528)
!563 = !DILocation(line: 315, column: 17, scope: !528)
!564 = !DILocation(line: 316, column: 5, scope: !528)
!565 = !DILocation(line: 318, column: 11, scope: !566)
!566 = distinct !DILexicalBlock(scope: !524, file: !3, line: 318, column: 11)
!567 = !DILocation(line: 318, column: 13, scope: !566)
!568 = !DILocation(line: 318, column: 11, scope: !524)
!569 = !DILocation(line: 319, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !3, line: 318, column: 22)
!571 = !DILocalVariable(name: "ln_term", scope: !570, file: !3, line: 319, type: !100)
!572 = !DILocation(line: 319, column: 38, scope: !570)
!573 = !DILocation(line: 319, column: 33, scope: !570)
!574 = !DILocation(line: 319, column: 29, scope: !570)
!575 = !DILocation(line: 319, column: 28, scope: !570)
!576 = !DILocalVariable(name: "scale_factor", scope: !570, file: !3, line: 320, type: !100)
!577 = !DILocation(line: 320, column: 18, scope: !570)
!578 = !DILocation(line: 320, column: 35, scope: !570)
!579 = !DILocation(line: 320, column: 47, scope: !570)
!580 = !DILocation(line: 320, column: 43, scope: !570)
!581 = !DILocalVariable(name: "result_c", scope: !570, file: !3, line: 321, type: !102)
!582 = !DILocation(line: 321, column: 19, scope: !570)
!583 = !DILocation(line: 322, column: 31, scope: !570)
!584 = !DILocation(line: 322, column: 30, scope: !570)
!585 = !DILocation(line: 322, column: 32, scope: !570)
!586 = !DILocation(line: 322, column: 37, scope: !570)
!587 = !DILocation(line: 322, column: 5, scope: !570)
!588 = !DILocation(line: 323, column: 20, scope: !570)
!589 = !DILocation(line: 323, column: 36, scope: !570)
!590 = !DILocation(line: 323, column: 55, scope: !570)
!591 = !DILocation(line: 323, column: 44, scope: !570)
!592 = !DILocation(line: 323, column: 33, scope: !570)
!593 = !DILocation(line: 323, column: 5, scope: !570)
!594 = !DILocation(line: 323, column: 13, scope: !570)
!595 = !DILocation(line: 323, column: 18, scope: !570)
!596 = !DILocation(line: 324, column: 20, scope: !570)
!597 = !DILocation(line: 324, column: 45, scope: !570)
!598 = !DILocation(line: 324, column: 74, scope: !570)
!599 = !DILocation(line: 324, column: 69, scope: !570)
!600 = !DILocation(line: 324, column: 67, scope: !570)
!601 = !DILocation(line: 324, column: 49, scope: !570)
!602 = !DILocation(line: 324, column: 33, scope: !570)
!603 = !DILocation(line: 324, column: 5, scope: !570)
!604 = !DILocation(line: 324, column: 13, scope: !570)
!605 = !DILocation(line: 324, column: 18, scope: !570)
!606 = !DILocation(line: 325, column: 49, scope: !570)
!607 = !DILocation(line: 325, column: 57, scope: !570)
!608 = !DILocation(line: 325, column: 44, scope: !570)
!609 = !DILocation(line: 325, column: 42, scope: !570)
!610 = !DILocation(line: 325, column: 5, scope: !570)
!611 = !DILocation(line: 325, column: 13, scope: !570)
!612 = !DILocation(line: 325, column: 17, scope: !570)
!613 = !DILocation(line: 326, column: 5, scope: !570)
!614 = !DILocation(line: 328, column: 11, scope: !615)
!615 = distinct !DILexicalBlock(scope: !566, file: !3, line: 328, column: 11)
!616 = !DILocation(line: 328, column: 13, scope: !615)
!617 = !DILocation(line: 328, column: 11, scope: !566)
!618 = !DILocation(line: 329, column: 5, scope: !619)
!619 = distinct !DILexicalBlock(scope: !615, file: !3, line: 328, column: 21)
!620 = distinct !{!620, !618, !618}
!621 = !DILocation(line: 329, column: 5, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !3, line: 329, column: 5)
!623 = distinct !{!623, !621, !621}
!624 = !DILocation(line: 329, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !3, line: 329, column: 5)
!626 = !DILocation(line: 330, column: 3, scope: !619)
!627 = !DILocation(line: 331, column: 11, scope: !628)
!628 = distinct !DILexicalBlock(scope: !615, file: !3, line: 331, column: 11)
!629 = !DILocation(line: 331, column: 13, scope: !628)
!630 = !DILocation(line: 331, column: 11, scope: !615)
!631 = !DILocation(line: 332, column: 18, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !3, line: 331, column: 21)
!633 = !DILocalVariable(name: "ln_term", scope: !632, file: !3, line: 332, type: !100)
!634 = !DILocation(line: 332, column: 38, scope: !632)
!635 = !DILocation(line: 332, column: 33, scope: !632)
!636 = !DILocation(line: 332, column: 29, scope: !632)
!637 = !DILocation(line: 332, column: 28, scope: !632)
!638 = !DILocalVariable(name: "scale_factor", scope: !632, file: !3, line: 333, type: !100)
!639 = !DILocation(line: 333, column: 18, scope: !632)
!640 = !DILocation(line: 333, column: 35, scope: !632)
!641 = !DILocation(line: 333, column: 47, scope: !632)
!642 = !DILocation(line: 333, column: 43, scope: !632)
!643 = !DILocalVariable(name: "result_c", scope: !632, file: !3, line: 334, type: !102)
!644 = !DILocation(line: 334, column: 19, scope: !632)
!645 = !DILocation(line: 335, column: 26, scope: !632)
!646 = !DILocation(line: 335, column: 5, scope: !632)
!647 = !DILocation(line: 336, column: 20, scope: !632)
!648 = !DILocation(line: 336, column: 36, scope: !632)
!649 = !DILocation(line: 336, column: 44, scope: !632)
!650 = !DILocation(line: 336, column: 55, scope: !632)
!651 = !DILocation(line: 336, column: 53, scope: !632)
!652 = !DILocation(line: 336, column: 68, scope: !632)
!653 = !DILocation(line: 336, column: 57, scope: !632)
!654 = !DILocation(line: 336, column: 33, scope: !632)
!655 = !DILocation(line: 336, column: 5, scope: !632)
!656 = !DILocation(line: 336, column: 13, scope: !632)
!657 = !DILocation(line: 336, column: 18, scope: !632)
!658 = !DILocation(line: 337, column: 20, scope: !632)
!659 = !DILocation(line: 337, column: 45, scope: !632)
!660 = !DILocation(line: 337, column: 74, scope: !632)
!661 = !DILocation(line: 337, column: 69, scope: !632)
!662 = !DILocation(line: 337, column: 67, scope: !632)
!663 = !DILocation(line: 337, column: 49, scope: !632)
!664 = !DILocation(line: 337, column: 33, scope: !632)
!665 = !DILocation(line: 337, column: 5, scope: !632)
!666 = !DILocation(line: 337, column: 13, scope: !632)
!667 = !DILocation(line: 337, column: 18, scope: !632)
!668 = !DILocation(line: 338, column: 49, scope: !632)
!669 = !DILocation(line: 338, column: 57, scope: !632)
!670 = !DILocation(line: 338, column: 44, scope: !632)
!671 = !DILocation(line: 338, column: 42, scope: !632)
!672 = !DILocation(line: 338, column: 5, scope: !632)
!673 = !DILocation(line: 338, column: 13, scope: !632)
!674 = !DILocation(line: 338, column: 17, scope: !632)
!675 = !DILocation(line: 339, column: 5, scope: !632)
!676 = !DILocation(line: 341, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !628, file: !3, line: 341, column: 11)
!678 = !DILocation(line: 341, column: 13, scope: !677)
!679 = !DILocation(line: 341, column: 11, scope: !628)
!680 = !DILocation(line: 342, column: 18, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !3, line: 341, column: 21)
!682 = !DILocalVariable(name: "s", scope: !681, file: !3, line: 342, type: !100)
!683 = !DILocation(line: 342, column: 26, scope: !681)
!684 = !DILocation(line: 342, column: 25, scope: !681)
!685 = !DILocation(line: 342, column: 32, scope: !681)
!686 = !DILocation(line: 342, column: 51, scope: !681)
!687 = !DILocation(line: 342, column: 50, scope: !681)
!688 = !DILocation(line: 342, column: 46, scope: !681)
!689 = !DILocation(line: 342, column: 28, scope: !681)
!690 = !DILocalVariable(name: "result_c", scope: !681, file: !3, line: 343, type: !102)
!691 = !DILocation(line: 343, column: 19, scope: !681)
!692 = !DILocation(line: 344, column: 32, scope: !681)
!693 = !DILocation(line: 344, column: 31, scope: !681)
!694 = !DILocation(line: 344, column: 33, scope: !681)
!695 = !DILocation(line: 344, column: 38, scope: !681)
!696 = !DILocation(line: 344, column: 5, scope: !681)
!697 = !DILocation(line: 345, column: 20, scope: !681)
!698 = !DILocation(line: 345, column: 40, scope: !681)
!699 = !DILocation(line: 345, column: 29, scope: !681)
!700 = !DILocation(line: 345, column: 22, scope: !681)
!701 = !DILocation(line: 345, column: 5, scope: !681)
!702 = !DILocation(line: 345, column: 13, scope: !681)
!703 = !DILocation(line: 345, column: 18, scope: !681)
!704 = !DILocation(line: 346, column: 20, scope: !681)
!705 = !DILocation(line: 346, column: 33, scope: !681)
!706 = !DILocation(line: 346, column: 22, scope: !681)
!707 = !DILocation(line: 346, column: 5, scope: !681)
!708 = !DILocation(line: 346, column: 13, scope: !681)
!709 = !DILocation(line: 346, column: 18, scope: !681)
!710 = !DILocation(line: 347, column: 49, scope: !681)
!711 = !DILocation(line: 347, column: 57, scope: !681)
!712 = !DILocation(line: 347, column: 44, scope: !681)
!713 = !DILocation(line: 347, column: 42, scope: !681)
!714 = !DILocation(line: 347, column: 5, scope: !681)
!715 = !DILocation(line: 347, column: 13, scope: !681)
!716 = !DILocation(line: 347, column: 17, scope: !681)
!717 = !DILocation(line: 348, column: 5, scope: !681)
!718 = !DILocation(line: 350, column: 11, scope: !719)
!719 = distinct !DILexicalBlock(scope: !677, file: !3, line: 350, column: 11)
!720 = !DILocation(line: 350, column: 16, scope: !719)
!721 = !DILocation(line: 350, column: 13, scope: !719)
!722 = !DILocation(line: 350, column: 21, scope: !719)
!723 = !DILocation(line: 350, column: 24, scope: !719)
!724 = !DILocation(line: 350, column: 11, scope: !677)
!725 = !DILocation(line: 351, column: 18, scope: !726)
!726 = distinct !DILexicalBlock(scope: !719, file: !3, line: 350, column: 31)
!727 = !DILocalVariable(name: "s", scope: !726, file: !3, line: 351, type: !100)
!728 = !DILocation(line: 351, column: 26, scope: !726)
!729 = !DILocation(line: 351, column: 25, scope: !726)
!730 = !DILocation(line: 351, column: 32, scope: !726)
!731 = !DILocation(line: 351, column: 51, scope: !726)
!732 = !DILocation(line: 351, column: 50, scope: !726)
!733 = !DILocation(line: 351, column: 46, scope: !726)
!734 = !DILocation(line: 351, column: 28, scope: !726)
!735 = !DILocalVariable(name: "result_c", scope: !726, file: !3, line: 352, type: !102)
!736 = !DILocation(line: 352, column: 19, scope: !726)
!737 = !DILocation(line: 353, column: 31, scope: !726)
!738 = !DILocation(line: 353, column: 30, scope: !726)
!739 = !DILocation(line: 353, column: 32, scope: !726)
!740 = !DILocation(line: 353, column: 5, scope: !726)
!741 = !DILocation(line: 354, column: 20, scope: !726)
!742 = !DILocation(line: 354, column: 41, scope: !726)
!743 = !DILocation(line: 354, column: 29, scope: !726)
!744 = !DILocation(line: 354, column: 22, scope: !726)
!745 = !DILocation(line: 354, column: 5, scope: !726)
!746 = !DILocation(line: 354, column: 13, scope: !726)
!747 = !DILocation(line: 354, column: 18, scope: !726)
!748 = !DILocation(line: 355, column: 20, scope: !726)
!749 = !DILocation(line: 355, column: 52, scope: !726)
!750 = !DILocation(line: 355, column: 41, scope: !726)
!751 = !DILocation(line: 355, column: 22, scope: !726)
!752 = !DILocation(line: 355, column: 5, scope: !726)
!753 = !DILocation(line: 355, column: 13, scope: !726)
!754 = !DILocation(line: 355, column: 18, scope: !726)
!755 = !DILocation(line: 356, column: 27, scope: !726)
!756 = !DILocation(line: 356, column: 29, scope: !726)
!757 = !DILocation(line: 356, column: 24, scope: !726)
!758 = !DILocation(line: 356, column: 36, scope: !726)
!759 = !DILocation(line: 356, column: 61, scope: !726)
!760 = !DILocation(line: 356, column: 69, scope: !726)
!761 = !DILocation(line: 356, column: 56, scope: !726)
!762 = !DILocation(line: 356, column: 54, scope: !726)
!763 = !DILocation(line: 356, column: 5, scope: !726)
!764 = !DILocation(line: 356, column: 13, scope: !726)
!765 = !DILocation(line: 356, column: 17, scope: !726)
!766 = !DILocation(line: 357, column: 8, scope: !767)
!767 = distinct !DILexicalBlock(scope: !726, file: !3, line: 357, column: 8)
!768 = !DILocation(line: 357, column: 16, scope: !767)
!769 = !DILocation(line: 357, column: 20, scope: !767)
!770 = !DILocation(line: 357, column: 8, scope: !726)
!771 = !DILocation(line: 358, column: 7, scope: !767)
!772 = distinct !{!772, !771, !771}
!773 = !DILocation(line: 358, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !767, file: !3, line: 358, column: 7)
!775 = distinct !{!775, !773, !773}
!776 = !DILocation(line: 358, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !3, line: 358, column: 7)
!778 = !DILocation(line: 360, column: 7, scope: !767)
!779 = !DILocation(line: 361, column: 3, scope: !726)
!780 = !DILocation(line: 363, column: 5, scope: !781)
!781 = distinct !DILexicalBlock(scope: !719, file: !3, line: 362, column: 8)
!782 = distinct !{!782, !780, !780}
!783 = !DILocation(line: 363, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 363, column: 5)
!785 = distinct !{!785, !783, !783}
!786 = !DILocation(line: 363, column: 5, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !3, line: 363, column: 5)
!788 = !DILocation(line: 365, column: 1, scope: !448)
!789 = distinct !DISubprogram(name: "cheb_eval_e", scope: !790, file: !790, line: 3, type: !791, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !108)
!790 = !DIFile(filename: "./../cheb_eval.c", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_expint_E2_scaled")
!791 = !DISubroutineType(types: !792)
!792 = !{!59, !793, !100, !101}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!795 = !DILocalVariable(name: "cs", arg: 1, scope: !789, file: !790, line: 3, type: !793)
!796 = !DILocation(line: 3, column: 33, scope: !789)
!797 = !DILocalVariable(name: "x", arg: 2, scope: !789, file: !790, line: 4, type: !100)
!798 = !DILocation(line: 4, column: 26, scope: !789)
!799 = !DILocalVariable(name: "result", arg: 3, scope: !789, file: !790, line: 5, type: !101)
!800 = !DILocation(line: 5, column: 29, scope: !789)
!801 = !DILocalVariable(name: "j", scope: !789, file: !790, line: 7, type: !59)
!802 = !DILocation(line: 7, column: 7, scope: !789)
!803 = !DILocalVariable(name: "d", scope: !789, file: !790, line: 8, type: !47)
!804 = !DILocation(line: 8, column: 10, scope: !789)
!805 = !DILocalVariable(name: "dd", scope: !789, file: !790, line: 9, type: !47)
!806 = !DILocation(line: 9, column: 10, scope: !789)
!807 = !DILocalVariable(name: "y", scope: !789, file: !790, line: 11, type: !47)
!808 = !DILocation(line: 11, column: 10, scope: !789)
!809 = !DILocation(line: 11, column: 20, scope: !789)
!810 = !DILocation(line: 11, column: 19, scope: !789)
!811 = !DILocation(line: 11, column: 24, scope: !789)
!812 = !DILocation(line: 11, column: 28, scope: !789)
!813 = !DILocation(line: 11, column: 22, scope: !789)
!814 = !DILocation(line: 11, column: 32, scope: !789)
!815 = !DILocation(line: 11, column: 36, scope: !789)
!816 = !DILocation(line: 11, column: 30, scope: !789)
!817 = !DILocation(line: 11, column: 42, scope: !789)
!818 = !DILocation(line: 11, column: 46, scope: !789)
!819 = !DILocation(line: 11, column: 50, scope: !789)
!820 = !DILocation(line: 11, column: 54, scope: !789)
!821 = !DILocation(line: 11, column: 48, scope: !789)
!822 = !DILocation(line: 11, column: 39, scope: !789)
!823 = !DILocalVariable(name: "y2", scope: !789, file: !790, line: 12, type: !47)
!824 = !DILocation(line: 12, column: 10, scope: !789)
!825 = !DILocation(line: 12, column: 21, scope: !789)
!826 = !DILocation(line: 12, column: 19, scope: !789)
!827 = !DILocalVariable(name: "e", scope: !789, file: !790, line: 14, type: !47)
!828 = !DILocation(line: 14, column: 10, scope: !789)
!829 = !DILocation(line: 16, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !789, file: !790, line: 16, column: 3)
!831 = !DILocation(line: 16, column: 15, scope: !830)
!832 = !DILocation(line: 16, column: 9, scope: !830)
!833 = !DILocation(line: 16, column: 7, scope: !830)
!834 = !DILocation(line: 16, column: 22, scope: !835)
!835 = distinct !DILexicalBlock(scope: !830, file: !790, line: 16, column: 3)
!836 = !DILocation(line: 16, column: 23, scope: !835)
!837 = !DILocation(line: 16, column: 3, scope: !830)
!838 = !DILocation(line: 17, column: 12, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !790, line: 16, column: 33)
!840 = !DILocalVariable(name: "temp", scope: !839, file: !790, line: 17, type: !47)
!841 = !DILocation(line: 17, column: 19, scope: !839)
!842 = !DILocation(line: 18, column: 9, scope: !839)
!843 = !DILocation(line: 18, column: 12, scope: !839)
!844 = !DILocation(line: 18, column: 11, scope: !839)
!845 = !DILocation(line: 18, column: 16, scope: !839)
!846 = !DILocation(line: 18, column: 14, scope: !839)
!847 = !DILocation(line: 18, column: 21, scope: !839)
!848 = !DILocation(line: 18, column: 25, scope: !839)
!849 = !DILocation(line: 18, column: 27, scope: !839)
!850 = !DILocation(line: 18, column: 19, scope: !839)
!851 = !DILocation(line: 18, column: 7, scope: !839)
!852 = !DILocation(line: 19, column: 15, scope: !839)
!853 = !DILocation(line: 19, column: 18, scope: !839)
!854 = !DILocation(line: 19, column: 17, scope: !839)
!855 = !DILocation(line: 19, column: 10, scope: !839)
!856 = !DILocation(line: 19, column: 31, scope: !839)
!857 = !DILocation(line: 19, column: 26, scope: !839)
!858 = !DILocation(line: 19, column: 24, scope: !839)
!859 = !DILocation(line: 19, column: 42, scope: !839)
!860 = !DILocation(line: 19, column: 46, scope: !839)
!861 = !DILocation(line: 19, column: 48, scope: !839)
!862 = !DILocation(line: 19, column: 37, scope: !839)
!863 = !DILocation(line: 19, column: 35, scope: !839)
!864 = !DILocation(line: 19, column: 7, scope: !839)
!865 = !DILocation(line: 20, column: 10, scope: !839)
!866 = !DILocation(line: 20, column: 8, scope: !839)
!867 = !DILocation(line: 21, column: 3, scope: !839)
!868 = !DILocation(line: 16, column: 29, scope: !835)
!869 = !DILocation(line: 16, column: 3, scope: !835)
!870 = distinct !{!870, !837, !871}
!871 = !DILocation(line: 21, column: 3, scope: !830)
!872 = !DILocation(line: 24, column: 12, scope: !873)
!873 = distinct !DILexicalBlock(scope: !789, file: !790, line: 23, column: 3)
!874 = !DILocalVariable(name: "temp", scope: !873, file: !790, line: 24, type: !47)
!875 = !DILocation(line: 24, column: 19, scope: !873)
!876 = !DILocation(line: 25, column: 9, scope: !873)
!877 = !DILocation(line: 25, column: 11, scope: !873)
!878 = !DILocation(line: 25, column: 10, scope: !873)
!879 = !DILocation(line: 25, column: 15, scope: !873)
!880 = !DILocation(line: 25, column: 13, scope: !873)
!881 = !DILocation(line: 25, column: 26, scope: !873)
!882 = !DILocation(line: 25, column: 30, scope: !873)
!883 = !DILocation(line: 25, column: 24, scope: !873)
!884 = !DILocation(line: 25, column: 18, scope: !873)
!885 = !DILocation(line: 25, column: 7, scope: !873)
!886 = !DILocation(line: 26, column: 15, scope: !873)
!887 = !DILocation(line: 26, column: 17, scope: !873)
!888 = !DILocation(line: 26, column: 16, scope: !873)
!889 = !DILocation(line: 26, column: 10, scope: !873)
!890 = !DILocation(line: 26, column: 30, scope: !873)
!891 = !DILocation(line: 26, column: 25, scope: !873)
!892 = !DILocation(line: 26, column: 23, scope: !873)
!893 = !DILocation(line: 26, column: 47, scope: !873)
!894 = !DILocation(line: 26, column: 51, scope: !873)
!895 = !DILocation(line: 26, column: 42, scope: !873)
!896 = !DILocation(line: 26, column: 40, scope: !873)
!897 = !DILocation(line: 26, column: 34, scope: !873)
!898 = !DILocation(line: 26, column: 7, scope: !873)
!899 = !DILocation(line: 29, column: 17, scope: !789)
!900 = !DILocation(line: 29, column: 3, scope: !789)
!901 = !DILocation(line: 29, column: 11, scope: !789)
!902 = !DILocation(line: 29, column: 15, scope: !789)
!903 = !DILocation(line: 30, column: 35, scope: !789)
!904 = !DILocation(line: 30, column: 33, scope: !789)
!905 = !DILocation(line: 30, column: 44, scope: !789)
!906 = !DILocation(line: 30, column: 48, scope: !789)
!907 = !DILocation(line: 30, column: 50, scope: !789)
!908 = !DILocation(line: 30, column: 54, scope: !789)
!909 = !DILocation(line: 30, column: 39, scope: !789)
!910 = !DILocation(line: 30, column: 37, scope: !789)
!911 = !DILocation(line: 30, column: 3, scope: !789)
!912 = !DILocation(line: 30, column: 11, scope: !789)
!913 = !DILocation(line: 30, column: 15, scope: !789)
!914 = !DILocation(line: 32, column: 3, scope: !789)
