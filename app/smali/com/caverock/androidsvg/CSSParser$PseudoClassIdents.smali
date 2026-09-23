.class final enum Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PseudoClassIdents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final enum f:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final enum g:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final enum h:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

.field public static final i:Ljava/util/HashMap;

.field public static final synthetic j:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;


# direct methods
.method static constructor <clinit>()V
    .locals 49

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 2
    .line 3
    const-string v1, "target"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 10
    .line 11
    const-string v3, "root"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 18
    .line 19
    const-string v5, "nth_child"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 26
    .line 27
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 28
    .line 29
    const-string v7, "nth_last_child"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 36
    .line 37
    const-string v9, "nth_of_type"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sput-object v7, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->f:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 44
    .line 45
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 46
    .line 47
    const-string v11, "nth_last_of_type"

    .line 48
    .line 49
    const/4 v12, 0x5

    .line 50
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    sput-object v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->g:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 54
    .line 55
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 56
    .line 57
    const-string v13, "first_child"

    .line 58
    .line 59
    const/4 v14, 0x6

    .line 60
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    new-instance v13, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 64
    .line 65
    const-string v15, "last_child"

    .line 66
    .line 67
    move/from16 v16, v2

    .line 68
    .line 69
    const/4 v2, 0x7

    .line 70
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v15, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 74
    .line 75
    move/from16 v17, v2

    .line 76
    .line 77
    const-string v2, "first_of_type"

    .line 78
    .line 79
    move/from16 v18, v4

    .line 80
    .line 81
    const/16 v4, 0x8

    .line 82
    .line 83
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 87
    .line 88
    move/from16 v19, v4

    .line 89
    .line 90
    const-string v4, "last_of_type"

    .line 91
    .line 92
    move/from16 v20, v6

    .line 93
    .line 94
    const/16 v6, 0x9

    .line 95
    .line 96
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 100
    .line 101
    move/from16 v21, v6

    .line 102
    .line 103
    const-string v6, "only_child"

    .line 104
    .line 105
    move/from16 v22, v8

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 113
    .line 114
    move/from16 v23, v8

    .line 115
    .line 116
    const-string v8, "only_of_type"

    .line 117
    .line 118
    move/from16 v24, v10

    .line 119
    .line 120
    const/16 v10, 0xb

    .line 121
    .line 122
    invoke-direct {v6, v8, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 126
    .line 127
    move/from16 v25, v10

    .line 128
    .line 129
    const-string v10, "empty"

    .line 130
    .line 131
    move/from16 v26, v12

    .line 132
    .line 133
    const/16 v12, 0xc

    .line 134
    .line 135
    invoke-direct {v8, v10, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 139
    .line 140
    move/from16 v27, v12

    .line 141
    .line 142
    const-string v12, "not"

    .line 143
    .line 144
    move/from16 v28, v14

    .line 145
    .line 146
    const/16 v14, 0xd

    .line 147
    .line 148
    invoke-direct {v10, v12, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    new-instance v12, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 152
    .line 153
    move/from16 v29, v14

    .line 154
    .line 155
    const-string v14, "lang"

    .line 156
    .line 157
    move-object/from16 v30, v0

    .line 158
    .line 159
    const/16 v0, 0xe

    .line 160
    .line 161
    invoke-direct {v12, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    new-instance v14, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 165
    .line 166
    move/from16 v31, v0

    .line 167
    .line 168
    const-string v0, "link"

    .line 169
    .line 170
    move-object/from16 v32, v1

    .line 171
    .line 172
    const/16 v1, 0xf

    .line 173
    .line 174
    invoke-direct {v14, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 178
    .line 179
    move/from16 v33, v1

    .line 180
    .line 181
    const-string v1, "visited"

    .line 182
    .line 183
    move-object/from16 v34, v2

    .line 184
    .line 185
    const/16 v2, 0x10

    .line 186
    .line 187
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 191
    .line 192
    move/from16 v35, v2

    .line 193
    .line 194
    const-string v2, "hover"

    .line 195
    .line 196
    move-object/from16 v36, v0

    .line 197
    .line 198
    const/16 v0, 0x11

    .line 199
    .line 200
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 204
    .line 205
    move/from16 v37, v0

    .line 206
    .line 207
    const-string v0, "active"

    .line 208
    .line 209
    move-object/from16 v38, v1

    .line 210
    .line 211
    const/16 v1, 0x12

    .line 212
    .line 213
    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 217
    .line 218
    move/from16 v39, v1

    .line 219
    .line 220
    const-string v1, "focus"

    .line 221
    .line 222
    move-object/from16 v40, v2

    .line 223
    .line 224
    const/16 v2, 0x13

    .line 225
    .line 226
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 230
    .line 231
    move/from16 v41, v2

    .line 232
    .line 233
    const-string v2, "enabled"

    .line 234
    .line 235
    move-object/from16 v42, v0

    .line 236
    .line 237
    const/16 v0, 0x14

    .line 238
    .line 239
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 243
    .line 244
    move/from16 v43, v0

    .line 245
    .line 246
    const-string v0, "disabled"

    .line 247
    .line 248
    move-object/from16 v44, v1

    .line 249
    .line 250
    const/16 v1, 0x15

    .line 251
    .line 252
    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 256
    .line 257
    move/from16 v45, v1

    .line 258
    .line 259
    const-string v1, "checked"

    .line 260
    .line 261
    move-object/from16 v46, v2

    .line 262
    .line 263
    const/16 v2, 0x16

    .line 264
    .line 265
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 269
    .line 270
    const-string v2, "indeterminate"

    .line 271
    .line 272
    move-object/from16 v47, v0

    .line 273
    .line 274
    const/16 v0, 0x17

    .line 275
    .line 276
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 280
    .line 281
    const-string v2, "UNSUPPORTED"

    .line 282
    .line 283
    move-object/from16 v48, v1

    .line 284
    .line 285
    const/16 v1, 0x18

    .line 286
    .line 287
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    sput-object v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->h:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 291
    .line 292
    const/16 v1, 0x19

    .line 293
    .line 294
    new-array v1, v1, [Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 295
    .line 296
    aput-object v30, v1, v16

    .line 297
    .line 298
    aput-object v32, v1, v18

    .line 299
    .line 300
    aput-object v3, v1, v20

    .line 301
    .line 302
    aput-object v5, v1, v22

    .line 303
    .line 304
    aput-object v7, v1, v24

    .line 305
    .line 306
    aput-object v9, v1, v26

    .line 307
    .line 308
    aput-object v11, v1, v28

    .line 309
    .line 310
    aput-object v13, v1, v17

    .line 311
    .line 312
    aput-object v15, v1, v19

    .line 313
    .line 314
    aput-object v34, v1, v21

    .line 315
    .line 316
    aput-object v4, v1, v23

    .line 317
    .line 318
    aput-object v6, v1, v25

    .line 319
    .line 320
    aput-object v8, v1, v27

    .line 321
    .line 322
    aput-object v10, v1, v29

    .line 323
    .line 324
    aput-object v12, v1, v31

    .line 325
    .line 326
    aput-object v14, v1, v33

    .line 327
    .line 328
    aput-object v36, v1, v35

    .line 329
    .line 330
    aput-object v38, v1, v37

    .line 331
    .line 332
    aput-object v40, v1, v39

    .line 333
    .line 334
    aput-object v42, v1, v41

    .line 335
    .line 336
    aput-object v44, v1, v43

    .line 337
    .line 338
    aput-object v46, v1, v45

    .line 339
    .line 340
    const/16 v2, 0x16

    .line 341
    .line 342
    aput-object v47, v1, v2

    .line 343
    .line 344
    const/16 v2, 0x17

    .line 345
    .line 346
    aput-object v48, v1, v2

    .line 347
    .line 348
    const/16 v2, 0x18

    .line 349
    .line 350
    aput-object v0, v1, v2

    .line 351
    .line 352
    sput-object v1, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->j:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 353
    .line 354
    new-instance v0, Ljava/util/HashMap;

    .line 355
    .line 356
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    .line 358
    .line 359
    sput-object v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->i:Ljava/util/HashMap;

    .line 360
    .line 361
    invoke-static {}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->values()[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    array-length v1, v0

    .line 366
    move/from16 v2, v16

    .line 367
    .line 368
    :goto_0
    if-ge v2, v1, :cond_1

    .line 369
    .line 370
    aget-object v3, v0, v2

    .line 371
    .line 372
    sget-object v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->h:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 373
    .line 374
    if-eq v3, v4, :cond_0

    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    const/16 v5, 0x5f

    .line 381
    .line 382
    const/16 v6, 0x2d

    .line 383
    .line 384
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    sget-object v5, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->i:Ljava/util/HashMap;

    .line 389
    .line 390
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 394
    .line 395
    goto :goto_0

    .line 396
    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
    .locals 1

    .line 1
    const-class v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
    .locals 1

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->j:[Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 8
    .line 9
    return-object v0
.end method
