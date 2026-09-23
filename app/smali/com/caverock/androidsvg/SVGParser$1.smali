.class synthetic Lcom/caverock/androidsvg/SVGParser$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 1
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->values()[Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 9
    .line 10
    const/16 v1, 0x52

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    :try_start_0
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 14
    .line 15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    const/16 v0, 0x53

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    :try_start_1
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 21
    .line 22
    sget-object v5, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 23
    .line 24
    aput v3, v4, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    .line 26
    :catch_1
    const/16 v4, 0x51

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    :try_start_2
    sget-object v6, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 30
    .line 31
    sget-object v7, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 32
    .line 33
    aput v5, v6, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 34
    .line 35
    :catch_2
    const/4 v6, 0x4

    .line 36
    const/16 v7, 0x19

    .line 37
    .line 38
    :try_start_3
    sget-object v8, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 39
    .line 40
    sget-object v9, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 41
    .line 42
    aput v6, v8, v7
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 43
    .line 44
    :catch_3
    const/16 v8, 0x4f

    .line 45
    .line 46
    const/4 v9, 0x5

    .line 47
    :try_start_4
    sget-object v10, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 48
    .line 49
    sget-object v11, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 50
    .line 51
    aput v9, v10, v8
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 52
    .line 53
    :catch_4
    const/4 v10, 0x6

    .line 54
    const/16 v11, 0x1a

    .line 55
    .line 56
    :try_start_5
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 57
    .line 58
    sget-object v13, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 59
    .line 60
    aput v10, v12, v11
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 61
    .line 62
    :catch_5
    const/16 v12, 0x30

    .line 63
    .line 64
    const/4 v13, 0x7

    .line 65
    :try_start_6
    sget-object v14, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 66
    .line 67
    sget-object v15, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 68
    .line 69
    aput v13, v14, v12
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 70
    .line 71
    :catch_6
    const/16 v14, 0x8

    .line 72
    .line 73
    const/16 v15, 0xd

    .line 74
    .line 75
    :try_start_7
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 76
    .line 77
    sget-object v17, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 78
    .line 79
    aput v14, v16, v15
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 80
    .line 81
    :catch_7
    const/16 v16, 0x2b

    .line 82
    .line 83
    const/16 v17, 0x9

    .line 84
    .line 85
    :try_start_8
    sget-object v18, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 86
    .line 87
    sget-object v19, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 88
    .line 89
    aput v17, v18, v16
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 90
    .line 91
    :catch_8
    const/16 v18, 0x38

    .line 92
    .line 93
    const/16 v19, 0xa

    .line 94
    .line 95
    :try_start_9
    sget-object v20, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 96
    .line 97
    sget-object v21, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 98
    .line 99
    aput v19, v20, v18
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 100
    .line 101
    :catch_9
    const/16 v20, 0x39

    .line 102
    .line 103
    const/16 v21, 0xb

    .line 104
    .line 105
    :try_start_a
    sget-object v22, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 106
    .line 107
    sget-object v23, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 108
    .line 109
    aput v21, v22, v20
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 110
    .line 111
    :catch_a
    const/16 v22, 0xc

    .line 112
    .line 113
    :try_start_b
    sget-object v23, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 114
    .line 115
    sget-object v24, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 116
    .line 117
    aput v22, v23, v10
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 118
    .line 119
    :catch_b
    :try_start_c
    sget-object v23, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 120
    .line 121
    sget-object v24, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 122
    .line 123
    aput v15, v23, v13
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 124
    .line 125
    :catch_c
    const/16 v23, 0x31

    .line 126
    .line 127
    const/16 v24, 0xe

    .line 128
    .line 129
    :try_start_d
    sget-object v25, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 130
    .line 131
    sget-object v26, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 132
    .line 133
    aput v24, v25, v23
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 134
    .line 135
    :catch_d
    const/16 v25, 0x54

    .line 136
    .line 137
    const/16 v26, 0xf

    .line 138
    .line 139
    :try_start_e
    sget-object v27, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 140
    .line 141
    sget-object v28, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 142
    .line 143
    aput v26, v27, v25
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 144
    .line 145
    :catch_e
    const/16 v27, 0x55

    .line 146
    .line 147
    const/16 v28, 0x10

    .line 148
    .line 149
    :try_start_f
    sget-object v29, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 150
    .line 151
    sget-object v30, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 152
    .line 153
    aput v28, v29, v27
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 154
    .line 155
    :catch_f
    const/16 v29, 0x56

    .line 156
    .line 157
    const/16 v30, 0x11

    .line 158
    .line 159
    :try_start_10
    sget-object v31, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 160
    .line 161
    sget-object v32, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 162
    .line 163
    aput v30, v31, v29
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 164
    .line 165
    :catch_10
    const/16 v31, 0x57

    .line 166
    .line 167
    const/16 v32, 0x12

    .line 168
    .line 169
    :try_start_11
    sget-object v33, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 170
    .line 171
    sget-object v34, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 172
    .line 173
    aput v32, v33, v31
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 174
    .line 175
    :catch_11
    const/16 v33, 0x13

    .line 176
    .line 177
    :try_start_12
    sget-object v34, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 178
    .line 179
    sget-object v35, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 180
    .line 181
    aput v33, v34, v17
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 182
    .line 183
    :catch_12
    const/16 v34, 0x14

    .line 184
    .line 185
    :try_start_13
    sget-object v35, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 186
    .line 187
    sget-object v36, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 188
    .line 189
    aput v34, v35, v19
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 190
    .line 191
    :catch_13
    const/16 v35, 0x15

    .line 192
    .line 193
    :try_start_14
    sget-object v36, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 194
    .line 195
    sget-object v37, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 196
    .line 197
    const/16 v37, 0x34

    .line 198
    .line 199
    aput v35, v36, v37
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    .line 200
    .line 201
    :catch_14
    const/16 v36, 0x16

    .line 202
    .line 203
    :try_start_15
    sget-object v37, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 204
    .line 205
    sget-object v38, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 206
    .line 207
    const/16 v38, 0x35

    .line 208
    .line 209
    aput v36, v37, v38
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 210
    .line 211
    :catch_15
    const/16 v37, 0x17

    .line 212
    .line 213
    :try_start_16
    sget-object v38, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 214
    .line 215
    sget-object v39, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 216
    .line 217
    const/16 v39, 0x49

    .line 218
    .line 219
    aput v37, v38, v39
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 220
    .line 221
    :catch_16
    const/16 v38, 0x18

    .line 222
    .line 223
    :try_start_17
    sget-object v39, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 224
    .line 225
    sget-object v40, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 226
    .line 227
    const/16 v40, 0x36

    .line 228
    .line 229
    aput v38, v39, v40
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    .line 230
    .line 231
    :catch_17
    :try_start_18
    sget-object v39, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 232
    .line 233
    sget-object v40, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 234
    .line 235
    const/16 v40, 0x37

    .line 236
    .line 237
    aput v7, v39, v40
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 238
    .line 239
    :catch_18
    :try_start_19
    sget-object v39, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 240
    .line 241
    sget-object v40, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 242
    .line 243
    const/16 v40, 0x32

    .line 244
    .line 245
    aput v11, v39, v40
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 246
    .line 247
    :catch_19
    const/16 v39, 0x1b

    .line 248
    .line 249
    :try_start_1a
    sget-object v40, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 250
    .line 251
    sget-object v41, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 252
    .line 253
    const/16 v41, 0x33

    .line 254
    .line 255
    aput v39, v40, v41
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 256
    .line 257
    :catch_1a
    const/16 v40, 0x1c

    .line 258
    .line 259
    :try_start_1b
    sget-object v41, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 260
    .line 261
    sget-object v42, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 262
    .line 263
    const/16 v42, 0x22

    .line 264
    .line 265
    aput v40, v41, v42
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 266
    .line 267
    :catch_1b
    const/16 v41, 0x1d

    .line 268
    .line 269
    :try_start_1c
    sget-object v42, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 270
    .line 271
    sget-object v43, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 272
    .line 273
    const/16 v43, 0x20

    .line 274
    .line 275
    aput v41, v42, v43
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 276
    .line 277
    :catch_1c
    const/16 v42, 0x1e

    .line 278
    .line 279
    :try_start_1d
    sget-object v43, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 280
    .line 281
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 282
    .line 283
    const/16 v44, 0x21

    .line 284
    .line 285
    aput v42, v43, v44
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 286
    .line 287
    :catch_1d
    const/16 v43, 0x1f

    .line 288
    .line 289
    :try_start_1e
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 290
    .line 291
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 292
    .line 293
    const/16 v45, 0x29

    .line 294
    .line 295
    aput v43, v44, v45
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 296
    .line 297
    :catch_1e
    :try_start_1f
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 298
    .line 299
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 300
    .line 301
    const/16 v45, 0x20

    .line 302
    .line 303
    aput v45, v44, v38
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 304
    .line 305
    :catch_1f
    :try_start_20
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 306
    .line 307
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 308
    .line 309
    const/16 v45, 0x21

    .line 310
    .line 311
    aput v45, v44, v37
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    .line 312
    .line 313
    :catch_20
    :try_start_21
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 314
    .line 315
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 316
    .line 317
    const/16 v45, 0x3c

    .line 318
    .line 319
    const/16 v46, 0x22

    .line 320
    .line 321
    aput v46, v44, v45
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    .line 322
    .line 323
    :catch_21
    :try_start_22
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 324
    .line 325
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 326
    .line 327
    const/16 v45, 0x23

    .line 328
    .line 329
    aput v45, v44, v21
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    .line 330
    .line 331
    :catch_22
    :try_start_23
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 332
    .line 333
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 334
    .line 335
    const/16 v45, 0x24

    .line 336
    .line 337
    aput v45, v44, v22
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    .line 338
    .line 339
    :catch_23
    :try_start_24
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 340
    .line 341
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 342
    .line 343
    const/16 v45, 0x27

    .line 344
    .line 345
    const/16 v46, 0x25

    .line 346
    .line 347
    aput v46, v44, v45
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    .line 348
    .line 349
    :catch_24
    :try_start_25
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 350
    .line 351
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 352
    .line 353
    const/16 v45, 0x26

    .line 354
    .line 355
    aput v45, v44, v5
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    .line 356
    .line 357
    :catch_25
    :try_start_26
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 358
    .line 359
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 360
    .line 361
    const/16 v45, 0x3d

    .line 362
    .line 363
    const/16 v46, 0x27

    .line 364
    .line 365
    aput v46, v44, v45
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    .line 366
    .line 367
    :catch_26
    :try_start_27
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 368
    .line 369
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 370
    .line 371
    const/16 v45, 0x2e

    .line 372
    .line 373
    const/16 v46, 0x28

    .line 374
    .line 375
    aput v46, v44, v45
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    .line 376
    .line 377
    :catch_27
    :try_start_28
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 378
    .line 379
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 380
    .line 381
    const/16 v45, 0x2c

    .line 382
    .line 383
    const/16 v46, 0x29

    .line 384
    .line 385
    aput v46, v44, v45
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    .line 386
    .line 387
    :catch_28
    :try_start_29
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 388
    .line 389
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 390
    .line 391
    const/16 v45, 0x2d

    .line 392
    .line 393
    const/16 v46, 0x2a

    .line 394
    .line 395
    aput v46, v44, v45
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    .line 396
    .line 397
    :catch_29
    :try_start_2a
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 398
    .line 399
    sget-object v45, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 400
    .line 401
    const/16 v45, 0x25

    .line 402
    .line 403
    aput v16, v44, v45
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    .line 404
    .line 405
    :catch_2a
    :try_start_2b
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 406
    .line 407
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 408
    .line 409
    const/16 v44, 0x24

    .line 410
    .line 411
    const/16 v45, 0x2c

    .line 412
    .line 413
    aput v45, v16, v44
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    .line 414
    .line 415
    :catch_2b
    :try_start_2c
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 416
    .line 417
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 418
    .line 419
    const/16 v44, 0x48

    .line 420
    .line 421
    const/16 v45, 0x2d

    .line 422
    .line 423
    aput v45, v16, v44
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    .line 424
    .line 425
    :catch_2c
    :try_start_2d
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 426
    .line 427
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 428
    .line 429
    const/16 v44, 0x0

    .line 430
    .line 431
    const/16 v45, 0x2e

    .line 432
    .line 433
    aput v45, v16, v44
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    .line 434
    .line 435
    :catch_2d
    :try_start_2e
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 436
    .line 437
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 438
    .line 439
    const/16 v44, 0x2f

    .line 440
    .line 441
    aput v44, v16, v26
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    .line 442
    .line 443
    :catch_2e
    :try_start_2f
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 444
    .line 445
    sget-object v44, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 446
    .line 447
    aput v12, v16, v28
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    .line 448
    .line 449
    :catch_2f
    :try_start_30
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 450
    .line 451
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 452
    .line 453
    aput v23, v12, v30
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    .line 454
    .line 455
    :catch_30
    :try_start_31
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 456
    .line 457
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 458
    .line 459
    const/16 v16, 0x40

    .line 460
    .line 461
    const/16 v23, 0x32

    .line 462
    .line 463
    aput v23, v12, v16
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    .line 464
    .line 465
    :catch_31
    :try_start_32
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 466
    .line 467
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 468
    .line 469
    const/16 v16, 0x46

    .line 470
    .line 471
    const/16 v23, 0x33

    .line 472
    .line 473
    aput v23, v12, v16
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    .line 474
    .line 475
    :catch_32
    :try_start_33
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 476
    .line 477
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 478
    .line 479
    const/16 v16, 0x47

    .line 480
    .line 481
    const/16 v23, 0x34

    .line 482
    .line 483
    aput v23, v12, v16
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    .line 484
    .line 485
    :catch_33
    :try_start_34
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 486
    .line 487
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 488
    .line 489
    const/16 v16, 0x43

    .line 490
    .line 491
    const/16 v23, 0x35

    .line 492
    .line 493
    aput v23, v12, v16
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    .line 494
    .line 495
    :catch_34
    :try_start_35
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 496
    .line 497
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 498
    .line 499
    const/16 v16, 0x44

    .line 500
    .line 501
    const/16 v23, 0x36

    .line 502
    .line 503
    aput v23, v12, v16
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    .line 504
    .line 505
    :catch_35
    :try_start_36
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 506
    .line 507
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 508
    .line 509
    const/16 v16, 0x45

    .line 510
    .line 511
    const/16 v23, 0x37

    .line 512
    .line 513
    aput v23, v12, v16
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    .line 514
    .line 515
    :catch_36
    :try_start_37
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 516
    .line 517
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 518
    .line 519
    const/16 v16, 0x41

    .line 520
    .line 521
    aput v18, v12, v16
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    .line 522
    .line 523
    :catch_37
    :try_start_38
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 524
    .line 525
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 526
    .line 527
    const/16 v16, 0x42

    .line 528
    .line 529
    aput v20, v12, v16
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    .line 530
    .line 531
    :catch_38
    :try_start_39
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 532
    .line 533
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 534
    .line 535
    const/16 v16, 0x28

    .line 536
    .line 537
    const/16 v18, 0x3a

    .line 538
    .line 539
    aput v18, v12, v16
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    .line 540
    .line 541
    :catch_39
    :try_start_3a
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 542
    .line 543
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 544
    .line 545
    const/16 v16, 0x3b

    .line 546
    .line 547
    aput v16, v12, v9
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    .line 548
    .line 549
    :catch_3a
    :try_start_3b
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 550
    .line 551
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 552
    .line 553
    const/16 v16, 0x3c

    .line 554
    .line 555
    aput v16, v12, v32
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    .line 556
    .line 557
    :catch_3b
    :try_start_3c
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 558
    .line 559
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 560
    .line 561
    const/16 v16, 0x3d

    .line 562
    .line 563
    aput v16, v12, v33
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    .line 564
    .line 565
    :catch_3c
    :try_start_3d
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 566
    .line 567
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 568
    .line 569
    const/16 v16, 0x3e

    .line 570
    .line 571
    aput v16, v12, v34
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    .line 572
    .line 573
    :catch_3d
    :try_start_3e
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 574
    .line 575
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 576
    .line 577
    const/16 v16, 0x3f

    .line 578
    .line 579
    aput v16, v12, v35
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    .line 580
    .line 581
    :catch_3e
    :try_start_3f
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 582
    .line 583
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 584
    .line 585
    const/16 v16, 0x40

    .line 586
    .line 587
    aput v16, v12, v36
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    .line 588
    .line 589
    :catch_3f
    :try_start_40
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 590
    .line 591
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 592
    .line 593
    const/16 v16, 0x4b

    .line 594
    .line 595
    const/16 v18, 0x41

    .line 596
    .line 597
    aput v18, v12, v16
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    .line 598
    .line 599
    :catch_40
    :try_start_41
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 600
    .line 601
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 602
    .line 603
    const/16 v16, 0x42

    .line 604
    .line 605
    aput v16, v12, v14
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    .line 606
    .line 607
    :catch_41
    :try_start_42
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 608
    .line 609
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 610
    .line 611
    const/16 v16, 0x4a

    .line 612
    .line 613
    const/16 v18, 0x43

    .line 614
    .line 615
    aput v18, v12, v16
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    .line 616
    .line 617
    :catch_42
    :try_start_43
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 618
    .line 619
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 620
    .line 621
    const/16 v16, 0x2a

    .line 622
    .line 623
    const/16 v18, 0x44

    .line 624
    .line 625
    aput v18, v12, v16
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    .line 626
    .line 627
    :catch_43
    :try_start_44
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 628
    .line 629
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 630
    .line 631
    const/16 v16, 0x45

    .line 632
    .line 633
    aput v16, v12, v40
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    .line 634
    .line 635
    :catch_44
    :try_start_45
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 636
    .line 637
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 638
    .line 639
    const/16 v16, 0x46

    .line 640
    .line 641
    aput v16, v12, v41
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    .line 642
    .line 643
    :catch_45
    :try_start_46
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 644
    .line 645
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 646
    .line 647
    const/16 v16, 0x47

    .line 648
    .line 649
    aput v16, v12, v42
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    .line 650
    .line 651
    :catch_46
    :try_start_47
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 652
    .line 653
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 654
    .line 655
    const/16 v16, 0x48

    .line 656
    .line 657
    aput v16, v12, v43
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    .line 658
    .line 659
    :catch_47
    :try_start_48
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 660
    .line 661
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 662
    .line 663
    const/16 v16, 0x49

    .line 664
    .line 665
    aput v16, v12, v24
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    .line 666
    .line 667
    :catch_48
    :try_start_49
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 668
    .line 669
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 670
    .line 671
    const/16 v16, 0x5a

    .line 672
    .line 673
    const/16 v18, 0x4a

    .line 674
    .line 675
    aput v18, v12, v16
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    .line 676
    .line 677
    :catch_49
    :try_start_4a
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 678
    .line 679
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 680
    .line 681
    const/16 v16, 0x3e

    .line 682
    .line 683
    const/16 v18, 0x4b

    .line 684
    .line 685
    aput v18, v12, v16
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    .line 686
    .line 687
    :catch_4a
    :try_start_4b
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 688
    .line 689
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 690
    .line 691
    const/16 v16, 0x3f

    .line 692
    .line 693
    const/16 v18, 0x4c

    .line 694
    .line 695
    aput v18, v12, v16
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    .line 696
    .line 697
    :catch_4b
    :try_start_4c
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 698
    .line 699
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 700
    .line 701
    const/16 v16, 0x4d

    .line 702
    .line 703
    aput v16, v12, v2
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    .line 704
    .line 705
    :catch_4c
    :try_start_4d
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 706
    .line 707
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 708
    .line 709
    const/16 v16, 0x4e

    .line 710
    .line 711
    aput v16, v12, v3
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    .line 712
    .line 713
    :catch_4d
    :try_start_4e
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 714
    .line 715
    sget-object v16, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 716
    .line 717
    aput v8, v12, v6
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    .line 718
    .line 719
    :catch_4e
    :try_start_4f
    sget-object v8, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 720
    .line 721
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 722
    .line 723
    const/16 v12, 0x23

    .line 724
    .line 725
    const/16 v16, 0x50

    .line 726
    .line 727
    aput v16, v8, v12
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    .line 728
    .line 729
    :catch_4f
    :try_start_50
    sget-object v8, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 730
    .line 731
    sget-object v12, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 732
    .line 733
    const/16 v12, 0x3a

    .line 734
    .line 735
    aput v4, v8, v12
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    .line 736
    .line 737
    :catch_50
    :try_start_51
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 738
    .line 739
    sget-object v8, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 740
    .line 741
    const/16 v8, 0x3b

    .line 742
    .line 743
    aput v1, v4, v8
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    .line 744
    .line 745
    :catch_51
    :try_start_52
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 746
    .line 747
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 748
    .line 749
    const/16 v4, 0x58

    .line 750
    .line 751
    aput v0, v1, v4
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    .line 752
    .line 753
    :catch_52
    :try_start_53
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 754
    .line 755
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 756
    .line 757
    const/16 v1, 0x59

    .line 758
    .line 759
    aput v25, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    .line 760
    .line 761
    :catch_53
    :try_start_54
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 762
    .line 763
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 764
    .line 765
    const/16 v1, 0x4e

    .line 766
    .line 767
    aput v27, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    .line 768
    .line 769
    :catch_54
    :try_start_55
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 770
    .line 771
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 772
    .line 773
    aput v29, v0, v39
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    .line 774
    .line 775
    :catch_55
    :try_start_56
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 776
    .line 777
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 778
    .line 779
    const/16 v1, 0x50

    .line 780
    .line 781
    aput v31, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    .line 782
    .line 783
    :catch_56
    :try_start_57
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 784
    .line 785
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 786
    .line 787
    const/16 v1, 0x4d

    .line 788
    .line 789
    const/16 v4, 0x58

    .line 790
    .line 791
    aput v4, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    .line 792
    .line 793
    :catch_57
    :try_start_58
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->b:[I

    .line 794
    .line 795
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->c:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 796
    .line 797
    const/16 v1, 0x26

    .line 798
    .line 799
    const/16 v4, 0x59

    .line 800
    .line 801
    aput v4, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    .line 802
    .line 803
    :catch_58
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->values()[Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    array-length v0, v0

    .line 808
    new-array v0, v0, [I

    .line 809
    .line 810
    sput-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 811
    .line 812
    :try_start_59
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 813
    .line 814
    const/4 v1, 0x0

    .line 815
    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    .line 816
    .line 817
    :catch_59
    :try_start_5a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 818
    .line 819
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 820
    .line 821
    aput v3, v0, v13
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    .line 822
    .line 823
    :catch_5a
    :try_start_5b
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 824
    .line 825
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 826
    .line 827
    aput v5, v0, v2
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    .line 828
    .line 829
    :catch_5b
    :try_start_5c
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 830
    .line 831
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 832
    .line 833
    aput v6, v0, v6
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    .line 834
    .line 835
    :catch_5c
    :try_start_5d
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 836
    .line 837
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 838
    .line 839
    aput v9, v0, v41
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    .line 840
    .line 841
    :catch_5d
    :try_start_5e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 842
    .line 843
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 844
    .line 845
    aput v10, v0, v15
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    .line 846
    .line 847
    :catch_5e
    :try_start_5f
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 848
    .line 849
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 850
    .line 851
    aput v13, v0, v32
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    .line 852
    .line 853
    :catch_5f
    :try_start_60
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 854
    .line 855
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 856
    .line 857
    aput v14, v0, v3
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    .line 858
    .line 859
    :catch_60
    :try_start_61
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 860
    .line 861
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 862
    .line 863
    aput v17, v0, v10
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    .line 864
    .line 865
    :catch_61
    :try_start_62
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 866
    .line 867
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 868
    .line 869
    aput v19, v0, v17
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    .line 870
    .line 871
    :catch_62
    :try_start_63
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 872
    .line 873
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 874
    .line 875
    aput v21, v0, v28
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    .line 876
    .line 877
    :catch_63
    :try_start_64
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 878
    .line 879
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 880
    .line 881
    aput v22, v0, v26
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    .line 882
    .line 883
    :catch_64
    :try_start_65
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 884
    .line 885
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 886
    .line 887
    aput v15, v0, v38
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    .line 888
    .line 889
    :catch_65
    :try_start_66
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 890
    .line 891
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 892
    .line 893
    aput v24, v0, v40
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    .line 894
    .line 895
    :catch_66
    :try_start_67
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 896
    .line 897
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 898
    .line 899
    aput v26, v0, v39
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    .line 900
    .line 901
    :catch_67
    :try_start_68
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 902
    .line 903
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 904
    .line 905
    aput v28, v0, v36
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    .line 906
    .line 907
    :catch_68
    :try_start_69
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 908
    .line 909
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 910
    .line 911
    aput v30, v0, v37
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    .line 912
    .line 913
    :catch_69
    :try_start_6a
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 914
    .line 915
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 916
    .line 917
    aput v32, v0, v21
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    .line 918
    .line 919
    :catch_6a
    :try_start_6b
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 920
    .line 921
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 922
    .line 923
    aput v33, v0, v19
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    .line 924
    .line 925
    :catch_6b
    :try_start_6c
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 926
    .line 927
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 928
    .line 929
    aput v34, v0, v30
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    .line 930
    .line 931
    :catch_6c
    :try_start_6d
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 932
    .line 933
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 934
    .line 935
    aput v35, v0, v34
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    .line 936
    .line 937
    :catch_6d
    :try_start_6e
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 938
    .line 939
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 940
    .line 941
    aput v36, v0, v11
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    .line 942
    .line 943
    :catch_6e
    :try_start_6f
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 944
    .line 945
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 946
    .line 947
    aput v37, v0, v9
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    .line 948
    .line 949
    :catch_6f
    :try_start_70
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 950
    .line 951
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 952
    .line 953
    aput v38, v0, v5
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    .line 954
    .line 955
    :catch_70
    :try_start_71
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 956
    .line 957
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 958
    .line 959
    aput v7, v0, v7
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    .line 960
    .line 961
    :catch_71
    :try_start_72
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 962
    .line 963
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 964
    .line 965
    aput v11, v0, v24
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    .line 966
    .line 967
    :catch_72
    :try_start_73
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 968
    .line 969
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 970
    .line 971
    aput v39, v0, v14
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    .line 972
    .line 973
    :catch_73
    :try_start_74
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 974
    .line 975
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 976
    .line 977
    aput v40, v0, v42
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    .line 978
    .line 979
    :catch_74
    :try_start_75
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 980
    .line 981
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 982
    .line 983
    aput v41, v0, v22
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    .line 984
    .line 985
    :catch_75
    :try_start_76
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 986
    .line 987
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 988
    .line 989
    aput v42, v0, v35
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    .line 990
    .line 991
    :catch_76
    :try_start_77
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$1;->a:[I

    .line 992
    .line 993
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 994
    .line 995
    aput v43, v0, v33
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    .line 996
    .line 997
    :catch_77
    return-void
.end method
