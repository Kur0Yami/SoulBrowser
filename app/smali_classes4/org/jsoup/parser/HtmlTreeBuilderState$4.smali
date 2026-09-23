.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$4;
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
    const-string v0, "InHead"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lorg/jsoup/parser/Token$Character;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->K(Lorg/jsoup/parser/Token$Character;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->a:[I

    .line 15
    .line 16
    iget-object v2, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    aget v0, v0, v2

    .line 23
    .line 24
    if-eq v0, v1, :cond_14

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eq v0, v2, :cond_13

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    const-string v4, "template"

    .line 32
    .line 33
    const-string v5, "head"

    .line 34
    .line 35
    if-eq v0, v2, :cond_7

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    if-eq v0, v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_1
    move-object v0, p1

    .line 49
    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 62
    .line 63
    .line 64
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState$6;

    .line 65
    .line 66
    iput-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 67
    .line 68
    return v1

    .line 69
    :cond_2
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->c:[Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1

    .line 85
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 98
    .line 99
    .line 100
    return v1

    .line 101
    :cond_4
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->D(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_5

    .line 109
    .line 110
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->W()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->b0()Z

    .line 123
    .line 124
    .line 125
    return v1

    .line 126
    :cond_6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 127
    .line 128
    .line 129
    return v3

    .line 130
    :cond_7
    move-object v0, p1

    .line 131
    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    .line 132
    .line 133
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v6, "html"

    .line 138
    .line 139
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_8

    .line 144
    .line 145
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 146
    .line 147
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    return p1

    .line 152
    :cond_8
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->a:[Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v2, v6}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_b

    .line 159
    .line 160
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string v0, "base"

    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_a

    .line 171
    .line 172
    const-string v0, "href"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_a

    .line 179
    .line 180
    iget-boolean v2, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->p:Z

    .line 181
    .line 182
    if-eqz v2, :cond_9

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_9
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    iput-object p1, p2, Lorg/jsoup/parser/TreeBuilder;->f:Ljava/lang/String;

    .line 196
    .line 197
    iput-boolean v1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->p:Z

    .line 198
    .line 199
    iget-object p2, p2, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 200
    .line 201
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Node;->setBaseUri(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_a
    :goto_0
    return v1

    .line 205
    :cond_b
    const-string v6, "meta"

    .line 206
    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_c

    .line 212
    .line 213
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->O(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 214
    .line 215
    .line 216
    return v1

    .line 217
    :cond_c
    const-string v6, "title"

    .line 218
    .line 219
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_d

    .line 224
    .line 225
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->r(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->b()Lorg/jsoup/parser/TokeniserState;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {v0, p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    .line 234
    .line 235
    .line 236
    return v1

    .line 237
    :cond_d
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->b:[Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v2, v6}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_e

    .line 244
    .line 245
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/TreeBuilder;->r(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->b()Lorg/jsoup/parser/TokeniserState;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {v0, p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->b(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    .line 254
    .line 255
    .line 256
    return v1

    .line 257
    :cond_e
    const-string v6, "noscript"

    .line 258
    .line 259
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-eqz v6, :cond_f

    .line 264
    .line 265
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 266
    .line 267
    .line 268
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->i:Lorg/jsoup/parser/HtmlTreeBuilderState$5;

    .line 269
    .line 270
    iput-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 271
    .line 272
    return v1

    .line 273
    :cond_f
    const-string v6, "script"

    .line 274
    .line 275
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v6, :cond_10

    .line 280
    .line 281
    iget-object p1, p2, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 282
    .line 283
    sget-object v2, Lorg/jsoup/parser/TokeniserState;->j:Lorg/jsoup/parser/TokeniserState$6;

    .line 284
    .line 285
    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 286
    .line 287
    .line 288
    iget-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 289
    .line 290
    iput-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 291
    .line 292
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->l:Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    .line 293
    .line 294
    iput-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 295
    .line 296
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 297
    .line 298
    .line 299
    return v1

    .line 300
    :cond_10
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-eqz v6, :cond_11

    .line 305
    .line 306
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 307
    .line 308
    .line 309
    return v3

    .line 310
    :cond_11
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_12

    .line 315
    .line 316
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 317
    .line 318
    .line 319
    iget-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 320
    .line 321
    const/4 v0, 0x0

    .line 322
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    iput-boolean v3, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 326
    .line 327
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 328
    .line 329
    iput-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 330
    .line 331
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->X(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 332
    .line 333
    .line 334
    return v1

    .line 335
    :cond_12
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/TreeBuilder;->n(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    return p1

    .line 343
    :cond_13
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 344
    .line 345
    .line 346
    return v3

    .line 347
    :cond_14
    check-cast p1, Lorg/jsoup/parser/Token$Comment;

    .line 348
    .line 349
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->M(Lorg/jsoup/parser/Token$Comment;)V

    .line 350
    .line 351
    .line 352
    return v1
.end method
