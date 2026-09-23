.class public Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    }
.end annotation


# instance fields
.field public a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:B

.field public g:Ljava/lang/String;

.field public h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field public i:Lorg/mozilla/universalchardet/prober/EscCharsetProber;


# virtual methods
.method public final a([BI)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 8
    .line 9
    iget-boolean v4, v0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_9

    .line 14
    .line 15
    :cond_0
    const/4 v4, 0x1

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    iput-boolean v4, v0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    .line 19
    .line 20
    :cond_1
    iget-boolean v5, v0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x3

    .line 25
    const/4 v9, 0x2

    .line 26
    if-eqz v5, :cond_a

    .line 27
    .line 28
    iput-boolean v6, v0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    .line 29
    .line 30
    if-le v2, v8, :cond_a

    .line 31
    .line 32
    array-length v5, v1

    .line 33
    if-le v5, v8, :cond_9

    .line 34
    .line 35
    aget-byte v5, v1, v6

    .line 36
    .line 37
    const/16 v10, 0xff

    .line 38
    .line 39
    and-int/2addr v5, v10

    .line 40
    aget-byte v11, v1, v4

    .line 41
    .line 42
    and-int/2addr v11, v10

    .line 43
    aget-byte v12, v1, v9

    .line 44
    .line 45
    and-int/2addr v12, v10

    .line 46
    aget-byte v13, v1, v8

    .line 47
    .line 48
    and-int/2addr v13, v10

    .line 49
    const/16 v14, 0xfe

    .line 50
    .line 51
    if-eqz v5, :cond_7

    .line 52
    .line 53
    const/16 v15, 0xef

    .line 54
    .line 55
    if-eq v5, v15, :cond_6

    .line 56
    .line 57
    if-eq v5, v14, :cond_4

    .line 58
    .line 59
    if-eq v5, v10, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    if-ne v11, v14, :cond_3

    .line 63
    .line 64
    if-nez v12, :cond_3

    .line 65
    .line 66
    if-nez v13, :cond_3

    .line 67
    .line 68
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->y:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    if-ne v11, v14, :cond_9

    .line 72
    .line 73
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->w:Ljava/lang/String;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    if-ne v11, v10, :cond_5

    .line 77
    .line 78
    if-nez v12, :cond_5

    .line 79
    .line 80
    if-nez v13, :cond_5

    .line 81
    .line 82
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->C:Ljava/lang/String;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    if-ne v11, v10, :cond_9

    .line 86
    .line 87
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->v:Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const/16 v5, 0xbb

    .line 91
    .line 92
    if-ne v11, v5, :cond_9

    .line 93
    .line 94
    const/16 v5, 0xbf

    .line 95
    .line 96
    if-ne v12, v5, :cond_9

    .line 97
    .line 98
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->u:Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_7
    if-nez v11, :cond_8

    .line 102
    .line 103
    if-ne v12, v14, :cond_8

    .line 104
    .line 105
    if-ne v13, v10, :cond_8

    .line 106
    .line 107
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->x:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_8
    if-nez v11, :cond_9

    .line 111
    .line 112
    if-ne v12, v10, :cond_9

    .line 113
    .line 114
    if-ne v13, v14, :cond_9

    .line 115
    .line 116
    sget-object v5, Lorg/mozilla/universalchardet/Constants;->D:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_9
    :goto_0
    move-object v5, v7

    .line 120
    :goto_1
    if-eqz v5, :cond_a

    .line 121
    .line 122
    iput-object v5, v0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    .line 123
    .line 124
    iput-boolean v4, v0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    .line 125
    .line 126
    return-void

    .line 127
    :cond_a
    move v5, v6

    .line 128
    :goto_2
    sget-object v10, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->f:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 129
    .line 130
    sget-object v12, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->g:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 131
    .line 132
    if-ge v5, v2, :cond_17

    .line 133
    .line 134
    aget-byte v13, v1, v5

    .line 135
    .line 136
    and-int/lit16 v14, v13, 0xff

    .line 137
    .line 138
    and-int/lit16 v15, v13, 0x80

    .line 139
    .line 140
    if-eqz v15, :cond_f

    .line 141
    .line 142
    const/16 v15, 0xa0

    .line 143
    .line 144
    if-eq v14, v15, :cond_f

    .line 145
    .line 146
    iget-object v10, v0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 147
    .line 148
    if-eq v10, v12, :cond_e

    .line 149
    .line 150
    iput-object v12, v0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 151
    .line 152
    iget-object v10, v0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    .line 153
    .line 154
    if-eqz v10, :cond_b

    .line 155
    .line 156
    iput-object v7, v0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    .line 157
    .line 158
    :cond_b
    aget-object v10, v3, v6

    .line 159
    .line 160
    if-nez v10, :cond_c

    .line 161
    .line 162
    new-instance v10, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;

    .line 163
    .line 164
    invoke-direct {v10}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 165
    .line 166
    .line 167
    new-instance v12, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v12, v10, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->c:Ljava/util/ArrayList;

    .line 173
    .line 174
    new-instance v13, Lorg/mozilla/universalchardet/prober/GB18030Prober;

    .line 175
    .line 176
    invoke-direct {v13}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 177
    .line 178
    .line 179
    new-instance v14, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 180
    .line 181
    sget-object v15, Lorg/mozilla/universalchardet/prober/GB18030Prober;->f:Lorg/mozilla/universalchardet/prober/statemachine/GB18030SMModel;

    .line 182
    .line 183
    invoke-direct {v14, v15}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 184
    .line 185
    .line 186
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/GB18030Prober;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 187
    .line 188
    new-instance v14, Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

    .line 189
    .line 190
    invoke-direct {v14}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;-><init>()V

    .line 191
    .line 192
    .line 193
    sget-object v15, Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;->e:[I

    .line 194
    .line 195
    iput-object v15, v14, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->c:[I

    .line 196
    .line 197
    const v15, 0x3f666666    # 0.9f

    .line 198
    .line 199
    .line 200
    iput v15, v14, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->d:F

    .line 201
    .line 202
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/GB18030Prober;->d:Lorg/mozilla/universalchardet/prober/distributionanalysis/GB2312DistributionAnalysis;

    .line 203
    .line 204
    new-array v14, v9, [B

    .line 205
    .line 206
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/GB18030Prober;->e:[B

    .line 207
    .line 208
    invoke-virtual {v13}, Lorg/mozilla/universalchardet/prober/GB18030Prober;->d()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    new-instance v13, Lorg/mozilla/universalchardet/prober/UTF8Prober;

    .line 215
    .line 216
    invoke-direct {v13}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 217
    .line 218
    .line 219
    iput v6, v13, Lorg/mozilla/universalchardet/prober/UTF8Prober;->d:I

    .line 220
    .line 221
    new-instance v14, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 222
    .line 223
    sget-object v15, Lorg/mozilla/universalchardet/prober/UTF8Prober;->e:Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;

    .line 224
    .line 225
    invoke-direct {v14, v15}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 226
    .line 227
    .line 228
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/UTF8Prober;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 229
    .line 230
    invoke-virtual {v13}, Lorg/mozilla/universalchardet/prober/UTF8Prober;->d()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    new-instance v13, Lorg/mozilla/universalchardet/prober/Big5Prober;

    .line 237
    .line 238
    invoke-direct {v13}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 239
    .line 240
    .line 241
    new-instance v14, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 242
    .line 243
    sget-object v15, Lorg/mozilla/universalchardet/prober/Big5Prober;->f:Lorg/mozilla/universalchardet/prober/statemachine/Big5SMModel;

    .line 244
    .line 245
    invoke-direct {v14, v15}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 246
    .line 247
    .line 248
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/Big5Prober;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 249
    .line 250
    new-instance v14, Lorg/mozilla/universalchardet/prober/distributionanalysis/Big5DistributionAnalysis;

    .line 251
    .line 252
    invoke-direct {v14}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;-><init>()V

    .line 253
    .line 254
    .line 255
    sget-object v15, Lorg/mozilla/universalchardet/prober/distributionanalysis/Big5DistributionAnalysis;->e:[I

    .line 256
    .line 257
    iput-object v15, v14, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->c:[I

    .line 258
    .line 259
    const/high16 v15, 0x3f400000    # 0.75f

    .line 260
    .line 261
    iput v15, v14, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->d:F

    .line 262
    .line 263
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/Big5Prober;->d:Lorg/mozilla/universalchardet/prober/distributionanalysis/Big5DistributionAnalysis;

    .line 264
    .line 265
    new-array v14, v9, [B

    .line 266
    .line 267
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/Big5Prober;->e:[B

    .line 268
    .line 269
    invoke-virtual {v13}, Lorg/mozilla/universalchardet/prober/Big5Prober;->d()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    new-instance v13, Lorg/mozilla/universalchardet/prober/SJISProber;

    .line 276
    .line 277
    invoke-direct {v13}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 278
    .line 279
    .line 280
    new-instance v14, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 281
    .line 282
    move/from16 v16, v8

    .line 283
    .line 284
    sget-object v8, Lorg/mozilla/universalchardet/prober/SJISProber;->g:Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;

    .line 285
    .line 286
    invoke-direct {v14, v8}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 287
    .line 288
    .line 289
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/SJISProber;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 290
    .line 291
    new-instance v8, Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

    .line 292
    .line 293
    invoke-direct {v8}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;-><init>()V

    .line 294
    .line 295
    .line 296
    iput-object v8, v13, Lorg/mozilla/universalchardet/prober/SJISProber;->d:Lorg/mozilla/universalchardet/prober/contextanalysis/SJISContextAnalysis;

    .line 297
    .line 298
    new-instance v8, Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;

    .line 299
    .line 300
    invoke-direct {v8}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    .line 301
    .line 302
    .line 303
    iput-object v8, v13, Lorg/mozilla/universalchardet/prober/SJISProber;->e:Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;

    .line 304
    .line 305
    new-array v8, v9, [B

    .line 306
    .line 307
    iput-object v8, v13, Lorg/mozilla/universalchardet/prober/SJISProber;->f:[B

    .line 308
    .line 309
    invoke-virtual {v13}, Lorg/mozilla/universalchardet/prober/SJISProber;->d()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    new-instance v8, Lorg/mozilla/universalchardet/prober/EUCJPProber;

    .line 316
    .line 317
    invoke-direct {v8}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 318
    .line 319
    .line 320
    new-instance v13, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 321
    .line 322
    sget-object v14, Lorg/mozilla/universalchardet/prober/EUCJPProber;->g:Lorg/mozilla/universalchardet/prober/statemachine/EUCJPSMModel;

    .line 323
    .line 324
    invoke-direct {v13, v14}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 325
    .line 326
    .line 327
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCJPProber;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 328
    .line 329
    new-instance v13, Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    .line 330
    .line 331
    invoke-direct {v13}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;-><init>()V

    .line 332
    .line 333
    .line 334
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCJPProber;->d:Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;

    .line 335
    .line 336
    new-instance v13, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    .line 337
    .line 338
    invoke-direct {v13}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    .line 339
    .line 340
    .line 341
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCJPProber;->e:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;

    .line 342
    .line 343
    new-array v13, v9, [B

    .line 344
    .line 345
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCJPProber;->f:[B

    .line 346
    .line 347
    invoke-virtual {v8}, Lorg/mozilla/universalchardet/prober/EUCJPProber;->d()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    new-instance v8, Lorg/mozilla/universalchardet/prober/EUCKRProber;

    .line 354
    .line 355
    invoke-direct {v8}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 356
    .line 357
    .line 358
    new-instance v13, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 359
    .line 360
    sget-object v14, Lorg/mozilla/universalchardet/prober/EUCKRProber;->f:Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;

    .line 361
    .line 362
    invoke-direct {v13, v14}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 363
    .line 364
    .line 365
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCKRProber;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 366
    .line 367
    new-instance v13, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    .line 368
    .line 369
    invoke-direct {v13}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;-><init>()V

    .line 370
    .line 371
    .line 372
    const/high16 v14, 0x40c00000    # 6.0f

    .line 373
    .line 374
    iput v14, v13, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->d:F

    .line 375
    .line 376
    sget-object v14, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->e:[I

    .line 377
    .line 378
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->c:[I

    .line 379
    .line 380
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCKRProber;->d:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    .line 381
    .line 382
    new-array v13, v9, [B

    .line 383
    .line 384
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCKRProber;->e:[B

    .line 385
    .line 386
    invoke-virtual {v8}, Lorg/mozilla/universalchardet/prober/EUCKRProber;->d()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    new-instance v8, Lorg/mozilla/universalchardet/prober/EUCTWProber;

    .line 393
    .line 394
    invoke-direct {v8}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 395
    .line 396
    .line 397
    new-instance v13, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 398
    .line 399
    sget-object v14, Lorg/mozilla/universalchardet/prober/EUCTWProber;->f:Lorg/mozilla/universalchardet/prober/statemachine/EUCTWSMModel;

    .line 400
    .line 401
    invoke-direct {v13, v14}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 402
    .line 403
    .line 404
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCTWProber;->b:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 405
    .line 406
    new-instance v13, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCTWDistributionAnalysis;

    .line 407
    .line 408
    invoke-direct {v13}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;-><init>()V

    .line 409
    .line 410
    .line 411
    sget-object v14, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCTWDistributionAnalysis;->e:[I

    .line 412
    .line 413
    iput-object v14, v13, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->c:[I

    .line 414
    .line 415
    iput v15, v13, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->d:F

    .line 416
    .line 417
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCTWProber;->d:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCTWDistributionAnalysis;

    .line 418
    .line 419
    new-array v13, v9, [B

    .line 420
    .line 421
    iput-object v13, v8, Lorg/mozilla/universalchardet/prober/EUCTWProber;->e:[B

    .line 422
    .line 423
    invoke-virtual {v8}, Lorg/mozilla/universalchardet/prober/EUCTWProber;->d()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    invoke-virtual {v10}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->d()V

    .line 430
    .line 431
    .line 432
    aput-object v10, v3, v6

    .line 433
    .line 434
    goto :goto_3

    .line 435
    :cond_c
    move/from16 v16, v8

    .line 436
    .line 437
    :goto_3
    aget-object v8, v3, v4

    .line 438
    .line 439
    if-nez v8, :cond_d

    .line 440
    .line 441
    new-instance v8, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;

    .line 442
    .line 443
    invoke-direct {v8}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 444
    .line 445
    .line 446
    new-instance v10, Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .line 450
    .line 451
    iput-object v10, v8, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->c:Ljava/util/ArrayList;

    .line 452
    .line 453
    new-instance v12, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 454
    .line 455
    new-instance v13, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;

    .line 456
    .line 457
    sget-object v14, Lorg/mozilla/universalchardet/Constants;->q:Ljava/lang/String;

    .line 458
    .line 459
    sget-object v15, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;->f:[S

    .line 460
    .line 461
    move/from16 v17, v9

    .line 462
    .line 463
    sget-object v9, Lorg/mozilla/universalchardet/prober/sequence/CyrillicModel;->e:[B

    .line 464
    .line 465
    const v11, 0x3f7a0286

    .line 466
    .line 467
    .line 468
    invoke-direct {v13, v15, v9, v11, v14}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-direct {v12, v13}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    new-instance v12, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 478
    .line 479
    new-instance v13, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;

    .line 480
    .line 481
    sget-object v15, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;->f:[S

    .line 482
    .line 483
    sget-object v4, Lorg/mozilla/universalchardet/Constants;->o:Ljava/lang/String;

    .line 484
    .line 485
    invoke-direct {v13, v15, v9, v11, v4}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-direct {v12, v13}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    new-instance v4, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 495
    .line 496
    new-instance v12, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;

    .line 497
    .line 498
    sget-object v13, Lorg/mozilla/universalchardet/Constants;->d:Ljava/lang/String;

    .line 499
    .line 500
    sget-object v15, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;->f:[S

    .line 501
    .line 502
    invoke-direct {v12, v15, v9, v11, v13}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-direct {v4, v12}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    new-instance v4, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 512
    .line 513
    new-instance v12, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;

    .line 514
    .line 515
    sget-object v15, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;->f:[S

    .line 516
    .line 517
    sget-object v6, Lorg/mozilla/universalchardet/Constants;->p:Ljava/lang/String;

    .line 518
    .line 519
    invoke-direct {v12, v15, v9, v11, v6}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 520
    .line 521
    .line 522
    invoke-direct {v4, v12}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    new-instance v4, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 529
    .line 530
    new-instance v6, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;

    .line 531
    .line 532
    sget-object v12, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;->f:[S

    .line 533
    .line 534
    sget-object v15, Lorg/mozilla/universalchardet/Constants;->n:Ljava/lang/String;

    .line 535
    .line 536
    invoke-direct {v6, v12, v9, v11, v15}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-direct {v4, v6}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    new-instance v4, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 546
    .line 547
    new-instance v6, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;

    .line 548
    .line 549
    sget-object v12, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;->f:[S

    .line 550
    .line 551
    sget-object v15, Lorg/mozilla/universalchardet/Constants;->m:Ljava/lang/String;

    .line 552
    .line 553
    invoke-direct {v6, v12, v9, v11, v15}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-direct {v4, v6}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    new-instance v4, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 563
    .line 564
    new-instance v6, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;

    .line 565
    .line 566
    sget-object v9, Lorg/mozilla/universalchardet/Constants;->e:Ljava/lang/String;

    .line 567
    .line 568
    sget-object v11, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;->f:[S

    .line 569
    .line 570
    sget-object v12, Lorg/mozilla/universalchardet/prober/sequence/GreekModel;->e:[B

    .line 571
    .line 572
    const v15, 0x3f7b9c20

    .line 573
    .line 574
    .line 575
    invoke-direct {v6, v11, v12, v15, v9}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-direct {v4, v6}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    new-instance v4, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 585
    .line 586
    new-instance v6, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;

    .line 587
    .line 588
    sget-object v9, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;->f:[S

    .line 589
    .line 590
    sget-object v11, Lorg/mozilla/universalchardet/Constants;->s:Ljava/lang/String;

    .line 591
    .line 592
    invoke-direct {v6, v9, v12, v15, v11}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-direct {v4, v6}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    new-instance v4, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 602
    .line 603
    new-instance v6, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;

    .line 604
    .line 605
    sget-object v9, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;->f:[S

    .line 606
    .line 607
    sget-object v11, Lorg/mozilla/universalchardet/prober/sequence/BulgarianModel;->e:[B

    .line 608
    .line 609
    const v12, 0x3f782a13

    .line 610
    .line 611
    .line 612
    invoke-direct {v6, v9, v11, v12, v13}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-direct {v4, v6}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    new-instance v4, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 622
    .line 623
    new-instance v6, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;

    .line 624
    .line 625
    sget-object v9, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;->f:[S

    .line 626
    .line 627
    invoke-direct {v6, v9, v11, v12, v14}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-direct {v4, v6}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    new-instance v4, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 637
    .line 638
    new-instance v6, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;

    .line 639
    .line 640
    const v9, 0x3f6d27a2

    .line 641
    .line 642
    .line 643
    sget-object v11, Lorg/mozilla/universalchardet/Constants;->z:Ljava/lang/String;

    .line 644
    .line 645
    sget-object v12, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;->e:[S

    .line 646
    .line 647
    sget-object v13, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;->f:[B

    .line 648
    .line 649
    invoke-direct {v6, v12, v13, v9, v11}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-direct {v4, v6}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    new-instance v4, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;

    .line 659
    .line 660
    const v6, 0x3f7be7b0

    .line 661
    .line 662
    .line 663
    sget-object v9, Lorg/mozilla/universalchardet/Constants;->t:Ljava/lang/String;

    .line 664
    .line 665
    sget-object v11, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;->e:[S

    .line 666
    .line 667
    sget-object v12, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;->f:[B

    .line 668
    .line 669
    invoke-direct {v4, v11, v12, v6, v9}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;-><init>([S[BFLjava/lang/String;)V

    .line 670
    .line 671
    .line 672
    new-instance v6, Lorg/mozilla/universalchardet/prober/HebrewProber;

    .line 673
    .line 674
    invoke-direct {v6}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 675
    .line 676
    .line 677
    iput-object v7, v6, Lorg/mozilla/universalchardet/prober/HebrewProber;->f:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 678
    .line 679
    iput-object v7, v6, Lorg/mozilla/universalchardet/prober/HebrewProber;->g:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 680
    .line 681
    invoke-virtual {v6}, Lorg/mozilla/universalchardet/prober/HebrewProber;->d()V

    .line 682
    .line 683
    .line 684
    new-instance v9, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 685
    .line 686
    const/4 v11, 0x0

    .line 687
    invoke-direct {v9, v4, v11, v6}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;ZLorg/mozilla/universalchardet/prober/HebrewProber;)V

    .line 688
    .line 689
    .line 690
    new-instance v11, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 691
    .line 692
    const/4 v12, 0x1

    .line 693
    invoke-direct {v11, v4, v12, v6}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;ZLorg/mozilla/universalchardet/prober/HebrewProber;)V

    .line 694
    .line 695
    .line 696
    iput-object v9, v6, Lorg/mozilla/universalchardet/prober/HebrewProber;->f:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 697
    .line 698
    iput-object v11, v6, Lorg/mozilla/universalchardet/prober/HebrewProber;->g:Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 699
    .line 700
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    invoke-virtual {v8}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->d()V

    .line 710
    .line 711
    .line 712
    aput-object v8, v3, v12

    .line 713
    .line 714
    goto :goto_4

    .line 715
    :cond_d
    move/from16 v17, v9

    .line 716
    .line 717
    :goto_4
    aget-object v4, v3, v17

    .line 718
    .line 719
    if-nez v4, :cond_16

    .line 720
    .line 721
    new-instance v4, Lorg/mozilla/universalchardet/prober/Latin1Prober;

    .line 722
    .line 723
    invoke-direct {v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 724
    .line 725
    .line 726
    const/4 v6, 0x4

    .line 727
    new-array v6, v6, [I

    .line 728
    .line 729
    iput-object v6, v4, Lorg/mozilla/universalchardet/prober/Latin1Prober;->d:[I

    .line 730
    .line 731
    invoke-virtual {v4}, Lorg/mozilla/universalchardet/prober/Latin1Prober;->d()V

    .line 732
    .line 733
    .line 734
    aput-object v4, v3, v17

    .line 735
    .line 736
    goto :goto_7

    .line 737
    :cond_e
    move/from16 v16, v8

    .line 738
    .line 739
    move/from16 v17, v9

    .line 740
    .line 741
    goto :goto_7

    .line 742
    :cond_f
    move/from16 v16, v8

    .line 743
    .line 744
    move/from16 v17, v9

    .line 745
    .line 746
    iget-object v4, v0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 747
    .line 748
    const/16 v6, 0x7e

    .line 749
    .line 750
    sget-object v8, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->c:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 751
    .line 752
    if-ne v4, v8, :cond_11

    .line 753
    .line 754
    const/16 v4, 0x1b

    .line 755
    .line 756
    if-eq v14, v4, :cond_10

    .line 757
    .line 758
    const/16 v4, 0x7b

    .line 759
    .line 760
    if-ne v14, v4, :cond_11

    .line 761
    .line 762
    iget-byte v4, v0, Lorg/mozilla/universalchardet/UniversalDetector;->f:B

    .line 763
    .line 764
    if-ne v4, v6, :cond_11

    .line 765
    .line 766
    :cond_10
    iput-object v10, v0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 767
    .line 768
    :cond_11
    iget-object v4, v0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 769
    .line 770
    if-ne v4, v8, :cond_15

    .line 771
    .line 772
    iget-boolean v4, v0, Lorg/mozilla/universalchardet/UniversalDetector;->e:Z

    .line 773
    .line 774
    if-eqz v4, :cond_15

    .line 775
    .line 776
    const/16 v4, 0x20

    .line 777
    .line 778
    if-lt v14, v4, :cond_12

    .line 779
    .line 780
    if-le v14, v6, :cond_14

    .line 781
    .line 782
    :cond_12
    const/16 v4, 0xa

    .line 783
    .line 784
    if-eq v14, v4, :cond_14

    .line 785
    .line 786
    const/16 v4, 0xd

    .line 787
    .line 788
    if-eq v14, v4, :cond_14

    .line 789
    .line 790
    const/16 v4, 0x9

    .line 791
    .line 792
    if-ne v14, v4, :cond_13

    .line 793
    .line 794
    goto :goto_5

    .line 795
    :cond_13
    const/4 v4, 0x0

    .line 796
    goto :goto_6

    .line 797
    :cond_14
    :goto_5
    const/4 v4, 0x1

    .line 798
    :goto_6
    iput-boolean v4, v0, Lorg/mozilla/universalchardet/UniversalDetector;->e:Z

    .line 799
    .line 800
    :cond_15
    iput-byte v13, v0, Lorg/mozilla/universalchardet/UniversalDetector;->f:B

    .line 801
    .line 802
    :cond_16
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 803
    .line 804
    move/from16 v8, v16

    .line 805
    .line 806
    move/from16 v9, v17

    .line 807
    .line 808
    const/4 v4, 0x1

    .line 809
    const/4 v6, 0x0

    .line 810
    goto/16 :goto_2

    .line 811
    .line 812
    :cond_17
    move/from16 v16, v8

    .line 813
    .line 814
    move/from16 v17, v9

    .line 815
    .line 816
    iget-object v4, v0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 817
    .line 818
    sget-object v5, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->f:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 819
    .line 820
    if-ne v4, v10, :cond_1a

    .line 821
    .line 822
    iget-object v3, v0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    .line 823
    .line 824
    if-nez v3, :cond_18

    .line 825
    .line 826
    new-instance v3, Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    .line 827
    .line 828
    invoke-direct {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 829
    .line 830
    .line 831
    const/4 v6, 0x4

    .line 832
    new-array v4, v6, [Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 833
    .line 834
    iput-object v4, v3, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->b:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 835
    .line 836
    new-instance v6, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 837
    .line 838
    sget-object v7, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->f:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    .line 839
    .line 840
    invoke-direct {v6, v7}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 841
    .line 842
    .line 843
    const/16 v19, 0x0

    .line 844
    .line 845
    aput-object v6, v4, v19

    .line 846
    .line 847
    new-instance v6, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 848
    .line 849
    sget-object v7, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->g:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    .line 850
    .line 851
    invoke-direct {v6, v7}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 852
    .line 853
    .line 854
    const/16 v18, 0x1

    .line 855
    .line 856
    aput-object v6, v4, v18

    .line 857
    .line 858
    new-instance v6, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 859
    .line 860
    sget-object v7, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->h:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    .line 861
    .line 862
    invoke-direct {v6, v7}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 863
    .line 864
    .line 865
    aput-object v6, v4, v17

    .line 866
    .line 867
    new-instance v6, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 868
    .line 869
    sget-object v7, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->i:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    .line 870
    .line 871
    invoke-direct {v6, v7}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    .line 872
    .line 873
    .line 874
    aput-object v6, v4, v16

    .line 875
    .line 876
    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->d()V

    .line 877
    .line 878
    .line 879
    iput-object v3, v0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    .line 880
    .line 881
    :cond_18
    iget-object v3, v0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    .line 882
    .line 883
    invoke-virtual {v3, v1, v2}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    if-eq v1, v5, :cond_19

    .line 888
    .line 889
    iget-object v1, v0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    .line 890
    .line 891
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 892
    .line 893
    .line 894
    :cond_19
    const/4 v12, 0x1

    .line 895
    iput-boolean v12, v0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    .line 896
    .line 897
    iget-object v1, v0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    .line 898
    .line 899
    iget-object v1, v1, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->e:Ljava/lang/String;

    .line 900
    .line 901
    iput-object v1, v0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    .line 902
    .line 903
    return-void

    .line 904
    :cond_1a
    const/16 v19, 0x0

    .line 905
    .line 906
    if-ne v4, v12, :cond_1c

    .line 907
    .line 908
    move/from16 v6, v19

    .line 909
    .line 910
    :goto_8
    array-length v4, v3

    .line 911
    if-ge v6, v4, :cond_1c

    .line 912
    .line 913
    aget-object v4, v3, v6

    .line 914
    .line 915
    invoke-virtual {v4, v1, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->c([BI)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 916
    .line 917
    .line 918
    move-result-object v4

    .line 919
    if-ne v4, v5, :cond_1b

    .line 920
    .line 921
    const/4 v12, 0x1

    .line 922
    iput-boolean v12, v0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    .line 923
    .line 924
    aget-object v1, v3, v6

    .line 925
    .line 926
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    iput-object v1, v0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    .line 931
    .line 932
    return-void

    .line 933
    :cond_1b
    const/4 v12, 0x1

    .line 934
    add-int/lit8 v6, v6, 0x1

    .line 935
    .line 936
    goto :goto_8

    .line 937
    :cond_1c
    :goto_9
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    .line 11
    .line 12
    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->c:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 13
    .line 14
    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 15
    .line 16
    iput-byte v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:B

    .line 17
    .line 18
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->d()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 26
    .line 27
    array-length v2, v1

    .line 28
    if-ge v0, v2, :cond_2

    .line 29
    .line 30
    aget-object v1, v1, v0

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->d()V

    .line 35
    .line 36
    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method
