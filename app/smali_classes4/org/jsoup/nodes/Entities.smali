.class public Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Entities$EscapeMode;,
        Lorg/jsoup/nodes/Entities$CoreCharset;
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Landroidx/emoji2/text/flatbuffer/b;

.field public static final e:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/nodes/Entities;->a:[C

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/jsoup/nodes/Entities;->b:Ljava/util/HashMap;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v1, 0x6a

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lorg/jsoup/nodes/Entities;->c:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Lorg/apache/commons/lang3/builder/a;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/builder/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/emoji2/text/flatbuffer/b;

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    invoke-direct {v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/b;-><init>(Ljava/util/function/Supplier;I)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lorg/jsoup/nodes/Entities;->d:Landroidx/emoji2/text/flatbuffer/b;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lorg/jsoup/nodes/Entities;->e:Ljava/lang/ThreadLocal;

    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method public static a(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 4

    .line 1
    iget-object v0, p1, Lorg/jsoup/nodes/Entities$EscapeMode;->g:[I

    .line 2
    .line 3
    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p1, Lorg/jsoup/nodes/Entities$EscapeMode;->h:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    add-int/lit8 v3, v3, -0x1

    .line 15
    .line 16
    if-ge v0, v3, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Lorg/jsoup/nodes/Entities$EscapeMode;->g:[I

    .line 19
    .line 20
    add-int/lit8 v3, v0, 0x1

    .line 21
    .line 22
    aget p1, p1, v3

    .line 23
    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    aget-object p1, v2, v3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    aget-object p1, v2, v0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object p1, v1

    .line 33
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x3b

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const/16 p2, 0x26

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, v1}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string p1, "&#x"

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, v1}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static b(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const p0, 0xd800

    .line 16
    .line 17
    .line 18
    if-lt p1, p0, :cond_2

    .line 19
    .line 20
    const p0, 0xe000

    .line 21
    .line 22
    .line 23
    if-lt p1, p0, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 p0, 0x80

    .line 27
    .line 28
    if-ge p1, p0, :cond_3

    .line 29
    .line 30
    :cond_2
    :goto_0
    return v0

    .line 31
    :cond_3
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static c(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p3 .. p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "US-ASCII"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sget-object v2, Lorg/jsoup/nodes/Entities$CoreCharset;->c:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "UTF-"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    sget-object v2, Lorg/jsoup/nodes/Entities$CoreCharset;->f:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v2, Lorg/jsoup/nodes/Entities$CoreCharset;->g:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 32
    .line 33
    :goto_0
    sget-object v3, Lorg/jsoup/nodes/Entities;->e:Ljava/lang/ThreadLocal;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/nio/charset/CharsetEncoder;

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    move-object/from16 v6, p3

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move-object/from16 v6, p3

    .line 57
    .line 58
    :goto_1
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    :goto_2
    if-ge v6, v3, :cond_1d

    .line 74
    .line 75
    move-object/from16 v10, p0

    .line 76
    .line 77
    invoke-virtual {v10, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    and-int/lit8 v12, p4, 0x4

    .line 82
    .line 83
    const/16 v13, 0x20

    .line 84
    .line 85
    if-eqz v12, :cond_a

    .line 86
    .line 87
    invoke-static {v11}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    const/4 v14, 0x1

    .line 92
    if-eqz v12, :cond_8

    .line 93
    .line 94
    and-int/lit8 v12, p4, 0x8

    .line 95
    .line 96
    if-eqz v12, :cond_4

    .line 97
    .line 98
    if-nez v8, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    if-eqz v9, :cond_6

    .line 102
    .line 103
    :cond_5
    :goto_3
    const/4 v12, 0x0

    .line 104
    goto/16 :goto_7

    .line 105
    .line 106
    :cond_6
    and-int/lit8 v12, p4, 0x10

    .line 107
    .line 108
    if-eqz v12, :cond_7

    .line 109
    .line 110
    move v7, v14

    .line 111
    goto :goto_3

    .line 112
    :cond_7
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 113
    .line 114
    .line 115
    move v9, v14

    .line 116
    goto :goto_3

    .line 117
    :cond_8
    if-eqz v7, :cond_9

    .line 118
    .line 119
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 120
    .line 121
    .line 122
    move v8, v14

    .line 123
    const/4 v7, 0x0

    .line 124
    :goto_4
    const/4 v9, 0x0

    .line 125
    goto :goto_5

    .line 126
    :cond_9
    move v8, v14

    .line 127
    goto :goto_4

    .line 128
    :cond_a
    :goto_5
    sget-object v12, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 129
    .line 130
    const/16 v15, 0xd

    .line 131
    .line 132
    const/16 v5, 0xa

    .line 133
    .line 134
    const/16 v14, 0x9

    .line 135
    .line 136
    if-ne v12, v1, :cond_d

    .line 137
    .line 138
    if-eq v11, v14, :cond_d

    .line 139
    .line 140
    if-eq v11, v5, :cond_d

    .line 141
    .line 142
    if-eq v11, v15, :cond_d

    .line 143
    .line 144
    if-lt v11, v13, :cond_b

    .line 145
    .line 146
    const v13, 0xd7ff

    .line 147
    .line 148
    .line 149
    if-le v11, v13, :cond_d

    .line 150
    .line 151
    :cond_b
    const v13, 0xe000

    .line 152
    .line 153
    .line 154
    if-lt v11, v13, :cond_c

    .line 155
    .line 156
    const v13, 0xfffd

    .line 157
    .line 158
    .line 159
    if-le v11, v13, :cond_d

    .line 160
    .line 161
    :cond_c
    const/high16 v13, 0x10000

    .line 162
    .line 163
    if-lt v11, v13, :cond_5

    .line 164
    .line 165
    const v13, 0x10ffff

    .line 166
    .line 167
    .line 168
    if-gt v11, v13, :cond_5

    .line 169
    .line 170
    :cond_d
    int-to-char v13, v11

    .line 171
    const/high16 v15, 0x10000

    .line 172
    .line 173
    if-ge v11, v15, :cond_1b

    .line 174
    .line 175
    if-eq v13, v14, :cond_1a

    .line 176
    .line 177
    if-eq v13, v5, :cond_1a

    .line 178
    .line 179
    const/16 v5, 0xd

    .line 180
    .line 181
    if-eq v13, v5, :cond_1a

    .line 182
    .line 183
    const/16 v5, 0x22

    .line 184
    .line 185
    if-eq v13, v5, :cond_18

    .line 186
    .line 187
    const/16 v5, 0x3c

    .line 188
    .line 189
    if-eq v13, v5, :cond_17

    .line 190
    .line 191
    const/16 v5, 0x3e

    .line 192
    .line 193
    if-eq v13, v5, :cond_16

    .line 194
    .line 195
    const/16 v5, 0xa0

    .line 196
    .line 197
    if-eq v13, v5, :cond_14

    .line 198
    .line 199
    const/16 v5, 0x26

    .line 200
    .line 201
    if-eq v13, v5, :cond_13

    .line 202
    .line 203
    const/16 v5, 0x27

    .line 204
    .line 205
    if-eq v13, v5, :cond_10

    .line 206
    .line 207
    const/16 v14, 0x20

    .line 208
    .line 209
    if-lt v13, v14, :cond_f

    .line 210
    .line 211
    invoke-static {v2, v13, v4}, Lorg/jsoup/nodes/Entities;->b(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_e

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_e
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_f
    :goto_6
    invoke-static {v0, v1, v11}, Lorg/jsoup/nodes/Entities;->a(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_10
    and-int/lit8 v13, p4, 0x2

    .line 227
    .line 228
    if-eqz v13, :cond_12

    .line 229
    .line 230
    and-int/lit8 v13, p4, 0x1

    .line 231
    .line 232
    if-eqz v13, :cond_12

    .line 233
    .line 234
    if-ne v1, v12, :cond_11

    .line 235
    .line 236
    const-string v5, "&#x27;"

    .line 237
    .line 238
    invoke-virtual {v0, v5}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 239
    .line 240
    .line 241
    goto/16 :goto_3

    .line 242
    .line 243
    :cond_11
    const-string v5, "&apos;"

    .line 244
    .line 245
    invoke-virtual {v0, v5}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 246
    .line 247
    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :cond_12
    invoke-virtual {v0, v5}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 251
    .line 252
    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :cond_13
    const-string v5, "&amp;"

    .line 256
    .line 257
    invoke-virtual {v0, v5}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 258
    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_14
    if-eq v1, v12, :cond_15

    .line 263
    .line 264
    const-string v5, "&nbsp;"

    .line 265
    .line 266
    invoke-virtual {v0, v5}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 267
    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_15
    const-string v5, "&#xa0;"

    .line 272
    .line 273
    invoke-virtual {v0, v5}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 274
    .line 275
    .line 276
    goto/16 :goto_3

    .line 277
    .line 278
    :cond_16
    const-string v5, "&gt;"

    .line 279
    .line 280
    invoke-virtual {v0, v5}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 281
    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :cond_17
    const-string v5, "&lt;"

    .line 286
    .line 287
    invoke-virtual {v0, v5}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 288
    .line 289
    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :cond_18
    and-int/lit8 v5, p4, 0x2

    .line 293
    .line 294
    if-eqz v5, :cond_19

    .line 295
    .line 296
    const-string v5, "&quot;"

    .line 297
    .line 298
    invoke-virtual {v0, v5}, Lorg/jsoup/internal/QuietAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;

    .line 299
    .line 300
    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :cond_19
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 304
    .line 305
    .line 306
    goto/16 :goto_3

    .line 307
    .line 308
    :cond_1a
    invoke-virtual {v0, v13}, Lorg/jsoup/internal/QuietAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable;

    .line 309
    .line 310
    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    :cond_1b
    invoke-static {v2, v13, v4}, Lorg/jsoup/nodes/Entities;->b(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_1c

    .line 318
    .line 319
    sget-object v5, Lorg/jsoup/nodes/Entities;->d:Landroidx/emoji2/text/flatbuffer/b;

    .line 320
    .line 321
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    check-cast v5, [C

    .line 326
    .line 327
    const/4 v12, 0x0

    .line 328
    invoke-static {v11, v5, v12}, Ljava/lang/Character;->toChars(I[CI)I

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    invoke-virtual {v0, v5, v12, v13}, Lorg/jsoup/internal/QuietAppendable;->append([CII)Lorg/jsoup/internal/QuietAppendable;

    .line 333
    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_1c
    const/4 v12, 0x0

    .line 337
    invoke-static {v0, v1, v11}, Lorg/jsoup/nodes/Entities;->a(Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 338
    .line 339
    .line 340
    :goto_7
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    add-int/2addr v6, v5

    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :cond_1d
    return-void
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .locals 3

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Entities;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    aput p0, p1, v2

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    aput p0, p1, v1

    .line 24
    .line 25
    const/4 p0, 0x2

    .line 26
    return p0

    .line 27
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->a(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/4 v0, -0x1

    .line 34
    if-eq p0, v0, :cond_1

    .line 35
    .line 36
    aput p0, p1, v2

    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    return v2
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 6
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    if-nez p0, :cond_0

    .line 7
    const-string p0, ""

    return-object p0

    .line 8
    :cond_0
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lorg/jsoup/internal/QuietAppendable;->wrap(Ljava/lang/Appendable;)Lorg/jsoup/internal/QuietAppendable;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p0, v3, v0, v1, v4}, Lorg/jsoup/nodes/Entities;->c(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V

    .line 10
    invoke-static {v2}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    if-nez p0, :cond_0

    .line 2
    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lorg/jsoup/internal/QuietAppendable;->wrap(Ljava/lang/Appendable;)Lorg/jsoup/internal/QuietAppendable;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v2, v0, p1, v3}, Lorg/jsoup/nodes/Entities;->c(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V

    .line 5
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static findPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Entities;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_1
    const-string p0, ""

    .line 26
    .line 27
    return-object p0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Entities;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->a(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v0, -0x1

    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Ljava/lang/String;

    .line 22
    .line 23
    filled-new-array {p0}, [I

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([III)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    const-string p0, ""

    .line 34
    .line 35
    return-object p0
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->a(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->a(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/jsoup/parser/Parser;->unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
