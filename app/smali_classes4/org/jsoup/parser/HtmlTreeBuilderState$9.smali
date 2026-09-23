.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$9;
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
    const-string v0, "InTable"

    .line 2
    .line 3
    const/16 v1, 0x8

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
    .locals 9

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->z:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->v:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 29
    .line 30
    iput-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 31
    .line 32
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->n:Lorg/jsoup/parser/HtmlTreeBuilderState$10;

    .line 33
    .line 34
    iput-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    check-cast p1, Lorg/jsoup/parser/Token$Comment;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->M(Lorg/jsoup/parser/Token$Comment;)V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v2, 0x0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 62
    .line 63
    .line 64
    return v2

    .line 65
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const-string v3, "template"

    .line 70
    .line 71
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->h:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 72
    .line 73
    const-string v5, "table"

    .line 74
    .line 75
    if-eqz v0, :cond_12

    .line 76
    .line 77
    move-object v0, p1

    .line 78
    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    .line 79
    .line 80
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const-string v7, "caption"

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_3

    .line 91
    .line 92
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->x()V

    .line 93
    .line 94
    .line 95
    iget-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 102
    .line 103
    .line 104
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->o:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    .line 105
    .line 106
    iput-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 107
    .line 108
    return v1

    .line 109
    :cond_3
    const-string v7, "colgroup"

    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_4

    .line 116
    .line 117
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->x()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 121
    .line 122
    .line 123
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    .line 124
    .line 125
    iput-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 126
    .line 127
    return v1

    .line 128
    :cond_4
    const-string v8, "col"

    .line 129
    .line 130
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_5

    .line 135
    .line 136
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->x()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/TreeBuilder;->o(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    return p1

    .line 147
    :cond_5
    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->r:[Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v6, v7}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_6

    .line 154
    .line 155
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->x()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 159
    .line 160
    .line 161
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->q:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 162
    .line 163
    iput-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 164
    .line 165
    return v1

    .line 166
    :cond_6
    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->s:[Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v6, v7}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_7

    .line 173
    .line 174
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->x()V

    .line 175
    .line 176
    .line 177
    const-string v0, "tbody"

    .line 178
    .line 179
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->o(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    return p1

    .line 187
    :cond_7
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_a

    .line 192
    .line 193
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->J(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_8

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_8
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->b0()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_9

    .line 211
    .line 212
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 213
    .line 214
    .line 215
    return v1

    .line 216
    :cond_9
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    return p1

    .line 221
    :cond_a
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->t:[Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v6, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_b

    .line 228
    .line 229
    invoke-virtual {v4, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    return p1

    .line 234
    :cond_b
    const-string v4, "input"

    .line 235
    .line 236
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_e

    .line 241
    .line 242
    iget-object v2, v0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 243
    .line 244
    if-eqz v2, :cond_d

    .line 245
    .line 246
    const-string v3, "type"

    .line 247
    .line 248
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    const-string v3, "hidden"

    .line 253
    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-nez v2, :cond_c

    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_c
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 262
    .line 263
    .line 264
    return v1

    .line 265
    :cond_d
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->e(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 266
    .line 267
    .line 268
    return v1

    .line 269
    :cond_e
    const-string v4, "form"

    .line 270
    .line 271
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_11

    .line 276
    .line 277
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    .line 281
    .line 282
    if-nez p1, :cond_10

    .line 283
    .line 284
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-eqz p1, :cond_f

    .line 289
    .line 290
    goto :goto_1

    .line 291
    :cond_f
    invoke-virtual {p2, v0, v2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->Q(Lorg/jsoup/parser/Token$StartTag;ZZ)V

    .line 292
    .line 293
    .line 294
    return v1

    .line 295
    :cond_10
    :goto_1
    return v2

    .line 296
    :cond_11
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->e(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 297
    .line 298
    .line 299
    return v1

    .line 300
    :cond_12
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_17

    .line 305
    .line 306
    move-object v0, p1

    .line 307
    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    .line 308
    .line 309
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v6

    .line 317
    if-eqz v6, :cond_14

    .line 318
    .line 319
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->J(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-nez p1, :cond_13

    .line 324
    .line 325
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 326
    .line 327
    .line 328
    return v2

    .line 329
    :cond_13
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->b0()Z

    .line 333
    .line 334
    .line 335
    return v1

    .line 336
    :cond_14
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->y:[Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v0, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-eqz v5, :cond_15

    .line 343
    .line 344
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 345
    .line 346
    .line 347
    return v2

    .line 348
    :cond_15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_16

    .line 353
    .line 354
    invoke-virtual {v4, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 355
    .line 356
    .line 357
    return v1

    .line 358
    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->e(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 359
    .line 360
    .line 361
    return v1

    .line 362
    :cond_17
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_19

    .line 367
    .line 368
    const-string p1, "html"

    .line 369
    .line 370
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    if-eqz p1, :cond_18

    .line 375
    .line 376
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 377
    .line 378
    .line 379
    :cond_18
    return v1

    .line 380
    :cond_19
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->e(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 381
    .line 382
    .line 383
    return v1
.end method

.method public final e(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->y:Z

    .line 6
    .line 7
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->y:Z

    .line 14
    .line 15
    return-void
.end method
