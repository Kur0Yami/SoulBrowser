.class public Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;->c:Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/text/similarity/SimilarityInput;Lorg/apache/commons/text/similarity/SimilarityInput;)Ljava/lang/Double;
    .locals 20

    .line 1
    invoke-virtual/range {p1 .. p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    move-object/from16 v0, p1

    .line 15
    .line 16
    check-cast v0, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 17
    .line 18
    iget-object v3, v0, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a:Ljava/lang/CharSequence;

    .line 19
    .line 20
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    move-object/from16 v5, p2

    .line 25
    .line 26
    check-cast v5, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 27
    .line 28
    iget-object v6, v5, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a:Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-le v4, v7, :cond_1

    .line 35
    .line 36
    move-object/from16 v4, p1

    .line 37
    .line 38
    move-object/from16 v7, p2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object/from16 v7, p1

    .line 42
    .line 43
    move-object/from16 v4, p2

    .line 44
    .line 45
    :goto_0
    check-cast v4, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 46
    .line 47
    iget-object v8, v4, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a:Ljava/lang/CharSequence;

    .line 48
    .line 49
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    const/4 v10, 0x2

    .line 54
    div-int/2addr v9, v10

    .line 55
    const/4 v11, 0x1

    .line 56
    sub-int/2addr v9, v11

    .line 57
    const/4 v12, 0x0

    .line 58
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    check-cast v7, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 63
    .line 64
    iget-object v13, v7, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a:Ljava/lang/CharSequence;

    .line 65
    .line 66
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    new-array v14, v14, [I

    .line 71
    .line 72
    const/4 v15, -0x1

    .line 73
    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([II)V

    .line 74
    .line 75
    .line 76
    move-wide/from16 v16, v1

    .line 77
    .line 78
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    new-array v1, v1, [Z

    .line 83
    .line 84
    move/from16 p1, v10

    .line 85
    .line 86
    move/from16 p2, v11

    .line 87
    .line 88
    move v2, v12

    .line 89
    move v10, v2

    .line 90
    :goto_1
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-ge v2, v11, :cond_4

    .line 95
    .line 96
    invoke-virtual {v7, v2}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    sub-int v15, v2, v9

    .line 101
    .line 102
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    add-int v18, v2, v9

    .line 107
    .line 108
    move/from16 v19, v12

    .line 109
    .line 110
    add-int/lit8 v12, v18, 0x1

    .line 111
    .line 112
    move-object/from16 v18, v1

    .line 113
    .line 114
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    :goto_2
    if-ge v15, v1, :cond_3

    .line 123
    .line 124
    aget-boolean v12, v18, v15

    .line 125
    .line 126
    if-nez v12, :cond_2

    .line 127
    .line 128
    invoke-virtual {v4, v15}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_2

    .line 137
    .line 138
    aput v15, v14, v2

    .line 139
    .line 140
    aput-boolean p2, v18, v15

    .line 141
    .line 142
    add-int/lit8 v10, v10, 0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    move-object/from16 v1, v18

    .line 151
    .line 152
    move/from16 v12, v19

    .line 153
    .line 154
    const/4 v15, -0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_4
    move-object/from16 v18, v1

    .line 157
    .line 158
    move/from16 v19, v12

    .line 159
    .line 160
    new-array v1, v10, [Ljava/lang/Object;

    .line 161
    .line 162
    new-array v2, v10, [Ljava/lang/Object;

    .line 163
    .line 164
    move/from16 v9, v19

    .line 165
    .line 166
    move v11, v9

    .line 167
    :goto_4
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-ge v9, v12, :cond_6

    .line 172
    .line 173
    aget v12, v14, v9

    .line 174
    .line 175
    const/4 v15, -0x1

    .line 176
    if-eq v12, v15, :cond_5

    .line 177
    .line 178
    invoke-virtual {v7, v9}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    aput-object v12, v1, v11

    .line 183
    .line 184
    add-int/lit8 v11, v11, 0x1

    .line 185
    .line 186
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_6
    move/from16 v7, v19

    .line 190
    .line 191
    move v9, v7

    .line 192
    :goto_5
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    if-ge v7, v11, :cond_8

    .line 197
    .line 198
    aget-boolean v11, v18, v7

    .line 199
    .line 200
    if-eqz v11, :cond_7

    .line 201
    .line 202
    invoke-virtual {v4, v7}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    aput-object v11, v2, v9

    .line 207
    .line 208
    add-int/lit8 v9, v9, 0x1

    .line 209
    .line 210
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_8
    move/from16 v4, v19

    .line 214
    .line 215
    move v7, v4

    .line 216
    :goto_6
    if-ge v4, v10, :cond_a

    .line 217
    .line 218
    aget-object v8, v1, v4

    .line 219
    .line 220
    aget-object v9, v2, v4

    .line 221
    .line 222
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-nez v8, :cond_9

    .line 227
    .line 228
    add-int/lit8 v7, v7, 0x1

    .line 229
    .line 230
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_a
    move/from16 v1, v19

    .line 234
    .line 235
    move v2, v1

    .line 236
    :goto_7
    const/4 v4, 0x4

    .line 237
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-ge v1, v4, :cond_c

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v5, v1}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;->a(I)Ljava/lang/Character;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-nez v4, :cond_b

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 263
    .line 264
    add-int/lit8 v1, v1, 0x1

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_c
    :goto_8
    filled-new-array {v10, v7, v2}, [I

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    aget v1, v0, v19

    .line 272
    .line 273
    int-to-double v1, v1

    .line 274
    const-wide/16 v4, 0x0

    .line 275
    .line 276
    cmpl-double v7, v1, v4

    .line 277
    .line 278
    if-nez v7, :cond_d

    .line 279
    .line 280
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    return-object v0

    .line 285
    :cond_d
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    int-to-double v3, v3

    .line 290
    div-double v3, v1, v3

    .line 291
    .line 292
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    int-to-double v5, v5

    .line 297
    div-double v5, v1, v5

    .line 298
    .line 299
    add-double/2addr v5, v3

    .line 300
    aget v3, v0, p2

    .line 301
    .line 302
    int-to-double v3, v3

    .line 303
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 304
    .line 305
    div-double/2addr v3, v7

    .line 306
    sub-double v3, v1, v3

    .line 307
    .line 308
    div-double/2addr v3, v1

    .line 309
    add-double/2addr v3, v5

    .line 310
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 311
    .line 312
    div-double/2addr v3, v1

    .line 313
    const-wide v1, 0x3fe6666666666666L    # 0.7

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    cmpg-double v1, v3, v1

    .line 319
    .line 320
    if-gez v1, :cond_e

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_e
    aget v0, v0, p1

    .line 324
    .line 325
    int-to-double v0, v0

    .line 326
    const-wide v5, 0x3fb999999999999aL    # 0.1

    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    mul-double/2addr v0, v5

    .line 332
    sub-double v5, v16, v3

    .line 333
    .line 334
    mul-double/2addr v5, v0

    .line 335
    add-double/2addr v3, v5

    .line 336
    :goto_9
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    return-object v0
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/CharSequence;

    .line 4
    .line 5
    new-instance v0, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;

    .line 11
    .line 12
    invoke-direct {p1, p2}, Lorg/apache/commons/text/similarity/SimilarityCharacterInput;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/text/similarity/JaroWinklerSimilarity;->a(Lorg/apache/commons/text/similarity/SimilarityInput;Lorg/apache/commons/text/similarity/SimilarityInput;)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
