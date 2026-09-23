.class public final Lorg/tukaani/xz/lzma/LZMADecoder;
.super Lorg/tukaani/xz/lzma/LZMACoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;,
        Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;
    }
.end annotation


# instance fields
.field public final m:Lorg/tukaani/xz/lz/LZDecoder;

.field public final n:Lorg/tukaani/xz/rangecoder/RangeDecoder;

.field public final o:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

.field public final p:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

.field public final q:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lorg/tukaani/xz/lzma/LZMACoder;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p5, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 5
    .line 6
    invoke-direct {p5, p0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;)V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->p:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 10
    .line 11
    new-instance p5, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 12
    .line 13
    invoke-direct {p5, p0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;)V

    .line 14
    .line 15
    .line 16
    iput-object p5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->q:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->m:Lorg/tukaani/xz/lz/LZDecoder;

    .line 19
    .line 20
    iput-object p2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->n:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 21
    .line 22
    new-instance p1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 23
    .line 24
    invoke-direct {p1, p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;II)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->o:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMADecoder;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMACoder;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->o:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 6
    .line 7
    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->c:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    aget-object v1, v1, v0

    .line 13
    .line 14
    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;->a:[S

    .line 15
    .line 16
    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->a([S)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->p:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->a()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->q:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final b()V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->m:Lorg/tukaani/xz/lz/LZDecoder;

    .line 2
    .line 3
    iget v1, v0, Lorg/tukaani/xz/lz/LZDecoder;->e:I

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    iget v2, v0, Lorg/tukaani/xz/lz/LZDecoder;->f:I

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/tukaani/xz/lz/LZDecoder;->a(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    iget v1, v0, Lorg/tukaani/xz/lz/LZDecoder;->b:I

    .line 13
    .line 14
    iget v2, v0, Lorg/tukaani/xz/lz/LZDecoder;->d:I

    .line 15
    .line 16
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->n:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 17
    .line 18
    if-ge v1, v2, :cond_10

    .line 19
    .line 20
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->a:I

    .line 21
    .line 22
    and-int/2addr v1, v2

    .line 23
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->d:[[S

    .line 24
    .line 25
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->c:Lorg/tukaani/xz/lzma/State;

    .line 26
    .line 27
    iget v5, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 28
    .line 29
    aget-object v2, v2, v5

    .line 30
    .line 31
    invoke-virtual {v3, v2, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_f

    .line 36
    .line 37
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->e:[S

    .line 38
    .line 39
    iget v5, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 40
    .line 41
    invoke-virtual {v3, v2, v5}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v5, 0x2

    .line 46
    const/4 v6, 0x3

    .line 47
    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMACoder;->b:[I

    .line 48
    .line 49
    const/4 v8, 0x1

    .line 50
    const/4 v9, 0x0

    .line 51
    if-nez v2, :cond_8

    .line 52
    .line 53
    iget v2, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 54
    .line 55
    const/4 v10, 0x7

    .line 56
    if-ge v2, v10, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/16 v10, 0xa

    .line 60
    .line 61
    :goto_1
    iput v10, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 62
    .line 63
    aget v2, v7, v5

    .line 64
    .line 65
    aput v2, v7, v6

    .line 66
    .line 67
    aget v2, v7, v8

    .line 68
    .line 69
    aput v2, v7, v5

    .line 70
    .line 71
    aget v2, v7, v9

    .line 72
    .line 73
    aput v2, v7, v8

    .line 74
    .line 75
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->p:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->b(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/4 v1, 0x6

    .line 82
    if-ge v2, v1, :cond_2

    .line 83
    .line 84
    add-int/lit8 v6, v2, -0x2

    .line 85
    .line 86
    :cond_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->j:[[S

    .line 87
    .line 88
    aget-object v1, v1, v6

    .line 89
    .line 90
    invoke-virtual {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->c([S)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v4, 0x4

    .line 95
    if-ge v1, v4, :cond_3

    .line 96
    .line 97
    aput v1, v7, v9

    .line 98
    .line 99
    goto/16 :goto_9

    .line 100
    .line 101
    :cond_3
    shr-int/lit8 v4, v1, 0x1

    .line 102
    .line 103
    add-int/lit8 v6, v4, -0x1

    .line 104
    .line 105
    and-int/lit8 v10, v1, 0x1

    .line 106
    .line 107
    or-int/2addr v5, v10

    .line 108
    shl-int v10, v5, v6

    .line 109
    .line 110
    aput v10, v7, v9

    .line 111
    .line 112
    const/16 v5, 0xe

    .line 113
    .line 114
    if-ge v1, v5, :cond_5

    .line 115
    .line 116
    add-int/lit8 v1, v1, -0x4

    .line 117
    .line 118
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->k:[[S

    .line 119
    .line 120
    aget-object v1, v4, v1

    .line 121
    .line 122
    move v4, v8

    .line 123
    move v5, v9

    .line 124
    move v6, v5

    .line 125
    :goto_2
    invoke-virtual {v3, v1, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    shl-int/2addr v4, v8

    .line 130
    or-int/2addr v4, v11

    .line 131
    add-int/lit8 v12, v6, 0x1

    .line 132
    .line 133
    shl-int v6, v11, v6

    .line 134
    .line 135
    or-int/2addr v5, v6

    .line 136
    array-length v6, v1

    .line 137
    if-lt v4, v6, :cond_4

    .line 138
    .line 139
    or-int v1, v10, v5

    .line 140
    .line 141
    aput v1, v7, v9

    .line 142
    .line 143
    goto/16 :goto_9

    .line 144
    .line 145
    :cond_4
    move v6, v12

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    add-int/lit8 v4, v4, -0x5

    .line 148
    .line 149
    move v1, v9

    .line 150
    :cond_6
    invoke-virtual {v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->d()V

    .line 151
    .line 152
    .line 153
    iget v5, v3, Lorg/tukaani/xz/rangecoder/RangeDecoder;->a:I

    .line 154
    .line 155
    ushr-int/2addr v5, v8

    .line 156
    iput v5, v3, Lorg/tukaani/xz/rangecoder/RangeDecoder;->a:I

    .line 157
    .line 158
    iget v6, v3, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b:I

    .line 159
    .line 160
    sub-int v11, v6, v5

    .line 161
    .line 162
    ushr-int/lit8 v11, v11, 0x1f

    .line 163
    .line 164
    add-int/lit8 v12, v11, -0x1

    .line 165
    .line 166
    and-int/2addr v5, v12

    .line 167
    sub-int/2addr v6, v5

    .line 168
    iput v6, v3, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b:I

    .line 169
    .line 170
    shl-int/2addr v1, v8

    .line 171
    rsub-int/lit8 v5, v11, 0x1

    .line 172
    .line 173
    or-int/2addr v1, v5

    .line 174
    add-int/lit8 v4, v4, -0x1

    .line 175
    .line 176
    if-nez v4, :cond_6

    .line 177
    .line 178
    shl-int/lit8 v1, v1, 0x4

    .line 179
    .line 180
    or-int v5, v10, v1

    .line 181
    .line 182
    aput v5, v7, v9

    .line 183
    .line 184
    move v1, v8

    .line 185
    move v4, v9

    .line 186
    move v6, v4

    .line 187
    :goto_3
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMACoder;->l:[S

    .line 188
    .line 189
    invoke-virtual {v3, v10, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    shl-int/2addr v1, v8

    .line 194
    or-int/2addr v1, v11

    .line 195
    add-int/lit8 v12, v6, 0x1

    .line 196
    .line 197
    shl-int v6, v11, v6

    .line 198
    .line 199
    or-int/2addr v4, v6

    .line 200
    array-length v6, v10

    .line 201
    if-lt v1, v6, :cond_7

    .line 202
    .line 203
    or-int v1, v5, v4

    .line 204
    .line 205
    aput v1, v7, v9

    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_7
    move v6, v12

    .line 209
    goto :goto_3

    .line 210
    :cond_8
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->f:[S

    .line 211
    .line 212
    iget v10, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 213
    .line 214
    invoke-virtual {v3, v2, v10}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_a

    .line 219
    .line 220
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->i:[[S

    .line 221
    .line 222
    iget v5, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 223
    .line 224
    aget-object v2, v2, v5

    .line 225
    .line 226
    invoke-virtual {v3, v2, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-nez v2, :cond_d

    .line 231
    .line 232
    iget v1, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 233
    .line 234
    const/4 v2, 0x7

    .line 235
    if-ge v1, v2, :cond_9

    .line 236
    .line 237
    const/16 v1, 0x9

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_9
    const/16 v1, 0xb

    .line 241
    .line 242
    :goto_4
    iput v1, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_a
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->g:[S

    .line 246
    .line 247
    iget v10, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 248
    .line 249
    invoke-virtual {v3, v2, v10}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-nez v2, :cond_b

    .line 254
    .line 255
    aget v2, v7, v8

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_b
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->h:[S

    .line 259
    .line 260
    iget v10, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 261
    .line 262
    invoke-virtual {v3, v2, v10}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->b([SI)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-nez v2, :cond_c

    .line 267
    .line 268
    aget v2, v7, v5

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_c
    aget v2, v7, v6

    .line 272
    .line 273
    aget v3, v7, v5

    .line 274
    .line 275
    aput v3, v7, v6

    .line 276
    .line 277
    :goto_5
    aget v3, v7, v8

    .line 278
    .line 279
    aput v3, v7, v5

    .line 280
    .line 281
    :goto_6
    aget v3, v7, v9

    .line 282
    .line 283
    aput v3, v7, v8

    .line 284
    .line 285
    aput v2, v7, v9

    .line 286
    .line 287
    :cond_d
    iget v2, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 288
    .line 289
    const/4 v3, 0x7

    .line 290
    if-ge v2, v3, :cond_e

    .line 291
    .line 292
    const/16 v2, 0x8

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_e
    const/16 v2, 0xb

    .line 296
    .line 297
    :goto_7
    iput v2, v4, Lorg/tukaani/xz/lzma/State;->a:I

    .line 298
    .line 299
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->q:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 300
    .line 301
    invoke-virtual {v2, v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->b(I)I

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    :goto_8
    move v2, v8

    .line 306
    :goto_9
    aget v1, v7, v9

    .line 307
    .line 308
    invoke-virtual {v0, v1, v2}, Lorg/tukaani/xz/lz/LZDecoder;->a(II)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :cond_f
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->o:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 314
    .line 315
    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->d:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 316
    .line 317
    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMADecoder;->m:Lorg/tukaani/xz/lz/LZDecoder;

    .line 318
    .line 319
    iget v0, v0, Lorg/tukaani/xz/lz/LZDecoder;->b:I

    .line 320
    .line 321
    const/4 v0, 0x0

    .line 322
    throw v0

    .line 323
    :cond_10
    invoke-virtual {v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->d()V

    .line 324
    .line 325
    .line 326
    return-void
.end method
