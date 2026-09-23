.class final Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final a:Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;

.field public static final b:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final c:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final d:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final e:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final f:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final g:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final h:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final i:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final j:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final k:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final l:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final m:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final n:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final o:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->a:Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 9
    .line 10
    const-string v1, "appId"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 28
    .line 29
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 30
    .line 31
    const-string v1, "appVersion"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 49
    .line 50
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 51
    .line 52
    const-string v1, "firebaseProjectId"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->d:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 70
    .line 71
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 72
    .line 73
    const-string v1, "mlSdkVersion"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x4

    .line 84
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 85
    .line 86
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->e:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 91
    .line 92
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 93
    .line 94
    const-string v1, "tfliteSchemaVersion"

    .line 95
    .line 96
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    const/4 v2, 0x5

    .line 105
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->f:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 112
    .line 113
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 114
    .line 115
    const-string v1, "gcmSenderId"

    .line 116
    .line 117
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    const/4 v2, 0x6

    .line 126
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 127
    .line 128
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->g:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 133
    .line 134
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 135
    .line 136
    const-string v1, "apiKey"

    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    const/4 v2, 0x7

    .line 147
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 148
    .line 149
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->h:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 154
    .line 155
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 156
    .line 157
    const-string v1, "languages"

    .line 158
    .line 159
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 165
    .line 166
    .line 167
    const/16 v2, 0x8

    .line 168
    .line 169
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 170
    .line 171
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->i:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 176
    .line 177
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 178
    .line 179
    const-string v1, "mlSdkInstanceId"

    .line 180
    .line 181
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 187
    .line 188
    .line 189
    const/16 v2, 0x9

    .line 190
    .line 191
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 192
    .line 193
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->j:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 198
    .line 199
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 200
    .line 201
    const-string v1, "isClearcutClient"

    .line 202
    .line 203
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 207
    .line 208
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    const/16 v2, 0xa

    .line 212
    .line 213
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 214
    .line 215
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->k:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 220
    .line 221
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 222
    .line 223
    const-string v1, "isStandaloneMlkit"

    .line 224
    .line 225
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    const/16 v2, 0xb

    .line 234
    .line 235
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 236
    .line 237
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->l:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 242
    .line 243
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 244
    .line 245
    const-string v1, "isJsonLogging"

    .line 246
    .line 247
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 251
    .line 252
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 253
    .line 254
    .line 255
    const/16 v2, 0xc

    .line 256
    .line 257
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 258
    .line 259
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->m:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 264
    .line 265
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 266
    .line 267
    const-string v1, "buildLevel"

    .line 268
    .line 269
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 273
    .line 274
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 275
    .line 276
    .line 277
    const/16 v2, 0xd

    .line 278
    .line 279
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 280
    .line 281
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->n:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 286
    .line 287
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 288
    .line 289
    const-string v1, "optionalModuleVersion"

    .line 290
    .line 291
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 295
    .line 296
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 297
    .line 298
    .line 299
    const/16 v2, 0xe

    .line 300
    .line 301
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 302
    .line 303
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->n(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->o:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 308
    .line 309
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;

    .line 2
    .line 3
    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->d:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->e:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {p2, v0, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->f:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 33
    .line 34
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {p2, v0, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->g:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 40
    .line 41
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->h:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 45
    .line 46
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->i:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 50
    .line 51
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->e:Lcom/google/android/gms/internal/mlkit_code_scanner/zzp;

    .line 52
    .line 53
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->j:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 57
    .line 58
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->f:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->k:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 64
    .line 65
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->g:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 68
    .line 69
    .line 70
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->l:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 71
    .line 72
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->h:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 75
    .line 76
    .line 77
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->m:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->i:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 82
    .line 83
    .line 84
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->n:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 85
    .line 86
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->j:Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 89
    .line 90
    .line 91
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzhw;->o:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->k:Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 96
    .line 97
    .line 98
    return-void
.end method
