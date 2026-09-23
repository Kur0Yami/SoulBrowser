.class final enum Lcom/google/android/gms/internal/play_billing/zzb;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum f:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final g:Lcom/google/android/gms/internal/play_billing/zzbz;

.field public static final synthetic h:[Lcom/google/android/gms/internal/play_billing/zzb;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 2
    .line 3
    const/16 v1, -0x3e7

    .line 4
    .line 5
    const-string v2, "RESPONSE_CODE_UNSPECIFIED"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzb;->f:Lcom/google/android/gms/internal/play_billing/zzb;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 14
    .line 15
    const/4 v2, -0x3

    .line 16
    const-string v4, "SERVICE_TIMEOUT"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 23
    .line 24
    const/4 v4, -0x2

    .line 25
    const-string v6, "FEATURE_NOT_SUPPORTED"

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    invoke-direct {v2, v6, v7, v4}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 32
    .line 33
    const/4 v6, -0x1

    .line 34
    const-string v8, "SERVICE_DISCONNECTED"

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    invoke-direct {v4, v8, v9, v6}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 41
    .line 42
    const-string v8, "OK"

    .line 43
    .line 44
    const/4 v10, 0x4

    .line 45
    invoke-direct {v6, v8, v10, v3}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 46
    .line 47
    .line 48
    new-instance v8, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 49
    .line 50
    const-string v11, "USER_CANCELED"

    .line 51
    .line 52
    const/4 v12, 0x5

    .line 53
    invoke-direct {v8, v11, v12, v5}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    new-instance v11, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 57
    .line 58
    const-string v13, "SERVICE_UNAVAILABLE"

    .line 59
    .line 60
    const/4 v14, 0x6

    .line 61
    invoke-direct {v11, v13, v14, v7}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    new-instance v13, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 65
    .line 66
    const-string v15, "BILLING_UNAVAILABLE"

    .line 67
    .line 68
    move/from16 v16, v5

    .line 69
    .line 70
    const/4 v5, 0x7

    .line 71
    invoke-direct {v13, v15, v5, v9}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    new-instance v15, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 75
    .line 76
    move/from16 v17, v7

    .line 77
    .line 78
    const-string v7, "ITEM_UNAVAILABLE"

    .line 79
    .line 80
    move/from16 v18, v9

    .line 81
    .line 82
    const/16 v9, 0x8

    .line 83
    .line 84
    invoke-direct {v15, v7, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    new-instance v7, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 88
    .line 89
    move/from16 v19, v10

    .line 90
    .line 91
    const-string v10, "DEVELOPER_ERROR"

    .line 92
    .line 93
    move/from16 v20, v3

    .line 94
    .line 95
    const/16 v3, 0x9

    .line 96
    .line 97
    invoke-direct {v7, v10, v3, v12}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 98
    .line 99
    .line 100
    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 101
    .line 102
    move/from16 v21, v3

    .line 103
    .line 104
    const-string v3, "ERROR"

    .line 105
    .line 106
    move/from16 v22, v12

    .line 107
    .line 108
    const/16 v12, 0xa

    .line 109
    .line 110
    invoke-direct {v10, v3, v12, v14}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 114
    .line 115
    move/from16 v23, v12

    .line 116
    .line 117
    const-string v12, "ITEM_ALREADY_OWNED"

    .line 118
    .line 119
    move/from16 v24, v14

    .line 120
    .line 121
    const/16 v14, 0xb

    .line 122
    .line 123
    invoke-direct {v3, v12, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    new-instance v12, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 127
    .line 128
    move/from16 v25, v5

    .line 129
    .line 130
    const-string v5, "ITEM_NOT_OWNED"

    .line 131
    .line 132
    const/16 v14, 0xc

    .line 133
    .line 134
    invoke-direct {v12, v5, v14, v9}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 135
    .line 136
    .line 137
    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 138
    .line 139
    move/from16 v27, v9

    .line 140
    .line 141
    const-string v9, "EXPIRED_OFFER_TOKEN"

    .line 142
    .line 143
    const/16 v14, 0xd

    .line 144
    .line 145
    move-object/from16 v29, v0

    .line 146
    .line 147
    const/16 v0, 0xb

    .line 148
    .line 149
    invoke-direct {v5, v9, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 153
    .line 154
    const-string v9, "NETWORK_ERROR"

    .line 155
    .line 156
    move/from16 v30, v14

    .line 157
    .line 158
    const/16 v14, 0xe

    .line 159
    .line 160
    move-object/from16 v31, v1

    .line 161
    .line 162
    const/16 v1, 0xc

    .line 163
    .line 164
    invoke-direct {v0, v9, v14, v1}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    .line 165
    .line 166
    .line 167
    const/16 v1, 0xf

    .line 168
    .line 169
    new-array v1, v1, [Lcom/google/android/gms/internal/play_billing/zzb;

    .line 170
    .line 171
    aput-object v29, v1, v20

    .line 172
    .line 173
    aput-object v31, v1, v16

    .line 174
    .line 175
    aput-object v2, v1, v17

    .line 176
    .line 177
    aput-object v4, v1, v18

    .line 178
    .line 179
    aput-object v6, v1, v19

    .line 180
    .line 181
    aput-object v8, v1, v22

    .line 182
    .line 183
    aput-object v11, v1, v24

    .line 184
    .line 185
    aput-object v13, v1, v25

    .line 186
    .line 187
    aput-object v15, v1, v27

    .line 188
    .line 189
    aput-object v7, v1, v21

    .line 190
    .line 191
    aput-object v10, v1, v23

    .line 192
    .line 193
    const/16 v26, 0xb

    .line 194
    .line 195
    aput-object v3, v1, v26

    .line 196
    .line 197
    const/16 v28, 0xc

    .line 198
    .line 199
    aput-object v12, v1, v28

    .line 200
    .line 201
    aput-object v5, v1, v30

    .line 202
    .line 203
    aput-object v0, v1, v14

    .line 204
    .line 205
    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzb;->h:[Lcom/google/android/gms/internal/play_billing/zzb;

    .line 206
    .line 207
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzby;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    move/from16 v1, v27

    .line 213
    .line 214
    new-array v1, v1, [Ljava/lang/Object;

    .line 215
    .line 216
    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzby;->a:[Ljava/lang/Object;

    .line 217
    .line 218
    move/from16 v1, v20

    .line 219
    .line 220
    iput v1, v0, Lcom/google/android/gms/internal/play_billing/zzby;->b:I

    .line 221
    .line 222
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzb;->values()[Lcom/google/android/gms/internal/play_billing/zzb;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    array-length v3, v2

    .line 227
    :goto_0
    if-ge v1, v3, :cond_3

    .line 228
    .line 229
    aget-object v4, v2, v1

    .line 230
    .line 231
    iget v5, v4, Lcom/google/android/gms/internal/play_billing/zzb;->c:I

    .line 232
    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    iget v6, v0, Lcom/google/android/gms/internal/play_billing/zzby;->b:I

    .line 238
    .line 239
    add-int/lit8 v6, v6, 0x1

    .line 240
    .line 241
    iget-object v7, v0, Lcom/google/android/gms/internal/play_billing/zzby;->a:[Ljava/lang/Object;

    .line 242
    .line 243
    array-length v8, v7

    .line 244
    add-int/2addr v6, v6

    .line 245
    if-le v6, v8, :cond_2

    .line 246
    .line 247
    if-le v6, v8, :cond_1

    .line 248
    .line 249
    shr-int/lit8 v9, v8, 0x1

    .line 250
    .line 251
    add-int/2addr v8, v9

    .line 252
    add-int/lit8 v8, v8, 0x1

    .line 253
    .line 254
    if-ge v8, v6, :cond_0

    .line 255
    .line 256
    add-int/lit8 v6, v6, -0x1

    .line 257
    .line 258
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    add-int/2addr v6, v6

    .line 263
    move v8, v6

    .line 264
    :cond_0
    if-gez v8, :cond_1

    .line 265
    .line 266
    const v8, 0x7fffffff

    .line 267
    .line 268
    .line 269
    :cond_1
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    iput-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzby;->a:[Ljava/lang/Object;

    .line 274
    .line 275
    :cond_2
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/zzby;->a:[Ljava/lang/Object;

    .line 276
    .line 277
    iget v7, v0, Lcom/google/android/gms/internal/play_billing/zzby;->b:I

    .line 278
    .line 279
    add-int v8, v7, v7

    .line 280
    .line 281
    aput-object v5, v6, v8

    .line 282
    .line 283
    add-int/lit8 v8, v8, 0x1

    .line 284
    .line 285
    aput-object v4, v6, v8

    .line 286
    .line 287
    add-int/lit8 v7, v7, 0x1

    .line 288
    .line 289
    iput v7, v0, Lcom/google/android/gms/internal/play_billing/zzby;->b:I

    .line 290
    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzby;->c:Lcom/google/android/gms/internal/play_billing/zzbx;

    .line 295
    .line 296
    if-nez v1, :cond_5

    .line 297
    .line 298
    iget v1, v0, Lcom/google/android/gms/internal/play_billing/zzby;->b:I

    .line 299
    .line 300
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzby;->a:[Ljava/lang/Object;

    .line 301
    .line 302
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzci;->e(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzby;)Lcom/google/android/gms/internal/play_billing/zzci;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzby;->c:Lcom/google/android/gms/internal/play_billing/zzbx;

    .line 307
    .line 308
    if-nez v0, :cond_4

    .line 309
    .line 310
    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzb;->g:Lcom/google/android/gms/internal/play_billing/zzbz;

    .line 311
    .line 312
    return-void

    .line 313
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->a()Ljava/lang/IllegalArgumentException;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    throw v0

    .line 318
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzbx;->a()Ljava/lang/IllegalArgumentException;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzb;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzb;->h:[Lcom/google/android/gms/internal/play_billing/zzb;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/zzb;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/play_billing/zzb;

    .line 8
    .line 9
    return-object v0
.end method
