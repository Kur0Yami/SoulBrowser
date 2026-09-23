.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$24;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ForeignContent"

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 7

    .line 1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->a:[I

    .line 2
    .line 3
    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const-string v1, "script"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Unexpected state: "

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->wtf(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :pswitch_0
    check-cast p1, Lorg/jsoup/parser/Token$Character;

    .line 38
    .line 39
    iget-object v0, p1, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 40
    .line 41
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->C:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :cond_0
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->K(Lorg/jsoup/parser/Token$Character;)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->K(Lorg/jsoup/parser/Token$Character;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 72
    .line 73
    return v2

    .line 74
    :pswitch_1
    move-object v0, p1

    .line 75
    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    .line 76
    .line 77
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 78
    .line 79
    const-string v4, "br"

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_9

    .line 86
    .line 87
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 88
    .line 89
    const-string v4, "p"

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_2
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_4

    .line 106
    .line 107
    iget-object v3, p2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_3

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v3, "http://www.w3.org/2000/svg"

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 149
    .line 150
    .line 151
    return v2

    .line 152
    :cond_4
    :goto_0
    iget-object v1, p2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_5

    .line 159
    .line 160
    const-string v3, "Stack unexpectedly empty"

    .line 161
    .line 162
    invoke-static {v3}, Lorg/jsoup/helper/Validate;->wtf(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    sub-int/2addr v3, v2

    .line 170
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 175
    .line 176
    iget-object v5, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-nez v5, :cond_6

    .line 183
    .line 184
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    if-eqz v3, :cond_f

    .line 188
    .line 189
    iget-object v5, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_8

    .line 196
    .line 197
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iget-object v0, p2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    sub-int/2addr v0, v2

    .line 208
    :goto_1
    if-ltz v0, :cond_f

    .line 209
    .line 210
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_7

    .line 219
    .line 220
    goto/16 :goto_4

    .line 221
    .line 222
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 226
    .line 227
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 232
    .line 233
    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v5}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    const-string v6, "http://www.w3.org/1999/xhtml"

    .line 242
    .line 243
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_6

    .line 248
    .line 249
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 250
    .line 251
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    return p1

    .line 256
    :cond_9
    :goto_2
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 257
    .line 258
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    return p1

    .line 263
    :pswitch_2
    move-object v0, p1

    .line 264
    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    .line 265
    .line 266
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 267
    .line 268
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->L:[Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_a

    .line 275
    .line 276
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 277
    .line 278
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    return p1

    .line 283
    :cond_a
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 284
    .line 285
    const-string v4, "font"

    .line 286
    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_d

    .line 292
    .line 293
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 294
    .line 295
    if-eqz v3, :cond_b

    .line 296
    .line 297
    const-string v4, "color"

    .line 298
    .line 299
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_b

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_b
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 307
    .line 308
    if-eqz v3, :cond_c

    .line 309
    .line 310
    const-string v4, "face"

    .line 311
    .line 312
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_c

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_c
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 320
    .line 321
    if-eqz v3, :cond_d

    .line 322
    .line 323
    const-string v4, "size"

    .line 324
    .line 325
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    if-eqz v3, :cond_d

    .line 330
    .line 331
    :goto_3
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 332
    .line 333
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    return p1

    .line 338
    :cond_d
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p2, v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->P(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v3, v0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 354
    .line 355
    invoke-virtual {v3}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    iget-object v4, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 360
    .line 361
    iget-object v5, p2, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseSettings;

    .line 362
    .line 363
    invoke-virtual {p2, v3, v4, p1, v5}, Lorg/jsoup/parser/TreeBuilder;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->b()Lorg/jsoup/parser/TokeniserState;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    if-eqz p1, :cond_f

    .line 372
    .line 373
    iget-object v0, v0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_e

    .line 380
    .line 381
    iget-object p1, p2, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 382
    .line 383
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->j:Lorg/jsoup/parser/TokeniserState$6;

    .line 384
    .line 385
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 386
    .line 387
    .line 388
    return v2

    .line 389
    :cond_e
    iget-object p2, p2, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 390
    .line 391
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 392
    .line 393
    .line 394
    :cond_f
    :goto_4
    :pswitch_3
    return v2

    .line 395
    :pswitch_4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 396
    .line 397
    .line 398
    return v2

    .line 399
    :pswitch_5
    check-cast p1, Lorg/jsoup/parser/Token$Comment;

    .line 400
    .line 401
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->M(Lorg/jsoup/parser/Token$Comment;)V

    .line 402
    .line 403
    .line 404
    return v2

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
