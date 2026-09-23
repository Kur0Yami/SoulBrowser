.class Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogDeleteBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:I

.field public g:Ljava/util/List;

.field public final h:Z

.field public final i:Z

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v0, p1, Lcom/mycompany/app/dialog/DialogDeleteBook;->c0:I

    .line 21
    .line 22
    iput v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->f:I

    .line 23
    .line 24
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->g:Ljava/util/List;

    .line 27
    .line 28
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogDeleteBook;->f0:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->h:Z

    .line 31
    .line 32
    iget-boolean p1, p1, Lcom/mycompany/app/dialog/DialogDeleteBook;->g0:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->i:Z

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 40

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_32

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 14
    .line 15
    if-eqz v0, :cond_96

    .line 16
    .line 17
    iget-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_32

    .line 22
    .line 23
    :cond_1
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 24
    .line 25
    if-eqz v5, :cond_96

    .line 26
    .line 27
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->g:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v2, :cond_96

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    goto/16 :goto_32

    .line 38
    .line 39
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->g:Ljava/util/List;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->g:Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iput v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->j:I

    .line 53
    .line 54
    iget-boolean v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->h:Z

    .line 55
    .line 56
    const/16 v9, 0x17

    .line 57
    .line 58
    const/16 v10, 0x16

    .line 59
    .line 60
    const/16 v11, 0x15

    .line 61
    .line 62
    const/16 v12, 0x14

    .line 63
    .line 64
    const/16 v13, 0x13

    .line 65
    .line 66
    const/16 v14, 0x10

    .line 67
    .line 68
    const/16 v15, 0xf

    .line 69
    .line 70
    const/16 v4, 0xe

    .line 71
    .line 72
    const/16 v6, 0x12

    .line 73
    .line 74
    const/16 v7, 0x11

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    if-eqz v3, :cond_33

    .line 78
    .line 79
    iget v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->f:I

    .line 80
    .line 81
    if-ne v3, v4, :cond_3

    .line 82
    .line 83
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookAlbum;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAlbum;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 88
    .line 89
    .line 90
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookAlbum;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAlbum;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v2, "DbBookAlbum_table"

    .line 99
    .line 100
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto/16 :goto_a

    .line 104
    .line 105
    :cond_3
    if-ne v3, v15, :cond_4

    .line 106
    .line 107
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookPdf;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPdf;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 112
    .line 113
    .line 114
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPdf;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPdf;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v2, "DbBookPdf_table"

    .line 123
    .line 124
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto/16 :goto_a

    .line 128
    .line 129
    :cond_4
    if-ne v3, v14, :cond_5

    .line 130
    .line 131
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookCmp;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookCmp;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 136
    .line 137
    .line 138
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookCmp;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookCmp;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v2, "DbBookCmp_table"

    .line 147
    .line 148
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto/16 :goto_a

    .line 152
    .line 153
    :cond_5
    if-ne v3, v7, :cond_7

    .line 154
    .line 155
    sget-object v0, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

    .line 156
    .line 157
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 158
    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    const-string v0, "1"

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_6
    const-string v0, "0"

    .line 165
    .line 166
    :goto_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const-string v3, "DbBookWeb_table"

    .line 179
    .line 180
    const-string v4, "_secret=?"

    .line 181
    .line 182
    invoke-static {v2, v3, v4, v0}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    goto/16 :goto_a

    .line 186
    .line 187
    :cond_7
    if-ne v3, v6, :cond_8

    .line 188
    .line 189
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookHistory;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookHistory;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 194
    .line 195
    .line 196
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 197
    .line 198
    invoke-static {v5, v0}, Lcom/mycompany/app/db/book/DbBookHistory;->e(Landroid/content/Context;Z)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_a

    .line 202
    .line 203
    :cond_8
    if-ne v3, v13, :cond_9

    .line 204
    .line 205
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iput-object v8, v0, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 216
    .line 217
    .line 218
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookAds;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAds;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string v2, "DbBookAds_table"

    .line 227
    .line 228
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto/16 :goto_a

    .line 232
    .line 233
    :cond_9
    if-ne v3, v12, :cond_a

    .line 234
    .line 235
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iput-object v8, v0, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 246
    .line 247
    .line 248
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookOver;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookOver;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const-string v2, "DbBookOver_table"

    .line 257
    .line 258
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    goto/16 :goto_a

    .line 262
    .line 263
    :cond_a
    if-ne v3, v11, :cond_b

    .line 264
    .line 265
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iput-object v8, v0, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 276
    .line 277
    .line 278
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPop;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPop;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const-string v2, "DbBookPop_table"

    .line 287
    .line 288
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    goto/16 :goto_a

    .line 292
    .line 293
    :cond_b
    if-ne v3, v10, :cond_c

    .line 294
    .line 295
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iput-object v8, v0, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 306
    .line 307
    .line 308
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookLink;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLink;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    const-string v2, "DbBookLink_table"

    .line 317
    .line 318
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    goto/16 :goto_a

    .line 322
    .line 323
    :cond_c
    if-ne v3, v9, :cond_e

    .line 324
    .line 325
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->u0:Lcom/mycompany/app/web/WebClean;

    .line 326
    .line 327
    if-eqz v0, :cond_d

    .line 328
    .line 329
    iput-object v8, v0, Lcom/mycompany/app/web/WebClean;->E:Ljava/util/HashMap;

    .line 330
    .line 331
    iput-object v8, v0, Lcom/mycompany/app/web/WebClean;->F:Ljava/util/HashMap;

    .line 332
    .line 333
    :cond_d
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookBlock;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookBlock;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 338
    .line 339
    .line 340
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookBlock;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookBlock;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const-string v2, "DbBookBlock_table"

    .line 349
    .line 350
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    goto/16 :goto_a

    .line 354
    .line 355
    :cond_e
    const/16 v4, 0x18

    .line 356
    .line 357
    if-ne v3, v4, :cond_f

    .line 358
    .line 359
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookDc;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDc;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iput-object v8, v0, Lcom/mycompany/app/data/book/DataBookDc;->c:Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookDc;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDc;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 370
    .line 371
    .line 372
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookDc;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDc;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    const-string v2, "DbBookDc_table"

    .line 381
    .line 382
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    goto/16 :goto_a

    .line 386
    .line 387
    :cond_f
    const/16 v4, 0x19

    .line 388
    .line 389
    if-ne v3, v4, :cond_12

    .line 390
    .line 391
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 396
    .line 397
    .line 398
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->g:Ljava/util/List;

    .line 399
    .line 400
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    const-string v3, "DbBookFilter_table"

    .line 409
    .line 410
    invoke-static {v2, v3, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    if-eqz v0, :cond_11

    .line 414
    .line 415
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-nez v2, :cond_11

    .line 420
    .line 421
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    :catch_0
    :cond_10
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-eqz v2, :cond_11

    .line 430
    .line 431
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 436
    .line 437
    :try_start_0
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 438
    .line 439
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    if-nez v3, :cond_10

    .line 444
    .line 445
    new-instance v3, Ljava/io/File;

    .line 446
    .line 447
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 448
    .line 449
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .line 454
    .line 455
    goto :goto_1

    .line 456
    :cond_11
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    const-string v2, "DbBookUser_table"

    .line 465
    .line 466
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    goto/16 :goto_a

    .line 470
    .line 471
    :cond_12
    const/16 v4, 0x1a

    .line 472
    .line 473
    if-ne v3, v4, :cond_14

    .line 474
    .line 475
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 480
    .line 481
    .line 482
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    const-string v2, "DbBookUser_table"

    .line 491
    .line 492
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->c()V

    .line 500
    .line 501
    .line 502
    sget-object v0, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 503
    .line 504
    const-string v0, "sb_user_filter_path"

    .line 505
    .line 506
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_13

    .line 511
    .line 512
    goto/16 :goto_a

    .line 513
    .line 514
    :cond_13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    const-string v3, "DbBookFilter_table"

    .line 527
    .line 528
    const-string v4, "_path=?"

    .line 529
    .line 530
    invoke-static {v2, v3, v4, v0}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    goto/16 :goto_a

    .line 534
    .line 535
    :cond_14
    const/16 v4, 0x1b

    .line 536
    .line 537
    if-ne v3, v4, :cond_15

    .line 538
    .line 539
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookScript;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookScript;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 544
    .line 545
    .line 546
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    const-string v2, "DbBookScript_table"

    .line 555
    .line 556
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    goto/16 :goto_a

    .line 560
    .line 561
    :cond_15
    const/16 v4, 0x1c

    .line 562
    .line 563
    if-ne v3, v4, :cond_16

    .line 564
    .line 565
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    iput-object v8, v0, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 576
    .line 577
    .line 578
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookJava;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookJava;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    const-string v2, "DbBookJava_table"

    .line 587
    .line 588
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    goto/16 :goto_a

    .line 592
    .line 593
    :cond_16
    const/16 v4, 0x1d

    .line 594
    .line 595
    if-ne v3, v4, :cond_17

    .line 596
    .line 597
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    iput-object v8, v0, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 608
    .line 609
    .line 610
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookTmem;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTmem;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    const-string v2, "DbBookTmem_table"

    .line 619
    .line 620
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    goto/16 :goto_a

    .line 624
    .line 625
    :cond_17
    const/16 v4, 0x1e

    .line 626
    .line 627
    if-ne v3, v4, :cond_18

    .line 628
    .line 629
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    iput-object v8, v0, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 634
    .line 635
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 640
    .line 641
    .line 642
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookTrans;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTrans;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    const-string v2, "DbBookTrans_table"

    .line 651
    .line 652
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 653
    .line 654
    .line 655
    goto/16 :goto_a

    .line 656
    .line 657
    :cond_18
    const/16 v4, 0x1f

    .line 658
    .line 659
    if-ne v3, v4, :cond_19

    .line 660
    .line 661
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookPms;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPms;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 666
    .line 667
    .line 668
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPms;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPms;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    const-string v2, "DbBookPms_table"

    .line 677
    .line 678
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    goto/16 :goto_a

    .line 682
    .line 683
    :cond_19
    const/16 v4, 0x23

    .line 684
    .line 685
    if-ne v3, v4, :cond_1a

    .line 686
    .line 687
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    const-string v2, "DbBookSearch_table"

    .line 696
    .line 697
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    goto/16 :goto_a

    .line 701
    .line 702
    :cond_1a
    const/16 v4, 0x24

    .line 703
    .line 704
    if-ne v3, v4, :cond_1b

    .line 705
    .line 706
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookAgent;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAgent;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    const-string v2, "DbBookAgent_table"

    .line 715
    .line 716
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 717
    .line 718
    .line 719
    goto/16 :goto_a

    .line 720
    .line 721
    :cond_1b
    const/16 v4, 0x25

    .line 722
    .line 723
    if-ne v3, v4, :cond_1c

    .line 724
    .line 725
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookMemo;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookMemo;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    const-string v2, "DbBookMemo_table"

    .line 734
    .line 735
    invoke-static {v0, v2, v8, v8}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 736
    .line 737
    .line 738
    goto/16 :goto_a

    .line 739
    .line 740
    :cond_1c
    const/16 v4, 0x20

    .line 741
    .line 742
    if-ne v3, v4, :cond_2a

    .line 743
    .line 744
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->t0:Z

    .line 745
    .line 746
    if-eqz v0, :cond_1d

    .line 747
    .line 748
    const/4 v0, 0x1

    .line 749
    if-ne v2, v0, :cond_1d

    .line 750
    .line 751
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->g:Ljava/util/List;

    .line 752
    .line 753
    const/4 v2, 0x0

    .line 754
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 759
    .line 760
    goto :goto_2

    .line 761
    :cond_1d
    move-object v0, v8

    .line 762
    :goto_2
    if-eqz v0, :cond_20

    .line 763
    .line 764
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    iget-wide v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 769
    .line 770
    invoke-virtual {v2, v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->e(J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    if-nez v2, :cond_1e

    .line 775
    .line 776
    goto :goto_3

    .line 777
    :cond_1e
    const/4 v3, 0x3

    .line 778
    iput v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 779
    .line 780
    const/4 v3, 0x0

    .line 781
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 782
    .line 783
    :goto_3
    iget-wide v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 784
    .line 785
    invoke-static {v5, v2, v3}, Lcom/mycompany/app/db/book/DbBookDown;->k(Landroid/content/Context;J)V

    .line 786
    .line 787
    .line 788
    invoke-static {v5}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    if-eqz v2, :cond_2a

    .line 793
    .line 794
    iget-wide v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 795
    .line 796
    iget-boolean v0, v2, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 797
    .line 798
    if-eqz v0, :cond_2a

    .line 799
    .line 800
    iget-object v0, v2, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 801
    .line 802
    if-nez v0, :cond_1f

    .line 803
    .line 804
    goto/16 :goto_a

    .line 805
    .line 806
    :cond_1f
    const/4 v2, 0x1

    .line 807
    invoke-virtual {v0, v3, v4, v2}, Lcom/mycompany/app/main/MainDownSvc;->N(JZ)V

    .line 808
    .line 809
    .line 810
    goto/16 :goto_a

    .line 811
    .line 812
    :cond_20
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 817
    .line 818
    .line 819
    sget-object v0, Lcom/mycompany/app/db/book/DbBookPage;->c:Lcom/mycompany/app/db/book/DbBookPage;

    .line 820
    .line 821
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 822
    .line 823
    if-eqz v0, :cond_21

    .line 824
    .line 825
    const-string v0, "1"

    .line 826
    .line 827
    goto :goto_4

    .line 828
    :cond_21
    const-string v0, "0"

    .line 829
    .line 830
    :goto_4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPage;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPage;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    const-string v3, "DbBookPage_table"

    .line 843
    .line 844
    const-string v4, "_secret=?"

    .line 845
    .line 846
    invoke-static {v2, v3, v4, v0}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 847
    .line 848
    .line 849
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 850
    .line 851
    sget-object v2, Lcom/mycompany/app/db/book/DbBookDown;->c:Lcom/mycompany/app/db/book/DbBookDown;

    .line 852
    .line 853
    if-eqz v0, :cond_22

    .line 854
    .line 855
    const-string v0, "1"

    .line 856
    .line 857
    goto :goto_5

    .line 858
    :cond_22
    const-string v0, "0"

    .line 859
    .line 860
    :goto_5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    const-string v3, "DbBookDown_table"

    .line 873
    .line 874
    const-string v4, "_secret=?"

    .line 875
    .line 876
    invoke-static {v2, v3, v4, v0}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 877
    .line 878
    .line 879
    invoke-static {v5}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    if-eqz v0, :cond_2a

    .line 884
    .line 885
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 886
    .line 887
    if-eqz v2, :cond_2a

    .line 888
    .line 889
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 890
    .line 891
    if-nez v0, :cond_23

    .line 892
    .line 893
    goto :goto_a

    .line 894
    :cond_23
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 895
    .line 896
    if-nez v2, :cond_24

    .line 897
    .line 898
    goto :goto_a

    .line 899
    :cond_24
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 900
    .line 901
    monitor-enter v2

    .line 902
    :try_start_1
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 903
    .line 904
    iput-object v8, v0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 905
    .line 906
    if-eqz v3, :cond_29

    .line 907
    .line 908
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 909
    .line 910
    .line 911
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    if-eqz v4, :cond_25

    .line 913
    .line 914
    goto :goto_8

    .line 915
    :cond_25
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 916
    .line 917
    .line 918
    move-result v4

    .line 919
    const/4 v8, 0x0

    .line 920
    :goto_6
    if-ge v8, v4, :cond_28

    .line 921
    .line 922
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v9

    .line 926
    add-int/lit8 v8, v8, 0x1

    .line 927
    .line 928
    check-cast v9, Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 929
    .line 930
    if-nez v9, :cond_26

    .line 931
    .line 932
    goto :goto_6

    .line 933
    :cond_26
    const/4 v10, 0x6

    .line 934
    iput v10, v9, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 935
    .line 936
    iget-object v10, v9, Lcom/mycompany/app/main/MainDownSvc$DownItem;->T:Lcom/mycompany/app/torrent/TorrentStream;

    .line 937
    .line 938
    if-eqz v10, :cond_27

    .line 939
    .line 940
    invoke-virtual {v10}, Lcom/mycompany/app/torrent/TorrentStream;->d()V

    .line 941
    .line 942
    .line 943
    goto :goto_7

    .line 944
    :catchall_0
    move-exception v0

    .line 945
    goto :goto_9

    .line 946
    :cond_27
    :goto_7
    invoke-virtual {v0, v9}, Lcom/mycompany/app/main/MainDownSvc;->x(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 947
    .line 948
    .line 949
    goto :goto_6

    .line 950
    :cond_28
    const/4 v3, 0x0

    .line 951
    invoke-virtual {v0, v3}, Lcom/mycompany/app/main/MainDownSvc;->V(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 952
    .line 953
    .line 954
    :catch_1
    :try_start_3
    monitor-exit v2

    .line 955
    goto :goto_a

    .line 956
    :cond_29
    :goto_8
    monitor-exit v2

    .line 957
    goto :goto_a

    .line 958
    :goto_9
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 959
    throw v0

    .line 960
    :cond_2a
    :goto_a
    iget v0, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->f:I

    .line 961
    .line 962
    const/16 v4, 0x20

    .line 963
    .line 964
    if-ne v0, v4, :cond_2f

    .line 965
    .line 966
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->g:Ljava/util/List;

    .line 967
    .line 968
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 973
    .line 974
    .line 975
    move-result v2

    .line 976
    if-eqz v2, :cond_96

    .line 977
    .line 978
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 983
    .line 984
    iget-boolean v3, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 985
    .line 986
    if-eqz v3, :cond_2b

    .line 987
    .line 988
    goto/16 :goto_32

    .line 989
    .line 990
    :cond_2b
    if-nez v2, :cond_2c

    .line 991
    .line 992
    goto :goto_b

    .line 993
    :cond_2c
    iget-boolean v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->i:Z

    .line 994
    .line 995
    if-eqz v3, :cond_2d

    .line 996
    .line 997
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 998
    .line 999
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v3

    .line 1003
    if-nez v3, :cond_2d

    .line 1004
    .line 1005
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1006
    .line 1007
    invoke-static {v5, v3}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1008
    .line 1009
    .line 1010
    :cond_2d
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1011
    .line 1012
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    if-nez v3, :cond_2e

    .line 1017
    .line 1018
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v3

    .line 1022
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1023
    .line 1024
    invoke-virtual {v3, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->l(Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    :cond_2e
    iget v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 1028
    .line 1029
    const/16 v26, 0x1

    .line 1030
    .line 1031
    add-int/lit8 v2, v2, 0x1

    .line 1032
    .line 1033
    iput v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 1034
    .line 1035
    invoke-virtual {v1}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_b

    .line 1039
    :cond_2f
    if-eq v0, v7, :cond_96

    .line 1040
    .line 1041
    if-eq v0, v6, :cond_96

    .line 1042
    .line 1043
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->g:Ljava/util/List;

    .line 1044
    .line 1045
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v0

    .line 1049
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1050
    .line 1051
    .line 1052
    move-result v2

    .line 1053
    if-eqz v2, :cond_96

    .line 1054
    .line 1055
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1060
    .line 1061
    iget-boolean v3, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1062
    .line 1063
    if-eqz v3, :cond_30

    .line 1064
    .line 1065
    goto/16 :goto_32

    .line 1066
    .line 1067
    :cond_30
    if-nez v2, :cond_31

    .line 1068
    .line 1069
    goto :goto_c

    .line 1070
    :cond_31
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1071
    .line 1072
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1073
    .line 1074
    .line 1075
    move-result v3

    .line 1076
    if-nez v3, :cond_32

    .line 1077
    .line 1078
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v3

    .line 1082
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1083
    .line 1084
    invoke-virtual {v3, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->l(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    :cond_32
    iget v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 1088
    .line 1089
    const/16 v26, 0x1

    .line 1090
    .line 1091
    add-int/lit8 v2, v2, 0x1

    .line 1092
    .line 1093
    iput v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 1094
    .line 1095
    invoke-virtual {v1}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 1096
    .line 1097
    .line 1098
    goto :goto_c

    .line 1099
    :cond_33
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->g:Ljava/util/List;

    .line 1100
    .line 1101
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1106
    .line 1107
    .line 1108
    move-result v3

    .line 1109
    if-eqz v3, :cond_8f

    .line 1110
    .line 1111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v3

    .line 1115
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1116
    .line 1117
    iget-boolean v8, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1118
    .line 1119
    if-eqz v8, :cond_34

    .line 1120
    .line 1121
    goto/16 :goto_32

    .line 1122
    .line 1123
    :cond_34
    if-nez v3, :cond_35

    .line 1124
    .line 1125
    const/4 v8, 0x0

    .line 1126
    goto :goto_d

    .line 1127
    :cond_35
    iget v8, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->f:I

    .line 1128
    .line 1129
    const-wide/16 v28, 0x0

    .line 1130
    .line 1131
    if-ne v8, v4, :cond_38

    .line 1132
    .line 1133
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookAlbum;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAlbum;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v8

    .line 1137
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1138
    .line 1139
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1140
    .line 1141
    .line 1142
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1143
    .line 1144
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1145
    .line 1146
    sget-object v10, Lcom/mycompany/app/db/book/DbBookAlbum;->c:Lcom/mycompany/app/db/book/DbBookAlbum;

    .line 1147
    .line 1148
    cmp-long v10, v8, v28

    .line 1149
    .line 1150
    if-gtz v10, :cond_36

    .line 1151
    .line 1152
    goto :goto_e

    .line 1153
    :cond_36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result v10

    .line 1157
    if-nez v10, :cond_37

    .line 1158
    .line 1159
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v10

    .line 1163
    invoke-virtual {v10, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->l(Ljava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    :cond_37
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookAlbum;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAlbum;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v3

    .line 1170
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v3

    .line 1174
    const-string v10, "DbBookAlbum_table"

    .line 1175
    .line 1176
    invoke-static {v3, v10, v8, v9}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1177
    .line 1178
    .line 1179
    :goto_e
    move/from16 v33, v4

    .line 1180
    .line 1181
    move/from16 v34, v6

    .line 1182
    .line 1183
    move/from16 v31, v7

    .line 1184
    .line 1185
    const/4 v10, 0x0

    .line 1186
    const/16 v11, 0x1a

    .line 1187
    .line 1188
    const/16 v17, 0x25

    .line 1189
    .line 1190
    const/16 v18, 0x1f

    .line 1191
    .line 1192
    const/16 v19, 0x1e

    .line 1193
    .line 1194
    const/16 v20, 0x1c

    .line 1195
    .line 1196
    const/16 v21, 0x1b

    .line 1197
    .line 1198
    const/16 v22, 0x20

    .line 1199
    .line 1200
    const/16 v23, 0x19

    .line 1201
    .line 1202
    const/16 v24, 0x18

    .line 1203
    .line 1204
    const/16 v26, 0x1

    .line 1205
    .line 1206
    const/16 v27, 0x0

    .line 1207
    .line 1208
    const/16 v30, 0x17

    .line 1209
    .line 1210
    goto/16 :goto_30

    .line 1211
    .line 1212
    :cond_38
    if-ne v8, v15, :cond_3b

    .line 1213
    .line 1214
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookPdf;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPdf;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v8

    .line 1218
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1219
    .line 1220
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1221
    .line 1222
    .line 1223
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1224
    .line 1225
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1226
    .line 1227
    sget-object v10, Lcom/mycompany/app/db/book/DbBookPdf;->c:Lcom/mycompany/app/db/book/DbBookPdf;

    .line 1228
    .line 1229
    cmp-long v10, v8, v28

    .line 1230
    .line 1231
    if-gtz v10, :cond_39

    .line 1232
    .line 1233
    goto :goto_e

    .line 1234
    :cond_39
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1235
    .line 1236
    .line 1237
    move-result v10

    .line 1238
    if-nez v10, :cond_3a

    .line 1239
    .line 1240
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v10

    .line 1244
    invoke-virtual {v10, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->l(Ljava/lang/String;)V

    .line 1245
    .line 1246
    .line 1247
    :cond_3a
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPdf;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPdf;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v3

    .line 1251
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v3

    .line 1255
    const-string v10, "DbBookPdf_table"

    .line 1256
    .line 1257
    invoke-static {v3, v10, v8, v9}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1258
    .line 1259
    .line 1260
    goto :goto_e

    .line 1261
    :cond_3b
    if-ne v8, v14, :cond_3e

    .line 1262
    .line 1263
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookCmp;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookCmp;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v8

    .line 1267
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1268
    .line 1269
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1270
    .line 1271
    .line 1272
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1273
    .line 1274
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1275
    .line 1276
    sget-object v10, Lcom/mycompany/app/db/book/DbBookCmp;->c:Lcom/mycompany/app/db/book/DbBookCmp;

    .line 1277
    .line 1278
    cmp-long v10, v8, v28

    .line 1279
    .line 1280
    if-gtz v10, :cond_3c

    .line 1281
    .line 1282
    goto :goto_e

    .line 1283
    :cond_3c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1284
    .line 1285
    .line 1286
    move-result v10

    .line 1287
    if-nez v10, :cond_3d

    .line 1288
    .line 1289
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v10

    .line 1293
    invoke-virtual {v10, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->l(Ljava/lang/String;)V

    .line 1294
    .line 1295
    .line 1296
    :cond_3d
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookCmp;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookCmp;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v3

    .line 1300
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v3

    .line 1304
    const-string v10, "DbBookCmp_table"

    .line 1305
    .line 1306
    invoke-static {v3, v10, v8, v9}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1307
    .line 1308
    .line 1309
    goto/16 :goto_e

    .line 1310
    .line 1311
    :cond_3e
    if-ne v8, v7, :cond_3f

    .line 1312
    .line 1313
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1314
    .line 1315
    invoke-static {v5, v8, v9}, Lcom/mycompany/app/db/book/DbBookWeb;->k(Landroid/content/Context;J)V

    .line 1316
    .line 1317
    .line 1318
    goto/16 :goto_e

    .line 1319
    .line 1320
    :cond_3f
    if-ne v8, v6, :cond_41

    .line 1321
    .line 1322
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookHistory;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookHistory;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v8

    .line 1326
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1327
    .line 1328
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1329
    .line 1330
    .line 1331
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1332
    .line 1333
    sget-object v3, Lcom/mycompany/app/db/book/DbBookHistory;->c:Lcom/mycompany/app/db/book/DbBookHistory;

    .line 1334
    .line 1335
    cmp-long v3, v8, v28

    .line 1336
    .line 1337
    if-gtz v3, :cond_40

    .line 1338
    .line 1339
    goto/16 :goto_e

    .line 1340
    .line 1341
    :cond_40
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookHistory;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookHistory;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v3

    .line 1345
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v3

    .line 1349
    const-string v10, "DbBookHistory_table"

    .line 1350
    .line 1351
    invoke-static {v3, v10, v8, v9}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1352
    .line 1353
    .line 1354
    goto/16 :goto_e

    .line 1355
    .line 1356
    :cond_41
    if-ne v8, v13, :cond_46

    .line 1357
    .line 1358
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v8

    .line 1362
    iget-object v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1363
    .line 1364
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1365
    .line 1366
    .line 1367
    :try_start_4
    iget-object v10, v8, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 1368
    .line 1369
    if-eqz v10, :cond_44

    .line 1370
    .line 1371
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1372
    .line 1373
    .line 1374
    move-result v10

    .line 1375
    if-eqz v10, :cond_42

    .line 1376
    .line 1377
    goto :goto_f

    .line 1378
    :cond_42
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v10

    .line 1382
    if-eqz v10, :cond_43

    .line 1383
    .line 1384
    goto :goto_f

    .line 1385
    :cond_43
    iget-object v8, v8, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 1386
    .line 1387
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1388
    .line 1389
    .line 1390
    :catch_2
    :cond_44
    :goto_f
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v8

    .line 1394
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1395
    .line 1396
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1397
    .line 1398
    .line 1399
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1400
    .line 1401
    sget-object v3, Lcom/mycompany/app/db/book/DbBookAds;->c:Lcom/mycompany/app/db/book/DbBookAds;

    .line 1402
    .line 1403
    cmp-long v3, v8, v28

    .line 1404
    .line 1405
    if-gtz v3, :cond_45

    .line 1406
    .line 1407
    goto/16 :goto_e

    .line 1408
    .line 1409
    :cond_45
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookAds;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAds;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v3

    .line 1413
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v3

    .line 1417
    const-string v10, "DbBookAds_table"

    .line 1418
    .line 1419
    invoke-static {v3, v10, v8, v9}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1420
    .line 1421
    .line 1422
    goto/16 :goto_e

    .line 1423
    .line 1424
    :cond_46
    if-ne v8, v12, :cond_4b

    .line 1425
    .line 1426
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v8

    .line 1430
    iget-object v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1431
    .line 1432
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1433
    .line 1434
    .line 1435
    :try_start_5
    iget-object v10, v8, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 1436
    .line 1437
    if-eqz v10, :cond_49

    .line 1438
    .line 1439
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1440
    .line 1441
    .line 1442
    move-result v10

    .line 1443
    if-eqz v10, :cond_47

    .line 1444
    .line 1445
    goto :goto_10

    .line 1446
    :cond_47
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v10

    .line 1450
    if-eqz v10, :cond_48

    .line 1451
    .line 1452
    goto :goto_10

    .line 1453
    :cond_48
    iget-object v8, v8, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 1454
    .line 1455
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1456
    .line 1457
    .line 1458
    :catch_3
    :cond_49
    :goto_10
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v8

    .line 1462
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1463
    .line 1464
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1465
    .line 1466
    .line 1467
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1468
    .line 1469
    sget-object v3, Lcom/mycompany/app/db/book/DbBookOver;->c:Lcom/mycompany/app/db/book/DbBookOver;

    .line 1470
    .line 1471
    cmp-long v3, v8, v28

    .line 1472
    .line 1473
    if-gtz v3, :cond_4a

    .line 1474
    .line 1475
    goto/16 :goto_e

    .line 1476
    .line 1477
    :cond_4a
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookOver;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookOver;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v3

    .line 1481
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v3

    .line 1485
    const-string v10, "DbBookOver_table"

    .line 1486
    .line 1487
    invoke-static {v3, v10, v8, v9}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1488
    .line 1489
    .line 1490
    goto/16 :goto_e

    .line 1491
    .line 1492
    :cond_4b
    if-ne v8, v11, :cond_51

    .line 1493
    .line 1494
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v8

    .line 1498
    iget-object v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1499
    .line 1500
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1501
    .line 1502
    .line 1503
    :try_start_6
    iget-object v10, v8, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 1504
    .line 1505
    if-eqz v10, :cond_4e

    .line 1506
    .line 1507
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v10

    .line 1511
    if-eqz v10, :cond_4c

    .line 1512
    .line 1513
    goto :goto_11

    .line 1514
    :cond_4c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1515
    .line 1516
    .line 1517
    move-result v10

    .line 1518
    if-eqz v10, :cond_4d

    .line 1519
    .line 1520
    goto :goto_11

    .line 1521
    :cond_4d
    iget-object v8, v8, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 1522
    .line 1523
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1524
    .line 1525
    .line 1526
    :catch_4
    :cond_4e
    :goto_11
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v8

    .line 1530
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1531
    .line 1532
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1533
    .line 1534
    .line 1535
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1536
    .line 1537
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1538
    .line 1539
    const-string v10, "DbBookPop_table"

    .line 1540
    .line 1541
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPop;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPop;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v32

    .line 1545
    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v4

    .line 1549
    cmp-long v28, v8, v28

    .line 1550
    .line 1551
    if-lez v28, :cond_4f

    .line 1552
    .line 1553
    invoke-static {v4, v10, v8, v9}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1554
    .line 1555
    .line 1556
    goto :goto_12

    .line 1557
    :cond_4f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v8

    .line 1561
    if-nez v8, :cond_50

    .line 1562
    .line 1563
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v3

    .line 1567
    const-string v8, "_path=?"

    .line 1568
    .line 1569
    invoke-static {v4, v10, v8, v3}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1570
    .line 1571
    .line 1572
    :cond_50
    :goto_12
    move/from16 v34, v6

    .line 1573
    .line 1574
    move/from16 v31, v7

    .line 1575
    .line 1576
    const/4 v10, 0x0

    .line 1577
    const/16 v11, 0x1a

    .line 1578
    .line 1579
    const/16 v17, 0x25

    .line 1580
    .line 1581
    const/16 v18, 0x1f

    .line 1582
    .line 1583
    const/16 v19, 0x1e

    .line 1584
    .line 1585
    const/16 v20, 0x1c

    .line 1586
    .line 1587
    const/16 v21, 0x1b

    .line 1588
    .line 1589
    const/16 v22, 0x20

    .line 1590
    .line 1591
    const/16 v23, 0x19

    .line 1592
    .line 1593
    const/16 v24, 0x18

    .line 1594
    .line 1595
    const/16 v26, 0x1

    .line 1596
    .line 1597
    const/16 v27, 0x0

    .line 1598
    .line 1599
    const/16 v30, 0x17

    .line 1600
    .line 1601
    const/16 v33, 0xe

    .line 1602
    .line 1603
    goto/16 :goto_30

    .line 1604
    .line 1605
    :cond_51
    const/16 v9, 0x16

    .line 1606
    .line 1607
    if-ne v8, v9, :cond_57

    .line 1608
    .line 1609
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v4

    .line 1613
    iget-object v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1614
    .line 1615
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1616
    .line 1617
    .line 1618
    :try_start_7
    iget-object v10, v4, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 1619
    .line 1620
    if-eqz v10, :cond_54

    .line 1621
    .line 1622
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1623
    .line 1624
    .line 1625
    move-result v10

    .line 1626
    if-eqz v10, :cond_52

    .line 1627
    .line 1628
    goto :goto_13

    .line 1629
    :cond_52
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1630
    .line 1631
    .line 1632
    move-result v10

    .line 1633
    if-eqz v10, :cond_53

    .line 1634
    .line 1635
    goto :goto_13

    .line 1636
    :cond_53
    iget-object v4, v4, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 1637
    .line 1638
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1639
    .line 1640
    .line 1641
    :catch_5
    :cond_54
    :goto_13
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v4

    .line 1645
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1646
    .line 1647
    invoke-virtual {v4, v6, v7}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1648
    .line 1649
    .line 1650
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1651
    .line 1652
    sget-object v6, Lcom/mycompany/app/db/book/DbBookLink;->c:Lcom/mycompany/app/db/book/DbBookLink;

    .line 1653
    .line 1654
    cmp-long v6, v3, v28

    .line 1655
    .line 1656
    if-gtz v6, :cond_55

    .line 1657
    .line 1658
    goto :goto_14

    .line 1659
    :cond_55
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookLink;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLink;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v6

    .line 1663
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v6

    .line 1667
    const-string v7, "DbBookLink_table"

    .line 1668
    .line 1669
    invoke-static {v6, v7, v3, v4}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1670
    .line 1671
    .line 1672
    :cond_56
    :goto_14
    const/4 v10, 0x0

    .line 1673
    const/16 v11, 0x1a

    .line 1674
    .line 1675
    const/16 v17, 0x25

    .line 1676
    .line 1677
    const/16 v18, 0x1f

    .line 1678
    .line 1679
    :goto_15
    const/16 v19, 0x1e

    .line 1680
    .line 1681
    :goto_16
    const/16 v20, 0x1c

    .line 1682
    .line 1683
    const/16 v21, 0x1b

    .line 1684
    .line 1685
    :goto_17
    const/16 v22, 0x20

    .line 1686
    .line 1687
    :goto_18
    const/16 v23, 0x19

    .line 1688
    .line 1689
    :goto_19
    const/16 v24, 0x18

    .line 1690
    .line 1691
    :goto_1a
    const/16 v26, 0x1

    .line 1692
    .line 1693
    :goto_1b
    const/16 v27, 0x0

    .line 1694
    .line 1695
    :goto_1c
    const/16 v30, 0x17

    .line 1696
    .line 1697
    const/16 v31, 0x11

    .line 1698
    .line 1699
    const/16 v33, 0xe

    .line 1700
    .line 1701
    const/16 v34, 0x12

    .line 1702
    .line 1703
    goto/16 :goto_30

    .line 1704
    .line 1705
    :cond_57
    const/16 v4, 0x17

    .line 1706
    .line 1707
    if-ne v8, v4, :cond_5a

    .line 1708
    .line 1709
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->u0:Lcom/mycompany/app/web/WebClean;

    .line 1710
    .line 1711
    if-eqz v6, :cond_58

    .line 1712
    .line 1713
    iget-object v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1714
    .line 1715
    iget-object v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 1716
    .line 1717
    invoke-virtual {v6, v7, v8}, Lcom/mycompany/app/web/WebClean;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    .line 1719
    .line 1720
    :cond_58
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookBlock;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookBlock;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v6

    .line 1724
    iget-wide v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1725
    .line 1726
    invoke-virtual {v6, v7, v8}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1727
    .line 1728
    .line 1729
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1730
    .line 1731
    iget-object v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1732
    .line 1733
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 1734
    .line 1735
    const-string v4, "DbBookBlock_table"

    .line 1736
    .line 1737
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookBlock;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookBlock;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v32

    .line 1741
    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v9

    .line 1745
    cmp-long v28, v6, v28

    .line 1746
    .line 1747
    if-lez v28, :cond_59

    .line 1748
    .line 1749
    invoke-static {v9, v4, v6, v7}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1750
    .line 1751
    .line 1752
    goto :goto_14

    .line 1753
    :cond_59
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1754
    .line 1755
    .line 1756
    move-result v6

    .line 1757
    if-nez v6, :cond_56

    .line 1758
    .line 1759
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1760
    .line 1761
    .line 1762
    move-result v6

    .line 1763
    if-nez v6, :cond_56

    .line 1764
    .line 1765
    filled-new-array {v8, v3}, [Ljava/lang/String;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v3

    .line 1769
    const-string v6, "_path=? AND _image=?"

    .line 1770
    .line 1771
    invoke-static {v9, v4, v6, v3}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1772
    .line 1773
    .line 1774
    goto :goto_14

    .line 1775
    :cond_5a
    const/16 v4, 0x18

    .line 1776
    .line 1777
    if-ne v8, v4, :cond_66

    .line 1778
    .line 1779
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1780
    .line 1781
    cmp-long v6, v6, v28

    .line 1782
    .line 1783
    if-nez v6, :cond_5e

    .line 1784
    .line 1785
    iget-object v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1786
    .line 1787
    sget-object v7, Lcom/mycompany/app/db/book/DbBookDc;->c:Lcom/mycompany/app/db/book/DbBookDc;

    .line 1788
    .line 1789
    const-string v7, "_id"

    .line 1790
    .line 1791
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1792
    .line 1793
    .line 1794
    move-result v8

    .line 1795
    if-eqz v8, :cond_5b

    .line 1796
    .line 1797
    move-wide/from16 v7, v28

    .line 1798
    .line 1799
    goto :goto_1e

    .line 1800
    :cond_5b
    filled-new-array {v7}, [Ljava/lang/String;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v36

    .line 1804
    filled-new-array {v6}, [Ljava/lang/String;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v38

    .line 1808
    :try_start_8
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookDc;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDc;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v6

    .line 1812
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v34

    .line 1816
    const-string v35, "DbBookDc_table"

    .line 1817
    .line 1818
    const-string v37, "_path=?"

    .line 1819
    .line 1820
    const/16 v39, 0x0

    .line 1821
    .line 1822
    invoke-static/range {v34 .. v39}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1826
    if-eqz v6, :cond_5c

    .line 1827
    .line 1828
    :try_start_9
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1829
    .line 1830
    .line 1831
    move-result v8

    .line 1832
    if-eqz v8, :cond_5c

    .line 1833
    .line 1834
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1835
    .line 1836
    .line 1837
    move-result v7

    .line 1838
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 1839
    .line 1840
    .line 1841
    move-result-wide v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1842
    goto :goto_1d

    .line 1843
    :catch_6
    const/4 v6, 0x0

    .line 1844
    :catch_7
    :cond_5c
    move-wide/from16 v7, v28

    .line 1845
    .line 1846
    :goto_1d
    if-eqz v6, :cond_5d

    .line 1847
    .line 1848
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1849
    .line 1850
    .line 1851
    :cond_5d
    :goto_1e
    iput-wide v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1852
    .line 1853
    :cond_5e
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1854
    .line 1855
    cmp-long v6, v6, v28

    .line 1856
    .line 1857
    if-eqz v6, :cond_65

    .line 1858
    .line 1859
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookDc;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDc;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v6

    .line 1863
    iget-object v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1864
    .line 1865
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1866
    .line 1867
    .line 1868
    :try_start_a
    iget-object v8, v6, Lcom/mycompany/app/data/book/DataBookDc;->c:Ljava/util/ArrayList;

    .line 1869
    .line 1870
    if-eqz v8, :cond_63

    .line 1871
    .line 1872
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1873
    .line 1874
    .line 1875
    move-result v8

    .line 1876
    if-eqz v8, :cond_5f

    .line 1877
    .line 1878
    goto :goto_20

    .line 1879
    :cond_5f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1880
    .line 1881
    .line 1882
    move-result v8

    .line 1883
    if-eqz v8, :cond_60

    .line 1884
    .line 1885
    goto :goto_20

    .line 1886
    :cond_60
    iget-object v8, v6, Lcom/mycompany/app/data/book/DataBookDc;->c:Ljava/util/ArrayList;

    .line 1887
    .line 1888
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1889
    .line 1890
    .line 1891
    move-result v9

    .line 1892
    const/4 v4, 0x0

    .line 1893
    :goto_1f
    if-ge v4, v9, :cond_63

    .line 1894
    .line 1895
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v32

    .line 1899
    add-int/lit8 v4, v4, 0x1

    .line 1900
    .line 1901
    move-object/from16 v10, v32

    .line 1902
    .line 1903
    check-cast v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1904
    .line 1905
    if-nez v10, :cond_61

    .line 1906
    .line 1907
    goto :goto_1f

    .line 1908
    :cond_61
    iget-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1909
    .line 1910
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1911
    .line 1912
    .line 1913
    move-result v11

    .line 1914
    if-eqz v11, :cond_62

    .line 1915
    .line 1916
    iget-object v4, v6, Lcom/mycompany/app/data/book/DataBookDc;->c:Ljava/util/ArrayList;

    .line 1917
    .line 1918
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 1919
    .line 1920
    .line 1921
    goto :goto_20

    .line 1922
    :cond_62
    const/16 v11, 0x15

    .line 1923
    .line 1924
    goto :goto_1f

    .line 1925
    :catch_8
    :cond_63
    :goto_20
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookDc;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDc;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v4

    .line 1929
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1930
    .line 1931
    invoke-virtual {v4, v6, v7}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1932
    .line 1933
    .line 1934
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1935
    .line 1936
    sget-object v6, Lcom/mycompany/app/db/book/DbBookDc;->c:Lcom/mycompany/app/db/book/DbBookDc;

    .line 1937
    .line 1938
    cmp-long v6, v3, v28

    .line 1939
    .line 1940
    if-gtz v6, :cond_64

    .line 1941
    .line 1942
    goto/16 :goto_14

    .line 1943
    .line 1944
    :cond_64
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookDc;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDc;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v6

    .line 1948
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v6

    .line 1952
    const-string v7, "DbBookDc_table"

    .line 1953
    .line 1954
    invoke-static {v6, v7, v3, v4}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 1955
    .line 1956
    .line 1957
    goto/16 :goto_14

    .line 1958
    .line 1959
    :cond_65
    move/from16 v24, v4

    .line 1960
    .line 1961
    const/4 v10, 0x0

    .line 1962
    const/16 v11, 0x1a

    .line 1963
    .line 1964
    const/16 v17, 0x25

    .line 1965
    .line 1966
    const/16 v18, 0x1f

    .line 1967
    .line 1968
    const/16 v19, 0x1e

    .line 1969
    .line 1970
    const/16 v20, 0x1c

    .line 1971
    .line 1972
    const/16 v21, 0x1b

    .line 1973
    .line 1974
    const/16 v22, 0x20

    .line 1975
    .line 1976
    const/16 v23, 0x19

    .line 1977
    .line 1978
    goto/16 :goto_1a

    .line 1979
    .line 1980
    :cond_66
    const/16 v4, 0x19

    .line 1981
    .line 1982
    if-ne v8, v4, :cond_6a

    .line 1983
    .line 1984
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v6

    .line 1988
    iget-wide v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1989
    .line 1990
    invoke-virtual {v6, v7, v8}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 1991
    .line 1992
    .line 1993
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1994
    .line 1995
    iget-object v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1996
    .line 1997
    sget-object v9, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 1998
    .line 1999
    cmp-long v9, v6, v28

    .line 2000
    .line 2001
    if-gtz v9, :cond_67

    .line 2002
    .line 2003
    goto :goto_21

    .line 2004
    :cond_67
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2005
    .line 2006
    .line 2007
    move-result v9

    .line 2008
    if-nez v9, :cond_68

    .line 2009
    .line 2010
    :try_start_b
    new-instance v9, Ljava/io/File;

    .line 2011
    .line 2012
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 2016
    .line 2017
    .line 2018
    :catch_9
    :cond_68
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v8

    .line 2022
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v8

    .line 2026
    const-string v9, "DbBookFilter_table"

    .line 2027
    .line 2028
    invoke-static {v8, v9, v6, v7}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2029
    .line 2030
    .line 2031
    :goto_21
    const-string v6, "sb_user_filter_path"

    .line 2032
    .line 2033
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 2034
    .line 2035
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2036
    .line 2037
    .line 2038
    move-result v3

    .line 2039
    if-eqz v3, :cond_69

    .line 2040
    .line 2041
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v3

    .line 2045
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v3

    .line 2049
    const-string v6, "DbBookUser_table"

    .line 2050
    .line 2051
    const/4 v7, 0x0

    .line 2052
    invoke-static {v3, v6, v7, v7}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2053
    .line 2054
    .line 2055
    move/from16 v23, v4

    .line 2056
    .line 2057
    move-object/from16 v27, v7

    .line 2058
    .line 2059
    const/4 v10, 0x0

    .line 2060
    const/16 v11, 0x1a

    .line 2061
    .line 2062
    :goto_22
    const/16 v17, 0x25

    .line 2063
    .line 2064
    const/16 v18, 0x1f

    .line 2065
    .line 2066
    const/16 v19, 0x1e

    .line 2067
    .line 2068
    const/16 v20, 0x1c

    .line 2069
    .line 2070
    const/16 v21, 0x1b

    .line 2071
    .line 2072
    :goto_23
    const/16 v22, 0x20

    .line 2073
    .line 2074
    const/16 v24, 0x18

    .line 2075
    .line 2076
    const/16 v26, 0x1

    .line 2077
    .line 2078
    goto/16 :goto_1c

    .line 2079
    .line 2080
    :cond_69
    move/from16 v23, v4

    .line 2081
    .line 2082
    const/4 v10, 0x0

    .line 2083
    const/16 v11, 0x1a

    .line 2084
    .line 2085
    const/16 v17, 0x25

    .line 2086
    .line 2087
    const/16 v18, 0x1f

    .line 2088
    .line 2089
    const/16 v19, 0x1e

    .line 2090
    .line 2091
    const/16 v20, 0x1c

    .line 2092
    .line 2093
    const/16 v21, 0x1b

    .line 2094
    .line 2095
    const/16 v22, 0x20

    .line 2096
    .line 2097
    goto/16 :goto_19

    .line 2098
    .line 2099
    :cond_6a
    const/16 v6, 0x1a

    .line 2100
    .line 2101
    const/4 v7, 0x0

    .line 2102
    if-ne v8, v6, :cond_6c

    .line 2103
    .line 2104
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v8

    .line 2108
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2109
    .line 2110
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 2111
    .line 2112
    .line 2113
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2114
    .line 2115
    sget-object v3, Lcom/mycompany/app/db/book/DbBookUser;->c:Lcom/mycompany/app/db/book/DbBookUser;

    .line 2116
    .line 2117
    cmp-long v3, v8, v28

    .line 2118
    .line 2119
    if-gtz v3, :cond_6b

    .line 2120
    .line 2121
    goto :goto_24

    .line 2122
    :cond_6b
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v3

    .line 2126
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v3

    .line 2130
    const-string v10, "DbBookUser_table"

    .line 2131
    .line 2132
    invoke-static {v3, v10, v8, v9}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2133
    .line 2134
    .line 2135
    :goto_24
    move/from16 v23, v4

    .line 2136
    .line 2137
    move v11, v6

    .line 2138
    move-object/from16 v27, v7

    .line 2139
    .line 2140
    const/4 v10, 0x0

    .line 2141
    goto :goto_22

    .line 2142
    :cond_6c
    const/16 v9, 0x1b

    .line 2143
    .line 2144
    if-ne v8, v9, :cond_6d

    .line 2145
    .line 2146
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookScript;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookScript;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v8

    .line 2150
    iget-wide v10, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2151
    .line 2152
    invoke-virtual {v8, v10, v11}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 2153
    .line 2154
    .line 2155
    iget-object v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 2156
    .line 2157
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    .line 2158
    .line 2159
    invoke-static {v5, v8, v3}, Lcom/mycompany/app/db/book/DbBookScript;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    .line 2161
    .line 2162
    move/from16 v23, v4

    .line 2163
    .line 2164
    move v11, v6

    .line 2165
    move-object/from16 v27, v7

    .line 2166
    .line 2167
    move/from16 v21, v9

    .line 2168
    .line 2169
    const/4 v10, 0x0

    .line 2170
    const/16 v17, 0x25

    .line 2171
    .line 2172
    const/16 v18, 0x1f

    .line 2173
    .line 2174
    const/16 v19, 0x1e

    .line 2175
    .line 2176
    const/16 v20, 0x1c

    .line 2177
    .line 2178
    goto :goto_23

    .line 2179
    :cond_6d
    const/16 v10, 0x1c

    .line 2180
    .line 2181
    if-ne v8, v10, :cond_72

    .line 2182
    .line 2183
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v8

    .line 2187
    iget-object v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 2188
    .line 2189
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2190
    .line 2191
    .line 2192
    :try_start_c
    iget-object v4, v8, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

    .line 2193
    .line 2194
    if-eqz v4, :cond_70

    .line 2195
    .line 2196
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2197
    .line 2198
    .line 2199
    move-result v4

    .line 2200
    if-eqz v4, :cond_6e

    .line 2201
    .line 2202
    goto :goto_25

    .line 2203
    :cond_6e
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2204
    .line 2205
    .line 2206
    move-result v4

    .line 2207
    if-eqz v4, :cond_6f

    .line 2208
    .line 2209
    goto :goto_25

    .line 2210
    :cond_6f
    iget-object v4, v8, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

    .line 2211
    .line 2212
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 2213
    .line 2214
    .line 2215
    :catch_a
    :cond_70
    :goto_25
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v4

    .line 2219
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2220
    .line 2221
    invoke-virtual {v4, v6, v7}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 2222
    .line 2223
    .line 2224
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2225
    .line 2226
    sget-object v6, Lcom/mycompany/app/db/book/DbBookJava;->c:Lcom/mycompany/app/db/book/DbBookJava;

    .line 2227
    .line 2228
    cmp-long v6, v3, v28

    .line 2229
    .line 2230
    if-gtz v6, :cond_71

    .line 2231
    .line 2232
    goto :goto_26

    .line 2233
    :cond_71
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookJava;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookJava;

    .line 2234
    .line 2235
    .line 2236
    move-result-object v6

    .line 2237
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v6

    .line 2241
    const-string v7, "DbBookJava_table"

    .line 2242
    .line 2243
    invoke-static {v6, v7, v3, v4}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2244
    .line 2245
    .line 2246
    :goto_26
    move/from16 v21, v9

    .line 2247
    .line 2248
    move/from16 v20, v10

    .line 2249
    .line 2250
    const/4 v10, 0x0

    .line 2251
    const/16 v11, 0x1a

    .line 2252
    .line 2253
    const/16 v17, 0x25

    .line 2254
    .line 2255
    const/16 v18, 0x1f

    .line 2256
    .line 2257
    const/16 v19, 0x1e

    .line 2258
    .line 2259
    goto/16 :goto_17

    .line 2260
    .line 2261
    :cond_72
    const/16 v11, 0x1d

    .line 2262
    .line 2263
    if-ne v8, v11, :cond_77

    .line 2264
    .line 2265
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v4

    .line 2269
    iget-object v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 2270
    .line 2271
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2272
    .line 2273
    .line 2274
    :try_start_d
    iget-object v7, v4, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 2275
    .line 2276
    if-eqz v7, :cond_75

    .line 2277
    .line 2278
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2279
    .line 2280
    .line 2281
    move-result v7

    .line 2282
    if-eqz v7, :cond_73

    .line 2283
    .line 2284
    goto :goto_27

    .line 2285
    :cond_73
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2286
    .line 2287
    .line 2288
    move-result v7

    .line 2289
    if-eqz v7, :cond_74

    .line 2290
    .line 2291
    goto :goto_27

    .line 2292
    :cond_74
    iget-object v4, v4, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 2293
    .line 2294
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 2295
    .line 2296
    .line 2297
    :catch_b
    :cond_75
    :goto_27
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v4

    .line 2301
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2302
    .line 2303
    invoke-virtual {v4, v6, v7}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 2304
    .line 2305
    .line 2306
    iget-wide v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2307
    .line 2308
    sget-object v6, Lcom/mycompany/app/db/book/DbBookTmem;->c:Lcom/mycompany/app/db/book/DbBookTmem;

    .line 2309
    .line 2310
    cmp-long v6, v3, v28

    .line 2311
    .line 2312
    if-gtz v6, :cond_76

    .line 2313
    .line 2314
    goto :goto_26

    .line 2315
    :cond_76
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookTmem;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTmem;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v6

    .line 2319
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2320
    .line 2321
    .line 2322
    move-result-object v6

    .line 2323
    const-string v7, "DbBookTmem_table"

    .line 2324
    .line 2325
    invoke-static {v6, v7, v3, v4}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2326
    .line 2327
    .line 2328
    goto :goto_26

    .line 2329
    :cond_77
    const/16 v4, 0x1e

    .line 2330
    .line 2331
    if-ne v8, v4, :cond_7c

    .line 2332
    .line 2333
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 2334
    .line 2335
    .line 2336
    move-result-object v6

    .line 2337
    iget-object v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 2338
    .line 2339
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2340
    .line 2341
    .line 2342
    :try_start_e
    iget-object v8, v6, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 2343
    .line 2344
    if-eqz v8, :cond_7a

    .line 2345
    .line 2346
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2347
    .line 2348
    .line 2349
    move-result v8

    .line 2350
    if-eqz v8, :cond_78

    .line 2351
    .line 2352
    goto :goto_28

    .line 2353
    :cond_78
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2354
    .line 2355
    .line 2356
    move-result v8

    .line 2357
    if-eqz v8, :cond_79

    .line 2358
    .line 2359
    goto :goto_28

    .line 2360
    :cond_79
    iget-object v6, v6, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 2361
    .line 2362
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 2363
    .line 2364
    .line 2365
    :catch_c
    :cond_7a
    :goto_28
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 2366
    .line 2367
    .line 2368
    move-result-object v6

    .line 2369
    iget-wide v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2370
    .line 2371
    invoke-virtual {v6, v7, v8}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 2372
    .line 2373
    .line 2374
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2375
    .line 2376
    sget-object v3, Lcom/mycompany/app/db/book/DbBookTrans;->c:Lcom/mycompany/app/db/book/DbBookTrans;

    .line 2377
    .line 2378
    cmp-long v3, v6, v28

    .line 2379
    .line 2380
    if-gtz v3, :cond_7b

    .line 2381
    .line 2382
    goto :goto_29

    .line 2383
    :cond_7b
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookTrans;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTrans;

    .line 2384
    .line 2385
    .line 2386
    move-result-object v3

    .line 2387
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v3

    .line 2391
    const-string v8, "DbBookTrans_table"

    .line 2392
    .line 2393
    invoke-static {v3, v8, v6, v7}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2394
    .line 2395
    .line 2396
    :goto_29
    move/from16 v19, v4

    .line 2397
    .line 2398
    move/from16 v21, v9

    .line 2399
    .line 2400
    move/from16 v20, v10

    .line 2401
    .line 2402
    const/4 v10, 0x0

    .line 2403
    const/16 v11, 0x1a

    .line 2404
    .line 2405
    const/16 v17, 0x25

    .line 2406
    .line 2407
    const/16 v18, 0x1f

    .line 2408
    .line 2409
    goto/16 :goto_17

    .line 2410
    .line 2411
    :cond_7c
    const/16 v6, 0x1f

    .line 2412
    .line 2413
    if-ne v8, v6, :cond_7e

    .line 2414
    .line 2415
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookPms;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPms;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v7

    .line 2419
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2420
    .line 2421
    invoke-virtual {v7, v9, v10}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 2422
    .line 2423
    .line 2424
    iget-wide v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2425
    .line 2426
    sget-object v3, Lcom/mycompany/app/db/book/DbBookPms;->c:Lcom/mycompany/app/db/book/DbBookPms;

    .line 2427
    .line 2428
    cmp-long v3, v7, v28

    .line 2429
    .line 2430
    if-gtz v3, :cond_7d

    .line 2431
    .line 2432
    goto :goto_2a

    .line 2433
    :cond_7d
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPms;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPms;

    .line 2434
    .line 2435
    .line 2436
    move-result-object v3

    .line 2437
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2438
    .line 2439
    .line 2440
    move-result-object v3

    .line 2441
    const-string v9, "DbBookPms_table"

    .line 2442
    .line 2443
    invoke-static {v3, v9, v7, v8}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2444
    .line 2445
    .line 2446
    :goto_2a
    move/from16 v19, v4

    .line 2447
    .line 2448
    move/from16 v18, v6

    .line 2449
    .line 2450
    const/4 v10, 0x0

    .line 2451
    const/16 v11, 0x1a

    .line 2452
    .line 2453
    const/16 v17, 0x25

    .line 2454
    .line 2455
    goto/16 :goto_16

    .line 2456
    .line 2457
    :cond_7e
    const/16 v9, 0x23

    .line 2458
    .line 2459
    if-ne v8, v9, :cond_80

    .line 2460
    .line 2461
    iget-wide v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2462
    .line 2463
    sget-object v3, Lcom/mycompany/app/db/book/DbBookSearch;->c:Lcom/mycompany/app/db/book/DbBookSearch;

    .line 2464
    .line 2465
    cmp-long v3, v7, v28

    .line 2466
    .line 2467
    if-gtz v3, :cond_7f

    .line 2468
    .line 2469
    goto :goto_2a

    .line 2470
    :cond_7f
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v3

    .line 2474
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2475
    .line 2476
    .line 2477
    move-result-object v3

    .line 2478
    const-string v10, "DbBookSearch_table"

    .line 2479
    .line 2480
    invoke-static {v3, v10, v7, v8}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2481
    .line 2482
    .line 2483
    goto :goto_2a

    .line 2484
    :cond_80
    const/16 v10, 0x24

    .line 2485
    .line 2486
    if-ne v8, v10, :cond_82

    .line 2487
    .line 2488
    iget-wide v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2489
    .line 2490
    sget-object v3, Lcom/mycompany/app/db/book/DbBookAgent;->c:Lcom/mycompany/app/db/book/DbBookAgent;

    .line 2491
    .line 2492
    cmp-long v3, v7, v28

    .line 2493
    .line 2494
    if-gtz v3, :cond_81

    .line 2495
    .line 2496
    goto :goto_2b

    .line 2497
    :cond_81
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookAgent;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAgent;

    .line 2498
    .line 2499
    .line 2500
    move-result-object v3

    .line 2501
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v3

    .line 2505
    const-string v4, "DbBookAgent_table"

    .line 2506
    .line 2507
    invoke-static {v3, v4, v7, v8}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2508
    .line 2509
    .line 2510
    :goto_2b
    move/from16 v18, v6

    .line 2511
    .line 2512
    const/4 v10, 0x0

    .line 2513
    const/16 v11, 0x1a

    .line 2514
    .line 2515
    const/16 v17, 0x25

    .line 2516
    .line 2517
    goto/16 :goto_15

    .line 2518
    .line 2519
    :cond_82
    const/16 v4, 0x25

    .line 2520
    .line 2521
    if-ne v8, v4, :cond_84

    .line 2522
    .line 2523
    iget-wide v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2524
    .line 2525
    sget-object v3, Lcom/mycompany/app/db/book/DbBookMemo;->c:Lcom/mycompany/app/db/book/DbBookMemo;

    .line 2526
    .line 2527
    cmp-long v3, v7, v28

    .line 2528
    .line 2529
    if-gtz v3, :cond_83

    .line 2530
    .line 2531
    goto :goto_2b

    .line 2532
    :cond_83
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookMemo;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookMemo;

    .line 2533
    .line 2534
    .line 2535
    move-result-object v3

    .line 2536
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2537
    .line 2538
    .line 2539
    move-result-object v3

    .line 2540
    const-string v4, "DbBookMemo_table"

    .line 2541
    .line 2542
    invoke-static {v3, v4, v7, v8}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2543
    .line 2544
    .line 2545
    goto :goto_2b

    .line 2546
    :cond_84
    const/16 v4, 0x20

    .line 2547
    .line 2548
    if-ne v8, v4, :cond_8d

    .line 2549
    .line 2550
    iget v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 2551
    .line 2552
    const/16 v8, 0x8

    .line 2553
    .line 2554
    if-ne v7, v8, :cond_87

    .line 2555
    .line 2556
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 2557
    .line 2558
    .line 2559
    move-result-object v7

    .line 2560
    iget-wide v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2561
    .line 2562
    neg-long v8, v9

    .line 2563
    invoke-virtual {v7, v8, v9}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 2564
    .line 2565
    .line 2566
    iget-wide v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2567
    .line 2568
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 2569
    .line 2570
    iget-boolean v9, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->i:Z

    .line 2571
    .line 2572
    sget-object v10, Lcom/mycompany/app/db/book/DbBookPage;->c:Lcom/mycompany/app/db/book/DbBookPage;

    .line 2573
    .line 2574
    cmp-long v10, v7, v28

    .line 2575
    .line 2576
    if-gtz v10, :cond_85

    .line 2577
    .line 2578
    goto :goto_2c

    .line 2579
    :cond_85
    if-eqz v9, :cond_86

    .line 2580
    .line 2581
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2582
    .line 2583
    .line 2584
    move-result v9

    .line 2585
    if-nez v9, :cond_86

    .line 2586
    .line 2587
    invoke-static {v5, v3}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2588
    .line 2589
    .line 2590
    :cond_86
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookPage;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPage;

    .line 2591
    .line 2592
    .line 2593
    move-result-object v3

    .line 2594
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2595
    .line 2596
    .line 2597
    move-result-object v3

    .line 2598
    const-string v9, "DbBookPage_table"

    .line 2599
    .line 2600
    invoke-static {v3, v9, v7, v8}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 2601
    .line 2602
    .line 2603
    :goto_2c
    move/from16 v22, v4

    .line 2604
    .line 2605
    move/from16 v18, v6

    .line 2606
    .line 2607
    const/4 v10, 0x0

    .line 2608
    const/16 v11, 0x1a

    .line 2609
    .line 2610
    const/16 v17, 0x25

    .line 2611
    .line 2612
    const/16 v19, 0x1e

    .line 2613
    .line 2614
    const/16 v20, 0x1c

    .line 2615
    .line 2616
    const/16 v21, 0x1b

    .line 2617
    .line 2618
    goto/16 :goto_18

    .line 2619
    .line 2620
    :cond_87
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->t0:Z

    .line 2621
    .line 2622
    if-eqz v7, :cond_8b

    .line 2623
    .line 2624
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 2625
    .line 2626
    .line 2627
    move-result-object v7

    .line 2628
    iget-wide v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2629
    .line 2630
    invoke-virtual {v7, v8, v9}, Lcom/mycompany/app/data/book/DataBookList;->e(J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v7

    .line 2634
    if-nez v7, :cond_88

    .line 2635
    .line 2636
    const/4 v8, 0x0

    .line 2637
    const/4 v9, 0x3

    .line 2638
    goto :goto_2d

    .line 2639
    :cond_88
    const/4 v9, 0x3

    .line 2640
    iput v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 2641
    .line 2642
    const/4 v8, 0x0

    .line 2643
    iput-boolean v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 2644
    .line 2645
    :goto_2d
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2646
    .line 2647
    invoke-static {v5, v6, v7}, Lcom/mycompany/app/db/book/DbBookDown;->k(Landroid/content/Context;J)V

    .line 2648
    .line 2649
    .line 2650
    invoke-static {v5}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v6

    .line 2654
    move-object v7, v5

    .line 2655
    if-eqz v6, :cond_8a

    .line 2656
    .line 2657
    iget-wide v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2658
    .line 2659
    iget-boolean v3, v6, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 2660
    .line 2661
    if-eqz v3, :cond_8a

    .line 2662
    .line 2663
    iget-object v3, v6, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 2664
    .line 2665
    if-nez v3, :cond_89

    .line 2666
    .line 2667
    goto :goto_2e

    .line 2668
    :cond_89
    const/4 v6, 0x1

    .line 2669
    invoke-virtual {v3, v4, v5, v6}, Lcom/mycompany/app/main/MainDownSvc;->N(JZ)V

    .line 2670
    .line 2671
    .line 2672
    goto :goto_2f

    .line 2673
    :cond_8a
    :goto_2e
    const/4 v6, 0x1

    .line 2674
    :goto_2f
    move/from16 v26, v6

    .line 2675
    .line 2676
    move-object v5, v7

    .line 2677
    move v10, v8

    .line 2678
    const/16 v11, 0x1a

    .line 2679
    .line 2680
    const/16 v17, 0x25

    .line 2681
    .line 2682
    const/16 v18, 0x1f

    .line 2683
    .line 2684
    const/16 v19, 0x1e

    .line 2685
    .line 2686
    const/16 v20, 0x1c

    .line 2687
    .line 2688
    const/16 v21, 0x1b

    .line 2689
    .line 2690
    const/16 v22, 0x20

    .line 2691
    .line 2692
    const/16 v23, 0x19

    .line 2693
    .line 2694
    const/16 v24, 0x18

    .line 2695
    .line 2696
    goto/16 :goto_1b

    .line 2697
    .line 2698
    :cond_8b
    move-object v7, v5

    .line 2699
    const/4 v6, 0x1

    .line 2700
    const/4 v8, 0x0

    .line 2701
    const/4 v9, 0x3

    .line 2702
    invoke-static {v7}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 2703
    .line 2704
    .line 2705
    move-result-object v4

    .line 2706
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2707
    .line 2708
    invoke-virtual {v4, v6, v7}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 2709
    .line 2710
    .line 2711
    iget-wide v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2712
    .line 2713
    move-wide/from16 v28, v6

    .line 2714
    .line 2715
    iget-object v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 2716
    .line 2717
    iget-object v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 2718
    .line 2719
    move/from16 v25, v8

    .line 2720
    .line 2721
    iget-boolean v8, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->i:Z

    .line 2722
    .line 2723
    move-object v9, v3

    .line 2724
    move/from16 v10, v25

    .line 2725
    .line 2726
    move-wide/from16 v3, v28

    .line 2727
    .line 2728
    const/16 v11, 0x1a

    .line 2729
    .line 2730
    const/16 v17, 0x25

    .line 2731
    .line 2732
    const/16 v18, 0x1f

    .line 2733
    .line 2734
    const/16 v19, 0x1e

    .line 2735
    .line 2736
    const/16 v20, 0x1c

    .line 2737
    .line 2738
    const/16 v21, 0x1b

    .line 2739
    .line 2740
    const/16 v22, 0x20

    .line 2741
    .line 2742
    const/16 v23, 0x19

    .line 2743
    .line 2744
    const/16 v24, 0x18

    .line 2745
    .line 2746
    const/16 v26, 0x1

    .line 2747
    .line 2748
    const/16 v27, 0x0

    .line 2749
    .line 2750
    const/16 v30, 0x17

    .line 2751
    .line 2752
    const/16 v31, 0x11

    .line 2753
    .line 2754
    const/16 v33, 0xe

    .line 2755
    .line 2756
    const/16 v34, 0x12

    .line 2757
    .line 2758
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/book/DbBookDown;->l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2759
    .line 2760
    .line 2761
    invoke-static {v5}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 2762
    .line 2763
    .line 2764
    move-result-object v3

    .line 2765
    if-eqz v3, :cond_8e

    .line 2766
    .line 2767
    iget-wide v6, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2768
    .line 2769
    iget-boolean v4, v3, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 2770
    .line 2771
    if-eqz v4, :cond_8e

    .line 2772
    .line 2773
    iget-object v3, v3, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 2774
    .line 2775
    if-nez v3, :cond_8c

    .line 2776
    .line 2777
    goto :goto_30

    .line 2778
    :cond_8c
    invoke-virtual {v3, v6, v7, v10}, Lcom/mycompany/app/main/MainDownSvc;->N(JZ)V

    .line 2779
    .line 2780
    .line 2781
    goto :goto_30

    .line 2782
    :cond_8d
    move-object v9, v3

    .line 2783
    move/from16 v22, v4

    .line 2784
    .line 2785
    move/from16 v18, v6

    .line 2786
    .line 2787
    const/4 v10, 0x0

    .line 2788
    const/16 v11, 0x1a

    .line 2789
    .line 2790
    const/16 v17, 0x25

    .line 2791
    .line 2792
    const/16 v19, 0x1e

    .line 2793
    .line 2794
    const/16 v20, 0x1c

    .line 2795
    .line 2796
    const/16 v21, 0x1b

    .line 2797
    .line 2798
    const/16 v23, 0x19

    .line 2799
    .line 2800
    const/16 v24, 0x18

    .line 2801
    .line 2802
    const/16 v26, 0x1

    .line 2803
    .line 2804
    const/16 v27, 0x0

    .line 2805
    .line 2806
    const/16 v30, 0x17

    .line 2807
    .line 2808
    const/16 v31, 0x11

    .line 2809
    .line 2810
    const/16 v33, 0xe

    .line 2811
    .line 2812
    const/16 v34, 0x12

    .line 2813
    .line 2814
    const/16 v3, 0x2a

    .line 2815
    .line 2816
    if-ne v8, v3, :cond_8e

    .line 2817
    .line 2818
    iget-wide v3, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->E:J

    .line 2819
    .line 2820
    invoke-static {v5, v3, v4}, Lcom/mycompany/app/db/book/DbBookTab;->l(Landroid/content/Context;J)V

    .line 2821
    .line 2822
    .line 2823
    :cond_8e
    :goto_30
    iget v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 2824
    .line 2825
    add-int/lit8 v3, v3, 0x1

    .line 2826
    .line 2827
    iput v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 2828
    .line 2829
    invoke-virtual {v1}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 2830
    .line 2831
    .line 2832
    move-object/from16 v8, v27

    .line 2833
    .line 2834
    move/from16 v9, v30

    .line 2835
    .line 2836
    move/from16 v7, v31

    .line 2837
    .line 2838
    move/from16 v4, v33

    .line 2839
    .line 2840
    move/from16 v6, v34

    .line 2841
    .line 2842
    const/16 v10, 0x16

    .line 2843
    .line 2844
    const/16 v11, 0x15

    .line 2845
    .line 2846
    goto/16 :goto_d

    .line 2847
    .line 2848
    :cond_8f
    move-object/from16 v27, v8

    .line 2849
    .line 2850
    const/4 v10, 0x0

    .line 2851
    const/16 v11, 0x1a

    .line 2852
    .line 2853
    const/16 v26, 0x1

    .line 2854
    .line 2855
    iget v0, v1, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->f:I

    .line 2856
    .line 2857
    if-ne v0, v11, :cond_96

    .line 2858
    .line 2859
    :try_start_f
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 2860
    .line 2861
    .line 2862
    move-result-object v0

    .line 2863
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2864
    .line 2865
    .line 2866
    move-result-object v11

    .line 2867
    const-string v12, "DbBookUser_table"

    .line 2868
    .line 2869
    const/4 v15, 0x0

    .line 2870
    const/16 v16, 0x0

    .line 2871
    .line 2872
    const/4 v13, 0x0

    .line 2873
    const/4 v14, 0x0

    .line 2874
    invoke-static/range {v11 .. v16}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 2875
    .line 2876
    .line 2877
    move-result-object v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 2878
    if-eqz v8, :cond_92

    .line 2879
    .line 2880
    :try_start_10
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2881
    .line 2882
    .line 2883
    move-result v0

    .line 2884
    if-eqz v0, :cond_92

    .line 2885
    .line 2886
    const-string v0, "_path"

    .line 2887
    .line 2888
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2889
    .line 2890
    .line 2891
    move-result v0

    .line 2892
    :cond_90
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2893
    .line 2894
    .line 2895
    move-result-object v2

    .line 2896
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2897
    .line 2898
    .line 2899
    move-result v2

    .line 2900
    if-eqz v2, :cond_91

    .line 2901
    .line 2902
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 2903
    .line 2904
    .line 2905
    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    .line 2906
    if-nez v2, :cond_90

    .line 2907
    .line 2908
    goto :goto_31

    .line 2909
    :cond_91
    move/from16 v10, v26

    .line 2910
    .line 2911
    goto :goto_31

    .line 2912
    :catch_d
    move-object/from16 v8, v27

    .line 2913
    .line 2914
    :catch_e
    :cond_92
    :goto_31
    if-eqz v8, :cond_93

    .line 2915
    .line 2916
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2917
    .line 2918
    .line 2919
    :cond_93
    if-eqz v10, :cond_94

    .line 2920
    .line 2921
    const-string v0, "sb_user_filter_path"

    .line 2922
    .line 2923
    const-string v2, "sb_user_filter_path"

    .line 2924
    .line 2925
    invoke-static {v5, v0, v2}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2926
    .line 2927
    .line 2928
    move-result-object v0

    .line 2929
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 2930
    .line 2931
    .line 2932
    move-result-object v2

    .line 2933
    invoke-virtual {v2, v0}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 2934
    .line 2935
    .line 2936
    goto :goto_32

    .line 2937
    :cond_94
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 2938
    .line 2939
    .line 2940
    move-result-object v0

    .line 2941
    invoke-virtual {v0}, Lcom/mycompany/app/data/book/DataBookList;->c()V

    .line 2942
    .line 2943
    .line 2944
    sget-object v0, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 2945
    .line 2946
    const-string v0, "sb_user_filter_path"

    .line 2947
    .line 2948
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2949
    .line 2950
    .line 2951
    move-result v2

    .line 2952
    if-eqz v2, :cond_95

    .line 2953
    .line 2954
    goto :goto_32

    .line 2955
    :cond_95
    filled-new-array {v0}, [Ljava/lang/String;

    .line 2956
    .line 2957
    .line 2958
    move-result-object v0

    .line 2959
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 2960
    .line 2961
    .line 2962
    move-result-object v2

    .line 2963
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2964
    .line 2965
    .line 2966
    move-result-object v2

    .line 2967
    const-string v3, "DbBookFilter_table"

    .line 2968
    .line 2969
    const-string v4, "_path=?"

    .line 2970
    .line 2971
    invoke-static {v2, v3, v4, v0}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2972
    .line 2973
    .line 2974
    :cond_96
    :goto_32
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->b0:Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;->b()V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->p0:Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->b0:Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;->b()V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    iget v2, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 21
    .line 22
    iget v3, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->j:I

    .line 23
    .line 24
    if-le v2, v3, :cond_3

    .line 25
    .line 26
    iput v3, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 27
    .line 28
    :cond_3
    iget v2, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 29
    .line 30
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 38
    .line 39
    iget v2, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->j:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDeleteBook;->n0:Lcom/mycompany/app/view/MyProgressBar;

    .line 45
    .line 46
    iget v1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$DialogTask;->k:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
