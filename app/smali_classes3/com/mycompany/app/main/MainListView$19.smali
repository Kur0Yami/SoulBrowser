.class Lcom/mycompany/app/main/MainListView$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$19;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$19;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    iget-object p5, p1, Lcom/mycompany/app/main/MainListView;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->J()Z

    .line 8
    .line 9
    .line 10
    move-result p6

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p6, :cond_0

    .line 13
    .line 14
    goto/16 :goto_9

    .line 15
    .line 16
    :cond_0
    iget-object p6, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 17
    .line 18
    if-nez p6, :cond_1

    .line 19
    .line 20
    goto/16 :goto_9

    .line 21
    .line 22
    :cond_1
    iget v1, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 23
    .line 24
    const/16 v2, 0x10

    .line 25
    .line 26
    const/16 v3, 0xf

    .line 27
    .line 28
    const/16 v4, 0xe

    .line 29
    .line 30
    if-eq v1, v0, :cond_6

    .line 31
    .line 32
    if-ne v1, v4, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v5, 0x2

    .line 36
    if-eq v1, v5, :cond_5

    .line 37
    .line 38
    if-ne v1, v3, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const/4 v5, 0x3

    .line 42
    if-eq v1, v5, :cond_4

    .line 43
    .line 44
    if-ne v1, v2, :cond_7

    .line 45
    .line 46
    :cond_4
    sput-boolean v0, Lcom/mycompany/app/list/ListTaskCmp;->k:Z

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_5
    :goto_0
    sput-boolean v0, Lcom/mycompany/app/list/ListTaskPdf;->k:Z

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_6
    :goto_1
    sput-boolean v0, Lcom/mycompany/app/list/ListTaskAlbum;->k:Z

    .line 53
    .line 54
    :cond_7
    :goto_2
    iget-object v1, p6, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    if-eqz v1, :cond_9

    .line 58
    .line 59
    if-ltz p3, :cond_9

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-lt p3, v1, :cond_8

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_8
    iget-object p6, p6, Lcom/mycompany/app/main/MainListAdapter;->h:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {p6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    check-cast p3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 75
    .line 76
    if-nez p3, :cond_a

    .line 77
    .line 78
    :cond_9
    :goto_3
    move p3, v5

    .line 79
    goto :goto_4

    .line 80
    :cond_a
    iget p3, p3, Lcom/mycompany/app/main/MainItem$GroupItem;->e:I

    .line 81
    .line 82
    :goto_4
    add-int/2addr p3, p4

    .line 83
    iget-boolean p4, p1, Lcom/mycompany/app/main/MainListView;->n:Z

    .line 84
    .line 85
    if-eqz p4, :cond_e

    .line 86
    .line 87
    iget-object p4, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 88
    .line 89
    iget-boolean p6, p4, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 90
    .line 91
    if-eqz p6, :cond_e

    .line 92
    .line 93
    invoke-virtual {p4, p3}, Lcom/mycompany/app/main/MainListAdapter;->t(I)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_b

    .line 98
    .line 99
    goto/16 :goto_9

    .line 100
    .line 101
    :cond_b
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 102
    .line 103
    iget-object p4, p2, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 104
    .line 105
    if-eqz p4, :cond_d

    .line 106
    .line 107
    if-ltz p3, :cond_d

    .line 108
    .line 109
    array-length p5, p4

    .line 110
    if-lt p3, p5, :cond_c

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_c
    aget-boolean p4, p4, p3

    .line 114
    .line 115
    xor-int/2addr p4, v0

    .line 116
    invoke-virtual {p2, p3, p4}, Lcom/mycompany/app/main/MainListAdapter;->v(IZ)V

    .line 117
    .line 118
    .line 119
    :cond_d
    :goto_5
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->c0()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->a0()V

    .line 123
    .line 124
    .line 125
    return v0

    .line 126
    :cond_e
    iget-object p4, p1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 127
    .line 128
    if-nez p4, :cond_f

    .line 129
    .line 130
    goto/16 :goto_9

    .line 131
    .line 132
    :cond_f
    iget-boolean p4, p1, Lcom/mycompany/app/main/MainListView;->e:Z

    .line 133
    .line 134
    const/4 p6, 0x0

    .line 135
    if-nez p4, :cond_19

    .line 136
    .line 137
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 138
    .line 139
    invoke-virtual {p2, p3}, Lcom/mycompany/app/main/MainListAdapter;->m(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-nez p2, :cond_10

    .line 144
    .line 145
    goto/16 :goto_9

    .line 146
    .line 147
    :cond_10
    iget p4, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 148
    .line 149
    const/16 v1, 0xd

    .line 150
    .line 151
    if-ne p4, v1, :cond_11

    .line 152
    .line 153
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 158
    .line 159
    invoke-virtual {p2, p3, p1}, Lcom/mycompany/app/main/MainListListener;->b(ILjava/util/List;)V

    .line 160
    .line 161
    .line 162
    return v0

    .line 163
    :cond_11
    iget-boolean p3, p1, Lcom/mycompany/app/main/MainListView;->c1:Z

    .line 164
    .line 165
    if-eqz p3, :cond_18

    .line 166
    .line 167
    invoke-static {p5}, Lcom/mycompany/app/data/DataSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataSearch;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result p4

    .line 180
    if-eqz p4, :cond_12

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_12
    iget-object p4, p3, Lcom/mycompany/app/data/DataSearch;->b:Ljava/util/List;

    .line 184
    .line 185
    if-eqz p4, :cond_16

    .line 186
    .line 187
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result p4

    .line 191
    if-eqz p4, :cond_13

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_13
    iget-object p4, p3, Lcom/mycompany/app/data/DataSearch;->b:Ljava/util/List;

    .line 195
    .line 196
    invoke-interface {p4, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-ltz p2, :cond_16

    .line 201
    .line 202
    iget-object p4, p3, Lcom/mycompany/app/data/DataSearch;->a:Ljava/util/List;

    .line 203
    .line 204
    if-eqz p4, :cond_16

    .line 205
    .line 206
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result p4

    .line 210
    if-lt p2, p4, :cond_14

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_14
    iget-object p3, p3, Lcom/mycompany/app/data/DataSearch;->a:Ljava/util/List;

    .line 214
    .line 215
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    check-cast p3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 220
    .line 221
    if-nez p3, :cond_15

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_15
    iput p2, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 225
    .line 226
    move-object p6, p3

    .line 227
    :cond_16
    :goto_6
    if-nez p6, :cond_17

    .line 228
    .line 229
    goto/16 :goto_9

    .line 230
    .line 231
    :cond_17
    invoke-virtual {p1, v5, v0}, Lcom/mycompany/app/main/MainListView;->S(ZZ)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->N()V

    .line 235
    .line 236
    .line 237
    move-object p2, p6

    .line 238
    :cond_18
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 239
    .line 240
    iget p3, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 241
    .line 242
    invoke-virtual {p1, p3, p2, v5}, Lcom/mycompany/app/main/MainListListener;->f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V

    .line 243
    .line 244
    .line 245
    return v0

    .line 246
    :cond_19
    iget p4, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 247
    .line 248
    const/16 v1, 0x13

    .line 249
    .line 250
    if-eq p4, v1, :cond_2e

    .line 251
    .line 252
    const/16 v1, 0x14

    .line 253
    .line 254
    if-eq p4, v1, :cond_2e

    .line 255
    .line 256
    const/16 v1, 0x15

    .line 257
    .line 258
    if-eq p4, v1, :cond_2e

    .line 259
    .line 260
    const/16 v1, 0x16

    .line 261
    .line 262
    if-eq p4, v1, :cond_2e

    .line 263
    .line 264
    const/16 v1, 0x17

    .line 265
    .line 266
    if-eq p4, v1, :cond_2e

    .line 267
    .line 268
    const/16 v1, 0x1c

    .line 269
    .line 270
    if-eq p4, v1, :cond_2e

    .line 271
    .line 272
    const/16 v1, 0x1d

    .line 273
    .line 274
    if-eq p4, v1, :cond_2e

    .line 275
    .line 276
    const/16 v1, 0x1e

    .line 277
    .line 278
    if-ne p4, v1, :cond_1a

    .line 279
    .line 280
    goto/16 :goto_9

    .line 281
    .line 282
    :cond_1a
    iget-object p4, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 283
    .line 284
    invoke-virtual {p4, p3}, Lcom/mycompany/app/main/MainListAdapter;->m(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 285
    .line 286
    .line 287
    move-result-object p3

    .line 288
    if-nez p3, :cond_1b

    .line 289
    .line 290
    goto/16 :goto_9

    .line 291
    .line 292
    :cond_1b
    iget p4, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 293
    .line 294
    const/16 v1, 0x19

    .line 295
    .line 296
    if-ne p4, v1, :cond_20

    .line 297
    .line 298
    if-nez p2, :cond_1c

    .line 299
    .line 300
    goto/16 :goto_9

    .line 301
    .line 302
    :cond_1c
    const-string p4, "sb_user_filter_path"

    .line 303
    .line 304
    iget-object p6, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result p4

    .line 310
    if-eqz p4, :cond_1d

    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->u0()V

    .line 313
    .line 314
    .line 315
    return v0

    .line 316
    :cond_1d
    iget-object p1, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-eqz p1, :cond_1e

    .line 323
    .line 324
    iget-object p1, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 325
    .line 326
    goto :goto_7

    .line 327
    :cond_1e
    iget-object p1, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 328
    .line 329
    :goto_7
    invoke-static {p5, p1}, Lcom/mycompany/app/main/MainUtil;->h6(Landroid/content/Context;Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result p3

    .line 333
    if-nez p3, :cond_1f

    .line 334
    .line 335
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 336
    .line 337
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 338
    .line 339
    .line 340
    return v0

    .line 341
    :cond_1f
    new-instance p3, Landroid/content/Intent;

    .line 342
    .line 343
    const-class p4, Lcom/mycompany/app/main/MainTxtView;

    .line 344
    .line 345
    invoke-direct {p3, p5, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .line 347
    .line 348
    const-string p4, "EXTRA_PATH"

    .line 349
    .line 350
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 354
    .line 355
    .line 356
    return v0

    .line 357
    :cond_20
    iget-object p4, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 358
    .line 359
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 360
    .line 361
    .line 362
    move-result p4

    .line 363
    if-eqz p4, :cond_21

    .line 364
    .line 365
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 366
    .line 367
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 368
    .line 369
    .line 370
    return v0

    .line 371
    :cond_21
    iget p4, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 372
    .line 373
    const/16 v1, 0x12

    .line 374
    .line 375
    if-ne p4, v1, :cond_22

    .line 376
    .line 377
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 378
    .line 379
    invoke-virtual {p1, v5, p3, v0}, Lcom/mycompany/app/main/MainListListener;->f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V

    .line 380
    .line 381
    .line 382
    return v0

    .line 383
    :cond_22
    const/16 v1, 0x18

    .line 384
    .line 385
    if-ne p4, v1, :cond_23

    .line 386
    .line 387
    invoke-static {p1, p3}, Lcom/mycompany/app/main/MainListView;->g(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 388
    .line 389
    .line 390
    return v0

    .line 391
    :cond_23
    const/16 v1, 0x1a

    .line 392
    .line 393
    if-ne p4, v1, :cond_24

    .line 394
    .line 395
    invoke-static {p1, p3}, Lcom/mycompany/app/main/MainListView;->e(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 396
    .line 397
    .line 398
    return v0

    .line 399
    :cond_24
    const/16 v1, 0x1b

    .line 400
    .line 401
    if-ne p4, v1, :cond_25

    .line 402
    .line 403
    invoke-virtual {p1, p3}, Lcom/mycompany/app/main/MainListView;->r0(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 404
    .line 405
    .line 406
    return v0

    .line 407
    :cond_25
    const/16 v1, 0x1f

    .line 408
    .line 409
    if-ne p4, v1, :cond_29

    .line 410
    .line 411
    if-nez p2, :cond_26

    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_26
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->J()Z

    .line 415
    .line 416
    .line 417
    move-result p4

    .line 418
    if-eqz p4, :cond_27

    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_27
    iget-object p4, p1, Lcom/mycompany/app/main/MainListView;->S0:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 422
    .line 423
    if-eqz p4, :cond_28

    .line 424
    .line 425
    invoke-virtual {p4}, Lcom/mycompany/app/dialog/DialogSetPms;->dismiss()V

    .line 426
    .line 427
    .line 428
    iput-object p6, p1, Lcom/mycompany/app/main/MainListView;->S0:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 429
    .line 430
    :cond_28
    new-instance p4, Lcom/mycompany/app/dialog/DialogSetPms;

    .line 431
    .line 432
    new-instance p5, Lcom/mycompany/app/main/MainListView$120;

    .line 433
    .line 434
    invoke-direct {p5, p1}, Lcom/mycompany/app/main/MainListView$120;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 435
    .line 436
    .line 437
    invoke-direct {p4, p2, p3, p5}, Lcom/mycompany/app/dialog/DialogSetPms;-><init>(Landroid/app/Activity;Lcom/mycompany/app/main/MainItem$ChildItem;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 438
    .line 439
    .line 440
    iput-object p4, p1, Lcom/mycompany/app/main/MainListView;->S0:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 441
    .line 442
    new-instance p2, Lcom/mycompany/app/main/MainListView$121;

    .line 443
    .line 444
    invoke-direct {p2, p1}, Lcom/mycompany/app/main/MainListView$121;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p4, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 448
    .line 449
    .line 450
    return v0

    .line 451
    :cond_29
    if-ne p4, v4, :cond_2a

    .line 452
    .line 453
    invoke-static {p5}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 454
    .line 455
    .line 456
    move-result-object p4

    .line 457
    iget-object p5, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {p4, p5}, Lcom/mycompany/app/data/DataList;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 460
    .line 461
    .line 462
    move-result-object p4

    .line 463
    goto :goto_8

    .line 464
    :cond_2a
    if-ne p4, v3, :cond_2b

    .line 465
    .line 466
    invoke-static {p5}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 467
    .line 468
    .line 469
    move-result-object p4

    .line 470
    iget-object p5, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {p4, p5}, Lcom/mycompany/app/data/DataList;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 473
    .line 474
    .line 475
    move-result-object p4

    .line 476
    goto :goto_8

    .line 477
    :cond_2b
    if-ne p4, v2, :cond_2c

    .line 478
    .line 479
    invoke-static {p5}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 480
    .line 481
    .line 482
    move-result-object p4

    .line 483
    iget-object p5, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {p4, p5}, Lcom/mycompany/app/data/DataList;->g(Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 486
    .line 487
    .line 488
    move-result-object p4

    .line 489
    goto :goto_8

    .line 490
    :cond_2c
    move-object p4, p3

    .line 491
    :goto_8
    if-nez p4, :cond_2d

    .line 492
    .line 493
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 494
    .line 495
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 496
    .line 497
    .line 498
    return v0

    .line 499
    :cond_2d
    iget p2, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 500
    .line 501
    iput p2, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 502
    .line 503
    iget p2, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 504
    .line 505
    iput p2, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 506
    .line 507
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 508
    .line 509
    iget p2, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 510
    .line 511
    invoke-virtual {p1, p2, p4, v0}, Lcom/mycompany/app/main/MainListListener;->f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V

    .line 512
    .line 513
    .line 514
    :cond_2e
    :goto_9
    return v0
.end method
