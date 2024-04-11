; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [379 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [752 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 286
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 227
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 242
	i64 160518225272466977, ; 4: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 220
	i64 196720943101637631, ; 5: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 273
	i64 229794953483747371, ; 7: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 8: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 314
	i64 295915112840604065, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 317
	i64 316157742385208084, ; 10: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 280
	i64 350667413455104241, ; 11: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 12: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 13: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 316
	i64 535107122908063503, ; 14: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 225
	i64 560278790331054453, ; 15: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 16: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 299
	i64 648449422406355874, ; 17: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 211
	i64 649145001856603771, ; 18: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 19: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 210
	i64 670564002081277297, ; 20: Microsoft.Identity.Client.dll => 0x94e526837380571 => 229
	i64 683390398661839228, ; 21: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 217
	i64 702024105029695270, ; 22: System.Drawing.Common => 0x9be17343c0e7726 => 248
	i64 750875890346172408, ; 23: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 24: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 274
	i64 799765834175365804, ; 25: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 26: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 353
	i64 872800313462103108, ; 27: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 285
	i64 895210737996778430, ; 28: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 300
	i64 937459790420187032, ; 29: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 245
	i64 940822596282819491, ; 30: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 31: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1001381392624924420, ; 32: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 180
	i64 1010599046655515943, ; 33: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1060858978308751610, ; 34: Azure.Core.dll => 0xeb8ed9ebee080fa => 173
	i64 1120440138749646132, ; 35: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 329
	i64 1268860745194512059, ; 36: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 37: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 205
	i64 1301626418029409250, ; 38: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 39: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 269
	i64 1326794923564391531, ; 40: Microsoft.AspNetCore.Authentication => 0x1269b8f40cd8dc6b => 177
	i64 1369545283391376210, ; 41: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 307
	i64 1404195534211153682, ; 42: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 43: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 44: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 45: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 239
	i64 1492954217099365037, ; 46: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 47: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 48: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1559087064654078745, ; 49: BCrypt.Net-Next.dll => 0x15a2fd6cc69ce319 => 175
	i64 1576750169145655260, ; 50: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 328
	i64 1624659445732251991, ; 51: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 268
	i64 1628611045998245443, ; 52: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 303
	i64 1636321030536304333, ; 53: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 293
	i64 1639340239664632727, ; 54: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 187
	i64 1651782184287836205, ; 55: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 56: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 57: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1735388228521408345, ; 58: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 59: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 60: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1776954265264967804, ; 61: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 237
	i64 1795316252682057001, ; 62: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 267
	i64 1825687700144851180, ; 63: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 64: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 347
	i64 1836611346387731153, ; 65: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 314
	i64 1854145951182283680, ; 66: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 67: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 200
	i64 1875417405349196092, ; 68: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 69: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 264
	i64 1881198190668717030, ; 70: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 369
	i64 1897575647115118287, ; 71: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 316
	i64 1920760634179481754, ; 72: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 240
	i64 1972385128188460614, ; 73: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 74: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 301
	i64 2040001226662520565, ; 75: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 76: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 77: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 337
	i64 2080945842184875448, ; 78: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 79: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 80: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2165310824878145998, ; 81: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 261
	i64 2165725771938924357, ; 82: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 271
	i64 2192948757939169934, ; 83: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 203
	i64 2200176636225660136, ; 84: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 224
	i64 2262844636196693701, ; 85: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 285
	i64 2287834202362508563, ; 86: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 87: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2295368378960711535, ; 88: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 186
	i64 2304837677853103545, ; 89: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 313
	i64 2315304989185124968, ; 90: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 91: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 235
	i64 2329709569556905518, ; 92: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 296
	i64 2335503487726329082, ; 93: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 94: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2470498323731680442, ; 95: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 278
	i64 2479423007379663237, ; 96: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 323
	i64 2497223385847772520, ; 97: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 98: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 262
	i64 2554797818648757682, ; 99: System.Runtime.Caching.dll => 0x23747714858085b2 => 252
	i64 2592350477072141967, ; 100: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 101: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 368
	i64 2612152650457191105, ; 102: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 236
	i64 2624866290265602282, ; 103: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 104: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 105: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 213
	i64 2662981627730767622, ; 106: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 343
	i64 2706075432581334785, ; 107: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2781169761569919449, ; 108: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 237
	i64 2783046991838674048, ; 109: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 110: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 318
	i64 2789714023057451704, ; 111: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 232
	i64 2815524396660695947, ; 112: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2851879596360956261, ; 113: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 247
	i64 2895129759130297543, ; 114: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 348
	i64 2923871038697555247, ; 115: Jsr305Binding => 0x2893ad37e69ec52f => 330
	i64 3017136373564924869, ; 116: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 117: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 329
	i64 3106852385031680087, ; 118: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 119: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 120: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3168817962471953758, ; 121: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 220
	i64 3238539556702659506, ; 122: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 246
	i64 3266690593535380875, ; 123: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 181
	i64 3281594302220646930, ; 124: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 125: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 294
	i64 3303437397778967116, ; 126: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 265
	i64 3311221304742556517, ; 127: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 128: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 129: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 130: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 340
	i64 3396143930648122816, ; 131: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 215
	i64 3402534845034375023, ; 132: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 249
	i64 3429672777697402584, ; 133: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 242
	i64 3437845325506641314, ; 134: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 135: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 320
	i64 3494946837667399002, ; 136: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 208
	i64 3508450208084372758, ; 137: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 138: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 319
	i64 3523004241079211829, ; 139: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 207
	i64 3531994851595924923, ; 140: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 141: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 142: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 363
	i64 3571415421602489686, ; 143: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 144: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 209
	i64 3647754201059316852, ; 145: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 146: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 208
	i64 3659371656528649588, ; 147: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 259
	i64 3716579019761409177, ; 148: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 149: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 312
	i64 3753897248517198740, ; 150: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 185
	i64 3772598417116884899, ; 151: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 286
	i64 3794322307918838949, ; 152: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 198
	i64 3869221888984012293, ; 153: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 222
	i64 3869649043256705283, ; 154: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3889433610606858880, ; 155: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 218
	i64 3890352374528606784, ; 156: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 240
	i64 3919223565570527920, ; 157: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 158: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 159: System.Memory => 0x370b03412596249e => 62
	i64 4005135229510678782, ; 160: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 190
	i64 4006972109285359177, ; 161: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 162: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4070326265757318011, ; 163: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 344
	i64 4073500526318903918, ; 164: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 165: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 238
	i64 4120493066591692148, ; 166: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 374
	i64 4148881117810174540, ; 167: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 168: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 169: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 170: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 171: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 172: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 280
	i64 4205801962323029395, ; 173: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4225924121207573736, ; 174: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 178
	i64 4235503420553921860, ; 175: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4243591448627561453, ; 176: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 195
	i64 4250192876909962317, ; 177: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 191
	i64 4282138915307457788, ; 178: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4360412976914417659, ; 179: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 369
	i64 4373617458794931033, ; 180: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4384840217421645357, ; 181: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 183
	i64 4397634830160618470, ; 182: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 183: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 184: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4513320955448359355, ; 185: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 204
	i64 4533124835995628778, ; 186: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4612482779465751747, ; 187: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 203
	i64 4636684751163556186, ; 188: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 324
	i64 4672453897036726049, ; 189: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 190: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 191: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 192: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 298
	i64 4794310189461587505, ; 193: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 262
	i64 4795410492532947900, ; 194: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 319
	i64 4809057822547766521, ; 195: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 196: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 197: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 198: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 359
	i64 4953714692329509532, ; 199: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 367
	i64 5055365687667823624, ; 200: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 263
	i64 5081566143765835342, ; 201: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 202: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 203: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5106322746114322454, ; 204: Microsoft.AspNetCore.Authentication.dll => 0x46dd4d7baea43016 => 177
	i64 5112836352847824253, ; 205: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 199
	i64 5177565741364132164, ; 206: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 193
	i64 5182934613077526976, ; 207: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5197073077358930460, ; 208: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 184
	i64 5205316157927637098, ; 209: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 305
	i64 5244375036463807528, ; 210: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 211: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 212: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 213: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 297
	i64 5290786973231294105, ; 214: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 215: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 323
	i64 5408338804355907810, ; 216: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 321
	i64 5423376490970181369, ; 217: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 218: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 219: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 220: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 276
	i64 5457765010617926378, ; 221: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 222: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 367
	i64 5488847537322884930, ; 223: System.Windows.Extensions => 0x4c2c4dc108687f42 => 257
	i64 5507995362134886206, ; 224: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 225: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 370
	i64 5527431512186326818, ; 226: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 227: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 228: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 229: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 266
	i64 5591791169662171124, ; 230: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5610815111739789596, ; 231: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 180
	i64 5650097808083101034, ; 232: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 233: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 326
	i64 5724799082821825042, ; 234: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 289
	i64 5757522595884336624, ; 235: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 275
	i64 5783556987928984683, ; 236: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 237: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 295
	i64 5959344983920014087, ; 238: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 315
	i64 5979151488806146654, ; 239: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 240: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6102788177522843259, ; 241: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 315
	i64 6200764641006662125, ; 242: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 364
	i64 6222399776351216807, ; 243: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 244: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 245: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 246: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6300676701234028427, ; 247: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 347
	i64 6319713645133255417, ; 248: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 299
	i64 6357457916754632952, ; 249: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 375
	i64 6401687960814735282, ; 250: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 296
	i64 6471714727257221498, ; 251: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 348
	i64 6478287442656530074, ; 252: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 352
	i64 6504860066809920875, ; 253: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 271
	i64 6548213210057960872, ; 254: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 282
	i64 6557084851308642443, ; 255: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 327
	i64 6560151584539558821, ; 256: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 226
	i64 6589202984700901502, ; 257: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 332
	i64 6591971792923354531, ; 258: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 297
	i64 6617685658146568858, ; 259: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6713440830605852118, ; 260: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 261: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 262: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 360
	i64 6772837112740759457, ; 263: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6786606130239981554, ; 264: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 265: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 266: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 267: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 268: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6911788284027924527, ; 269: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 192
	i64 6920570528939222495, ; 270: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 185
	i64 7011053663211085209, ; 271: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 291
	i64 7060448593242414269, ; 272: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 255
	i64 7060896174307865760, ; 273: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 274: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 275: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 276: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 292
	i64 7105430439328552570, ; 277: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 253
	i64 7112547816752919026, ; 278: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7192745174564810625, ; 279: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 261
	i64 7270811800166795866, ; 280: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 281: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 282: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7331765743953618630, ; 283: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 193
	i64 7338192458477945005, ; 284: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 285: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 251
	i64 7349431895026339542, ; 286: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 260
	i64 7377312882064240630, ; 287: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 288: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 289: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 290: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 249
	i64 7592577537120840276, ; 291: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 292: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 293: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 294: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 295: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 296: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 300
	i64 7735176074855944702, ; 297: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 298: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 335
	i64 7742555799473854801, ; 299: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 355
	i64 7791074099216502080, ; 300: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 301: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 302: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 268
	i64 7972383140441761405, ; 303: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 206
	i64 7975724199463739455, ; 304: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 366
	i64 8014722069583580780, ; 305: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 183
	i64 8025517457475554965, ; 306: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 307: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 308: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 309: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 294
	i64 8085230611270010360, ; 310: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 311: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 312: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 313: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 357
	i64 8113615946733131500, ; 314: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 315: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 316: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 317: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 339
	i64 8234598844743906698, ; 318: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 230
	i64 8246048515196606205, ; 319: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 243
	i64 8264926008854159966, ; 320: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 321: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 322: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 323: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8386351099740279196, ; 324: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 372
	i64 8398329775253868912, ; 325: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 277
	i64 8399132193771933415, ; 326: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 228
	i64 8400357532724379117, ; 327: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 309
	i64 8410671156615598628, ; 328: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 329: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 298
	i64 8442828414178614895, ; 330: Microsoft.AspNetCore.Cryptography.KeyDerivation => 0x752af3b5eeb0de6f => 188
	i64 8476828615142258695, ; 331: BCrypt.Net-Next => 0x75a3beb69b6bb807 => 175
	i64 8476857680833348370, ; 332: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 256
	i64 8513291706828295435, ; 333: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 245
	i64 8518412311883997971, ; 334: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 335: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 336: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 288
	i64 8601935802264776013, ; 337: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 321
	i64 8611142787134128904, ; 338: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 192
	i64 8623059219396073920, ; 339: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 340: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 341: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 342: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 308
	i64 8648495978913578441, ; 343: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 344: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 362
	i64 8684531736582871431, ; 345: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 346: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 347: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 336
	i64 8941376889969657626, ; 348: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 349: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 311
	i64 8954753533646919997, ; 350: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 351: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 229
	i64 9045785047181495996, ; 352: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 372
	i64 9052662452269567435, ; 353: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 234
	i64 9111603110219107042, ; 354: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 207
	i64 9138683372487561558, ; 355: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9250544137016314866, ; 356: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 202
	i64 9312692141327339315, ; 357: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 326
	i64 9324707631942237306, ; 358: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 267
	i64 9363564275759486853, ; 359: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 346
	i64 9413000421947348542, ; 360: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 191
	i64 9427266486299436557, ; 361: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 233
	i64 9468215723722196442, ; 362: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9500688326720985260, ; 363: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 205
	i64 9508211702228543126, ; 364: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 0x83f3f42aa08b6696 => 188
	i64 9551379474083066910, ; 365: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 370
	i64 9554839972845591462, ; 366: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 367: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 331
	i64 9584643793929893533, ; 368: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9650158550865574924, ; 369: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 212
	i64 9659729154652888475, ; 370: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 371: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 372: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 373: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 278
	i64 9702891218465930390, ; 374: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9773637193738963987, ; 375: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 342
	i64 9780093022148426479, ; 376: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 328
	i64 9808709177481450983, ; 377: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9814504515138190298, ; 378: Microsoft.AspNetCore.Authentication.Cookies => 0x88341fdb67477bda => 179
	i64 9819168441846169364, ; 379: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 234
	i64 9825649861376906464, ; 380: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 275
	i64 9834056768316610435, ; 381: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 382: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9864374015518639636, ; 383: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 187
	i64 9907349773706910547, ; 384: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 288
	i64 9933555792566666578, ; 385: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 386: Microsoft.Maui => 0x8a2b8315b36616ac => 241
	i64 9974604633896246661, ; 387: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10017511394021241210, ; 388: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 224
	i64 10038780035334861115, ; 389: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 390: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 391: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 392: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 393: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 239
	i64 10105485790837105934, ; 394: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 395: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 344
	i64 10205853378024263619, ; 396: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 210
	i64 10209869394718195525, ; 397: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 360
	i64 10226222362177979215, ; 398: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 337
	i64 10229024438826829339, ; 399: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 282
	i64 10236703004850800690, ; 400: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10243523786148452761, ; 401: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 194
	i64 10245369515835430794, ; 402: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 403: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 334
	i64 10360651442923773544, ; 404: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 405: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 406: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 320
	i64 10406448008575299332, ; 407: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 340
	i64 10430153318873392755, ; 408: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 279
	i64 10447083246144586668, ; 409: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 200
	i64 10485858537740568411, ; 410: Microsoft.AspNetCore.Identity => 0x918540c89b06075b => 197
	i64 10506226065143327199, ; 411: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 342
	i64 10546663366131771576, ; 412: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 413: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 414: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 415: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 416: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10734191584620811116, ; 417: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 217
	i64 10761706286639228993, ; 418: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 374
	i64 10785150219063592792, ; 419: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10811915265162633087, ; 420: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 204
	i64 10822644899632537592, ; 421: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 422: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 423: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 269
	i64 10889380495983713167, ; 424: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 201
	i64 10899834349646441345, ; 425: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 426: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 427: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 428: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 223
	i64 11009005086950030778, ; 429: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 241
	i64 11019817191295005410, ; 430: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 266
	i64 11023048688141570732, ; 431: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 432: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11047101296015504039, ; 433: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 246
	i64 11050168729868392624, ; 434: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 196
	i64 11051904132540108364, ; 435: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 216
	i64 11071824625609515081, ; 436: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 332
	i64 11103970607964515343, ; 437: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 353
	i64 11136029745144976707, ; 438: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 330
	i64 11156122287428000958, ; 439: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 368
	i64 11157797727133427779, ; 440: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 349
	i64 11162124722117608902, ; 441: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 325
	i64 11188319605227840848, ; 442: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11218356222449480316, ; 443: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 182
	i64 11220793807500858938, ; 444: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 356
	i64 11226290749488709958, ; 445: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 226
	i64 11235648312900863002, ; 446: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11293348803414341309, ; 447: Microsoft.AspNetCore.Identity.dll => 0x9cba08e6e81836bd => 197
	i64 11329751333533450475, ; 448: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 449: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 281
	i64 11341245327015630248, ; 450: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 247
	i64 11347436699239206956, ; 451: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11392833485892708388, ; 452: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 310
	i64 11432101114902388181, ; 453: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11433630423110077993, ; 454: LMS => 0x9eac6a4ab6934e29 => 0
	i64 11446671985764974897, ; 455: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 456: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 457: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 458: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 291
	i64 11513602507638267977, ; 459: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 250
	i64 11517440453979132662, ; 460: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 231
	i64 11518296021396496455, ; 461: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 354
	i64 11529969570048099689, ; 462: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 325
	i64 11530571088791430846, ; 463: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 222
	i64 11580057168383206117, ; 464: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 264
	i64 11591352189662810718, ; 465: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 318
	i64 11597308262950669618, ; 466: Microsoft.Extensions.Identity.Core.dll => 0xa0f1ea6b83e08d32 => 221
	i64 11597940890313164233, ; 467: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 468: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 292
	i64 11692977985522001935, ; 469: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 470: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 471: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11855031688536399763, ; 472: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 371
	i64 11991047634523762324, ; 473: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 474: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 254
	i64 12040886584167504988, ; 475: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12048689113179125827, ; 476: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 218
	i64 12058074296353848905, ; 477: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 219
	i64 12063623837170009990, ; 478: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 479: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 480: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 481: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 482: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 322
	i64 12145679461940342714, ; 483: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 484: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 258
	i64 12198439281774268251, ; 485: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 235
	i64 12201331334810686224, ; 486: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 487: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 488: System.IO.Pipelines => 0xaae1de2e1c17f00a => 250
	i64 12332222936682028543, ; 489: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 490: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 491: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 232
	i64 12441092376399691269, ; 492: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 178
	i64 12451044538927396471, ; 493: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 290
	i64 12466513435562512481, ; 494: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 304
	i64 12475113361194491050, ; 495: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 375
	i64 12487638416075308985, ; 496: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 284
	i64 12493213219680520345, ; 497: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 201
	i64 12517810545449516888, ; 498: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 499: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 272
	i64 12550732019250633519, ; 500: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12699999919562409296, ; 501: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 502: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 273
	i64 12708238894395270091, ; 503: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 504: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 505: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 506: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 327
	i64 12828192437253469131, ; 507: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 338
	i64 12835242264250840079, ; 508: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 509: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 227
	i64 12843770487262409629, ; 510: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 511: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12963446364377008305, ; 512: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 248
	i64 12982280885948128408, ; 513: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 283
	i64 12989346753972519995, ; 514: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 341
	i64 13003699287675270979, ; 515: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 186
	i64 13005833372463390146, ; 516: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 362
	i64 13068258254871114833, ; 517: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13086625805112021739, ; 518: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 190
	i64 13129914918964716986, ; 519: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 287
	i64 13162471042547327635, ; 520: System.Security.Permissions => 0xb6aa7dace9662293 => 256
	i64 13173818576982874404, ; 521: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13343850469010654401, ; 522: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 523: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 524: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 350
	i64 13401370062847626945, ; 525: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 322
	i64 13404347523447273790, ; 526: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 277
	i64 13404984788036896679, ; 527: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 194
	i64 13418824098849998234, ; 528: LMS.dll => 0xba393d6c0367c59a => 0
	i64 13431476299110033919, ; 529: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 530: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 333
	i64 13463706743370286408, ; 531: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 532: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 335
	i64 13491513212026656886, ; 533: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 270
	i64 13540124433173649601, ; 534: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 371
	i64 13550417756503177631, ; 535: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 215
	i64 13572454107664307259, ; 536: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 312
	i64 13578472628727169633, ; 537: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 538: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 539: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 283
	i64 13647894001087880694, ; 540: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 541: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 263
	i64 13702626353344114072, ; 542: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 543: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 544: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 545: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13742054908850494594, ; 546: Azure.Identity => 0xbeb596218df25c82 => 174
	i64 13768883594457632599, ; 547: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13828521679616088467, ; 548: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 336
	i64 13881769479078963060, ; 549: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 550: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 257
	i64 13911222732217019342, ; 551: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13921917134693230900, ; 552: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 199
	i64 13928444506500929300, ; 553: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 554: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 290
	i64 14075334701871371868, ; 555: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14082136096249122791, ; 556: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 198
	i64 14124974489674258913, ; 557: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 272
	i64 14125464355221830302, ; 558: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14133832980772275001, ; 559: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 202
	i64 14178052285788134900, ; 560: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 259
	i64 14212104595480609394, ; 561: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 562: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 563: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 564: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 565: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 566: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 310
	i64 14298246716367104064, ; 567: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 568: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 569: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 570: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 260
	i64 14346402571976470310, ; 571: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 572: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 364
	i64 14461014870687870182, ; 573: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 574: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 365
	i64 14486659737292545672, ; 575: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 295
	i64 14491877563792607819, ; 576: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 373
	i64 14495724990987328804, ; 577: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 313
	i64 14551742072151931844, ; 578: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 579: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 580: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14610046442689856844, ; 581: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 343
	i64 14622043554576106986, ; 582: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 583: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 305
	i64 14648804764802849406, ; 584: Azure.Identity.dll => 0xcb4b0252261f9a7e => 174
	i64 14669215534098758659, ; 585: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 213
	i64 14690985099581930927, ; 586: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 587: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 357
	i64 14735017007120366644, ; 588: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 356
	i64 14744092281598614090, ; 589: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 373
	i64 14792063746108907174, ; 590: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 333
	i64 14832630590065248058, ; 591: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 592: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 281
	i64 14889905118082851278, ; 593: GoogleGson.dll => 0xcea391d0969961ce => 176
	i64 14904040806490515477, ; 594: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 341
	i64 14912225920358050525, ; 595: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 596: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 597: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 214
	i64 14984936317414011727, ; 598: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 599: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 600: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 284
	i64 15015154896917945444, ; 601: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 602: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 603: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 604: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 605: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 358
	i64 15115185479366240210, ; 606: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 607: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 608: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 231
	i64 15150743910298169673, ; 609: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 311
	i64 15203009853192377507, ; 610: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 363
	i64 15227001540531775957, ; 611: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 209
	i64 15234786388537674379, ; 612: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 613: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 614: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 274
	i64 15279429628684179188, ; 615: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 339
	i64 15299439993936780255, ; 616: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 617: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 618: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 279
	i64 15383240894167415497, ; 619: System.Memory.Data => 0xd57c4016df1c7ac9 => 251
	i64 15391712275433856905, ; 620: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 214
	i64 15427448221306938193, ; 621: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 184
	i64 15481710163200268842, ; 622: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 216
	i64 15526743539506359484, ; 623: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 624: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 625: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 626: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 345
	i64 15541854775306130054, ; 627: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 628: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15565247197164990907, ; 629: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 195
	i64 15582737692548360875, ; 630: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 303
	i64 15592226634512578529, ; 631: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 181
	i64 15609085926864131306, ; 632: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 633: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 634: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15755368083429170162, ; 635: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 636: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 317
	i64 15783653065526199428, ; 637: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 346
	i64 15817206913877585035, ; 638: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15827202283623377193, ; 639: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 212
	i64 15847085070278954535, ; 640: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15852824340364052161, ; 641: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 196
	i64 15885744048853936810, ; 642: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15917157041579513718, ; 643: Microsoft.AspNetCore.Authentication.Cookies.dll => 0xdce519ff21745776 => 179
	i64 15928521404965645318, ; 644: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 238
	i64 15934062614519587357, ; 645: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 646: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 647: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 648: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 649: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16027684189145026053, ; 650: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 189
	i64 16046481083542319511, ; 651: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 225
	i64 16054465462676478687, ; 652: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 653: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 365
	i64 16153500642854367575, ; 654: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 228
	i64 16154507427712707110, ; 655: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 656: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 657: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 359
	i64 16315482530584035869, ; 658: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 659: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 223
	i64 16337011941688632206, ; 660: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 661: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 289
	i64 16423015068819898779, ; 662: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 338
	i64 16454459195343277943, ; 663: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 664: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16523284800709429098, ; 665: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 189
	i64 16589693266713801121, ; 666: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 302
	i64 16621146507174665210, ; 667: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 276
	i64 16649148416072044166, ; 668: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 243
	i64 16677317093839702854, ; 669: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 309
	i64 16702652415771857902, ; 670: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 671: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 672: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 673: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 674: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 675: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16803648858859583026, ; 676: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 358
	i64 16822611501064131242, ; 677: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 678: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 679: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 680: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 681: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 682: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 366
	i64 16945858842201062480, ; 683: Azure.Core => 0xeb2bc8d57f4e7c50 => 173
	i64 16977952268158210142, ; 684: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 685: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 302
	i64 16998075588627545693, ; 686: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 307
	i64 17008137082415910100, ; 687: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 688: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 265
	i64 17031351772568316411, ; 689: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 306
	i64 17037200463775726619, ; 690: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 293
	i64 17047433665992082296, ; 691: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 211
	i64 17062143951396181894, ; 692: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17079998892748052666, ; 693: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 182
	i64 17118171214553292978, ; 694: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17126545051278881272, ; 695: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 244
	i64 17137864900836977098, ; 696: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 236
	i64 17187273293601214786, ; 697: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 698: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 230
	i64 17201328579425343169, ; 699: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 700: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 701: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 361
	i64 17205988430934219272, ; 702: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 219
	i64 17230721278011714856, ; 703: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 704: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 705: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17310278548634113468, ; 706: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 351
	i64 17333249706306540043, ; 707: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 708: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 709: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 351
	i64 17360349973592121190, ; 710: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 331
	i64 17371436720558481852, ; 711: System.Runtime.Caching => 0xf113bda8d710a1bc => 252
	i64 17470386307322966175, ; 712: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 713: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 714: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 349
	i64 17522591619082469157, ; 715: GoogleGson => 0xf32cc03d27a5bf25 => 176
	i64 17523946658117960076, ; 716: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 254
	i64 17590473451926037903, ; 717: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 258
	i64 17623389608345532001, ; 718: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 361
	i64 17627500474728259406, ; 719: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 720: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17704177640604968747, ; 721: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 304
	i64 17710060891934109755, ; 722: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 301
	i64 17712670374920797664, ; 723: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 724: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 725: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 233
	i64 17827813215687577648, ; 726: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 352
	i64 17838668724098252521, ; 727: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 728: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 334
	i64 17910264068556501837, ; 729: Microsoft.Extensions.Identity.Core => 0xf88e0a4717c0b34d => 221
	i64 17911643751311784505, ; 730: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 244
	i64 17928294245072900555, ; 731: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 732: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 345
	i64 17992315986609351877, ; 733: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18017743553296241350, ; 734: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 206
	i64 18025913125965088385, ; 735: System.Threading => 0xfa28e87b91334681 => 148
	i64 18116111925905154859, ; 736: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 270
	i64 18121036031235206392, ; 737: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 306
	i64 18146411883821974900, ; 738: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 739: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18203743254473369877, ; 740: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 253
	i64 18225059387460068507, ; 741: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 742: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 743: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 287
	i64 18305135509493619199, ; 744: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 308
	i64 18318849532986632368, ; 745: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 746: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 355
	i64 18342408478508122430, ; 747: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 354
	i64 18358161419737137786, ; 748: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 350
	i64 18380184030268848184, ; 749: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 324
	i64 18428404840311395189, ; 750: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 255
	i64 18439108438687598470 ; 751: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [752 x i32] [
	i32 286, ; 0
	i32 227, ; 1
	i32 171, ; 2
	i32 242, ; 3
	i32 220, ; 4
	i32 58, ; 5
	i32 273, ; 6
	i32 151, ; 7
	i32 314, ; 8
	i32 317, ; 9
	i32 280, ; 10
	i32 132, ; 11
	i32 56, ; 12
	i32 316, ; 13
	i32 225, ; 14
	i32 95, ; 15
	i32 299, ; 16
	i32 211, ; 17
	i32 129, ; 18
	i32 210, ; 19
	i32 229, ; 20
	i32 217, ; 21
	i32 248, ; 22
	i32 145, ; 23
	i32 274, ; 24
	i32 18, ; 25
	i32 353, ; 26
	i32 285, ; 27
	i32 300, ; 28
	i32 245, ; 29
	i32 150, ; 30
	i32 104, ; 31
	i32 180, ; 32
	i32 95, ; 33
	i32 173, ; 34
	i32 329, ; 35
	i32 36, ; 36
	i32 205, ; 37
	i32 28, ; 38
	i32 269, ; 39
	i32 177, ; 40
	i32 307, ; 41
	i32 50, ; 42
	i32 115, ; 43
	i32 70, ; 44
	i32 239, ; 45
	i32 65, ; 46
	i32 170, ; 47
	i32 145, ; 48
	i32 175, ; 49
	i32 328, ; 50
	i32 268, ; 51
	i32 303, ; 52
	i32 293, ; 53
	i32 187, ; 54
	i32 40, ; 55
	i32 89, ; 56
	i32 81, ; 57
	i32 66, ; 58
	i32 62, ; 59
	i32 86, ; 60
	i32 237, ; 61
	i32 267, ; 62
	i32 106, ; 63
	i32 347, ; 64
	i32 314, ; 65
	i32 102, ; 66
	i32 200, ; 67
	i32 35, ; 68
	i32 264, ; 69
	i32 369, ; 70
	i32 316, ; 71
	i32 240, ; 72
	i32 119, ; 73
	i32 301, ; 74
	i32 142, ; 75
	i32 141, ; 76
	i32 337, ; 77
	i32 53, ; 78
	i32 35, ; 79
	i32 141, ; 80
	i32 261, ; 81
	i32 271, ; 82
	i32 203, ; 83
	i32 224, ; 84
	i32 285, ; 85
	i32 8, ; 86
	i32 14, ; 87
	i32 186, ; 88
	i32 313, ; 89
	i32 51, ; 90
	i32 235, ; 91
	i32 296, ; 92
	i32 136, ; 93
	i32 101, ; 94
	i32 278, ; 95
	i32 323, ; 96
	i32 116, ; 97
	i32 262, ; 98
	i32 252, ; 99
	i32 163, ; 100
	i32 368, ; 101
	i32 236, ; 102
	i32 166, ; 103
	i32 67, ; 104
	i32 213, ; 105
	i32 343, ; 106
	i32 80, ; 107
	i32 237, ; 108
	i32 101, ; 109
	i32 318, ; 110
	i32 232, ; 111
	i32 117, ; 112
	i32 247, ; 113
	i32 348, ; 114
	i32 330, ; 115
	i32 78, ; 116
	i32 329, ; 117
	i32 114, ; 118
	i32 121, ; 119
	i32 48, ; 120
	i32 220, ; 121
	i32 246, ; 122
	i32 181, ; 123
	i32 128, ; 124
	i32 294, ; 125
	i32 265, ; 126
	i32 82, ; 127
	i32 110, ; 128
	i32 75, ; 129
	i32 340, ; 130
	i32 215, ; 131
	i32 249, ; 132
	i32 242, ; 133
	i32 53, ; 134
	i32 320, ; 135
	i32 208, ; 136
	i32 69, ; 137
	i32 319, ; 138
	i32 207, ; 139
	i32 83, ; 140
	i32 172, ; 141
	i32 363, ; 142
	i32 116, ; 143
	i32 209, ; 144
	i32 156, ; 145
	i32 208, ; 146
	i32 259, ; 147
	i32 167, ; 148
	i32 312, ; 149
	i32 185, ; 150
	i32 286, ; 151
	i32 198, ; 152
	i32 222, ; 153
	i32 32, ; 154
	i32 218, ; 155
	i32 240, ; 156
	i32 122, ; 157
	i32 72, ; 158
	i32 62, ; 159
	i32 190, ; 160
	i32 161, ; 161
	i32 113, ; 162
	i32 344, ; 163
	i32 88, ; 164
	i32 238, ; 165
	i32 374, ; 166
	i32 105, ; 167
	i32 18, ; 168
	i32 146, ; 169
	i32 118, ; 170
	i32 58, ; 171
	i32 280, ; 172
	i32 17, ; 173
	i32 178, ; 174
	i32 52, ; 175
	i32 195, ; 176
	i32 191, ; 177
	i32 92, ; 178
	i32 369, ; 179
	i32 55, ; 180
	i32 183, ; 181
	i32 129, ; 182
	i32 152, ; 183
	i32 41, ; 184
	i32 204, ; 185
	i32 92, ; 186
	i32 203, ; 187
	i32 324, ; 188
	i32 50, ; 189
	i32 162, ; 190
	i32 13, ; 191
	i32 298, ; 192
	i32 262, ; 193
	i32 319, ; 194
	i32 36, ; 195
	i32 67, ; 196
	i32 109, ; 197
	i32 359, ; 198
	i32 367, ; 199
	i32 263, ; 200
	i32 99, ; 201
	i32 99, ; 202
	i32 11, ; 203
	i32 177, ; 204
	i32 199, ; 205
	i32 193, ; 206
	i32 11, ; 207
	i32 184, ; 208
	i32 305, ; 209
	i32 25, ; 210
	i32 128, ; 211
	i32 76, ; 212
	i32 297, ; 213
	i32 109, ; 214
	i32 323, ; 215
	i32 321, ; 216
	i32 106, ; 217
	i32 2, ; 218
	i32 26, ; 219
	i32 276, ; 220
	i32 157, ; 221
	i32 367, ; 222
	i32 257, ; 223
	i32 21, ; 224
	i32 370, ; 225
	i32 49, ; 226
	i32 43, ; 227
	i32 126, ; 228
	i32 266, ; 229
	i32 59, ; 230
	i32 180, ; 231
	i32 119, ; 232
	i32 326, ; 233
	i32 289, ; 234
	i32 275, ; 235
	i32 3, ; 236
	i32 295, ; 237
	i32 315, ; 238
	i32 38, ; 239
	i32 124, ; 240
	i32 315, ; 241
	i32 364, ; 242
	i32 137, ; 243
	i32 149, ; 244
	i32 85, ; 245
	i32 90, ; 246
	i32 347, ; 247
	i32 299, ; 248
	i32 375, ; 249
	i32 296, ; 250
	i32 348, ; 251
	i32 352, ; 252
	i32 271, ; 253
	i32 282, ; 254
	i32 327, ; 255
	i32 226, ; 256
	i32 332, ; 257
	i32 297, ; 258
	i32 133, ; 259
	i32 96, ; 260
	i32 3, ; 261
	i32 360, ; 262
	i32 105, ; 263
	i32 33, ; 264
	i32 154, ; 265
	i32 158, ; 266
	i32 155, ; 267
	i32 82, ; 268
	i32 192, ; 269
	i32 185, ; 270
	i32 291, ; 271
	i32 255, ; 272
	i32 143, ; 273
	i32 87, ; 274
	i32 19, ; 275
	i32 292, ; 276
	i32 253, ; 277
	i32 51, ; 278
	i32 261, ; 279
	i32 61, ; 280
	i32 54, ; 281
	i32 4, ; 282
	i32 193, ; 283
	i32 97, ; 284
	i32 251, ; 285
	i32 260, ; 286
	i32 17, ; 287
	i32 155, ; 288
	i32 84, ; 289
	i32 249, ; 290
	i32 29, ; 291
	i32 45, ; 292
	i32 64, ; 293
	i32 66, ; 294
	i32 172, ; 295
	i32 300, ; 296
	i32 1, ; 297
	i32 335, ; 298
	i32 355, ; 299
	i32 47, ; 300
	i32 24, ; 301
	i32 268, ; 302
	i32 206, ; 303
	i32 366, ; 304
	i32 183, ; 305
	i32 165, ; 306
	i32 108, ; 307
	i32 12, ; 308
	i32 294, ; 309
	i32 63, ; 310
	i32 27, ; 311
	i32 23, ; 312
	i32 357, ; 313
	i32 93, ; 314
	i32 168, ; 315
	i32 12, ; 316
	i32 339, ; 317
	i32 230, ; 318
	i32 243, ; 319
	i32 29, ; 320
	i32 103, ; 321
	i32 14, ; 322
	i32 126, ; 323
	i32 372, ; 324
	i32 277, ; 325
	i32 228, ; 326
	i32 309, ; 327
	i32 91, ; 328
	i32 298, ; 329
	i32 188, ; 330
	i32 175, ; 331
	i32 256, ; 332
	i32 245, ; 333
	i32 9, ; 334
	i32 86, ; 335
	i32 288, ; 336
	i32 321, ; 337
	i32 192, ; 338
	i32 71, ; 339
	i32 168, ; 340
	i32 1, ; 341
	i32 308, ; 342
	i32 5, ; 343
	i32 362, ; 344
	i32 44, ; 345
	i32 27, ; 346
	i32 336, ; 347
	i32 158, ; 348
	i32 311, ; 349
	i32 112, ; 350
	i32 229, ; 351
	i32 372, ; 352
	i32 234, ; 353
	i32 207, ; 354
	i32 121, ; 355
	i32 202, ; 356
	i32 326, ; 357
	i32 267, ; 358
	i32 346, ; 359
	i32 191, ; 360
	i32 233, ; 361
	i32 159, ; 362
	i32 205, ; 363
	i32 188, ; 364
	i32 370, ; 365
	i32 131, ; 366
	i32 331, ; 367
	i32 57, ; 368
	i32 212, ; 369
	i32 138, ; 370
	i32 83, ; 371
	i32 30, ; 372
	i32 278, ; 373
	i32 10, ; 374
	i32 342, ; 375
	i32 328, ; 376
	i32 171, ; 377
	i32 179, ; 378
	i32 234, ; 379
	i32 275, ; 380
	i32 150, ; 381
	i32 94, ; 382
	i32 187, ; 383
	i32 288, ; 384
	i32 60, ; 385
	i32 241, ; 386
	i32 157, ; 387
	i32 224, ; 388
	i32 64, ; 389
	i32 88, ; 390
	i32 79, ; 391
	i32 47, ; 392
	i32 239, ; 393
	i32 143, ; 394
	i32 344, ; 395
	i32 210, ; 396
	i32 360, ; 397
	i32 337, ; 398
	i32 282, ; 399
	i32 74, ; 400
	i32 194, ; 401
	i32 91, ; 402
	i32 334, ; 403
	i32 135, ; 404
	i32 90, ; 405
	i32 320, ; 406
	i32 340, ; 407
	i32 279, ; 408
	i32 200, ; 409
	i32 197, ; 410
	i32 342, ; 411
	i32 112, ; 412
	i32 42, ; 413
	i32 159, ; 414
	i32 4, ; 415
	i32 103, ; 416
	i32 217, ; 417
	i32 374, ; 418
	i32 70, ; 419
	i32 204, ; 420
	i32 60, ; 421
	i32 39, ; 422
	i32 269, ; 423
	i32 201, ; 424
	i32 153, ; 425
	i32 56, ; 426
	i32 34, ; 427
	i32 223, ; 428
	i32 241, ; 429
	i32 266, ; 430
	i32 21, ; 431
	i32 163, ; 432
	i32 246, ; 433
	i32 196, ; 434
	i32 216, ; 435
	i32 332, ; 436
	i32 353, ; 437
	i32 330, ; 438
	i32 368, ; 439
	i32 349, ; 440
	i32 325, ; 441
	i32 140, ; 442
	i32 182, ; 443
	i32 356, ; 444
	i32 226, ; 445
	i32 89, ; 446
	i32 197, ; 447
	i32 147, ; 448
	i32 281, ; 449
	i32 247, ; 450
	i32 162, ; 451
	i32 310, ; 452
	i32 6, ; 453
	i32 0, ; 454
	i32 169, ; 455
	i32 31, ; 456
	i32 107, ; 457
	i32 291, ; 458
	i32 250, ; 459
	i32 231, ; 460
	i32 354, ; 461
	i32 325, ; 462
	i32 222, ; 463
	i32 264, ; 464
	i32 318, ; 465
	i32 221, ; 466
	i32 167, ; 467
	i32 292, ; 468
	i32 140, ; 469
	i32 59, ; 470
	i32 144, ; 471
	i32 371, ; 472
	i32 81, ; 473
	i32 254, ; 474
	i32 74, ; 475
	i32 218, ; 476
	i32 219, ; 477
	i32 130, ; 478
	i32 25, ; 479
	i32 7, ; 480
	i32 93, ; 481
	i32 322, ; 482
	i32 137, ; 483
	i32 258, ; 484
	i32 235, ; 485
	i32 113, ; 486
	i32 9, ; 487
	i32 250, ; 488
	i32 104, ; 489
	i32 19, ; 490
	i32 232, ; 491
	i32 178, ; 492
	i32 290, ; 493
	i32 304, ; 494
	i32 375, ; 495
	i32 284, ; 496
	i32 201, ; 497
	i32 33, ; 498
	i32 272, ; 499
	i32 46, ; 500
	i32 30, ; 501
	i32 273, ; 502
	i32 57, ; 503
	i32 134, ; 504
	i32 114, ; 505
	i32 327, ; 506
	i32 338, ; 507
	i32 55, ; 508
	i32 227, ; 509
	i32 6, ; 510
	i32 77, ; 511
	i32 248, ; 512
	i32 283, ; 513
	i32 341, ; 514
	i32 186, ; 515
	i32 362, ; 516
	i32 111, ; 517
	i32 190, ; 518
	i32 287, ; 519
	i32 256, ; 520
	i32 102, ; 521
	i32 170, ; 522
	i32 115, ; 523
	i32 350, ; 524
	i32 322, ; 525
	i32 277, ; 526
	i32 194, ; 527
	i32 0, ; 528
	i32 76, ; 529
	i32 333, ; 530
	i32 85, ; 531
	i32 335, ; 532
	i32 270, ; 533
	i32 371, ; 534
	i32 215, ; 535
	i32 312, ; 536
	i32 160, ; 537
	i32 2, ; 538
	i32 283, ; 539
	i32 24, ; 540
	i32 263, ; 541
	i32 32, ; 542
	i32 117, ; 543
	i32 37, ; 544
	i32 16, ; 545
	i32 174, ; 546
	i32 52, ; 547
	i32 336, ; 548
	i32 20, ; 549
	i32 257, ; 550
	i32 123, ; 551
	i32 199, ; 552
	i32 154, ; 553
	i32 290, ; 554
	i32 131, ; 555
	i32 198, ; 556
	i32 272, ; 557
	i32 148, ; 558
	i32 202, ; 559
	i32 259, ; 560
	i32 120, ; 561
	i32 28, ; 562
	i32 132, ; 563
	i32 100, ; 564
	i32 134, ; 565
	i32 310, ; 566
	i32 153, ; 567
	i32 97, ; 568
	i32 125, ; 569
	i32 260, ; 570
	i32 69, ; 571
	i32 364, ; 572
	i32 72, ; 573
	i32 365, ; 574
	i32 295, ; 575
	i32 373, ; 576
	i32 313, ; 577
	i32 136, ; 578
	i32 124, ; 579
	i32 71, ; 580
	i32 343, ; 581
	i32 111, ; 582
	i32 305, ; 583
	i32 174, ; 584
	i32 213, ; 585
	i32 152, ; 586
	i32 357, ; 587
	i32 356, ; 588
	i32 373, ; 589
	i32 333, ; 590
	i32 118, ; 591
	i32 281, ; 592
	i32 176, ; 593
	i32 341, ; 594
	i32 127, ; 595
	i32 133, ; 596
	i32 214, ; 597
	i32 77, ; 598
	i32 46, ; 599
	i32 284, ; 600
	i32 73, ; 601
	i32 63, ; 602
	i32 98, ; 603
	i32 84, ; 604
	i32 358, ; 605
	i32 43, ; 606
	i32 61, ; 607
	i32 231, ; 608
	i32 311, ; 609
	i32 363, ; 610
	i32 209, ; 611
	i32 37, ; 612
	i32 40, ; 613
	i32 274, ; 614
	i32 339, ; 615
	i32 160, ; 616
	i32 98, ; 617
	i32 279, ; 618
	i32 251, ; 619
	i32 214, ; 620
	i32 184, ; 621
	i32 216, ; 622
	i32 135, ; 623
	i32 20, ; 624
	i32 65, ; 625
	i32 345, ; 626
	i32 125, ; 627
	i32 75, ; 628
	i32 195, ; 629
	i32 303, ; 630
	i32 181, ; 631
	i32 164, ; 632
	i32 156, ; 633
	i32 5, ; 634
	i32 49, ; 635
	i32 317, ; 636
	i32 346, ; 637
	i32 144, ; 638
	i32 212, ; 639
	i32 139, ; 640
	i32 196, ; 641
	i32 100, ; 642
	i32 179, ; 643
	i32 238, ; 644
	i32 123, ; 645
	i32 120, ; 646
	i32 142, ; 647
	i32 39, ; 648
	i32 68, ; 649
	i32 189, ; 650
	i32 225, ; 651
	i32 41, ; 652
	i32 365, ; 653
	i32 228, ; 654
	i32 164, ; 655
	i32 73, ; 656
	i32 359, ; 657
	i32 165, ; 658
	i32 223, ; 659
	i32 127, ; 660
	i32 289, ; 661
	i32 338, ; 662
	i32 68, ; 663
	i32 169, ; 664
	i32 189, ; 665
	i32 302, ; 666
	i32 276, ; 667
	i32 243, ; 668
	i32 309, ; 669
	i32 151, ; 670
	i32 45, ; 671
	i32 108, ; 672
	i32 48, ; 673
	i32 96, ; 674
	i32 31, ; 675
	i32 358, ; 676
	i32 23, ; 677
	i32 166, ; 678
	i32 22, ; 679
	i32 138, ; 680
	i32 78, ; 681
	i32 366, ; 682
	i32 173, ; 683
	i32 54, ; 684
	i32 302, ; 685
	i32 307, ; 686
	i32 10, ; 687
	i32 265, ; 688
	i32 306, ; 689
	i32 293, ; 690
	i32 211, ; 691
	i32 16, ; 692
	i32 182, ; 693
	i32 139, ; 694
	i32 244, ; 695
	i32 236, ; 696
	i32 13, ; 697
	i32 230, ; 698
	i32 15, ; 699
	i32 122, ; 700
	i32 361, ; 701
	i32 219, ; 702
	i32 87, ; 703
	i32 149, ; 704
	i32 22, ; 705
	i32 351, ; 706
	i32 34, ; 707
	i32 79, ; 708
	i32 351, ; 709
	i32 331, ; 710
	i32 252, ; 711
	i32 147, ; 712
	i32 80, ; 713
	i32 349, ; 714
	i32 176, ; 715
	i32 254, ; 716
	i32 258, ; 717
	i32 361, ; 718
	i32 42, ; 719
	i32 26, ; 720
	i32 304, ; 721
	i32 301, ; 722
	i32 107, ; 723
	i32 110, ; 724
	i32 233, ; 725
	i32 352, ; 726
	i32 7, ; 727
	i32 334, ; 728
	i32 221, ; 729
	i32 244, ; 730
	i32 44, ; 731
	i32 345, ; 732
	i32 161, ; 733
	i32 206, ; 734
	i32 148, ; 735
	i32 270, ; 736
	i32 306, ; 737
	i32 38, ; 738
	i32 15, ; 739
	i32 253, ; 740
	i32 146, ; 741
	i32 8, ; 742
	i32 287, ; 743
	i32 308, ; 744
	i32 130, ; 745
	i32 355, ; 746
	i32 354, ; 747
	i32 350, ; 748
	i32 324, ; 749
	i32 255, ; 750
	i32 94 ; 751
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
