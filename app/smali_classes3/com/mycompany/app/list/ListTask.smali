.class public Lcom/mycompany/app/list/ListTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/list/ListTask$ListTaskListener;,
        Lcom/mycompany/app/list/ListTask$ListTaskSimpleListener;,
        Lcom/mycompany/app/list/ListTask$ListTaskConfig;
    }
.end annotation


# direct methods
.method public static c(Landroid/content/Context;ILcom/mycompany/app/list/ListTask$ListTaskListener;)Lcom/mycompany/app/list/ListTask;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/list/ListTaskAlbum;

    .line 5
    .line 6
    invoke-direct {p1, p0, p2}, Lcom/mycompany/app/list/ListTaskAlbum;-><init>(Landroid/content/Context;Lcom/mycompany/app/list/ListTask$ListTaskListener;)V

    .line 7
    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    if-ne p1, v1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lcom/mycompany/app/list/ListTaskPdf;

    .line 14
    .line 15
    invoke-direct {p1, p0, p2}, Lcom/mycompany/app/list/ListTaskPdf;-><init>(Landroid/content/Context;Lcom/mycompany/app/list/ListTask$ListTaskListener;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    const/4 v1, 0x3

    .line 20
    if-ne p1, v1, :cond_2

    .line 21
    .line 22
    new-instance p1, Lcom/mycompany/app/list/ListTaskCmp;

    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Lcom/mycompany/app/list/ListTaskCmp;-><init>(Landroid/content/Context;Lcom/mycompany/app/list/ListTask$ListTaskListener;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    const/16 v1, 0xd

    .line 29
    .line 30
    if-ne p1, v1, :cond_3

    .line 31
    .line 32
    new-instance p1, Lcom/mycompany/app/list/ListTaskCast;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p0, p1, Lcom/mycompany/app/list/ListTaskCast;->a:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p2, p1, Lcom/mycompany/app/list/ListTaskCast;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_3
    const/16 v1, 0xe

    .line 43
    .line 44
    if-ne p1, v1, :cond_4

    .line 45
    .line 46
    new-instance p1, Lcom/mycompany/app/list/book/ListBookAlbum;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookAlbum;->a:Landroid/content/Context;

    .line 52
    .line 53
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookAlbum;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_4
    const/16 v1, 0xf

    .line 57
    .line 58
    if-ne p1, v1, :cond_5

    .line 59
    .line 60
    new-instance p1, Lcom/mycompany/app/list/book/ListBookPdf;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookPdf;->a:Landroid/content/Context;

    .line 66
    .line 67
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookPdf;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_5
    const/16 v1, 0x10

    .line 71
    .line 72
    if-ne p1, v1, :cond_6

    .line 73
    .line 74
    new-instance p1, Lcom/mycompany/app/list/book/ListBookCmp;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookCmp;->a:Landroid/content/Context;

    .line 80
    .line 81
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookCmp;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_6
    const/16 v1, 0x11

    .line 85
    .line 86
    if-ne p1, v1, :cond_7

    .line 87
    .line 88
    new-instance p1, Lcom/mycompany/app/list/book/ListBookWeb;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookWeb;->a:Landroid/content/Context;

    .line 94
    .line 95
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookWeb;->c:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_7
    const/16 v1, 0x12

    .line 99
    .line 100
    if-ne p1, v1, :cond_8

    .line 101
    .line 102
    new-instance p1, Lcom/mycompany/app/list/book/ListBookHistory;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookHistory;->a:Landroid/content/Context;

    .line 108
    .line 109
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookHistory;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_8
    const/16 v1, 0x13

    .line 113
    .line 114
    if-ne p1, v1, :cond_9

    .line 115
    .line 116
    new-instance p1, Lcom/mycompany/app/list/book/ListBookAds;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookAds;->a:Landroid/content/Context;

    .line 122
    .line 123
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookAds;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_9
    const/16 v1, 0x14

    .line 127
    .line 128
    if-ne p1, v1, :cond_a

    .line 129
    .line 130
    new-instance p1, Lcom/mycompany/app/list/book/ListBookOver;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookOver;->a:Landroid/content/Context;

    .line 136
    .line 137
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookOver;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 138
    .line 139
    return-object p1

    .line 140
    :cond_a
    const/16 v1, 0x15

    .line 141
    .line 142
    if-ne p1, v1, :cond_b

    .line 143
    .line 144
    new-instance p1, Lcom/mycompany/app/list/book/ListBookPop;

    .line 145
    .line 146
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 147
    .line 148
    .line 149
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookPop;->a:Landroid/content/Context;

    .line 150
    .line 151
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookPop;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 152
    .line 153
    return-object p1

    .line 154
    :cond_b
    const/16 v1, 0x16

    .line 155
    .line 156
    if-ne p1, v1, :cond_c

    .line 157
    .line 158
    new-instance p1, Lcom/mycompany/app/list/book/ListBookLink;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookLink;->a:Landroid/content/Context;

    .line 164
    .line 165
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookLink;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 166
    .line 167
    return-object p1

    .line 168
    :cond_c
    const/16 v1, 0x17

    .line 169
    .line 170
    if-ne p1, v1, :cond_d

    .line 171
    .line 172
    new-instance p1, Lcom/mycompany/app/list/book/ListBookBlock;

    .line 173
    .line 174
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookBlock;->a:Landroid/content/Context;

    .line 178
    .line 179
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookBlock;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 180
    .line 181
    return-object p1

    .line 182
    :cond_d
    const/16 v1, 0x18

    .line 183
    .line 184
    if-ne p1, v1, :cond_e

    .line 185
    .line 186
    new-instance p1, Lcom/mycompany/app/list/book/ListBookDc;

    .line 187
    .line 188
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookDc;->a:Landroid/content/Context;

    .line 192
    .line 193
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookDc;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 194
    .line 195
    return-object p1

    .line 196
    :cond_e
    const/16 v1, 0x19

    .line 197
    .line 198
    if-ne p1, v1, :cond_f

    .line 199
    .line 200
    new-instance p1, Lcom/mycompany/app/list/book/ListBookFilter;

    .line 201
    .line 202
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookFilter;->a:Landroid/content/Context;

    .line 206
    .line 207
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookFilter;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 208
    .line 209
    return-object p1

    .line 210
    :cond_f
    const/16 v1, 0x1a

    .line 211
    .line 212
    if-ne p1, v1, :cond_10

    .line 213
    .line 214
    new-instance p1, Lcom/mycompany/app/list/book/ListBookUser;

    .line 215
    .line 216
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 217
    .line 218
    .line 219
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookUser;->a:Landroid/content/Context;

    .line 220
    .line 221
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookUser;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 222
    .line 223
    return-object p1

    .line 224
    :cond_10
    const/16 v1, 0x1b

    .line 225
    .line 226
    if-ne p1, v1, :cond_11

    .line 227
    .line 228
    new-instance p1, Lcom/mycompany/app/list/book/ListBookScript;

    .line 229
    .line 230
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookScript;->a:Landroid/content/Context;

    .line 234
    .line 235
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookScript;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 236
    .line 237
    return-object p1

    .line 238
    :cond_11
    const/16 v1, 0x1c

    .line 239
    .line 240
    if-ne p1, v1, :cond_12

    .line 241
    .line 242
    new-instance p1, Lcom/mycompany/app/list/book/ListBookJava;

    .line 243
    .line 244
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 245
    .line 246
    .line 247
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookJava;->a:Landroid/content/Context;

    .line 248
    .line 249
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookJava;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 250
    .line 251
    return-object p1

    .line 252
    :cond_12
    const/16 v1, 0x1d

    .line 253
    .line 254
    if-ne p1, v1, :cond_13

    .line 255
    .line 256
    new-instance p1, Lcom/mycompany/app/list/book/ListBookTmem;

    .line 257
    .line 258
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 259
    .line 260
    .line 261
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookTmem;->a:Landroid/content/Context;

    .line 262
    .line 263
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookTmem;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 264
    .line 265
    return-object p1

    .line 266
    :cond_13
    const/16 v1, 0x1e

    .line 267
    .line 268
    if-ne p1, v1, :cond_14

    .line 269
    .line 270
    new-instance p1, Lcom/mycompany/app/list/book/ListBookTrans;

    .line 271
    .line 272
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 273
    .line 274
    .line 275
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookTrans;->a:Landroid/content/Context;

    .line 276
    .line 277
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookTrans;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 278
    .line 279
    return-object p1

    .line 280
    :cond_14
    const/16 v1, 0x1f

    .line 281
    .line 282
    if-ne p1, v1, :cond_15

    .line 283
    .line 284
    new-instance p1, Lcom/mycompany/app/list/book/ListBookPms;

    .line 285
    .line 286
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 287
    .line 288
    .line 289
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookPms;->a:Landroid/content/Context;

    .line 290
    .line 291
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookPms;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 292
    .line 293
    return-object p1

    .line 294
    :cond_15
    const/16 v1, 0x20

    .line 295
    .line 296
    if-ne p1, v1, :cond_16

    .line 297
    .line 298
    new-instance p1, Lcom/mycompany/app/list/book/ListBookDown;

    .line 299
    .line 300
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 301
    .line 302
    .line 303
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookDown;->a:Landroid/content/Context;

    .line 304
    .line 305
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookDown;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 306
    .line 307
    return-object p1

    .line 308
    :cond_16
    const/16 v1, 0x23

    .line 309
    .line 310
    if-ne p1, v1, :cond_17

    .line 311
    .line 312
    new-instance p1, Lcom/mycompany/app/list/book/ListBookSearch;

    .line 313
    .line 314
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 315
    .line 316
    .line 317
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookSearch;->a:Landroid/content/Context;

    .line 318
    .line 319
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookSearch;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 320
    .line 321
    return-object p1

    .line 322
    :cond_17
    const/16 v1, 0x24

    .line 323
    .line 324
    if-ne p1, v1, :cond_18

    .line 325
    .line 326
    new-instance p1, Lcom/mycompany/app/list/book/ListBookAgent;

    .line 327
    .line 328
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 329
    .line 330
    .line 331
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookAgent;->a:Landroid/content/Context;

    .line 332
    .line 333
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookAgent;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 334
    .line 335
    return-object p1

    .line 336
    :cond_18
    const/16 v1, 0x25

    .line 337
    .line 338
    if-ne p1, v1, :cond_19

    .line 339
    .line 340
    new-instance p1, Lcom/mycompany/app/list/book/ListBookMemo;

    .line 341
    .line 342
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 343
    .line 344
    .line 345
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookMemo;->a:Landroid/content/Context;

    .line 346
    .line 347
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookMemo;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 348
    .line 349
    return-object p1

    .line 350
    :cond_19
    const/16 v1, 0x2a

    .line 351
    .line 352
    if-ne p1, v1, :cond_1a

    .line 353
    .line 354
    new-instance p1, Lcom/mycompany/app/list/book/ListBookTab;

    .line 355
    .line 356
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 357
    .line 358
    .line 359
    iput-object p0, p1, Lcom/mycompany/app/list/book/ListBookTab;->a:Landroid/content/Context;

    .line 360
    .line 361
    iput-object p2, p1, Lcom/mycompany/app/list/book/ListBookTab;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 362
    .line 363
    iput-boolean v0, p1, Lcom/mycompany/app/list/book/ListBookTab;->d:Z

    .line 364
    .line 365
    return-object p1

    .line 366
    :cond_1a
    new-instance p0, Lcom/mycompany/app/list/ListTask;

    .line 367
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    .line 370
    .line 371
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/mycompany/app/list/ListTaskAlbum;

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/mycompany/app/list/ListTaskAlbum;

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public g(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public h(Ljava/util/List;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public i(ZZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k(JZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public l(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    return-void
.end method
