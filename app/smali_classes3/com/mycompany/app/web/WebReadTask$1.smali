.class Lcom/mycompany/app/web/WebReadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebReadTask;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebReadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebReadTask$1;->c:Lcom/mycompany/app/web/WebReadTask;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final head(Lorg/jsoup/nodes/Node;I)V
    .locals 11

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lcom/mycompany/app/web/WebReadTask$1;->c:Lcom/mycompany/app/web/WebReadTask;

    .line 8
    .line 9
    if-eqz p2, :cond_14

    .line 10
    .line 11
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    goto/16 :goto_a

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    goto/16 :goto_a

    .line 36
    .line 37
    :cond_1
    iget-boolean v4, v3, Lcom/mycompany/app/web/WebReadTask;->p:Z

    .line 38
    .line 39
    if-eqz v4, :cond_5

    .line 40
    .line 41
    iput-boolean v2, v3, Lcom/mycompany/app/web/WebReadTask;->p:Z

    .line 42
    .line 43
    iget-object v4, v3, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_3

    .line 50
    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-ge v5, v6, :cond_4

    .line 67
    .line 68
    :cond_3
    :goto_0
    move v4, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    :goto_1
    if-eqz v4, :cond_5

    .line 75
    .line 76
    goto/16 :goto_a

    .line 77
    .line 78
    :cond_5
    invoke-static {v3, v1}, Lcom/mycompany/app/web/WebReadTask;->d(Lcom/mycompany/app/web/WebReadTask;Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-nez v3, :cond_6

    .line 83
    .line 84
    goto/16 :goto_a

    .line 85
    .line 86
    :cond_6
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    instance-of v5, v4, Lorg/jsoup/nodes/Element;

    .line 91
    .line 92
    if-eqz v5, :cond_9

    .line 93
    .line 94
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 95
    .line 96
    move v5, v2

    .line 97
    :cond_7
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v6}, Lorg/jsoup/parser/Tag;->preserveWhitespace()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_8

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_8
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    add-int/2addr v5, v1

    .line 113
    const/4 v6, 0x6

    .line 114
    if-ge v5, v6, :cond_9

    .line 115
    .line 116
    if-nez v4, :cond_7

    .line 117
    .line 118
    :cond_9
    instance-of p1, p1, Lorg/jsoup/nodes/CDataNode;

    .line 119
    .line 120
    if-eqz p1, :cond_a

    .line 121
    .line 122
    :goto_2
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    const/16 v4, 0x20

    .line 131
    .line 132
    if-nez p1, :cond_b

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    sub-int/2addr p1, v1

    .line 140
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eq p1, v4, :cond_d

    .line 145
    .line 146
    if-ne p1, v0, :cond_c

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_c
    :goto_3
    move p1, v2

    .line 150
    goto :goto_5

    .line 151
    :cond_d
    :goto_4
    move p1, v1

    .line 152
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    move v6, v2

    .line 157
    move v7, v6

    .line 158
    move v8, v7

    .line 159
    :goto_6
    if-ge v6, v5, :cond_1f

    .line 160
    .line 161
    invoke-virtual {p2, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eq v9, v4, :cond_10

    .line 166
    .line 167
    const/16 v10, 0x9

    .line 168
    .line 169
    if-eq v9, v10, :cond_10

    .line 170
    .line 171
    if-eq v9, v0, :cond_10

    .line 172
    .line 173
    const/16 v10, 0xc

    .line 174
    .line 175
    if-eq v9, v10, :cond_10

    .line 176
    .line 177
    const/16 v10, 0xd

    .line 178
    .line 179
    if-eq v9, v10, :cond_10

    .line 180
    .line 181
    const/16 v10, 0xa0

    .line 182
    .line 183
    if-ne v9, v10, :cond_e

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_e
    const/16 v10, 0x200b

    .line 187
    .line 188
    if-eq v9, v10, :cond_13

    .line 189
    .line 190
    const/16 v10, 0xad

    .line 191
    .line 192
    if-ne v9, v10, :cond_f

    .line 193
    .line 194
    goto :goto_8

    .line 195
    :cond_f
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    move v7, v1

    .line 199
    move v8, v2

    .line 200
    goto :goto_8

    .line 201
    :cond_10
    :goto_7
    if-eqz p1, :cond_11

    .line 202
    .line 203
    if-eqz v7, :cond_13

    .line 204
    .line 205
    :cond_11
    if-eqz v8, :cond_12

    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    move v8, v1

    .line 212
    :cond_13
    :goto_8
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    add-int/2addr v6, v9

    .line 217
    goto :goto_6

    .line 218
    :cond_14
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 219
    .line 220
    if-eqz p2, :cond_1f

    .line 221
    .line 222
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 223
    .line 224
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    const-string v4, "img"

    .line 229
    .line 230
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_19

    .line 235
    .line 236
    iget-boolean v4, v3, Lcom/mycompany/app/web/WebReadTask;->d:Z

    .line 237
    .line 238
    if-eqz v4, :cond_15

    .line 239
    .line 240
    const-string v4, "amp-img"

    .line 241
    .line 242
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_15

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_15
    invoke-static {v3, v2}, Lcom/mycompany/app/web/WebReadTask;->d(Lcom/mycompany/app/web/WebReadTask;Z)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    if-nez v4, :cond_16

    .line 254
    .line 255
    goto/16 :goto_a

    .line 256
    .line 257
    :cond_16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-lez v5, :cond_1f

    .line 262
    .line 263
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_17

    .line 268
    .line 269
    const-string p1, "br"

    .line 270
    .line 271
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-eqz p1, :cond_1f

    .line 276
    .line 277
    :cond_17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_18

    .line 282
    .line 283
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    sub-int/2addr p1, v1

    .line 288
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-ne p1, v0, :cond_18

    .line 293
    .line 294
    goto :goto_a

    .line 295
    :cond_18
    new-instance p1, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 296
    .line 297
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 298
    .line 299
    .line 300
    iput v2, p1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 301
    .line 302
    iget-object p2, v3, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :cond_19
    :goto_9
    iget-object p2, v3, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 309
    .line 310
    if-nez p2, :cond_1a

    .line 311
    .line 312
    goto :goto_a

    .line 313
    :cond_1a
    invoke-static {p1}, Lcom/mycompany/app/web/WebReadTask;->q(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    if-eqz p2, :cond_1b

    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_1b
    iget-object p2, v3, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    if-eqz p2, :cond_1d

    .line 331
    .line 332
    iput-object p1, v3, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 333
    .line 334
    iget-object p2, v3, Lcom/mycompany/app/web/WebReadTask;->c:Lcom/mycompany/app/web/WebReadTask$WebReadListener;

    .line 335
    .line 336
    if-eqz p2, :cond_1c

    .line 337
    .line 338
    invoke-interface {p2, p1}, Lcom/mycompany/app/web/WebReadTask$WebReadListener;->d(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :cond_1c
    iput-boolean v2, v3, Lcom/mycompany/app/web/WebReadTask;->q:Z

    .line 342
    .line 343
    return-void

    .line 344
    :cond_1d
    iget-boolean p2, v3, Lcom/mycompany/app/web/WebReadTask;->q:Z

    .line 345
    .line 346
    if-eqz p2, :cond_1e

    .line 347
    .line 348
    iput-boolean v2, v3, Lcom/mycompany/app/web/WebReadTask;->q:Z

    .line 349
    .line 350
    return-void

    .line 351
    :cond_1e
    new-instance p2, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 352
    .line 353
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 354
    .line 355
    .line 356
    const/4 v0, 0x3

    .line 357
    iput v0, p2, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 358
    .line 359
    iput-object p1, p2, Lcom/mycompany/app/web/WebReadTask$ReadItem;->c:Ljava/lang/String;

    .line 360
    .line 361
    iget-object p1, v3, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    :cond_1f
    :goto_a
    return-void
.end method

.method public final tail(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask$1;->c:Lcom/mycompany/app/web/WebReadTask;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebReadTask;->d(Lcom/mycompany/app/web/WebReadTask;Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->isBlock()Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    instance-of p1, p1, Lorg/jsoup/nodes/TextNode;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/16 p2, 0x20

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    sub-int/2addr p1, v1

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eq p1, p2, :cond_3

    .line 51
    .line 52
    const/16 v1, 0xa

    .line 53
    .line 54
    if-ne p1, v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method public final synthetic traverse(Lorg/jsoup/nodes/Node;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jsoup/select/d;->b(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-void
.end method
