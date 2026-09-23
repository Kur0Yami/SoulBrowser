.class public final Lorg/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/DataUtil$CharsetDoc;
    }
.end annotation


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;

.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/lang/String;

.field public static final c:[C

.field public static final d:Lorg/jsoup/select/Evaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jsoup/helper/DataUtil;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "UTF-8"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/jsoup/helper/DataUtil;->b:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/jsoup/helper/DataUtil;->c:[C

    .line 30
    .line 31
    const-string v0, "meta[http-equiv=content-type], meta[charset]"

    .line 32
    .line 33
    invoke-static {v0}, Lorg/jsoup/select/Selector;->evaluatorOf(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/jsoup/helper/DataUtil;->d:Lorg/jsoup/select/Evaluator;

    .line 38
    .line 39
    return-void
.end method

.method public static a(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/DataUtil$CharsetDoc;
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/jsoup/internal/ControllableInputStream;->mark(I)V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, v2, v0}, Lorg/jsoup/internal/ControllableInputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->reset()V

    .line 12
    .line 13
    .line 14
    aget-byte v0, v1, v2

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, -0x1

    .line 20
    const/4 v7, -0x2

    .line 21
    const/4 v8, 0x1

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    aget-byte v9, v1, v8

    .line 25
    .line 26
    if-nez v9, :cond_0

    .line 27
    .line 28
    aget-byte v9, v1, v5

    .line 29
    .line 30
    if-ne v9, v7, :cond_0

    .line 31
    .line 32
    aget-byte v9, v1, v4

    .line 33
    .line 34
    if-eq v9, v6, :cond_1

    .line 35
    .line 36
    :cond_0
    if-ne v0, v6, :cond_2

    .line 37
    .line 38
    aget-byte v9, v1, v8

    .line 39
    .line 40
    if-ne v9, v7, :cond_2

    .line 41
    .line 42
    aget-byte v9, v1, v5

    .line 43
    .line 44
    if-nez v9, :cond_2

    .line 45
    .line 46
    aget-byte v9, v1, v4

    .line 47
    .line 48
    if-nez v9, :cond_2

    .line 49
    .line 50
    :cond_1
    const-string v0, "UTF-32"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-ne v0, v7, :cond_3

    .line 54
    .line 55
    aget-byte v9, v1, v8

    .line 56
    .line 57
    if-eq v9, v6, :cond_4

    .line 58
    .line 59
    :cond_3
    if-ne v0, v6, :cond_5

    .line 60
    .line 61
    aget-byte v6, v1, v8

    .line 62
    .line 63
    if-ne v6, v7, :cond_5

    .line 64
    .line 65
    :cond_4
    const-string v0, "UTF-16"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    const/16 v6, -0x11

    .line 69
    .line 70
    if-ne v0, v6, :cond_6

    .line 71
    .line 72
    aget-byte v0, v1, v8

    .line 73
    .line 74
    const/16 v6, -0x45

    .line 75
    .line 76
    if-ne v0, v6, :cond_6

    .line 77
    .line 78
    aget-byte v0, v1, v5

    .line 79
    .line 80
    const/16 v5, -0x41

    .line 81
    .line 82
    if-ne v0, v5, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0, v1, v2, v4}, Lorg/jsoup/internal/ControllableInputStream;->read([BII)I

    .line 85
    .line 86
    .line 87
    const-string v0, "UTF-8"

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    move-object v0, v3

    .line 91
    :goto_0
    if-eqz v0, :cond_7

    .line 92
    .line 93
    move-object p1, v0

    .line 94
    :cond_7
    sget-object v0, Lorg/jsoup/helper/DataUtil;->b:Ljava/lang/String;

    .line 95
    .line 96
    if-nez p1, :cond_10

    .line 97
    .line 98
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->max()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/16 v4, 0x1400

    .line 103
    .line 104
    invoke-virtual {p0, v4}, Lorg/jsoup/internal/ControllableInputStream;->max(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v4}, Lorg/jsoup/internal/ControllableInputStream;->mark(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v2}, Lorg/jsoup/internal/ControllableInputStream;->allowClose(Z)V

    .line 111
    .line 112
    .line 113
    :try_start_0
    new-instance v4, Lorg/jsoup/internal/SimpleStreamReader;

    .line 114
    .line 115
    sget-object v5, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 116
    .line 117
    invoke-direct {v4, p0, v5}, Lorg/jsoup/internal/SimpleStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    :try_start_1
    invoke-virtual {p3, v4, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->reset()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v1}, Lorg/jsoup/internal/ControllableInputStream;->max(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .line 129
    .line 130
    :try_start_2
    invoke-virtual {v4}, Lorg/jsoup/internal/SimpleStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/UncheckedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v8}, Lorg/jsoup/internal/ControllableInputStream;->allowClose(Z)V

    .line 134
    .line 135
    .line 136
    sget-object p3, Lorg/jsoup/helper/DataUtil;->d:Lorg/jsoup/select/Evaluator;

    .line 137
    .line 138
    invoke-virtual {p2, p3}, Lorg/jsoup/nodes/Element;->select(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Elements;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    move v5, v2

    .line 147
    move-object v4, v3

    .line 148
    :cond_8
    if-ge v5, v1, :cond_b

    .line 149
    .line 150
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    add-int/lit8 v5, v5, 0x1

    .line 155
    .line 156
    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 157
    .line 158
    const-string v7, "http-equiv"

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_9

    .line 165
    .line 166
    const-string v4, "content"

    .line 167
    .line 168
    invoke-virtual {v6, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4}, Lorg/jsoup/helper/DataUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    :cond_9
    if-nez v4, :cond_a

    .line 177
    .line 178
    const-string v7, "charset"

    .line 179
    .line 180
    invoke-virtual {v6, v7}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_a

    .line 185
    .line 186
    invoke-virtual {v6, v7}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    :cond_a
    if-eqz v4, :cond_8

    .line 191
    .line 192
    :cond_b
    if-nez v4, :cond_e

    .line 193
    .line 194
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    .line 195
    .line 196
    .line 197
    move-result p3

    .line 198
    if-lez p3, :cond_e

    .line 199
    .line 200
    invoke-virtual {p2, v2}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    instance-of v1, p3, Lorg/jsoup/nodes/XmlDeclaration;

    .line 205
    .line 206
    if-eqz v1, :cond_c

    .line 207
    .line 208
    check-cast p3, Lorg/jsoup/nodes/XmlDeclaration;

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_c
    instance-of v1, p3, Lorg/jsoup/nodes/Comment;

    .line 212
    .line 213
    if-eqz v1, :cond_d

    .line 214
    .line 215
    check-cast p3, Lorg/jsoup/nodes/Comment;

    .line 216
    .line 217
    invoke-virtual {p3}, Lorg/jsoup/nodes/Comment;->isXmlDeclaration()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_d

    .line 222
    .line 223
    invoke-virtual {p3}, Lorg/jsoup/nodes/Comment;->asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    goto :goto_1

    .line 228
    :cond_d
    move-object p3, v3

    .line 229
    :goto_1
    if-eqz p3, :cond_e

    .line 230
    .line 231
    invoke-virtual {p3}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v2, "xml"

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_e

    .line 242
    .line 243
    const-string v1, "encoding"

    .line 244
    .line 245
    invoke-virtual {p3, v1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    :cond_e
    invoke-static {v4}, Lorg/jsoup/helper/DataUtil;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p3

    .line 253
    if-eqz p3, :cond_f

    .line 254
    .line 255
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_f

    .line 260
    .line 261
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const-string p2, "[\"\']"

    .line 266
    .line 267
    const-string p3, ""

    .line 268
    .line 269
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    goto :goto_5

    .line 274
    :cond_f
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->baseReadFully()Z

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    if-eqz p3, :cond_11

    .line 279
    .line 280
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->close()V

    .line 281
    .line 282
    .line 283
    move-object v3, p2

    .line 284
    goto :goto_5

    .line 285
    :catchall_0
    move-exception p1

    .line 286
    goto :goto_4

    .line 287
    :catch_0
    move-exception p1

    .line 288
    goto :goto_3

    .line 289
    :catchall_1
    move-exception p1

    .line 290
    :try_start_3
    invoke-virtual {v4}, Lorg/jsoup/internal/SimpleStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 291
    .line 292
    .line 293
    goto :goto_2

    .line 294
    :catchall_2
    move-exception p2

    .line 295
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 296
    .line 297
    .line 298
    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/UncheckedIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 304
    :goto_4
    invoke-virtual {p0, v8}, Lorg/jsoup/internal/ControllableInputStream;->allowClose(Z)V

    .line 305
    .line 306
    .line 307
    throw p1

    .line 308
    :cond_10
    const-string p2, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    .line 309
    .line 310
    invoke-static {p1, p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_11
    :goto_5
    if-nez p1, :cond_12

    .line 314
    .line 315
    move-object p1, v0

    .line 316
    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result p2

    .line 320
    if-eqz p2, :cond_13

    .line 321
    .line 322
    sget-object p1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_13
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    :goto_6
    new-instance p2, Lorg/jsoup/helper/DataUtil$CharsetDoc;

    .line 330
    .line 331
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 332
    .line 333
    .line 334
    iput-object p1, p2, Lorg/jsoup/helper/DataUtil$CharsetDoc;->a:Ljava/nio/charset/Charset;

    .line 335
    .line 336
    iput-object p0, p2, Lorg/jsoup/helper/DataUtil$CharsetDoc;->b:Lorg/jsoup/internal/ControllableInputStream;

    .line 337
    .line 338
    iput-object v3, p2, Lorg/jsoup/helper/DataUtil$CharsetDoc;->c:Lorg/jsoup/nodes/Document;

    .line 339
    .line 340
    return-object p2
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lorg/jsoup/helper/DataUtil;->a:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "charset="

    .line 27
    .line 28
    const-string v1, ""

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Random;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const/16 v3, 0x20

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    sget-object v3, Lorg/jsoup/helper/DataUtil;->c:[C

    .line 16
    .line 17
    array-length v4, v3

    .line 18
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    aget-char v3, v3, v4

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public static d(Ljava/nio/file/Path;)Lorg/jsoup/internal/ControllableInputStream;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    .line 3
    .line 4
    invoke-static {p0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v3, ".gz"

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    const-string v3, ".z"

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/16 v3, 0x1f

    .line 45
    .line 46
    if-ne p0, v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    const/16 v3, 0x8b

    .line 53
    .line 54
    if-ne p0, v3, :cond_1

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move p0, v0

    .line 61
    :goto_0
    const-wide/16 v3, 0x0

    .line 62
    .line 63
    invoke-interface {v1, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 64
    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    .line 69
    .line 70
    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    move-object v2, p0

    .line 74
    :cond_2
    invoke-static {v2, v0}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;I)Lorg/jsoup/internal/ControllableInputStream;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public static e(Lorg/jsoup/helper/DataUtil$CharsetDoc;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->c:Lorg/jsoup/nodes/Document;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->b:Lorg/jsoup/internal/ControllableInputStream;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->a:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    new-instance v1, Lorg/jsoup/internal/SimpleStreamReader;

    .line 14
    .line 15
    invoke-direct {v1, v0, p0}, Lorg/jsoup/internal/SimpleStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p2, v1, p1}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->canEncode()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    sget-object p0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Document;->charset(Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/jsoup/internal/SimpleStreamReader;->close()V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    :try_start_2
    invoke-virtual {p0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lorg/jsoup/internal/SimpleStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    throw p0
.end method

.method public static f(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lorg/jsoup/nodes/Document;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->a(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/DataUtil$CharsetDoc;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-static {p0, p2, p3}, Lorg/jsoup/helper/DataUtil;->e(Lorg/jsoup/helper/DataUtil$CharsetDoc;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-object p0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->b:Lorg/jsoup/internal/ControllableInputStream;

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->close()V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :catchall_1
    move-exception p1

    .line 26
    const/4 p0, 0x0

    .line 27
    :goto_0
    if-eqz p0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->b:Lorg/jsoup/internal/ControllableInputStream;

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->close()V

    .line 32
    .line 33
    .line 34
    :cond_1
    throw p1
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "[\"\']"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    return-object p0

    .line 43
    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/jsoup/helper/DataUtil;->load(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->load(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;I)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object p0

    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->f(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;I)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->f(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    .line 3
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->load(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0

    .line 4
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->d(Ljava/nio/file/Path;)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->f(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jsoup/internal/ControllableInputStream;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static streamParser(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/parser/StreamParser;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/parser/StreamParser;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lorg/jsoup/parser/StreamParser;-><init>(Lorg/jsoup/parser/Parser;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    :try_start_0
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->d(Ljava/nio/file/Path;)Lorg/jsoup/internal/ControllableInputStream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->a(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/DataUtil$CharsetDoc;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lorg/jsoup/internal/SimpleStreamReader;

    .line 23
    .line 24
    iget-object p3, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->b:Lorg/jsoup/internal/ControllableInputStream;

    .line 25
    .line 26
    iget-object p0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->a:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-direct {p1, p3, p0}, Lorg/jsoup/internal/SimpleStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/StreamParser;->parse(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/parser/StreamParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {v0}, Lorg/jsoup/parser/StreamParser;->close()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method
