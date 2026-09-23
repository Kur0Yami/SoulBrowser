.class public Lorg/jsoup/parser/HtmlTreeBuilder;
.super Lorg/jsoup/parser/TreeBuilder;
.source "SourceFile"


# static fields
.field public static final B:[Ljava/lang/String;

.field public static final C:[Ljava/lang/String;

.field public static final D:[Ljava/lang/String;

.field public static final E:[Ljava/lang/String;

.field public static final F:[Ljava/lang/String;

.field public static final G:[Ljava/lang/String;

.field public static final H:[Ljava/lang/String;

.field public static final I:[Ljava/lang/String;

.field public static final J:[Ljava/lang/String;

.field public static final K:[Ljava/lang/String;

.field public static final L:[Ljava/lang/String;

.field public static final M:[Ljava/lang/String;

.field public static final MaxScopeSearchDepth:I = 0x64

.field public static final N:[Ljava/lang/String;

.field public static final O:[Ljava/lang/String;


# instance fields
.field public final A:[Ljava/lang/String;

.field public n:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public o:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public p:Z

.field public q:Lorg/jsoup/nodes/Element;

.field public r:Lorg/jsoup/nodes/FormElement;

.field public s:Lorg/jsoup/nodes/Element;

.field public t:Ljava/util/ArrayList;

.field public u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:Lorg/jsoup/parser/Token$EndTag;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 87

    .line 1
    const-string v7, "template"

    .line 2
    .line 3
    const-string v8, "th"

    .line 4
    .line 5
    const-string v0, "applet"

    .line 6
    .line 7
    const-string v1, "caption"

    .line 8
    .line 9
    const-string v2, "html"

    .line 10
    .line 11
    const-string v3, "marquee"

    .line 12
    .line 13
    const-string v4, "object"

    .line 14
    .line 15
    const-string v5, "table"

    .line 16
    .line 17
    const-string v6, "td"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->B:[Ljava/lang/String;

    .line 24
    .line 25
    const-string v5, "ms"

    .line 26
    .line 27
    const-string v6, "mtext"

    .line 28
    .line 29
    const-string v1, "annotation-xml"

    .line 30
    .line 31
    const-string v2, "mi"

    .line 32
    .line 33
    const-string v3, "mn"

    .line 34
    .line 35
    const-string v4, "mo"

    .line 36
    .line 37
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->C:[Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "desc"

    .line 44
    .line 45
    const-string v1, "foreignObject"

    .line 46
    .line 47
    const-string v2, "title"

    .line 48
    .line 49
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->D:[Ljava/lang/String;

    .line 54
    .line 55
    const-string v3, "ol"

    .line 56
    .line 57
    const-string v4, "ul"

    .line 58
    .line 59
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->E:[Ljava/lang/String;

    .line 64
    .line 65
    const-string v3, "button"

    .line 66
    .line 67
    filled-new-array {v3}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->F:[Ljava/lang/String;

    .line 72
    .line 73
    const-string v3, "html"

    .line 74
    .line 75
    const-string v4, "table"

    .line 76
    .line 77
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->G:[Ljava/lang/String;

    .line 82
    .line 83
    const-string v3, "optgroup"

    .line 84
    .line 85
    const-string v4, "option"

    .line 86
    .line 87
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->H:[Ljava/lang/String;

    .line 92
    .line 93
    const-string v12, "rt"

    .line 94
    .line 95
    const-string v13, "rtc"

    .line 96
    .line 97
    const-string v4, "dd"

    .line 98
    .line 99
    const-string v5, "dt"

    .line 100
    .line 101
    const-string v6, "li"

    .line 102
    .line 103
    const-string v7, "optgroup"

    .line 104
    .line 105
    const-string v8, "option"

    .line 106
    .line 107
    const-string v9, "p"

    .line 108
    .line 109
    const-string v10, "rb"

    .line 110
    .line 111
    const-string v11, "rp"

    .line 112
    .line 113
    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->I:[Ljava/lang/String;

    .line 118
    .line 119
    const-string v20, "thead"

    .line 120
    .line 121
    const-string v21, "tr"

    .line 122
    .line 123
    const-string v4, "caption"

    .line 124
    .line 125
    const-string v5, "colgroup"

    .line 126
    .line 127
    const-string v6, "dd"

    .line 128
    .line 129
    const-string v7, "dt"

    .line 130
    .line 131
    const-string v8, "li"

    .line 132
    .line 133
    const-string v9, "optgroup"

    .line 134
    .line 135
    const-string v10, "option"

    .line 136
    .line 137
    const-string v11, "p"

    .line 138
    .line 139
    const-string v12, "rb"

    .line 140
    .line 141
    const-string v13, "rp"

    .line 142
    .line 143
    const-string v14, "rt"

    .line 144
    .line 145
    const-string v15, "rtc"

    .line 146
    .line 147
    const-string v16, "tbody"

    .line 148
    .line 149
    const-string v17, "td"

    .line 150
    .line 151
    const-string v18, "tfoot"

    .line 152
    .line 153
    const-string v19, "th"

    .line 154
    .line 155
    filled-new-array/range {v4 .. v21}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->J:[Ljava/lang/String;

    .line 160
    .line 161
    const-string v85, "wbr"

    .line 162
    .line 163
    const-string v86, "xmp"

    .line 164
    .line 165
    const-string v4, "address"

    .line 166
    .line 167
    const-string v5, "applet"

    .line 168
    .line 169
    const-string v6, "area"

    .line 170
    .line 171
    const-string v7, "article"

    .line 172
    .line 173
    const-string v8, "aside"

    .line 174
    .line 175
    const-string v9, "base"

    .line 176
    .line 177
    const-string v10, "basefont"

    .line 178
    .line 179
    const-string v11, "bgsound"

    .line 180
    .line 181
    const-string v12, "blockquote"

    .line 182
    .line 183
    const-string v13, "body"

    .line 184
    .line 185
    const-string v14, "br"

    .line 186
    .line 187
    const-string v15, "button"

    .line 188
    .line 189
    const-string v16, "caption"

    .line 190
    .line 191
    const-string v17, "center"

    .line 192
    .line 193
    const-string v18, "col"

    .line 194
    .line 195
    const-string v19, "colgroup"

    .line 196
    .line 197
    const-string v20, "dd"

    .line 198
    .line 199
    const-string v21, "details"

    .line 200
    .line 201
    const-string v22, "dir"

    .line 202
    .line 203
    const-string v23, "div"

    .line 204
    .line 205
    const-string v24, "dl"

    .line 206
    .line 207
    const-string v25, "dt"

    .line 208
    .line 209
    const-string v26, "embed"

    .line 210
    .line 211
    const-string v27, "fieldset"

    .line 212
    .line 213
    const-string v28, "figcaption"

    .line 214
    .line 215
    const-string v29, "figure"

    .line 216
    .line 217
    const-string v30, "footer"

    .line 218
    .line 219
    const-string v31, "form"

    .line 220
    .line 221
    const-string v32, "frame"

    .line 222
    .line 223
    const-string v33, "frameset"

    .line 224
    .line 225
    const-string v34, "h1"

    .line 226
    .line 227
    const-string v35, "h2"

    .line 228
    .line 229
    const-string v36, "h3"

    .line 230
    .line 231
    const-string v37, "h4"

    .line 232
    .line 233
    const-string v38, "h5"

    .line 234
    .line 235
    const-string v39, "h6"

    .line 236
    .line 237
    const-string v40, "head"

    .line 238
    .line 239
    const-string v41, "header"

    .line 240
    .line 241
    const-string v42, "hgroup"

    .line 242
    .line 243
    const-string v43, "hr"

    .line 244
    .line 245
    const-string v44, "html"

    .line 246
    .line 247
    const-string v45, "iframe"

    .line 248
    .line 249
    const-string v46, "img"

    .line 250
    .line 251
    const-string v47, "input"

    .line 252
    .line 253
    const-string v48, "keygen"

    .line 254
    .line 255
    const-string v49, "li"

    .line 256
    .line 257
    const-string v50, "link"

    .line 258
    .line 259
    const-string v51, "listing"

    .line 260
    .line 261
    const-string v52, "main"

    .line 262
    .line 263
    const-string v53, "marquee"

    .line 264
    .line 265
    const-string v54, "menu"

    .line 266
    .line 267
    const-string v55, "meta"

    .line 268
    .line 269
    const-string v56, "nav"

    .line 270
    .line 271
    const-string v57, "noembed"

    .line 272
    .line 273
    const-string v58, "noframes"

    .line 274
    .line 275
    const-string v59, "noscript"

    .line 276
    .line 277
    const-string v60, "object"

    .line 278
    .line 279
    const-string v61, "ol"

    .line 280
    .line 281
    const-string v62, "p"

    .line 282
    .line 283
    const-string v63, "param"

    .line 284
    .line 285
    const-string v64, "plaintext"

    .line 286
    .line 287
    const-string v65, "pre"

    .line 288
    .line 289
    const-string v66, "script"

    .line 290
    .line 291
    const-string v67, "search"

    .line 292
    .line 293
    const-string v68, "section"

    .line 294
    .line 295
    const-string v69, "select"

    .line 296
    .line 297
    const-string v70, "source"

    .line 298
    .line 299
    const-string v71, "style"

    .line 300
    .line 301
    const-string v72, "summary"

    .line 302
    .line 303
    const-string v73, "table"

    .line 304
    .line 305
    const-string v74, "tbody"

    .line 306
    .line 307
    const-string v75, "td"

    .line 308
    .line 309
    const-string v76, "template"

    .line 310
    .line 311
    const-string v77, "textarea"

    .line 312
    .line 313
    const-string v78, "tfoot"

    .line 314
    .line 315
    const-string v79, "th"

    .line 316
    .line 317
    const-string v80, "thead"

    .line 318
    .line 319
    const-string v81, "title"

    .line 320
    .line 321
    const-string v82, "tr"

    .line 322
    .line 323
    const-string v83, "track"

    .line 324
    .line 325
    const-string v84, "ul"

    .line 326
    .line 327
    filled-new-array/range {v4 .. v86}, [Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->K:[Ljava/lang/String;

    .line 332
    .line 333
    const-string v8, "ms"

    .line 334
    .line 335
    const-string v9, "mtext"

    .line 336
    .line 337
    const-string v4, "annotation-xml"

    .line 338
    .line 339
    const-string v5, "mi"

    .line 340
    .line 341
    const-string v6, "mn"

    .line 342
    .line 343
    const-string v7, "mo"

    .line 344
    .line 345
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->L:[Ljava/lang/String;

    .line 350
    .line 351
    const-string v3, "ms"

    .line 352
    .line 353
    const-string v4, "mtext"

    .line 354
    .line 355
    const-string v5, "mi"

    .line 356
    .line 357
    const-string v6, "mn"

    .line 358
    .line 359
    const-string v7, "mo"

    .line 360
    .line 361
    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->M:[Ljava/lang/String;

    .line 366
    .line 367
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->N:[Ljava/lang/String;

    .line 372
    .line 373
    const-string v7, "select"

    .line 374
    .line 375
    const-string v8, "textarea"

    .line 376
    .line 377
    const-string v1, "button"

    .line 378
    .line 379
    const-string v2, "fieldset"

    .line 380
    .line 381
    const-string v3, "input"

    .line 382
    .line 383
    const-string v4, "keygen"

    .line 384
    .line 385
    const-string v5, "object"

    .line 386
    .line 387
    const-string v6, "output"

    .line 388
    .line 389
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->O:[Ljava/lang/String;

    .line 394
    .line 395
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->A:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static R(Lorg/jsoup/nodes/Element;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, -0x1

    .line 22
    sparse-switch v1, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :sswitch_0
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x2

    .line 36
    goto :goto_0

    .line 37
    :sswitch_1
    const-string v1, "http://www.w3.org/2000/svg"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :sswitch_2
    const-string v1, "http://www.w3.org/1999/xhtml"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v3, v2

    .line 58
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :pswitch_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->L:[Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p0, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0

    .line 69
    :pswitch_1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->N:[Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {p0, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0

    .line 76
    :pswitch_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->K:[Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p0, v0}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0

    .line 83
    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_2
        -0x361a2f35 -> :sswitch_1
        0x759d29f7 -> :sswitch_0
    .end sparse-switch

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    const/16 v2, 0x100

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    .line 12
    add-int/lit16 v0, v0, -0x101

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v3

    .line 16
    :goto_0
    if-lt v1, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 23
    .line 24
    if-ne v2, p1, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v3
.end method


# virtual methods
.method public final A(Lorg/jsoup/nodes/Element;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lorg/jsoup/parser/Tag;->c:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "http://www.w3.org/1999/xhtml"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilder;->O:[Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/FormElement;->addElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/FormElement;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->a:Lorg/jsoup/parser/Parser;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x1

    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const-string v0, "xmlns"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const/4 v4, 0x2

    .line 85
    new-array v4, v4, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object v0, v4, v2

    .line 88
    .line 89
    aput-object v3, v4, v1

    .line 90
    .line 91
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->a:Lorg/jsoup/parser/Parser;

    .line 92
    .line 93
    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    new-instance v3, Lorg/jsoup/parser/ParseError;

    .line 104
    .line 105
    iget-object v5, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 106
    .line 107
    const-string v6, "Invalid xmlns attribute [%s] on tag [%s]"

    .line 108
    .line 109
    invoke-direct {v3, v5, v6, v4}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_1
    iget-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->y:Z

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->z:[Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v0, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    const-string v0, "table"

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->E(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_2

    .line 148
    .line 149
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->t(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    :goto_0
    move v7, v2

    .line 159
    move-object v2, v1

    .line 160
    move v1, v7

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :goto_1
    if-eqz v1, :cond_4

    .line 172
    .line 173
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 189
    .line 190
    .line 191
    :goto_2
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->j(Lorg/jsoup/nodes/Node;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->a:Lorg/jsoup/parser/Parser;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->a:Lorg/jsoup/parser/Parser;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 22
    .line 23
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    new-array v5, v5, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    aput-object v3, v5, v6

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    aput-object v4, v5, v3

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    aput-object p1, v5, v3

    .line 46
    .line 47
    const-string p1, "Unexpected %s token [%s] when in state [%s]"

    .line 48
    .line 49
    invoke-direct {v1, v2, p1, v5}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilder;->I:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->c(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    return-void
.end method

.method public final D(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilder;->J:[Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilder;->I:[Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "http://www.w3.org/1999/xhtml"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public final E(Ljava/lang/String;)Lorg/jsoup/nodes/Element;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    const/16 v2, 0x100

    .line 10
    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    add-int/lit16 v0, v0, -0x101

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-lt v1, v0, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 26
    .line 27
    const-string v3, "http://www.w3.org/1999/xhtml"

    .line 28
    .line 29
    invoke-virtual {v2, p1, v3}, Lorg/jsoup/nodes/Element;->elementIs(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public final F(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->A:[Ljava/lang/String;

    .line 3
    .line 4
    aput-object p1, v1, v0

    .line 5
    .line 6
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilder;->B:[Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilder;->F:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v1, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->I([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final G(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->A:[Ljava/lang/String;

    .line 3
    .line 4
    aput-object p1, v1, v0

    .line 5
    .line 6
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilder;->B:[Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->I([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final H(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilder;->H:[Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method public final I([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x65

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    :goto_0
    if-lt v1, v0, :cond_6

    .line 19
    .line 20
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v5, "http://www.w3.org/1999/xhtml"

    .line 41
    .line 42
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    invoke-static {v4, p1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_1
    invoke-static {v4, p2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    if-eqz p3, :cond_5

    .line 64
    .line 65
    invoke-static {v4, p3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilder;->B:[Ljava/lang/String;

    .line 73
    .line 74
    if-ne p2, v5, :cond_5

    .line 75
    .line 76
    const-string v5, "http://www.w3.org/1998/Math/MathML"

    .line 77
    .line 78
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_4

    .line 83
    .line 84
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilder;->C:[Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v4, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    const-string v5, "http://www.w3.org/2000/svg"

    .line 94
    .line 95
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilder;->D:[Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v4, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    :goto_1
    return v3
.end method

.method public final J(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->A:[Ljava/lang/String;

    .line 3
    .line 4
    aput-object p1, v1, v0

    .line 5
    .line 6
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilder;->G:[Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->I([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final K(Lorg/jsoup/parser/Token$Character;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->L(Lorg/jsoup/parser/Token$Character;Lorg/jsoup/nodes/Element;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final L(Lorg/jsoup/parser/Token$Character;Lorg/jsoup/nodes/Element;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of p1, p1, Lorg/jsoup/parser/Token$CData;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lorg/jsoup/nodes/CDataNode;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lorg/jsoup/nodes/CDataNode;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v1, Lorg/jsoup/parser/Tag;->Data:I

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tag;->is(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lorg/jsoup/nodes/DataNode;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Lorg/jsoup/nodes/TextNode;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->j(Lorg/jsoup/nodes/Node;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final M(Lorg/jsoup/parser/Token$Comment;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Comment;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/jsoup/parser/Token$Comment;->d:Lorg/jsoup/parser/TokenData;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->j(Lorg/jsoup/nodes/Node;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final N(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 5

    .line 1
    const-string v0, "http://www.w3.org/1999/xhtml"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->z(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->A(Lorg/jsoup/nodes/Element;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p1, Lorg/jsoup/parser/Token$Tag;->f:Z

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget v2, p1, Lorg/jsoup/parser/Tag;->h:I

    .line 20
    .line 21
    sget v3, Lorg/jsoup/parser/Tag;->SeenSelfClose:I

    .line 22
    .line 23
    or-int/2addr v2, v3

    .line 24
    iput v2, p1, Lorg/jsoup/parser/Tag;->h:I

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->isSelfClosing()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 45
    .line 46
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 52
    .line 53
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->w:Lorg/jsoup/parser/Token$EndTag;

    .line 54
    .line 55
    invoke-virtual {v1}, Lorg/jsoup/parser/Token$Tag;->n()Lorg/jsoup/parser/Token$Tag;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Token$Tag;->k(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->h(Lorg/jsoup/parser/Token;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 70
    .line 71
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->normalName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/4 v3, 0x1

    .line 76
    new-array v3, v3, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object p1, v3, v1

    .line 79
    .line 80
    iget-object p1, v2, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 81
    .line 82
    invoke-virtual {p1}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 89
    .line 90
    iget-object v2, v2, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 91
    .line 92
    const-string v4, "Tag [%s] cannot be self-closing; not a void tag"

    .line 93
    .line 94
    invoke-direct {v1, v2, v4, v3}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_2
    return-object v0
.end method

.method public final O(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 2

    .line 1
    const-string v0, "http://www.w3.org/1999/xhtml"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->z(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->A(Lorg/jsoup/nodes/Element;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public final P(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->z(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->A(Lorg/jsoup/nodes/Element;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p1, Lorg/jsoup/parser/Token$Tag;->f:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget p2, p1, Lorg/jsoup/parser/Tag;->h:I

    .line 18
    .line 19
    sget v0, Lorg/jsoup/parser/Tag;->SeenSelfClose:I

    .line 20
    .line 21
    or-int/2addr p2, v0

    .line 22
    iput p2, p1, Lorg/jsoup/parser/Tag;->h:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final Q(Lorg/jsoup/parser/Token$StartTag;ZZ)V
    .locals 2

    .line 1
    const-string v0, "http://www.w3.org/1999/xhtml"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->z(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/jsoup/nodes/FormElement;

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const-string p3, "template"

    .line 13
    .line 14
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->A(Lorg/jsoup/nodes/Element;)V

    .line 26
    .line 27
    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public final S(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->E(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final U([Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x65

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    :goto_0
    if-lt v1, v0, :cond_2

    .line 19
    .line 20
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, p1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return v3
.end method

.method public final V(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "http://www.w3.org/1999/xhtml"

    .line 16
    .line 17
    invoke-virtual {v1, p1, v2}, Lorg/jsoup/nodes/Element;->elementIs(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public final W()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->u:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final X(Lorg/jsoup/parser/HtmlTreeBuilderState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Y()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x100

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v2, v0}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v0, v1

    .line 33
    :goto_0
    if-eqz v0, :cond_8

    .line 34
    .line 35
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-static {v3, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v3, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/lit8 v4, v3, -0xc

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    if-gez v4, :cond_3

    .line 54
    .line 55
    move v4, v5

    .line 56
    :cond_3
    sub-int/2addr v3, v2

    .line 57
    move v6, v3

    .line 58
    :cond_4
    if-ne v6, v4, :cond_5

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 62
    .line 63
    add-int/lit8 v6, v6, -0x1

    .line 64
    .line 65
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    iget-object v7, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-static {v7, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    :cond_6
    move v2, v5

    .line 82
    :goto_1
    if-nez v2, :cond_7

    .line 83
    .line 84
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 85
    .line 86
    add-int/lit8 v6, v6, 0x1

    .line 87
    .line 88
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 93
    .line 94
    :cond_7
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lorg/jsoup/nodes/Element;

    .line 98
    .line 99
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const-string v8, "http://www.w3.org/1999/xhtml"

    .line 108
    .line 109
    iget-object v9, p0, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseSettings;

    .line 110
    .line 111
    invoke-virtual {p0, v4, v7, v8, v9}, Lorg/jsoup/parser/TreeBuilder;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-direct {v2, v4, v1, v7}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->A(Lorg/jsoup/nodes/Element;)V

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v4, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    if-ne v6, v3, :cond_6

    .line 135
    .line 136
    :cond_8
    :goto_2
    return-void
.end method

.method public final Z(Lorg/jsoup/nodes/Element;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final a()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->siblingNodes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Lorg/jsoup/nodes/Element;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {v1, v2, v0}, Lorg/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Lorg/jsoup/nodes/Element;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public final a0(Lorg/jsoup/nodes/Element;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TreeBuilder;->i(Lorg/jsoup/nodes/Node;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public final b0()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    const/16 v2, 0x100

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    add-int/lit16 v0, v0, -0x101

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    :goto_0
    iget-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 19
    .line 20
    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 29
    .line 30
    iput-object v4, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 31
    .line 32
    :cond_1
    move v4, v3

    .line 33
    :goto_1
    const/4 v5, 0x1

    .line 34
    if-lt v1, v0, :cond_19

    .line 35
    .line 36
    iget-object v6, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 43
    .line 44
    if-ne v1, v0, :cond_3

    .line 45
    .line 46
    iget-boolean v4, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->z:Z

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-object v6, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Lorg/jsoup/nodes/Element;

    .line 51
    .line 52
    :cond_2
    move v4, v5

    .line 53
    :cond_3
    if-eqz v6, :cond_4

    .line 54
    .line 55
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const-string v7, ""

    .line 61
    .line 62
    :goto_2
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v8, "http://www.w3.org/1999/xhtml"

    .line 71
    .line 72
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_5

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    const/4 v8, -0x1

    .line 88
    sparse-switch v6, :sswitch_data_0

    .line 89
    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :sswitch_0
    const-string v6, "caption"

    .line 94
    .line 95
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_6

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_6
    const/16 v8, 0xe

    .line 104
    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :sswitch_1
    const-string v6, "thead"

    .line 108
    .line 109
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_7

    .line 114
    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_7
    const/16 v8, 0xd

    .line 118
    .line 119
    goto/16 :goto_3

    .line 120
    .line 121
    :sswitch_2
    const-string v6, "tfoot"

    .line 122
    .line 123
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_8

    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_8
    const/16 v8, 0xc

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :sswitch_3
    const-string v6, "tbody"

    .line 136
    .line 137
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-nez v6, :cond_9

    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :cond_9
    const/16 v8, 0xb

    .line 146
    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :sswitch_4
    const-string v6, "table"

    .line 150
    .line 151
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_a

    .line 156
    .line 157
    goto/16 :goto_3

    .line 158
    .line 159
    :cond_a
    const/16 v8, 0xa

    .line 160
    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :sswitch_5
    const-string v6, "html"

    .line 164
    .line 165
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-nez v6, :cond_b

    .line 170
    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    :cond_b
    const/16 v8, 0x9

    .line 174
    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :sswitch_6
    const-string v6, "head"

    .line 178
    .line 179
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-nez v6, :cond_c

    .line 184
    .line 185
    goto/16 :goto_3

    .line 186
    .line 187
    :cond_c
    const/16 v8, 0x8

    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :sswitch_7
    const-string v6, "body"

    .line 192
    .line 193
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-nez v6, :cond_d

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_d
    const/4 v8, 0x7

    .line 201
    goto :goto_3

    .line 202
    :sswitch_8
    const-string v6, "tr"

    .line 203
    .line 204
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-nez v6, :cond_e

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_e
    const/4 v8, 0x6

    .line 212
    goto :goto_3

    .line 213
    :sswitch_9
    const-string v6, "th"

    .line 214
    .line 215
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-nez v6, :cond_f

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_f
    const/4 v8, 0x5

    .line 223
    goto :goto_3

    .line 224
    :sswitch_a
    const-string v6, "td"

    .line 225
    .line 226
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-nez v6, :cond_10

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_10
    const/4 v8, 0x4

    .line 234
    goto :goto_3

    .line 235
    :sswitch_b
    const-string v6, "colgroup"

    .line 236
    .line 237
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-nez v6, :cond_11

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_11
    const/4 v8, 0x3

    .line 245
    goto :goto_3

    .line 246
    :sswitch_c
    const-string v6, "select"

    .line 247
    .line 248
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-nez v6, :cond_12

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_12
    const/4 v8, 0x2

    .line 256
    goto :goto_3

    .line 257
    :sswitch_d
    const-string v6, "template"

    .line 258
    .line 259
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-nez v6, :cond_13

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_13
    move v8, v5

    .line 267
    goto :goto_3

    .line 268
    :sswitch_e
    const-string v6, "frameset"

    .line 269
    .line 270
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-nez v6, :cond_14

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_14
    move v8, v3

    .line 278
    :goto_3
    packed-switch v8, :pswitch_data_0

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :pswitch_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->o:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    .line 283
    .line 284
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 285
    .line 286
    goto/16 :goto_8

    .line 287
    .line 288
    :pswitch_1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->q:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 289
    .line 290
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :pswitch_2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->m:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 294
    .line 295
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :pswitch_3
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->q:Lorg/jsoup/nodes/Element;

    .line 299
    .line 300
    if-nez v0, :cond_15

    .line 301
    .line 302
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->g:Lorg/jsoup/parser/HtmlTreeBuilderState$3;

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_15
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->j:Lorg/jsoup/parser/HtmlTreeBuilderState$6;

    .line 306
    .line 307
    :goto_4
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :pswitch_4
    if-nez v4, :cond_16

    .line 311
    .line 312
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->h:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 313
    .line 314
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :pswitch_5
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 318
    .line 319
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :pswitch_6
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->r:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    .line 323
    .line 324
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :pswitch_7
    if-nez v4, :cond_16

    .line 328
    .line 329
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->s:Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    .line 330
    .line 331
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_16
    :goto_5
    if-eqz v4, :cond_17

    .line 335
    .line 336
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 337
    .line 338
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_17
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 342
    .line 343
    goto/16 :goto_1

    .line 344
    .line 345
    :pswitch_8
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    .line 346
    .line 347
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 348
    .line 349
    goto :goto_8

    .line 350
    :pswitch_9
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->t:Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 351
    .line 352
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :pswitch_a
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->u:Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-lez v0, :cond_18

    .line 362
    .line 363
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->u:Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-static {v5, v0}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_18
    const/4 v0, 0x0

    .line 373
    :goto_7
    const-string v1, "Bug: no template insertion mode on stack!"

    .line 374
    .line 375
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :pswitch_b
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->x:Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    .line 382
    .line 383
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 384
    .line 385
    :cond_19
    :goto_8
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 386
    .line 387
    if-eq v0, v2, :cond_1a

    .line 388
    .line 389
    return v5

    .line 390
    :cond_1a
    return v3

    .line 391
    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_e
        -0x4ec53386 -> :sswitch_d
        -0x3600cb04 -> :sswitch_c
        -0x25eb9b01 -> :sswitch_b
        0xe70 -> :sswitch_a
        0xe74 -> :sswitch_9
        0xe7e -> :sswitch_8
        0x2e39a2 -> :sswitch_7
        0x30cde0 -> :sswitch_6
        0x3107ab -> :sswitch_5
        0x6903bce -> :sswitch_4
        0x690e016 -> :sswitch_3
        0x692b2e2 -> :sswitch_2
        0x6937454 -> :sswitch_1
        0x20ef99e6 -> :sswitch_0
    .end sparse-switch

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lorg/jsoup/parser/ParseSettings;
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->c:Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->p:Z

    .line 13
    .line 14
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->q:Lorg/jsoup/nodes/Element;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Lorg/jsoup/nodes/Element;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->u:Ljava/util/ArrayList;

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->v:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance p1, Lorg/jsoup/parser/Token$EndTag;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lorg/jsoup/parser/Token$EndTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->w:Lorg/jsoup/parser/Token$EndTag;

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->x:Z

    .line 50
    .line 51
    iput-boolean p2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->y:Z

    .line 52
    .line 53
    iput-boolean p2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->z:Z

    .line 54
    .line 55
    return-void
.end method

.method public final g(Lorg/jsoup/nodes/Element;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->c:Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    .line 2
    .line 3
    iput-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->z:Z

    .line 7
    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lorg/jsoup/nodes/Element;

    .line 15
    .line 16
    const-string v3, "http://www.w3.org/1999/xhtml"

    .line 17
    .line 18
    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseSettings;

    .line 19
    .line 20
    invoke-virtual {p0, v1, v1, v3, v4}, Lorg/jsoup/parser/TreeBuilder;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Lorg/jsoup/nodes/Element;

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Document;->quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const/4 v3, -0x1

    .line 58
    sparse-switch v2, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    :goto_0
    move v0, v3

    .line 62
    goto :goto_1

    .line 63
    :sswitch_0
    const-string v0, "plaintext"

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x2

    .line 73
    goto :goto_1

    .line 74
    :sswitch_1
    const-string v2, "script"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :sswitch_2
    const-string v0, "template"

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x0

    .line 93
    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Lorg/jsoup/nodes/Element;

    .line 97
    .line 98
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->b()Lorg/jsoup/parser/TokeniserState;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 115
    .line 116
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :pswitch_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 123
    .line 124
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->k:Lorg/jsoup/parser/TokeniserState$7;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :pswitch_1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 131
    .line 132
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->j:Lorg/jsoup/parser/TokeniserState$6;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :pswitch_2
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->c:Lorg/jsoup/parser/Tokeniser;

    .line 139
    .line 140
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 143
    .line 144
    .line 145
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->X(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 151
    .line 152
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Lorg/jsoup/nodes/Element;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->s:Lorg/jsoup/nodes/Element;

    .line 158
    .line 159
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/TreeBuilder;->j(Lorg/jsoup/nodes/Node;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->b0()Z

    .line 168
    .line 169
    .line 170
    :goto_3
    if-eqz p1, :cond_6

    .line 171
    .line 172
    instance-of v0, p1, Lorg/jsoup/nodes/FormElement;

    .line 173
    .line 174
    if-eqz v0, :cond_5

    .line 175
    .line 176
    check-cast p1, Lorg/jsoup/nodes/FormElement;

    .line 177
    .line 178
    iput-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->r:Lorg/jsoup/nodes/FormElement;

    .line 179
    .line 180
    return-void

    .line 181
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    goto :goto_3

    .line 186
    :cond_6
    return-void

    .line 187
    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_2
        -0x361a2f35 -> :sswitch_1
        0x759d29f7 -> :sswitch_0
    .end sparse-switch

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Lorg/jsoup/parser/TreeBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final m(Lorg/jsoup/parser/Token;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "http://www.w3.org/1999/xhtml"

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "http://www.w3.org/1998/Math/MathML"

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilder;->M:[Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v3, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    move-object v3, p1

    .line 69
    check-cast v3, Lorg/jsoup/parser/Token$StartTag;

    .line 70
    .line 71
    iget-object v5, v3, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 72
    .line 73
    const-string v6, "mglyph"

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_2

    .line 80
    .line 81
    const-string v5, "malignmark"

    .line 82
    .line 83
    iget-object v3, v3, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_2
    iget-object v3, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 94
    .line 95
    sget-object v5, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    .line 96
    .line 97
    if-ne v3, v5, :cond_3

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    const-string v3, "annotation-xml"

    .line 106
    .line 107
    if-eqz v2, :cond_4

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    move-object v2, p1

    .line 122
    check-cast v2, Lorg/jsoup/parser/Token$StartTag;

    .line 123
    .line 124
    iget-object v2, v2, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 125
    .line 126
    const-string v5, "svg"

    .line 127
    .line 128
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_5

    .line 154
    .line 155
    const-string v2, "encoding"

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const-string v3, "text/html"

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_6

    .line 172
    .line 173
    const-string v3, "application/xhtml+xml"

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_5

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_5
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const-string v3, "http://www.w3.org/2000/svg"

    .line 191
    .line 192
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_7

    .line 197
    .line 198
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilder;->N:[Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_7

    .line 209
    .line 210
    :cond_6
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_8

    .line 215
    .line 216
    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 217
    .line 218
    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    .line 219
    .line 220
    if-ne v0, v2, :cond_7

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_7
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 228
    .line 229
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_9
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->B:Lorg/jsoup/parser/HtmlTreeBuilderState$24;

    .line 233
    .line 234
    :goto_2
    invoke-virtual {v0, p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    return p1
.end method

.method public final t(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->T(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    :goto_0
    if-lez v0, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 28
    .line 29
    if-ne v2, p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TreeBuilder{currentToken="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", state="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", currentElement="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x7d

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final u(Lorg/jsoup/nodes/Element;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0xd

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    :cond_0
    :goto_0
    if-lt v1, v0, :cond_4

    .line 16
    .line 17
    iget-object v3, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/Attributes;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    :cond_2
    const/4 v3, 0x3

    .line 59
    if-ne v2, v3, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    :goto_1
    return-void
.end method

.method public final v()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lorg/jsoup/parser/HtmlTreeBuilder;->t:Ljava/util/ArrayList;

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_0

    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public final varargs w([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->namespace()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "http://www.w3.org/1999/xhtml"

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2, p1}, Lorg/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, "html"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->l()Lorg/jsoup/nodes/Element;

    .line 55
    .line 56
    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    :goto_1
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    const-string v0, "table"

    .line 2
    .line 3
    const-string v1, "template"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->w([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    const-string v0, "tr"

    .line 2
    .line 3
    const-string v1, "template"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->w([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final z(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;Z)Lorg/jsoup/nodes/Element;
    .locals 6

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseSettings;

    .line 14
    .line 15
    iget-boolean v1, v1, Lorg/jsoup/parser/ParseSettings;->b:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->normalize()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseSettings;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->deduplicate(Lorg/jsoup/parser/ParseSettings;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p1, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    aput-object v1, v2, v3

    .line 37
    .line 38
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->a:Lorg/jsoup/parser/Parser;

    .line 39
    .line 40
    invoke-virtual {v1}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    new-instance v3, Lorg/jsoup/parser/ParseError;

    .line 51
    .line 52
    iget-object v4, p0, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 53
    .line 54
    const-string v5, "Dropped duplicate attribute(s) in tag [%s]"

    .line 55
    .line 56
    invoke-direct {v3, v4, v5, v2}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v1, p1, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 63
    .line 64
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz p3, :cond_2

    .line 71
    .line 72
    sget-object p3, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p3, p0, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseSettings;

    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/jsoup/parser/TreeBuilder;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->normalName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const-string p3, "form"

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    const/4 p3, 0x0

    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    new-instance p2, Lorg/jsoup/nodes/FormElement;

    .line 95
    .line 96
    invoke-direct {p2, p1, p3, v0}, Lorg/jsoup/nodes/FormElement;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 97
    .line 98
    .line 99
    return-object p2

    .line 100
    :cond_3
    new-instance p2, Lorg/jsoup/nodes/Element;

    .line 101
    .line 102
    invoke-direct {p2, p1, p3, v0}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 103
    .line 104
    .line 105
    return-object p2
.end method
