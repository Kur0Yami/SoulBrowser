.class public final Lokhttp3/internal/url/_UrlKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "okhttp"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lokhttp3/internal/url/_UrlKt;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    and-int/lit8 v2, p4, 0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v4, p4, 0x2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move/from16 v4, p2

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v5, p4, 0x8

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    move v5, v3

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v5, v6

    .line 33
    :goto_2
    and-int/lit8 v7, p4, 0x10

    .line 34
    .line 35
    if-eqz v7, :cond_3

    .line 36
    .line 37
    move v7, v3

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move v7, v6

    .line 40
    :goto_3
    and-int/lit8 v8, p4, 0x20

    .line 41
    .line 42
    if-eqz v8, :cond_4

    .line 43
    .line 44
    move v8, v3

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move v8, v6

    .line 47
    :goto_4
    and-int/lit8 v9, p4, 0x40

    .line 48
    .line 49
    if-eqz v9, :cond_5

    .line 50
    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move v3, v6

    .line 53
    :goto_5
    const-string v6, "<this>"

    .line 54
    .line 55
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v9, "encodeSet"

    .line 59
    .line 60
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    move v10, v2

    .line 70
    :goto_6
    if-ge v10, v4, :cond_15

    .line 71
    .line 72
    invoke-virtual {v0, v10}, Ljava/lang/String;->codePointAt(I)I

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    const/16 v12, 0x20

    .line 77
    .line 78
    const/16 v13, 0x80

    .line 79
    .line 80
    const/16 v15, 0x25

    .line 81
    .line 82
    const/16 v14, 0x7f

    .line 83
    .line 84
    if-lt v11, v12, :cond_9

    .line 85
    .line 86
    if-eq v11, v14, :cond_9

    .line 87
    .line 88
    if-lt v11, v13, :cond_6

    .line 89
    .line 90
    if-eqz v3, :cond_9

    .line 91
    .line 92
    :cond_6
    int-to-char v13, v11

    .line 93
    invoke-static {v1, v13}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;C)Z

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-nez v13, :cond_9

    .line 98
    .line 99
    if-ne v11, v15, :cond_7

    .line 100
    .line 101
    if-eqz v5, :cond_9

    .line 102
    .line 103
    if-eqz v7, :cond_7

    .line 104
    .line 105
    invoke-static {v10, v4, v0}, Lokhttp3/internal/url/_UrlKt;->b(IILjava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    if-eqz v13, :cond_9

    .line 110
    .line 111
    :cond_7
    const/16 v13, 0x2b

    .line 112
    .line 113
    if-ne v11, v13, :cond_8

    .line 114
    .line 115
    if-eqz v8, :cond_8

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_8
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    add-int/2addr v10, v11

    .line 123
    goto :goto_6

    .line 124
    :cond_9
    :goto_7
    new-instance v11, Lokio/Buffer;

    .line 125
    .line 126
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11, v2, v10, v0}, Lokio/Buffer;->Q(IILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v2, "input"

    .line 136
    .line 137
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/4 v2, 0x0

    .line 144
    :goto_8
    if-ge v10, v4, :cond_14

    .line 145
    .line 146
    invoke-virtual {v0, v10}, Ljava/lang/String;->codePointAt(I)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v5, :cond_b

    .line 151
    .line 152
    const/16 v9, 0x9

    .line 153
    .line 154
    if-eq v6, v9, :cond_a

    .line 155
    .line 156
    const/16 v9, 0xa

    .line 157
    .line 158
    if-eq v6, v9, :cond_a

    .line 159
    .line 160
    const/16 v9, 0xc

    .line 161
    .line 162
    if-eq v6, v9, :cond_a

    .line 163
    .line 164
    const/16 v9, 0xd

    .line 165
    .line 166
    if-ne v6, v9, :cond_b

    .line 167
    .line 168
    :cond_a
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 169
    .line 170
    :goto_9
    const/16 v13, 0x2b

    .line 171
    .line 172
    goto/16 :goto_d

    .line 173
    .line 174
    :cond_b
    const-string v9, "+"

    .line 175
    .line 176
    if-ne v6, v12, :cond_c

    .line 177
    .line 178
    const-string v13, " !\"#$&\'()+,/:;<=>?@[\\]^`{|}~"

    .line 179
    .line 180
    if-ne v1, v13, :cond_c

    .line 181
    .line 182
    invoke-virtual {v11, v9}, Lokio/Buffer;->S(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_9

    .line 186
    :cond_c
    const/16 v13, 0x2b

    .line 187
    .line 188
    if-ne v6, v13, :cond_e

    .line 189
    .line 190
    if-eqz v8, :cond_e

    .line 191
    .line 192
    if-eqz v5, :cond_d

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_d
    const-string v9, "%2B"

    .line 196
    .line 197
    :goto_a
    invoke-virtual {v11, v9}, Lokio/Buffer;->S(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_d

    .line 201
    :cond_e
    if-lt v6, v12, :cond_11

    .line 202
    .line 203
    if-eq v6, v14, :cond_11

    .line 204
    .line 205
    const/16 v9, 0x80

    .line 206
    .line 207
    if-lt v6, v9, :cond_f

    .line 208
    .line 209
    if-eqz v3, :cond_11

    .line 210
    .line 211
    :cond_f
    int-to-char v9, v6

    .line 212
    invoke-static {v1, v9}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;C)Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-nez v9, :cond_11

    .line 217
    .line 218
    if-ne v6, v15, :cond_10

    .line 219
    .line 220
    if-eqz v5, :cond_11

    .line 221
    .line 222
    if-eqz v7, :cond_10

    .line 223
    .line 224
    invoke-static {v10, v4, v0}, Lokhttp3/internal/url/_UrlKt;->b(IILjava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-nez v9, :cond_10

    .line 229
    .line 230
    goto :goto_b

    .line 231
    :cond_10
    invoke-virtual {v11, v6}, Lokio/Buffer;->T(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_d

    .line 235
    :cond_11
    :goto_b
    if-nez v2, :cond_12

    .line 236
    .line 237
    new-instance v2, Lokio/Buffer;

    .line 238
    .line 239
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 240
    .line 241
    .line 242
    :cond_12
    invoke-virtual {v2, v6}, Lokio/Buffer;->T(I)V

    .line 243
    .line 244
    .line 245
    :goto_c
    invoke-virtual {v2}, Lokio/Buffer;->D()Z

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-nez v9, :cond_13

    .line 250
    .line 251
    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    and-int/lit16 v12, v9, 0xff

    .line 256
    .line 257
    invoke-virtual {v11, v15}, Lokio/Buffer;->v(I)V

    .line 258
    .line 259
    .line 260
    shr-int/lit8 v12, v12, 0x4

    .line 261
    .line 262
    and-int/lit8 v12, v12, 0xf

    .line 263
    .line 264
    sget-object v16, Lokhttp3/internal/url/_UrlKt;->a:[C

    .line 265
    .line 266
    aget-char v12, v16, v12

    .line 267
    .line 268
    invoke-virtual {v11, v12}, Lokio/Buffer;->v(I)V

    .line 269
    .line 270
    .line 271
    and-int/lit8 v9, v9, 0xf

    .line 272
    .line 273
    aget-char v9, v16, v9

    .line 274
    .line 275
    invoke-virtual {v11, v9}, Lokio/Buffer;->v(I)V

    .line 276
    .line 277
    .line 278
    const/16 v12, 0x20

    .line 279
    .line 280
    goto :goto_c

    .line 281
    :cond_13
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 282
    .line 283
    :goto_d
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    add-int/2addr v10, v6

    .line 288
    const/16 v12, 0x20

    .line 289
    .line 290
    goto/16 :goto_8

    .line 291
    .line 292
    :cond_14
    invoke-virtual {v11}, Lokio/Buffer;->k()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    return-object v0

    .line 297
    :cond_15
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const-string v1, "substring(...)"

    .line 302
    .line 303
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-object v0
.end method

.method public static final b(IILjava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p0, 0x2

    .line 7
    .line 8
    if-ge v0, p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v1, 0x25

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    add-int/2addr p0, p1

    .line 20
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->j(C)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v1, -0x1

    .line 29
    if-eq p0, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Lokhttp3/internal/_UtilCommonKt;->j(C)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eq p0, v1, :cond_0

    .line 40
    .line 41
    return p1

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public static c(IIILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p0, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    :cond_1
    and-int/lit8 p2, p2, 0x4

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v1, 0x1

    .line 21
    :goto_0
    const-string p2, "<this>"

    .line 22
    .line 23
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move v0, p0

    .line 27
    :goto_1
    if-ge v0, p1, :cond_8

    .line 28
    .line 29
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x2b

    .line 34
    .line 35
    const/16 v4, 0x25

    .line 36
    .line 37
    if-eq v2, v4, :cond_4

    .line 38
    .line 39
    if-ne v2, v3, :cond_3

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    :goto_2
    new-instance v2, Lokio/Buffer;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p0, v0, p3}, Lokio/Buffer;->Q(IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p0, "encoded"

    .line 59
    .line 60
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_3
    if-ge v0, p1, :cond_7

    .line 64
    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-ne p0, v4, :cond_5

    .line 70
    .line 71
    add-int/lit8 p2, v0, 0x2

    .line 72
    .line 73
    if-ge p2, p1, :cond_5

    .line 74
    .line 75
    add-int/lit8 v5, v0, 0x1

    .line 76
    .line 77
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-static {v5}, Lokhttp3/internal/_UtilCommonKt;->j(C)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-static {v6}, Lokhttp3/internal/_UtilCommonKt;->j(C)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    const/4 v7, -0x1

    .line 94
    if-eq v5, v7, :cond_6

    .line 95
    .line 96
    if-eq v6, v7, :cond_6

    .line 97
    .line 98
    shl-int/lit8 v0, v5, 0x4

    .line 99
    .line 100
    add-int/2addr v0, v6

    .line 101
    invoke-virtual {v2, v0}, Lokio/Buffer;->v(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    add-int v0, p0, p2

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    if-ne p0, v3, :cond_6

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    const/16 p0, 0x20

    .line 116
    .line 117
    invoke-virtual {v2, p0}, Lokio/Buffer;->v(I)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    invoke-virtual {v2, p0}, Lokio/Buffer;->T(I)V

    .line 124
    .line 125
    .line 126
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    add-int/2addr v0, p0

    .line 131
    goto :goto_3

    .line 132
    :cond_7
    invoke-virtual {v2}, Lokio/Buffer;->k()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :cond_8
    invoke-virtual {p3, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const-string p1, "substring(...)"

    .line 142
    .line 143
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object p0
.end method
