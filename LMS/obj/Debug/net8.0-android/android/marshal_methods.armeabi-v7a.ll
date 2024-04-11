; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [379 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [752 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 299
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 333
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 341
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 8: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 350
	i32 42639949, ; 9: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 10: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 246
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 374
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 243
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83768722, ; 16: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 187
	i32 83839681, ; 17: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 358
	i32 101534019, ; 18: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 317
	i32 117431740, ; 19: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 20: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 317
	i32 122350210, ; 21: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 22: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 337
	i32 136584136, ; 23: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 373
	i32 140062828, ; 24: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 366
	i32 142721839, ; 25: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 26: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 27: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 28: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 273
	i32 176265551, ; 29: System.ServiceProcess => 0xa81994f => 132
	i32 176714968, ; 30: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 199
	i32 182336117, ; 31: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 319
	i32 184328833, ; 32: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 33: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 34: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 271
	i32 214122147, ; 35: LMS.dll => 0xcc33ea3 => 0
	i32 220171995, ; 36: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 229118224, ; 37: Microsoft.AspNetCore.Identity => 0xda81110 => 197
	i32 230216969, ; 38: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 293
	i32 230752869, ; 39: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 40: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 41: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 42: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 43: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 182
	i32 261689757, ; 44: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 276
	i32 276479776, ; 45: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 46: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 295
	i32 280482487, ; 47: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 292
	i32 291076382, ; 48: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 49: System.Net.Ping.dll => 0x11d123fd => 69
	i32 300686228, ; 50: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 178
	i32 317674968, ; 51: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 371
	i32 318968648, ; 52: Xamarin.AndroidX.Activity.dll => 0x13031348 => 262
	i32 321597661, ; 53: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 54: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 349
	i32 330147069, ; 55: Microsoft.SqlServer.Server => 0x13ada4fd => 245
	i32 342366114, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 294
	i32 360082299, ; 57: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 58: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 59: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 60: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 61: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 62: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 63: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 64: _Microsoft.Android.Resource.Designer => 0x17969339 => 375
	i32 403441872, ; 65: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 66: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 369
	i32 441335492, ; 67: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 277
	i32 442565967, ; 68: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 69: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 290
	i32 451504562, ; 70: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 71: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 72: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 73: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 74: System.dll => 0x1bff388e => 164
	i32 476646585, ; 75: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 292
	i32 485463106, ; 76: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 231
	i32 486930444, ; 77: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 305
	i32 489220957, ; 78: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 347
	i32 490002678, ; 79: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 192
	i32 498788369, ; 80: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 81: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 227
	i32 526420162, ; 82: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 83: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 337
	i32 530272170, ; 84: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 85: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 368
	i32 539058512, ; 86: Microsoft.Extensions.Logging => 0x20216150 => 222
	i32 540030774, ; 87: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 88: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 89: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 90: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 200
	i32 549171840, ; 91: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 92: Jsr305Binding => 0x213954e7 => 330
	i32 569601784, ; 93: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 328
	i32 571435654, ; 94: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 217
	i32 577335427, ; 95: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 96: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 97: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 98: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 99: Xamarin.AndroidX.CustomView => 0x2568904f => 282
	i32 627931235, ; 100: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 360
	i32 639843206, ; 101: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 288
	i32 643868501, ; 102: System.Net => 0x2660a755 => 81
	i32 662205335, ; 103: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 104: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 324
	i32 666292255, ; 105: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 269
	i32 672442732, ; 106: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 107: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 108: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 109: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 339
	i32 693804605, ; 110: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 111: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 112: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 334
	i32 700358131, ; 113: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 709152836, ; 114: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 253
	i32 720511267, ; 115: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 338
	i32 722857257, ; 116: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 117: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 118: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 119: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 259
	i32 759454413, ; 120: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 121: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 122: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 123: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 366
	i32 789151979, ; 124: Microsoft.Extensions.Options => 0x2f0980eb => 226
	i32 790371945, ; 125: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 283
	i32 804008546, ; 126: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 186
	i32 804715423, ; 127: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 128: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 297
	i32 809851609, ; 129: System.Drawing.Common.dll => 0x30455ad9 => 248
	i32 823281589, ; 130: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 131: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 132: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 133: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 134: Xamarin.AndroidX.Print => 0x3246f6cd => 310
	i32 869139383, ; 135: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 351
	i32 873119928, ; 136: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 137: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 138: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 139: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 365
	i32 904024072, ; 140: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 141: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 142: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 362
	i32 928116545, ; 143: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 333
	i32 952186615, ; 144: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 145: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 338
	i32 961460050, ; 146: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 355
	i32 966729478, ; 147: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 331
	i32 967690846, ; 148: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 294
	i32 975236339, ; 149: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 150: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 151: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 152: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 153: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 364
	i32 992768348, ; 154: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 155: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 156: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 219
	i32 1001831731, ; 157: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 158: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 314
	i32 1019214401, ; 159: System.Drawing => 0x3cbffa41 => 36
	i32 1020234808, ; 160: Microsoft.AspNetCore.Authentication.Cookies.dll => 0x3ccf8c38 => 179
	i32 1028951442, ; 161: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 214
	i32 1031528504, ; 162: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 332
	i32 1035644815, ; 163: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 267
	i32 1036536393, ; 164: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 165: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 345
	i32 1044663988, ; 166: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 167: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 301
	i32 1062017875, ; 168: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 230
	i32 1067306892, ; 169: GoogleGson => 0x3f9dcf8c => 176
	i32 1082857460, ; 170: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 171: Xamarin.Kotlin.StdLib => 0x409e66d8 => 335
	i32 1098259244, ; 172: System => 0x41761b2c => 164
	i32 1106973742, ; 173: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 211
	i32 1108272742, ; 174: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 367
	i32 1110309514, ; 175: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 220
	i32 1112354281, ; 176: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 178
	i32 1117529484, ; 177: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 361
	i32 1118262833, ; 178: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 357
	i32 1121599056, ; 179: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 300
	i32 1127624469, ; 180: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 224
	i32 1135815421, ; 181: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 0x43b32afd => 188
	i32 1138436374, ; 182: Microsoft.Data.SqlClient.dll => 0x43db2916 => 201
	i32 1145483052, ; 183: System.Windows.Extensions.dll => 0x4446af2c => 257
	i32 1149092582, ; 184: Xamarin.AndroidX.Window => 0x447dc2e6 => 327
	i32 1157931901, ; 185: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 203
	i32 1168523401, ; 186: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 363
	i32 1170634674, ; 187: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 188: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 215
	i32 1175144683, ; 189: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 323
	i32 1178241025, ; 190: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 308
	i32 1202000627, ; 191: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 203
	i32 1204270330, ; 192: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 269
	i32 1204575371, ; 193: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 207
	i32 1208641965, ; 194: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 195: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1220193633, ; 196: Microsoft.Net.Http.Headers => 0x48baad61 => 244
	i32 1236289705, ; 197: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 192
	i32 1243150071, ; 198: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 328
	i32 1253011324, ; 199: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 200: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 343
	i32 1264511973, ; 201: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 318
	i32 1267360935, ; 202: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 322
	i32 1273260888, ; 203: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 274
	i32 1275534314, ; 204: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 339
	i32 1278448581, ; 205: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 266
	i32 1293217323, ; 206: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 285
	i32 1308624726, ; 207: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 352
	i32 1309188875, ; 208: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 209: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 327
	i32 1324164729, ; 210: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 211: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 212: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 372
	i32 1364015309, ; 213: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 214: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 373
	i32 1376866003, ; 215: Xamarin.AndroidX.SavedState => 0x52114ed3 => 314
	i32 1379779777, ; 216: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 217: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 218: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 278
	i32 1408764838, ; 219: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 220: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 221: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 222: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 341
	i32 1434145427, ; 223: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 224: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 331
	i32 1439761251, ; 225: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 226: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 227: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 228: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 216
	i32 1457743152, ; 229: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 230: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 231: System.IdentityModel.Tokens.Jwt => 0x57137723 => 249
	i32 1461004990, ; 232: es\Microsoft.Maui.Controls.resources => 0x57152abe => 347
	i32 1461234159, ; 233: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 234: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 235: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 236: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 268
	i32 1470490898, ; 237: Microsoft.Extensions.Primitives => 0x57a5e912 => 227
	i32 1479771757, ; 238: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 239: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 240: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 241: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 315
	i32 1498168481, ; 242: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 232
	i32 1521091094, ; 243: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 219
	i32 1526286932, ; 244: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 371
	i32 1536373174, ; 245: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 246: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 247: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 248: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 186
	i32 1550322496, ; 249: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565310744, ; 250: System.Runtime.Caching => 0x5d4cbf18 => 252
	i32 1565862583, ; 251: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 252: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 253: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 254: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 255: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 256: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 284
	i32 1592978981, ; 257: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 258: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 332
	i32 1601112923, ; 259: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 260: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 261: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 262: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 304
	i32 1622358360, ; 263: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 264: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 326
	i32 1628113371, ; 265: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 235
	i32 1632842087, ; 266: Microsoft.Extensions.Configuration.Json => 0x61533167 => 212
	i32 1635184631, ; 267: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 288
	i32 1636350590, ; 268: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 281
	i32 1639515021, ; 269: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 270: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 271: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 272: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 185
	i32 1657153582, ; 273: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 274: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 320
	i32 1658251792, ; 275: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 329
	i32 1670060433, ; 276: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 276
	i32 1675553242, ; 277: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 278: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 279: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 280: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 281: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 202
	i32 1691477237, ; 282: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 283: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 284: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 336
	i32 1701541528, ; 285: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 286: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 297
	i32 1726116996, ; 287: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 288: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 289: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 272
	i32 1743415430, ; 290: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 342
	i32 1744735666, ; 291: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 292: System.IO.Pipelines.dll => 0x68139a0d => 250
	i32 1746316138, ; 293: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 294: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 295: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 296: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 184
	i32 1763938596, ; 297: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 298: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 299: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 319
	i32 1770582343, ; 300: Microsoft.Extensions.Logging.dll => 0x6988f147 => 222
	i32 1776026572, ; 301: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 302: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 303: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 304: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 358
	i32 1788241197, ; 305: Xamarin.AndroidX.Fragment => 0x6a96652d => 290
	i32 1791755720, ; 306: Microsoft.AspNetCore.Authentication.dll => 0x6acc05c8 => 177
	i32 1793755602, ; 307: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 350
	i32 1794500907, ; 308: Microsoft.Identity.Client.dll => 0x6af5e92b => 229
	i32 1796167890, ; 309: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 200
	i32 1808609942, ; 310: Xamarin.AndroidX.Loader => 0x6bcd3296 => 304
	i32 1813058853, ; 311: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 335
	i32 1813201214, ; 312: Xamarin.Google.Android.Material => 0x6c13413e => 329
	i32 1818569960, ; 313: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 309
	i32 1818787751, ; 314: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819327070, ; 315: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 196
	i32 1820883333, ; 316: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 187
	i32 1824175904, ; 317: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 318: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 319: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 223
	i32 1829150748, ; 320: System.Windows.Extensions => 0x6d06a01c => 257
	i32 1847515442, ; 321: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 259
	i32 1853025655, ; 322: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 367
	i32 1858542181, ; 323: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 324: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 325: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 235
	i32 1875935024, ; 326: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 349
	i32 1879696579, ; 327: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 328: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 270
	i32 1888955245, ; 329: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 330: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 331: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 343
	i32 1898237753, ; 332: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 333: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 334: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1928288591, ; 335: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 194
	i32 1939592360, ; 336: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 337: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 354
	i32 1953680223, ; 338: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 190
	i32 1956758971, ; 339: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 340: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 316
	i32 1968388702, ; 341: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 208
	i32 1983156543, ; 342: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 336
	i32 1985761444, ; 343: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 261
	i32 1986222447, ; 344: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 236
	i32 1991044029, ; 345: Microsoft.Extensions.Identity.Core.dll => 0x76acebbd => 221
	i32 2003115576, ; 346: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 346
	i32 2011961780, ; 347: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 348: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 301
	i32 2031763787, ; 349: Xamarin.Android.Glide => 0x791a414b => 258
	i32 2040764568, ; 350: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 230
	i32 2045470958, ; 351: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 352: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 210
	i32 2055257422, ; 353: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 296
	i32 2060060697, ; 354: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 355: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 345
	i32 2070888862, ; 356: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 357: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 218
	i32 2075706075, ; 358: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 194
	i32 2076659885, ; 359: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 228
	i32 2079903147, ; 360: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2085039813, ; 361: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 255
	i32 2090596640, ; 362: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 363: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 364: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 365: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 366: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 367: Microsoft.Maui => 0x80bd55ad => 241
	i32 2169148018, ; 368: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 353
	i32 2181898931, ; 369: Microsoft.Extensions.Options.dll => 0x820d22b3 => 226
	i32 2192057212, ; 370: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 223
	i32 2193016926, ; 371: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 372: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 340
	i32 2201231467, ; 373: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 374: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 225
	i32 2207618523, ; 375: it\Microsoft.Maui.Controls.resources => 0x839595db => 355
	i32 2217644978, ; 376: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 323
	i32 2222056684, ; 377: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2242871324, ; 378: Microsoft.AspNetCore.Http.dll => 0x85af801c => 193
	i32 2244775296, ; 379: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 305
	i32 2252106437, ; 380: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 381: Microsoft.EntityFrameworkCore => 0x86487ec9 => 202
	i32 2253551641, ; 382: Microsoft.IdentityModel.Protocols => 0x86527819 => 234
	i32 2256313426, ; 383: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 384: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 385: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 209
	i32 2267999099, ; 386: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 260
	i32 2279755925, ; 387: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 312
	i32 2291847450, ; 388: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 189
	i32 2293034957, ; 389: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 390: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 391: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 392: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 359
	i32 2305521784, ; 393: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 394: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 264
	i32 2320631194, ; 395: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 396: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 397: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 398: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 399: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 353
	i32 2368005991, ; 400: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 401: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 233
	i32 2371007202, ; 402: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 208
	i32 2378619854, ; 403: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 404: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 405: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 354
	i32 2401565422, ; 406: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 407: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 287
	i32 2411328690, ; 408: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 182
	i32 2421380589, ; 409: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 410: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 274
	i32 2427813419, ; 411: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 351
	i32 2435356389, ; 412: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 413: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 414: Microsoft.JSInterop.dll => 0x919672ca => 237
	i32 2454642406, ; 415: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458592288, ; 416: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 180
	i32 2458678730, ; 417: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 418: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 419: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 277
	i32 2471841756, ; 420: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 421: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 422: Microsoft.Maui.Controls => 0x93dba8a1 => 239
	i32 2483903535, ; 423: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 424: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 425: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 426: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 427: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 357
	i32 2505896520, ; 428: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 299
	i32 2522472828, ; 429: Xamarin.Android.Glide.dll => 0x9659e17c => 258
	i32 2537015816, ; 430: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 181
	i32 2538310050, ; 431: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 432: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 352
	i32 2562349572, ; 433: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 434: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 435: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 356
	i32 2581783588, ; 436: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 300
	i32 2581819634, ; 437: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 322
	i32 2585220780, ; 438: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 439: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 440: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 183
	i32 2589602615, ; 441: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 442: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 215
	i32 2593496499, ; 443: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 361
	i32 2594125473, ; 444: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 191
	i32 2605712449, ; 445: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 340
	i32 2615233544, ; 446: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 291
	i32 2616218305, ; 447: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 224
	i32 2617129537, ; 448: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 449: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 450: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 281
	i32 2624644809, ; 451: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 286
	i32 2626831493, ; 452: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 356
	i32 2627185994, ; 453: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 454: System.Memory.Data => 0x9ca74fdc => 251
	i32 2629843544, ; 455: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 456: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 295
	i32 2633959305, ; 457: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 195
	i32 2634653062, ; 458: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 204
	i32 2640290731, ; 459: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 233
	i32 2640706905, ; 460: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 461: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 254
	i32 2663391936, ; 462: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 260
	i32 2663698177, ; 463: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 464: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 465: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 466: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 467: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2686887180, ; 468: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 469: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 185
	i32 2693849962, ; 470: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 471: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 320
	i32 2715334215, ; 472: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 473: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 474: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 475: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 476: Xamarin.AndroidX.Activity => 0xa2e0939b => 262
	i32 2735172069, ; 477: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 478: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 181
	i32 2737747696, ; 479: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 268
	i32 2740051746, ; 480: Microsoft.Identity.Client => 0xa351df22 => 229
	i32 2740698338, ; 481: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 342
	i32 2740948882, ; 482: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 483: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 484: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 362
	i32 2755098380, ; 485: Microsoft.SqlServer.Server.dll => 0xa437770c => 245
	i32 2755643133, ; 486: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 205
	i32 2758225723, ; 487: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 240
	i32 2764765095, ; 488: Microsoft.Maui.dll => 0xa4caf7a7 => 241
	i32 2765824710, ; 489: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 490: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 334
	i32 2778768386, ; 491: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 325
	i32 2779977773, ; 492: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 313
	i32 2782920994, ; 493: Microsoft.AspNetCore.Authentication.Cookies => 0xa5e00122 => 179
	i32 2785988530, ; 494: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 368
	i32 2788224221, ; 495: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 291
	i32 2795666278, ; 496: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 246
	i32 2801831435, ; 497: Microsoft.Maui.Graphics => 0xa7008e0b => 243
	i32 2803228030, ; 498: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 499: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 278
	i32 2819470561, ; 500: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 501: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 502: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 313
	i32 2824502124, ; 503: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 504: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 198
	i32 2838993487, ; 505: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 302
	i32 2841355853, ; 506: System.Security.Permissions => 0xa95ba64d => 256
	i32 2847789619, ; 507: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 204
	i32 2849599387, ; 508: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2850549256, ; 509: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 196
	i32 2853208004, ; 510: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 325
	i32 2855708567, ; 511: Xamarin.AndroidX.Transition => 0xaa36a797 => 321
	i32 2861098320, ; 512: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 513: Microsoft.Maui.Essentials => 0xaa8a4878 => 242
	i32 2867946736, ; 514: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 254
	i32 2870099610, ; 515: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 263
	i32 2875164099, ; 516: Jsr305Binding.dll => 0xab5f85c3 => 330
	i32 2875220617, ; 517: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 518: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 289
	i32 2887636118, ; 519: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 520: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 184
	i32 2899753641, ; 521: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 522: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 523: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 524: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 525: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 526: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 218
	i32 2916838712, ; 527: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 326
	i32 2919462931, ; 528: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 529: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 265
	i32 2921417940, ; 530: System.Security.Cryptography.Xml => 0xae214cd4 => 255
	i32 2930358886, ; 531: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 190
	i32 2936416060, ; 532: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 533: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 534: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 535: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 247
	i32 2959614098, ; 536: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 537: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2970759306, ; 538: BCrypt.Net-Next.dll => 0xb112308a => 175
	i32 2972252294, ; 539: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978368250, ; 540: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 191
	i32 2978675010, ; 541: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 285
	i32 2987532451, ; 542: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 316
	i32 2996646946, ; 543: Microsoft.AspNetCore.Http => 0xb29d3422 => 193
	i32 2996846495, ; 544: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 298
	i32 3012788804, ; 545: System.Configuration.ConfigurationManager => 0xb3938244 => 247
	i32 3014607031, ; 546: Microsoft.AspNetCore.Cryptography.KeyDerivation => 0xb3af40b7 => 188
	i32 3016983068, ; 547: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 318
	i32 3023353419, ; 548: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 549: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 293
	i32 3033331042, ; 550: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 180
	i32 3033605958, ; 551: System.Memory.Data.dll => 0xb4d12746 => 251
	i32 3036999524, ; 552: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 195
	i32 3038032645, ; 553: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 375
	i32 3053864966, ; 554: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 348
	i32 3056245963, ; 555: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 315
	i32 3057625584, ; 556: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 306
	i32 3059408633, ; 557: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 558: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 559: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 206
	i32 3075834255, ; 560: System.Threading.Tasks => 0xb755818f => 144
	i32 3084678329, ; 561: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 236
	i32 3090735792, ; 562: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3093090641, ; 563: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 228
	i32 3099732863, ; 564: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 565: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 566: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 567: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 568: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 569: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 570: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 571: GoogleGson.dll => 0xbba64c02 => 176
	i32 3155681111, ; 572: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 189
	i32 3159123045, ; 573: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 574: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 575: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 307
	i32 3179943668, ; 576: LMS => 0xbd8a16f4 => 0
	i32 3192346100, ; 577: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 578: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 579: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 206
	i32 3204380047, ; 580: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 581: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 582: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 284
	i32 3213246214, ; 583: System.Security.Permissions.dll => 0xbf863f06 => 256
	i32 3220365878, ; 584: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 585: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 586: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3257523865, ; 587: Microsoft.AspNetCore.Identity.dll => 0xc229de99 => 197
	i32 3258312781, ; 588: Xamarin.AndroidX.CardView => 0xc235e84d => 272
	i32 3265493905, ; 589: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 590: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 591: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 592: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 593: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 594: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 595: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 596: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 199
	i32 3303498502, ; 597: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 598: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 348
	i32 3312457198, ; 599: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 232
	i32 3316684772, ; 600: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 601: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 282
	i32 3317144872, ; 602: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 603: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 270
	i32 3345895724, ; 604: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 311
	i32 3346324047, ; 605: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 308
	i32 3357674450, ; 606: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 365
	i32 3358260929, ; 607: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 608: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 263
	i32 3362522851, ; 609: Xamarin.AndroidX.Core => 0xc86c06e3 => 279
	i32 3366347497, ; 610: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 611: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 234
	i32 3374999561, ; 612: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 312
	i32 3381016424, ; 613: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 344
	i32 3395150330, ; 614: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 615: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 616: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 283
	i32 3406629867, ; 617: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 216
	i32 3421170118, ; 618: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 210
	i32 3428513518, ; 619: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 213
	i32 3429136800, ; 620: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 621: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 622: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 286
	i32 3445260447, ; 623: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 624: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 238
	i32 3458724246, ; 625: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 363
	i32 3464190856, ; 626: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 183
	i32 3471940407, ; 627: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3472012038, ; 628: BCrypt.Net-Next => 0xcef2b306 => 175
	i32 3476120550, ; 629: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 630: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 364
	i32 3485117614, ; 631: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 632: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 633: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 275
	i32 3500000672, ; 634: Microsoft.JSInterop => 0xd09dc5a0 => 237
	i32 3509114376, ; 635: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 636: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 637: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 638: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 639: Microsoft.Data.SqlClient => 0xd35114f1 => 201
	i32 3560100363, ; 640: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 641: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 642: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 643: System.Runtime.Caching.dll => 0xd4d3289f => 252
	i32 3580758918, ; 644: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 372
	i32 3592228221, ; 645: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 374
	i32 3597029428, ; 646: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 261
	i32 3598340787, ; 647: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 648: System.Linq.dll => 0xd715a361 => 61
	i32 3619374377, ; 649: Microsoft.Extensions.Identity.Core => 0xd7bb4529 => 221
	i32 3624195450, ; 650: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 651: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 310
	i32 3633644679, ; 652: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 265
	i32 3638274909, ; 653: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 654: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 296
	i32 3643446276, ; 655: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 369
	i32 3643854240, ; 656: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 307
	i32 3645089577, ; 657: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 658: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 209
	i32 3660523487, ; 659: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 660: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 661: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 271
	i32 3684561358, ; 662: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 275
	i32 3689375977, ; 663: System.Drawing.Common => 0xdbe768e9 => 248
	i32 3700591436, ; 664: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 231
	i32 3700866549, ; 665: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 666: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 280
	i32 3716563718, ; 667: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 668: Xamarin.AndroidX.Annotation => 0xdda814c6 => 264
	i32 3722202641, ; 669: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 212
	i32 3724971120, ; 670: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 306
	i32 3732100267, ; 671: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 672: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 198
	i32 3737834244, ; 673: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 674: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 675: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 676: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 344
	i32 3758424670, ; 677: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 211
	i32 3765508441, ; 678: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 225
	i32 3786282454, ; 679: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 273
	i32 3792276235, ; 680: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 681: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 238
	i32 3802395368, ; 682: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 683: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 253
	i32 3819260425, ; 684: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 685: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 686: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 687: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 214
	i32 3844307129, ; 688: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 689: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 690: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 691: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 692: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 693: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 694: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 321
	i32 3888767677, ; 695: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 311
	i32 3896106733, ; 696: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 697: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 279
	i32 3901907137, ; 698: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 699: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 360
	i32 3920810846, ; 700: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 701: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 324
	i32 3928044579, ; 702: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 703: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 704: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 309
	i32 3945713374, ; 705: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 706: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 707: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 267
	i32 3959773229, ; 708: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 298
	i32 4003436829, ; 709: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 710: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 266
	i32 4023392905, ; 711: System.IO.Pipelines => 0xefd01a89 => 250
	i32 4025784931, ; 712: System.Memory => 0xeff49a63 => 62
	i32 4044155772, ; 713: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 244
	i32 4046471985, ; 714: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 240
	i32 4054681211, ; 715: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 716: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 717: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4078967171, ; 718: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 220
	i32 4091086043, ; 719: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 346
	i32 4094352644, ; 720: Microsoft.Maui.Essentials.dll => 0xf40add04 => 242
	i32 4099507663, ; 721: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 722: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 723: Xamarin.AndroidX.Emoji2 => 0xf479582c => 287
	i32 4101842092, ; 724: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 207
	i32 4103439459, ; 725: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 370
	i32 4118552436, ; 726: Microsoft.AspNetCore.Authentication => 0xf57c1f74 => 177
	i32 4126470640, ; 727: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 213
	i32 4127667938, ; 728: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 729: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 730: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 731: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 370
	i32 4151237749, ; 732: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 733: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 734: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 735: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 736: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 737: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 303
	i32 4185676441, ; 738: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 739: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 205
	i32 4196529839, ; 740: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 741: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 742: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 359
	i32 4256097574, ; 743: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 280
	i32 4258378803, ; 744: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 302
	i32 4260525087, ; 745: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 746: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 249
	i32 4271975918, ; 747: Microsoft.Maui.Controls.dll => 0xfea12dee => 239
	i32 4274976490, ; 748: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 749: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 303
	i32 4294648842, ; 750: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 217
	i32 4294763496 ; 751: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 289
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [752 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 299, ; 3
	i32 333, ; 4
	i32 48, ; 5
	i32 341, ; 6
	i32 80, ; 7
	i32 350, ; 8
	i32 145, ; 9
	i32 246, ; 10
	i32 30, ; 11
	i32 374, ; 12
	i32 124, ; 13
	i32 243, ; 14
	i32 102, ; 15
	i32 187, ; 16
	i32 358, ; 17
	i32 317, ; 18
	i32 107, ; 19
	i32 317, ; 20
	i32 139, ; 21
	i32 337, ; 22
	i32 373, ; 23
	i32 366, ; 24
	i32 77, ; 25
	i32 124, ; 26
	i32 13, ; 27
	i32 273, ; 28
	i32 132, ; 29
	i32 199, ; 30
	i32 319, ; 31
	i32 151, ; 32
	i32 18, ; 33
	i32 271, ; 34
	i32 0, ; 35
	i32 26, ; 36
	i32 197, ; 37
	i32 293, ; 38
	i32 1, ; 39
	i32 59, ; 40
	i32 42, ; 41
	i32 91, ; 42
	i32 182, ; 43
	i32 276, ; 44
	i32 147, ; 45
	i32 295, ; 46
	i32 292, ; 47
	i32 54, ; 48
	i32 69, ; 49
	i32 178, ; 50
	i32 371, ; 51
	i32 262, ; 52
	i32 83, ; 53
	i32 349, ; 54
	i32 245, ; 55
	i32 294, ; 56
	i32 131, ; 57
	i32 55, ; 58
	i32 149, ; 59
	i32 74, ; 60
	i32 145, ; 61
	i32 62, ; 62
	i32 146, ; 63
	i32 375, ; 64
	i32 165, ; 65
	i32 369, ; 66
	i32 277, ; 67
	i32 12, ; 68
	i32 290, ; 69
	i32 125, ; 70
	i32 152, ; 71
	i32 113, ; 72
	i32 166, ; 73
	i32 164, ; 74
	i32 292, ; 75
	i32 231, ; 76
	i32 305, ; 77
	i32 347, ; 78
	i32 192, ; 79
	i32 84, ; 80
	i32 227, ; 81
	i32 150, ; 82
	i32 337, ; 83
	i32 60, ; 84
	i32 368, ; 85
	i32 222, ; 86
	i32 51, ; 87
	i32 103, ; 88
	i32 114, ; 89
	i32 200, ; 90
	i32 40, ; 91
	i32 330, ; 92
	i32 328, ; 93
	i32 217, ; 94
	i32 120, ; 95
	i32 52, ; 96
	i32 44, ; 97
	i32 119, ; 98
	i32 282, ; 99
	i32 360, ; 100
	i32 288, ; 101
	i32 81, ; 102
	i32 136, ; 103
	i32 324, ; 104
	i32 269, ; 105
	i32 8, ; 106
	i32 73, ; 107
	i32 155, ; 108
	i32 339, ; 109
	i32 154, ; 110
	i32 92, ; 111
	i32 334, ; 112
	i32 45, ; 113
	i32 253, ; 114
	i32 338, ; 115
	i32 109, ; 116
	i32 129, ; 117
	i32 25, ; 118
	i32 259, ; 119
	i32 72, ; 120
	i32 55, ; 121
	i32 46, ; 122
	i32 366, ; 123
	i32 226, ; 124
	i32 283, ; 125
	i32 186, ; 126
	i32 22, ; 127
	i32 297, ; 128
	i32 248, ; 129
	i32 86, ; 130
	i32 43, ; 131
	i32 160, ; 132
	i32 71, ; 133
	i32 310, ; 134
	i32 351, ; 135
	i32 3, ; 136
	i32 42, ; 137
	i32 63, ; 138
	i32 365, ; 139
	i32 16, ; 140
	i32 53, ; 141
	i32 362, ; 142
	i32 333, ; 143
	i32 105, ; 144
	i32 338, ; 145
	i32 355, ; 146
	i32 331, ; 147
	i32 294, ; 148
	i32 34, ; 149
	i32 158, ; 150
	i32 85, ; 151
	i32 32, ; 152
	i32 364, ; 153
	i32 12, ; 154
	i32 51, ; 155
	i32 219, ; 156
	i32 56, ; 157
	i32 314, ; 158
	i32 36, ; 159
	i32 179, ; 160
	i32 214, ; 161
	i32 332, ; 162
	i32 267, ; 163
	i32 35, ; 164
	i32 345, ; 165
	i32 58, ; 166
	i32 301, ; 167
	i32 230, ; 168
	i32 176, ; 169
	i32 17, ; 170
	i32 335, ; 171
	i32 164, ; 172
	i32 211, ; 173
	i32 367, ; 174
	i32 220, ; 175
	i32 178, ; 176
	i32 361, ; 177
	i32 357, ; 178
	i32 300, ; 179
	i32 224, ; 180
	i32 188, ; 181
	i32 201, ; 182
	i32 257, ; 183
	i32 327, ; 184
	i32 203, ; 185
	i32 363, ; 186
	i32 153, ; 187
	i32 215, ; 188
	i32 323, ; 189
	i32 308, ; 190
	i32 203, ; 191
	i32 269, ; 192
	i32 207, ; 193
	i32 29, ; 194
	i32 52, ; 195
	i32 244, ; 196
	i32 192, ; 197
	i32 328, ; 198
	i32 5, ; 199
	i32 343, ; 200
	i32 318, ; 201
	i32 322, ; 202
	i32 274, ; 203
	i32 339, ; 204
	i32 266, ; 205
	i32 285, ; 206
	i32 352, ; 207
	i32 85, ; 208
	i32 327, ; 209
	i32 61, ; 210
	i32 112, ; 211
	i32 372, ; 212
	i32 57, ; 213
	i32 373, ; 214
	i32 314, ; 215
	i32 99, ; 216
	i32 19, ; 217
	i32 278, ; 218
	i32 111, ; 219
	i32 101, ; 220
	i32 102, ; 221
	i32 341, ; 222
	i32 104, ; 223
	i32 331, ; 224
	i32 71, ; 225
	i32 38, ; 226
	i32 32, ; 227
	i32 216, ; 228
	i32 103, ; 229
	i32 73, ; 230
	i32 249, ; 231
	i32 347, ; 232
	i32 9, ; 233
	i32 123, ; 234
	i32 46, ; 235
	i32 268, ; 236
	i32 227, ; 237
	i32 9, ; 238
	i32 43, ; 239
	i32 4, ; 240
	i32 315, ; 241
	i32 232, ; 242
	i32 219, ; 243
	i32 371, ; 244
	i32 31, ; 245
	i32 138, ; 246
	i32 92, ; 247
	i32 186, ; 248
	i32 93, ; 249
	i32 252, ; 250
	i32 49, ; 251
	i32 141, ; 252
	i32 112, ; 253
	i32 140, ; 254
	i32 174, ; 255
	i32 284, ; 256
	i32 115, ; 257
	i32 332, ; 258
	i32 157, ; 259
	i32 76, ; 260
	i32 79, ; 261
	i32 304, ; 262
	i32 37, ; 263
	i32 326, ; 264
	i32 235, ; 265
	i32 212, ; 266
	i32 288, ; 267
	i32 281, ; 268
	i32 64, ; 269
	i32 138, ; 270
	i32 15, ; 271
	i32 185, ; 272
	i32 116, ; 273
	i32 320, ; 274
	i32 329, ; 275
	i32 276, ; 276
	i32 48, ; 277
	i32 70, ; 278
	i32 80, ; 279
	i32 126, ; 280
	i32 202, ; 281
	i32 94, ; 282
	i32 121, ; 283
	i32 336, ; 284
	i32 26, ; 285
	i32 297, ; 286
	i32 97, ; 287
	i32 28, ; 288
	i32 272, ; 289
	i32 342, ; 290
	i32 149, ; 291
	i32 250, ; 292
	i32 169, ; 293
	i32 4, ; 294
	i32 98, ; 295
	i32 184, ; 296
	i32 33, ; 297
	i32 93, ; 298
	i32 319, ; 299
	i32 222, ; 300
	i32 21, ; 301
	i32 41, ; 302
	i32 170, ; 303
	i32 358, ; 304
	i32 290, ; 305
	i32 177, ; 306
	i32 350, ; 307
	i32 229, ; 308
	i32 200, ; 309
	i32 304, ; 310
	i32 335, ; 311
	i32 329, ; 312
	i32 309, ; 313
	i32 2, ; 314
	i32 196, ; 315
	i32 187, ; 316
	i32 134, ; 317
	i32 111, ; 318
	i32 223, ; 319
	i32 257, ; 320
	i32 259, ; 321
	i32 367, ; 322
	i32 58, ; 323
	i32 95, ; 324
	i32 235, ; 325
	i32 349, ; 326
	i32 39, ; 327
	i32 270, ; 328
	i32 25, ; 329
	i32 94, ; 330
	i32 343, ; 331
	i32 89, ; 332
	i32 99, ; 333
	i32 10, ; 334
	i32 194, ; 335
	i32 87, ; 336
	i32 354, ; 337
	i32 190, ; 338
	i32 100, ; 339
	i32 316, ; 340
	i32 208, ; 341
	i32 336, ; 342
	i32 261, ; 343
	i32 236, ; 344
	i32 221, ; 345
	i32 346, ; 346
	i32 7, ; 347
	i32 301, ; 348
	i32 258, ; 349
	i32 230, ; 350
	i32 88, ; 351
	i32 210, ; 352
	i32 296, ; 353
	i32 154, ; 354
	i32 345, ; 355
	i32 33, ; 356
	i32 218, ; 357
	i32 194, ; 358
	i32 228, ; 359
	i32 116, ; 360
	i32 255, ; 361
	i32 82, ; 362
	i32 20, ; 363
	i32 11, ; 364
	i32 162, ; 365
	i32 3, ; 366
	i32 241, ; 367
	i32 353, ; 368
	i32 226, ; 369
	i32 223, ; 370
	i32 84, ; 371
	i32 340, ; 372
	i32 64, ; 373
	i32 225, ; 374
	i32 355, ; 375
	i32 323, ; 376
	i32 143, ; 377
	i32 193, ; 378
	i32 305, ; 379
	i32 157, ; 380
	i32 202, ; 381
	i32 234, ; 382
	i32 41, ; 383
	i32 117, ; 384
	i32 209, ; 385
	i32 260, ; 386
	i32 312, ; 387
	i32 189, ; 388
	i32 131, ; 389
	i32 75, ; 390
	i32 66, ; 391
	i32 359, ; 392
	i32 172, ; 393
	i32 264, ; 394
	i32 143, ; 395
	i32 106, ; 396
	i32 151, ; 397
	i32 70, ; 398
	i32 353, ; 399
	i32 156, ; 400
	i32 233, ; 401
	i32 208, ; 402
	i32 121, ; 403
	i32 127, ; 404
	i32 354, ; 405
	i32 152, ; 406
	i32 287, ; 407
	i32 182, ; 408
	i32 141, ; 409
	i32 274, ; 410
	i32 351, ; 411
	i32 20, ; 412
	i32 14, ; 413
	i32 237, ; 414
	i32 135, ; 415
	i32 180, ; 416
	i32 75, ; 417
	i32 59, ; 418
	i32 277, ; 419
	i32 167, ; 420
	i32 168, ; 421
	i32 239, ; 422
	i32 15, ; 423
	i32 74, ; 424
	i32 6, ; 425
	i32 23, ; 426
	i32 357, ; 427
	i32 299, ; 428
	i32 258, ; 429
	i32 181, ; 430
	i32 91, ; 431
	i32 352, ; 432
	i32 1, ; 433
	i32 136, ; 434
	i32 356, ; 435
	i32 300, ; 436
	i32 322, ; 437
	i32 134, ; 438
	i32 69, ; 439
	i32 183, ; 440
	i32 146, ; 441
	i32 215, ; 442
	i32 361, ; 443
	i32 191, ; 444
	i32 340, ; 445
	i32 291, ; 446
	i32 224, ; 447
	i32 88, ; 448
	i32 96, ; 449
	i32 281, ; 450
	i32 286, ; 451
	i32 356, ; 452
	i32 31, ; 453
	i32 251, ; 454
	i32 45, ; 455
	i32 295, ; 456
	i32 195, ; 457
	i32 204, ; 458
	i32 233, ; 459
	i32 173, ; 460
	i32 254, ; 461
	i32 260, ; 462
	i32 109, ; 463
	i32 158, ; 464
	i32 35, ; 465
	i32 22, ; 466
	i32 174, ; 467
	i32 114, ; 468
	i32 185, ; 469
	i32 57, ; 470
	i32 320, ; 471
	i32 144, ; 472
	i32 118, ; 473
	i32 120, ; 474
	i32 110, ; 475
	i32 262, ; 476
	i32 139, ; 477
	i32 181, ; 478
	i32 268, ; 479
	i32 229, ; 480
	i32 342, ; 481
	i32 54, ; 482
	i32 105, ; 483
	i32 362, ; 484
	i32 245, ; 485
	i32 205, ; 486
	i32 240, ; 487
	i32 241, ; 488
	i32 133, ; 489
	i32 334, ; 490
	i32 325, ; 491
	i32 313, ; 492
	i32 179, ; 493
	i32 368, ; 494
	i32 291, ; 495
	i32 246, ; 496
	i32 243, ; 497
	i32 159, ; 498
	i32 278, ; 499
	i32 163, ; 500
	i32 132, ; 501
	i32 313, ; 502
	i32 161, ; 503
	i32 198, ; 504
	i32 302, ; 505
	i32 256, ; 506
	i32 204, ; 507
	i32 140, ; 508
	i32 196, ; 509
	i32 325, ; 510
	i32 321, ; 511
	i32 169, ; 512
	i32 242, ; 513
	i32 254, ; 514
	i32 263, ; 515
	i32 330, ; 516
	i32 40, ; 517
	i32 289, ; 518
	i32 81, ; 519
	i32 184, ; 520
	i32 56, ; 521
	i32 37, ; 522
	i32 97, ; 523
	i32 166, ; 524
	i32 172, ; 525
	i32 218, ; 526
	i32 326, ; 527
	i32 82, ; 528
	i32 265, ; 529
	i32 255, ; 530
	i32 190, ; 531
	i32 98, ; 532
	i32 30, ; 533
	i32 159, ; 534
	i32 247, ; 535
	i32 18, ; 536
	i32 127, ; 537
	i32 175, ; 538
	i32 119, ; 539
	i32 191, ; 540
	i32 285, ; 541
	i32 316, ; 542
	i32 193, ; 543
	i32 298, ; 544
	i32 247, ; 545
	i32 188, ; 546
	i32 318, ; 547
	i32 165, ; 548
	i32 293, ; 549
	i32 180, ; 550
	i32 251, ; 551
	i32 195, ; 552
	i32 375, ; 553
	i32 348, ; 554
	i32 315, ; 555
	i32 306, ; 556
	i32 170, ; 557
	i32 16, ; 558
	i32 206, ; 559
	i32 144, ; 560
	i32 236, ; 561
	i32 125, ; 562
	i32 228, ; 563
	i32 118, ; 564
	i32 38, ; 565
	i32 115, ; 566
	i32 47, ; 567
	i32 142, ; 568
	i32 117, ; 569
	i32 34, ; 570
	i32 176, ; 571
	i32 189, ; 572
	i32 95, ; 573
	i32 53, ; 574
	i32 307, ; 575
	i32 0, ; 576
	i32 129, ; 577
	i32 153, ; 578
	i32 206, ; 579
	i32 24, ; 580
	i32 161, ; 581
	i32 284, ; 582
	i32 256, ; 583
	i32 148, ; 584
	i32 104, ; 585
	i32 89, ; 586
	i32 197, ; 587
	i32 272, ; 588
	i32 60, ; 589
	i32 142, ; 590
	i32 100, ; 591
	i32 5, ; 592
	i32 13, ; 593
	i32 122, ; 594
	i32 135, ; 595
	i32 199, ; 596
	i32 28, ; 597
	i32 348, ; 598
	i32 232, ; 599
	i32 72, ; 600
	i32 282, ; 601
	i32 24, ; 602
	i32 270, ; 603
	i32 311, ; 604
	i32 308, ; 605
	i32 365, ; 606
	i32 137, ; 607
	i32 263, ; 608
	i32 279, ; 609
	i32 168, ; 610
	i32 234, ; 611
	i32 312, ; 612
	i32 344, ; 613
	i32 101, ; 614
	i32 123, ; 615
	i32 283, ; 616
	i32 216, ; 617
	i32 210, ; 618
	i32 213, ; 619
	i32 163, ; 620
	i32 167, ; 621
	i32 286, ; 622
	i32 39, ; 623
	i32 238, ; 624
	i32 363, ; 625
	i32 183, ; 626
	i32 17, ; 627
	i32 175, ; 628
	i32 171, ; 629
	i32 364, ; 630
	i32 137, ; 631
	i32 150, ; 632
	i32 275, ; 633
	i32 237, ; 634
	i32 155, ; 635
	i32 130, ; 636
	i32 19, ; 637
	i32 65, ; 638
	i32 201, ; 639
	i32 147, ; 640
	i32 173, ; 641
	i32 47, ; 642
	i32 252, ; 643
	i32 372, ; 644
	i32 374, ; 645
	i32 261, ; 646
	i32 79, ; 647
	i32 61, ; 648
	i32 221, ; 649
	i32 106, ; 650
	i32 310, ; 651
	i32 265, ; 652
	i32 49, ; 653
	i32 296, ; 654
	i32 369, ; 655
	i32 307, ; 656
	i32 14, ; 657
	i32 209, ; 658
	i32 68, ; 659
	i32 171, ; 660
	i32 271, ; 661
	i32 275, ; 662
	i32 248, ; 663
	i32 231, ; 664
	i32 78, ; 665
	i32 280, ; 666
	i32 108, ; 667
	i32 264, ; 668
	i32 212, ; 669
	i32 306, ; 670
	i32 67, ; 671
	i32 198, ; 672
	i32 63, ; 673
	i32 27, ; 674
	i32 160, ; 675
	i32 344, ; 676
	i32 211, ; 677
	i32 225, ; 678
	i32 273, ; 679
	i32 10, ; 680
	i32 238, ; 681
	i32 11, ; 682
	i32 253, ; 683
	i32 78, ; 684
	i32 126, ; 685
	i32 83, ; 686
	i32 214, ; 687
	i32 66, ; 688
	i32 107, ; 689
	i32 65, ; 690
	i32 128, ; 691
	i32 122, ; 692
	i32 77, ; 693
	i32 321, ; 694
	i32 311, ; 695
	i32 8, ; 696
	i32 279, ; 697
	i32 2, ; 698
	i32 360, ; 699
	i32 44, ; 700
	i32 324, ; 701
	i32 156, ; 702
	i32 128, ; 703
	i32 309, ; 704
	i32 23, ; 705
	i32 133, ; 706
	i32 267, ; 707
	i32 298, ; 708
	i32 29, ; 709
	i32 266, ; 710
	i32 250, ; 711
	i32 62, ; 712
	i32 244, ; 713
	i32 240, ; 714
	i32 90, ; 715
	i32 87, ; 716
	i32 148, ; 717
	i32 220, ; 718
	i32 346, ; 719
	i32 242, ; 720
	i32 36, ; 721
	i32 86, ; 722
	i32 287, ; 723
	i32 207, ; 724
	i32 370, ; 725
	i32 177, ; 726
	i32 213, ; 727
	i32 50, ; 728
	i32 6, ; 729
	i32 90, ; 730
	i32 370, ; 731
	i32 21, ; 732
	i32 162, ; 733
	i32 96, ; 734
	i32 50, ; 735
	i32 113, ; 736
	i32 303, ; 737
	i32 130, ; 738
	i32 205, ; 739
	i32 76, ; 740
	i32 27, ; 741
	i32 359, ; 742
	i32 280, ; 743
	i32 302, ; 744
	i32 7, ; 745
	i32 249, ; 746
	i32 239, ; 747
	i32 110, ; 748
	i32 303, ; 749
	i32 217, ; 750
	i32 289 ; 751
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
