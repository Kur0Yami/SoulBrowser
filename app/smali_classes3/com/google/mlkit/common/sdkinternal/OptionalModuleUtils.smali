.class public Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final a:[Lcom/google/android/gms/common/Feature;

.field public static final b:Lcom/google/android/gms/common/Feature;

.field public static final c:Lcom/google/android/gms/common/Feature;

.field public static final d:Lcom/google/android/gms/common/Feature;

.field public static final e:Lcom/google/android/gms/common/Feature;

.field public static final f:Lcom/google/android/gms/common/Feature;

.field public static final g:Lcom/google/android/gms/common/Feature;

.field public static final h:Lcom/google/android/gms/common/Feature;

.field public static final i:Lcom/google/android/gms/common/Feature;

.field public static final j:Lcom/google/android/gms/internal/mlkit_common/zzai;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    .line 3
    .line 4
    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->a:[Lcom/google/android/gms/common/Feature;

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 7
    .line 8
    const-string v1, "vision.barcode"

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->b:Lcom/google/android/gms/common/Feature;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 18
    .line 19
    const-string v4, "vision.custom.ica"

    .line 20
    .line 21
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lcom/google/android/gms/common/Feature;

    .line 25
    .line 26
    const-string v5, "vision.face"

    .line 27
    .line 28
    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 32
    .line 33
    const-string v6, "vision.ica"

    .line 34
    .line 35
    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 39
    .line 40
    const-string v7, "vision.ocr"

    .line 41
    .line 42
    invoke-direct {v6, v7, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 43
    .line 44
    .line 45
    sput-object v6, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->c:Lcom/google/android/gms/common/Feature;

    .line 46
    .line 47
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 48
    .line 49
    const-string v8, "mlkit.ocr.chinese"

    .line 50
    .line 51
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->d:Lcom/google/android/gms/common/Feature;

    .line 55
    .line 56
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 57
    .line 58
    const-string v8, "mlkit.ocr.common"

    .line 59
    .line 60
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 61
    .line 62
    .line 63
    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->e:Lcom/google/android/gms/common/Feature;

    .line 64
    .line 65
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 66
    .line 67
    const-string v8, "mlkit.ocr.devanagari"

    .line 68
    .line 69
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 70
    .line 71
    .line 72
    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->f:Lcom/google/android/gms/common/Feature;

    .line 73
    .line 74
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 75
    .line 76
    const-string v8, "mlkit.ocr.japanese"

    .line 77
    .line 78
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 79
    .line 80
    .line 81
    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->g:Lcom/google/android/gms/common/Feature;

    .line 82
    .line 83
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 84
    .line 85
    const-string v8, "mlkit.ocr.korean"

    .line 86
    .line 87
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 88
    .line 89
    .line 90
    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->h:Lcom/google/android/gms/common/Feature;

    .line 91
    .line 92
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 93
    .line 94
    const-string v8, "mlkit.langid"

    .line 95
    .line 96
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 100
    .line 101
    const-string v9, "mlkit.nlclassifier"

    .line 102
    .line 103
    invoke-direct {v8, v9, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 104
    .line 105
    .line 106
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 107
    .line 108
    const-string v10, "tflite_dynamite"

    .line 109
    .line 110
    invoke-direct {v9, v10, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 111
    .line 112
    .line 113
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 114
    .line 115
    const-string v12, "mlkit.barcode.ui"

    .line 116
    .line 117
    invoke-direct {v11, v12, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 118
    .line 119
    .line 120
    sput-object v11, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->i:Lcom/google/android/gms/common/Feature;

    .line 121
    .line 122
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 123
    .line 124
    const-string v13, "mlkit.smartreply"

    .line 125
    .line 126
    invoke-direct {v12, v13, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 127
    .line 128
    .line 129
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 130
    .line 131
    const-string v14, "mlkit.image.caption"

    .line 132
    .line 133
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 134
    .line 135
    .line 136
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 137
    .line 138
    const-string v14, "mlkit.docscan.detect"

    .line 139
    .line 140
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 141
    .line 142
    .line 143
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 144
    .line 145
    const-string v14, "mlkit.docscan.crop"

    .line 146
    .line 147
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 148
    .line 149
    .line 150
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 151
    .line 152
    const-string v14, "mlkit.docscan.enhance"

    .line 153
    .line 154
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 155
    .line 156
    .line 157
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 158
    .line 159
    const-string v14, "mlkit.docscan.ui"

    .line 160
    .line 161
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 162
    .line 163
    .line 164
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 165
    .line 166
    const-string v14, "mlkit.docscan.stain"

    .line 167
    .line 168
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 169
    .line 170
    .line 171
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 172
    .line 173
    const-string v14, "mlkit.docscan.shadow"

    .line 174
    .line 175
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 176
    .line 177
    .line 178
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 179
    .line 180
    const-string v14, "mlkit.quality.aesthetic"

    .line 181
    .line 182
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 183
    .line 184
    .line 185
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 186
    .line 187
    const-string v14, "mlkit.quality.technical"

    .line 188
    .line 189
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 190
    .line 191
    .line 192
    new-instance v13, Lcom/google/android/gms/common/Feature;

    .line 193
    .line 194
    const-string v14, "mlkit.segmentation.subject"

    .line 195
    .line 196
    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzah;

    .line 200
    .line 201
    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/zzah;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v3, "barcode"

    .line 205
    .line 206
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 207
    .line 208
    .line 209
    const-string v3, "custom_ica"

    .line 210
    .line 211
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 212
    .line 213
    .line 214
    const-string v3, "face"

    .line 215
    .line 216
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 217
    .line 218
    .line 219
    const-string v3, "ica"

    .line 220
    .line 221
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 222
    .line 223
    .line 224
    const-string v3, "ocr"

    .line 225
    .line 226
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 227
    .line 228
    .line 229
    const-string v3, "langid"

    .line 230
    .line 231
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 232
    .line 233
    .line 234
    const-string v3, "nlclassifier"

    .line 235
    .line 236
    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v10, v9}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 240
    .line 241
    .line 242
    const-string v3, "barcode_ui"

    .line 243
    .line 244
    invoke-virtual {v2, v3, v11}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 245
    .line 246
    .line 247
    const-string v3, "smart_reply"

    .line 248
    .line 249
    invoke-virtual {v2, v3, v12}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzah;->b()Lcom/google/android/gms/internal/mlkit_common/zzai;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    sput-object v2, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->j:Lcom/google/android/gms/internal/mlkit_common/zzai;

    .line 257
    .line 258
    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzah;

    .line 259
    .line 260
    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/zzah;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v3, "com.google.android.gms.vision.barcode"

    .line 264
    .line 265
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 266
    .line 267
    .line 268
    const-string v0, "com.google.android.gms.vision.custom.ica"

    .line 269
    .line 270
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 271
    .line 272
    .line 273
    const-string v0, "com.google.android.gms.vision.face"

    .line 274
    .line 275
    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 276
    .line 277
    .line 278
    const-string v0, "com.google.android.gms.vision.ica"

    .line 279
    .line 280
    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 281
    .line 282
    .line 283
    const-string v0, "com.google.android.gms.vision.ocr"

    .line 284
    .line 285
    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 286
    .line 287
    .line 288
    const-string v0, "com.google.android.gms.mlkit.langid"

    .line 289
    .line 290
    invoke-virtual {v2, v0, v7}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 291
    .line 292
    .line 293
    const-string v0, "com.google.android.gms.mlkit.nlclassifier"

    .line 294
    .line 295
    invoke-virtual {v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 296
    .line 297
    .line 298
    const-string v0, "com.google.android.gms.tflite_dynamite"

    .line 299
    .line 300
    invoke-virtual {v2, v0, v9}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 301
    .line 302
    .line 303
    const-string v0, "com.google.android.gms.mlkit_smartreply"

    .line 304
    .line 305
    invoke-virtual {v2, v0, v12}, Lcom/google/android/gms/internal/mlkit_common/zzah;->a(Ljava/lang/String;Lcom/google/android/gms/common/Feature;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzah;->b()Lcom/google/android/gms/internal/mlkit_common/zzai;

    .line 309
    .line 310
    .line 311
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzaf;->f:Lcom/google/android/gms/internal/mlkit_common/zzat;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzak;->a(I[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzaf;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const v1, 0xd33d260

    .line 25
    .line 26
    .line 27
    if-lt v0, v1, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    .line 34
    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ge v2, v1, :cond_0

    .line 40
    .line 41
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v3, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->j:Lcom/google/android/gms/internal/mlkit_common/zzai;

    .line 46
    .line 47
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/google/android/gms/common/Feature;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/google/android/gms/common/Feature;

    .line 58
    .line 59
    aput-object v1, v0, v2

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p0, v0}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->b(Landroid/content/Context;[Lcom/google/android/gms/common/Feature;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "com.google.android.gms"

    .line 74
    .line 75
    const-string v2, "com.google.android.gms.vision.DependencyBroadcastReceiverProxy"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    const-string v1, "com.google.android.gms.vision.DEPENDENCY"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    const-string v1, ","

    .line 86
    .line 87
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v1, "com.google.android.gms.vision.DEPENDENCIES"

    .line 92
    .line 93
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 101
    .line 102
    const-string v1, "requester_app_package"

    .line 103
    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public static b(Landroid/content/Context;[Lcom/google/android/gms/common/Feature;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->newBuilder()Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzo;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/google/mlkit/common/sdkinternal/zzo;-><init>([Lcom/google/android/gms/common/Feature;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->addApi(Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->build()Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstall;->getClient(Landroid/content/Context;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;->installModules(Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;)Lcom/google/android/gms/tasks/Task;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance p1, Lcom/google/mlkit/common/sdkinternal/zzp;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 32
    .line 33
    .line 34
    return-void
.end method
