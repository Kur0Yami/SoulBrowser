.class public final enum Landroidx/core/graphics/BlendModeCompat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/core/graphics/BlendModeCompat;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Landroidx/core/graphics/BlendModeCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 53

    .line 1
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 2
    .line 3
    const-string v1, "CLEAR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 10
    .line 11
    const-string v3, "SRC"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroidx/core/graphics/BlendModeCompat;

    .line 18
    .line 19
    const-string v5, "DST"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Landroidx/core/graphics/BlendModeCompat;

    .line 26
    .line 27
    const-string v7, "SRC_OVER"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Landroidx/core/graphics/BlendModeCompat;

    .line 34
    .line 35
    const-string v9, "DST_OVER"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Landroidx/core/graphics/BlendModeCompat;

    .line 42
    .line 43
    const-string v11, "SRC_IN"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Landroidx/core/graphics/BlendModeCompat;

    .line 50
    .line 51
    const-string v13, "DST_IN"

    .line 52
    .line 53
    const/4 v14, 0x6

    .line 54
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    new-instance v13, Landroidx/core/graphics/BlendModeCompat;

    .line 58
    .line 59
    const-string v15, "SRC_OUT"

    .line 60
    .line 61
    move/from16 v16, v2

    .line 62
    .line 63
    const/4 v2, 0x7

    .line 64
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    .line 68
    .line 69
    move/from16 v17, v2

    .line 70
    .line 71
    const-string v2, "DST_OUT"

    .line 72
    .line 73
    move/from16 v18, v4

    .line 74
    .line 75
    const/16 v4, 0x8

    .line 76
    .line 77
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 81
    .line 82
    move/from16 v19, v4

    .line 83
    .line 84
    const-string v4, "SRC_ATOP"

    .line 85
    .line 86
    move/from16 v20, v6

    .line 87
    .line 88
    const/16 v6, 0x9

    .line 89
    .line 90
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    .line 94
    .line 95
    move/from16 v21, v6

    .line 96
    .line 97
    const-string v6, "DST_ATOP"

    .line 98
    .line 99
    move/from16 v22, v8

    .line 100
    .line 101
    const/16 v8, 0xa

    .line 102
    .line 103
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    .line 107
    .line 108
    move/from16 v23, v8

    .line 109
    .line 110
    const-string v8, "XOR"

    .line 111
    .line 112
    move/from16 v24, v10

    .line 113
    .line 114
    const/16 v10, 0xb

    .line 115
    .line 116
    invoke-direct {v6, v8, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    new-instance v8, Landroidx/core/graphics/BlendModeCompat;

    .line 120
    .line 121
    move/from16 v25, v10

    .line 122
    .line 123
    const-string v10, "PLUS"

    .line 124
    .line 125
    move/from16 v26, v12

    .line 126
    .line 127
    const/16 v12, 0xc

    .line 128
    .line 129
    invoke-direct {v8, v10, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    new-instance v10, Landroidx/core/graphics/BlendModeCompat;

    .line 133
    .line 134
    move/from16 v27, v12

    .line 135
    .line 136
    const-string v12, "MODULATE"

    .line 137
    .line 138
    move/from16 v28, v14

    .line 139
    .line 140
    const/16 v14, 0xd

    .line 141
    .line 142
    invoke-direct {v10, v12, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    new-instance v12, Landroidx/core/graphics/BlendModeCompat;

    .line 146
    .line 147
    move/from16 v29, v14

    .line 148
    .line 149
    const-string v14, "SCREEN"

    .line 150
    .line 151
    move-object/from16 v30, v0

    .line 152
    .line 153
    const/16 v0, 0xe

    .line 154
    .line 155
    invoke-direct {v12, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    .line 159
    .line 160
    move/from16 v31, v0

    .line 161
    .line 162
    const-string v0, "OVERLAY"

    .line 163
    .line 164
    move-object/from16 v32, v1

    .line 165
    .line 166
    const/16 v1, 0xf

    .line 167
    .line 168
    invoke-direct {v14, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 172
    .line 173
    move/from16 v33, v1

    .line 174
    .line 175
    const-string v1, "DARKEN"

    .line 176
    .line 177
    move-object/from16 v34, v2

    .line 178
    .line 179
    const/16 v2, 0x10

    .line 180
    .line 181
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 185
    .line 186
    move/from16 v35, v2

    .line 187
    .line 188
    const-string v2, "LIGHTEN"

    .line 189
    .line 190
    move-object/from16 v36, v0

    .line 191
    .line 192
    const/16 v0, 0x11

    .line 193
    .line 194
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 198
    .line 199
    move/from16 v37, v0

    .line 200
    .line 201
    const-string v0, "COLOR_DODGE"

    .line 202
    .line 203
    move-object/from16 v38, v1

    .line 204
    .line 205
    const/16 v1, 0x12

    .line 206
    .line 207
    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 211
    .line 212
    move/from16 v39, v1

    .line 213
    .line 214
    const-string v1, "COLOR_BURN"

    .line 215
    .line 216
    move-object/from16 v40, v2

    .line 217
    .line 218
    const/16 v2, 0x13

    .line 219
    .line 220
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 224
    .line 225
    move/from16 v41, v2

    .line 226
    .line 227
    const-string v2, "HARD_LIGHT"

    .line 228
    .line 229
    move-object/from16 v42, v0

    .line 230
    .line 231
    const/16 v0, 0x14

    .line 232
    .line 233
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    .line 237
    .line 238
    move/from16 v43, v0

    .line 239
    .line 240
    const-string v0, "SOFT_LIGHT"

    .line 241
    .line 242
    move-object/from16 v44, v1

    .line 243
    .line 244
    const/16 v1, 0x15

    .line 245
    .line 246
    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 250
    .line 251
    move/from16 v45, v1

    .line 252
    .line 253
    const-string v1, "DIFFERENCE"

    .line 254
    .line 255
    move-object/from16 v46, v2

    .line 256
    .line 257
    const/16 v2, 0x16

    .line 258
    .line 259
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 263
    .line 264
    const-string v2, "EXCLUSION"

    .line 265
    .line 266
    move-object/from16 v47, v0

    .line 267
    .line 268
    const/16 v0, 0x17

    .line 269
    .line 270
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 274
    .line 275
    const-string v2, "MULTIPLY"

    .line 276
    .line 277
    move-object/from16 v48, v1

    .line 278
    .line 279
    const/16 v1, 0x18

    .line 280
    .line 281
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 285
    .line 286
    const-string v2, "HUE"

    .line 287
    .line 288
    move-object/from16 v49, v0

    .line 289
    .line 290
    const/16 v0, 0x19

    .line 291
    .line 292
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 296
    .line 297
    const-string v2, "SATURATION"

    .line 298
    .line 299
    move-object/from16 v50, v1

    .line 300
    .line 301
    const/16 v1, 0x1a

    .line 302
    .line 303
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    .line 307
    .line 308
    const-string v2, "COLOR"

    .line 309
    .line 310
    move-object/from16 v51, v0

    .line 311
    .line 312
    const/16 v0, 0x1b

    .line 313
    .line 314
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    .line 318
    .line 319
    const-string v2, "LUMINOSITY"

    .line 320
    .line 321
    move-object/from16 v52, v1

    .line 322
    .line 323
    const/16 v1, 0x1c

    .line 324
    .line 325
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 326
    .line 327
    .line 328
    const/16 v1, 0x1d

    .line 329
    .line 330
    new-array v1, v1, [Landroidx/core/graphics/BlendModeCompat;

    .line 331
    .line 332
    aput-object v30, v1, v16

    .line 333
    .line 334
    aput-object v32, v1, v18

    .line 335
    .line 336
    aput-object v3, v1, v20

    .line 337
    .line 338
    aput-object v5, v1, v22

    .line 339
    .line 340
    aput-object v7, v1, v24

    .line 341
    .line 342
    aput-object v9, v1, v26

    .line 343
    .line 344
    aput-object v11, v1, v28

    .line 345
    .line 346
    aput-object v13, v1, v17

    .line 347
    .line 348
    aput-object v15, v1, v19

    .line 349
    .line 350
    aput-object v34, v1, v21

    .line 351
    .line 352
    aput-object v4, v1, v23

    .line 353
    .line 354
    aput-object v6, v1, v25

    .line 355
    .line 356
    aput-object v8, v1, v27

    .line 357
    .line 358
    aput-object v10, v1, v29

    .line 359
    .line 360
    aput-object v12, v1, v31

    .line 361
    .line 362
    aput-object v14, v1, v33

    .line 363
    .line 364
    aput-object v36, v1, v35

    .line 365
    .line 366
    aput-object v38, v1, v37

    .line 367
    .line 368
    aput-object v40, v1, v39

    .line 369
    .line 370
    aput-object v42, v1, v41

    .line 371
    .line 372
    aput-object v44, v1, v43

    .line 373
    .line 374
    aput-object v46, v1, v45

    .line 375
    .line 376
    const/16 v2, 0x16

    .line 377
    .line 378
    aput-object v47, v1, v2

    .line 379
    .line 380
    const/16 v2, 0x17

    .line 381
    .line 382
    aput-object v48, v1, v2

    .line 383
    .line 384
    const/16 v2, 0x18

    .line 385
    .line 386
    aput-object v49, v1, v2

    .line 387
    .line 388
    const/16 v2, 0x19

    .line 389
    .line 390
    aput-object v50, v1, v2

    .line 391
    .line 392
    const/16 v2, 0x1a

    .line 393
    .line 394
    aput-object v51, v1, v2

    .line 395
    .line 396
    const/16 v2, 0x1b

    .line 397
    .line 398
    aput-object v52, v1, v2

    .line 399
    .line 400
    const/16 v2, 0x1c

    .line 401
    .line 402
    aput-object v0, v1, v2

    .line 403
    .line 404
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->c:[Landroidx/core/graphics/BlendModeCompat;

    .line 405
    .line 406
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    .line 1
    const-class v0, Landroidx/core/graphics/BlendModeCompat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/core/graphics/BlendModeCompat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/core/graphics/BlendModeCompat;
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->c:[Landroidx/core/graphics/BlendModeCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/core/graphics/BlendModeCompat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/core/graphics/BlendModeCompat;

    .line 8
    .line 9
    return-object v0
.end method
