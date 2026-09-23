.class Lcom/mycompany/app/main/MainListView$71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$71;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView$71;->a:Lcom/mycompany/app/main/MainListView;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->K()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_0
    iget v4, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 18
    .line 19
    const/16 v5, 0x1a

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    if-eq v4, v5, :cond_1d

    .line 23
    .line 24
    const/16 v5, 0x1f

    .line 25
    .line 26
    if-eq v4, v5, :cond_1d

    .line 27
    .line 28
    const/16 v5, 0x2a

    .line 29
    .line 30
    if-ne v4, v5, :cond_1

    .line 31
    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_1
    const/4 v5, 0x7

    .line 35
    const/4 v7, 0x6

    .line 36
    const/4 v8, 0x5

    .line 37
    const/4 v9, 0x4

    .line 38
    const/4 v10, 0x3

    .line 39
    const/4 v11, 0x0

    .line 40
    const/16 v12, 0x18

    .line 41
    .line 42
    if-ne v4, v12, :cond_7

    .line 43
    .line 44
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 45
    .line 46
    invoke-virtual {v4, v1}, Lcom/mycompany/app/main/MainListAdapter;->m(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView;->p0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    goto/16 :goto_8

    .line 55
    .line 56
    :cond_2
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->C()V

    .line 57
    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    goto/16 :goto_8

    .line 62
    .line 63
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v12, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 69
    .line 70
    sget v13, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 71
    .line 72
    invoke-direct {v12, v11, v13}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v11, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 79
    .line 80
    sget v12, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 81
    .line 82
    invoke-direct {v11, v6, v12}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    new-instance v11, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 89
    .line 90
    const-string v12, "\uc791\uc131\uae00 (\ud604\uc7ac \uac24\ub7ec\ub9ac)"

    .line 91
    .line 92
    invoke-direct {v11, v10, v12}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v10, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 99
    .line 100
    const-string v11, "\uc791\uc131\uae00 (\uc804\uccb4 \uac24\ub7ec\ub9ac)"

    .line 101
    .line 102
    invoke-direct {v10, v9, v11}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget v9, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 109
    .line 110
    if-ne v9, v6, :cond_4

    .line 111
    .line 112
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 113
    .line 114
    const-string v7, "IP \uc870\ud68c"

    .line 115
    .line 116
    invoke-direct {v6, v8, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 124
    .line 125
    const-string v8, "\uac24\ub85c\uadf8 \uc870\ud68c"

    .line 126
    .line 127
    invoke-direct {v6, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    :goto_0
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 134
    .line 135
    sget v7, Lnet/kaki87/soul2/testing/R$string;->details:I

    .line 136
    .line 137
    invoke-direct {v6, v5, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    new-instance v12, Lcom/mycompany/app/view/MyPopupMenu;

    .line 144
    .line 145
    iget-object v13, v2, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 146
    .line 147
    iget-object v14, v2, Lcom/mycompany/app/main/MainListView;->h:Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    sget-boolean v17, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 150
    .line 151
    new-instance v5, Lcom/mycompany/app/main/MainListView$81;

    .line 152
    .line 153
    invoke-direct {v5, v2, v1}, Lcom/mycompany/app/main/MainListView$81;-><init>(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 154
    .line 155
    .line 156
    move-object/from16 v15, p1

    .line 157
    .line 158
    move-object/from16 v16, v4

    .line 159
    .line 160
    move-object/from16 v18, v5

    .line 161
    .line 162
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 163
    .line 164
    .line 165
    iput-object v12, v2, Lcom/mycompany/app/main/MainListView;->p0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 166
    .line 167
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->V0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 168
    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    iput-object v12, v1, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 172
    .line 173
    return-void

    .line 174
    :cond_5
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->W0:Lcom/mycompany/app/view/MyDialogBottom;

    .line 175
    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    iput-object v12, v1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 179
    .line 180
    return-void

    .line 181
    :cond_6
    if-eqz v3, :cond_1e

    .line 182
    .line 183
    iput-object v12, v3, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 184
    .line 185
    return-void

    .line 186
    :cond_7
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 187
    .line 188
    invoke-virtual {v4, v1}, Lcom/mycompany/app/main/MainListAdapter;->m(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v4, v2, Lcom/mycompany/app/main/MainListView;->p0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 193
    .line 194
    if-eqz v4, :cond_8

    .line 195
    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :cond_8
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListView;->C()V

    .line 199
    .line 200
    .line 201
    if-nez v1, :cond_9

    .line 202
    .line 203
    goto/16 :goto_8

    .line 204
    .line 205
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .line 209
    .line 210
    iget v13, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 211
    .line 212
    const/4 v15, 0x2

    .line 213
    const/16 v11, 0x12

    .line 214
    .line 215
    const/16 v14, 0x8

    .line 216
    .line 217
    const/16 v12, 0x20

    .line 218
    .line 219
    if-ne v13, v12, :cond_b

    .line 220
    .line 221
    iget v7, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 222
    .line 223
    if-eq v7, v14, :cond_a

    .line 224
    .line 225
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 226
    .line 227
    sget v8, Lnet/kaki87/soul2/testing/R$string;->open_with:I

    .line 228
    .line 229
    invoke-direct {v7, v6, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 236
    .line 237
    sget v8, Lnet/kaki87/soul2/testing/R$string;->down_again:I

    .line 238
    .line 239
    invoke-direct {v7, v15, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 246
    .line 247
    sget v8, Lnet/kaki87/soul2/testing/R$string;->visit_site:I

    .line 248
    .line 249
    invoke-direct {v7, v10, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_a
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 256
    .line 257
    sget v8, Lnet/kaki87/soul2/testing/R$string;->copy_url:I

    .line 258
    .line 259
    invoke-direct {v7, v5, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_b
    if-ne v13, v11, :cond_c

    .line 267
    .line 268
    new-instance v13, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 269
    .line 270
    sget v11, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 271
    .line 272
    invoke-direct {v13, v9, v11}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    new-instance v9, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 279
    .line 280
    sget v11, Lnet/kaki87/soul2/testing/R$string;->group_url:I

    .line 281
    .line 282
    invoke-direct {v9, v8, v11}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    new-instance v8, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 289
    .line 290
    sget v9, Lnet/kaki87/soul2/testing/R$string;->back_url:I

    .line 291
    .line 292
    invoke-direct {v8, v7, v9}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 299
    .line 300
    sget v8, Lnet/kaki87/soul2/testing/R$string;->copy_url:I

    .line 301
    .line 302
    invoke-direct {v7, v5, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_c
    const/16 v5, 0x19

    .line 310
    .line 311
    if-eq v13, v5, :cond_d

    .line 312
    .line 313
    const/16 v5, 0x1b

    .line 314
    .line 315
    if-ne v13, v5, :cond_e

    .line 316
    .line 317
    :cond_d
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 318
    .line 319
    sget v7, Lnet/kaki87/soul2/testing/R$string;->update:I

    .line 320
    .line 321
    const/4 v8, 0x0

    .line 322
    invoke-direct {v5, v8, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    :cond_e
    :goto_1
    iget v5, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 329
    .line 330
    if-ne v5, v12, :cond_f

    .line 331
    .line 332
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 333
    .line 334
    sget v7, Lnet/kaki87/soul2/testing/R$string;->delete_file:I

    .line 335
    .line 336
    invoke-direct {v5, v14, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 343
    .line 344
    const/16 v7, 0x9

    .line 345
    .line 346
    sget v8, Lnet/kaki87/soul2/testing/R$string;->delete_record:I

    .line 347
    .line 348
    invoke-direct {v5, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_f
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 356
    .line 357
    sget v7, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 358
    .line 359
    invoke-direct {v5, v14, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    :goto_2
    iget v5, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 366
    .line 367
    if-eq v5, v12, :cond_10

    .line 368
    .line 369
    iget-boolean v5, v2, Lcom/mycompany/app/main/MainListView;->e:Z

    .line 370
    .line 371
    if-nez v5, :cond_11

    .line 372
    .line 373
    :cond_10
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 374
    .line 375
    const/16 v7, 0xa

    .line 376
    .line 377
    sget v8, Lnet/kaki87/soul2/testing/R$string;->rename:I

    .line 378
    .line 379
    invoke-direct {v5, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    :cond_11
    iget v5, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 386
    .line 387
    const/16 v7, 0x13

    .line 388
    .line 389
    const/16 v8, 0xb

    .line 390
    .line 391
    const/16 v9, 0x24

    .line 392
    .line 393
    const/16 v11, 0x23

    .line 394
    .line 395
    if-eq v5, v7, :cond_14

    .line 396
    .line 397
    const/16 v7, 0x14

    .line 398
    .line 399
    if-eq v5, v7, :cond_14

    .line 400
    .line 401
    const/16 v7, 0x15

    .line 402
    .line 403
    if-eq v5, v7, :cond_14

    .line 404
    .line 405
    const/16 v7, 0x16

    .line 406
    .line 407
    if-eq v5, v7, :cond_14

    .line 408
    .line 409
    const/16 v7, 0x17

    .line 410
    .line 411
    if-eq v5, v7, :cond_14

    .line 412
    .line 413
    const/16 v7, 0x18

    .line 414
    .line 415
    if-eq v5, v7, :cond_14

    .line 416
    .line 417
    const/16 v7, 0x1c

    .line 418
    .line 419
    if-eq v5, v7, :cond_14

    .line 420
    .line 421
    const/16 v7, 0x1d

    .line 422
    .line 423
    if-eq v5, v7, :cond_14

    .line 424
    .line 425
    const/16 v7, 0x1e

    .line 426
    .line 427
    if-eq v5, v7, :cond_14

    .line 428
    .line 429
    if-eq v5, v11, :cond_14

    .line 430
    .line 431
    if-ne v5, v9, :cond_12

    .line 432
    .line 433
    goto :goto_3

    .line 434
    :cond_12
    const/16 v7, 0x19

    .line 435
    .line 436
    if-ne v5, v7, :cond_15

    .line 437
    .line 438
    const-string v5, "sb_user_filter_path"

    .line 439
    .line 440
    iget-object v7, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    if-nez v5, :cond_13

    .line 447
    .line 448
    iget-object v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 449
    .line 450
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    if-eqz v5, :cond_15

    .line 455
    .line 456
    :cond_13
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 457
    .line 458
    sget v7, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 459
    .line 460
    invoke-direct {v5, v8, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    goto :goto_4

    .line 467
    :cond_14
    :goto_3
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 468
    .line 469
    sget v7, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 470
    .line 471
    invoke-direct {v5, v8, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    :cond_15
    :goto_4
    iget v5, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 478
    .line 479
    const/16 v7, 0xc

    .line 480
    .line 481
    if-eq v5, v6, :cond_17

    .line 482
    .line 483
    if-eq v5, v15, :cond_17

    .line 484
    .line 485
    if-eq v5, v10, :cond_17

    .line 486
    .line 487
    const/16 v8, 0x12

    .line 488
    .line 489
    if-eq v5, v8, :cond_17

    .line 490
    .line 491
    const/16 v8, 0x19

    .line 492
    .line 493
    if-eq v5, v8, :cond_17

    .line 494
    .line 495
    if-eq v5, v12, :cond_17

    .line 496
    .line 497
    if-eq v5, v11, :cond_17

    .line 498
    .line 499
    if-ne v5, v9, :cond_16

    .line 500
    .line 501
    goto :goto_5

    .line 502
    :cond_16
    const/16 v8, 0x1b

    .line 503
    .line 504
    if-ne v5, v8, :cond_18

    .line 505
    .line 506
    iget-object v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 507
    .line 508
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 509
    .line 510
    .line 511
    move-result v5

    .line 512
    if-eqz v5, :cond_18

    .line 513
    .line 514
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 515
    .line 516
    sget v8, Lnet/kaki87/soul2/testing/R$string;->share:I

    .line 517
    .line 518
    invoke-direct {v5, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    goto :goto_6

    .line 525
    :cond_17
    :goto_5
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 526
    .line 527
    sget v8, Lnet/kaki87/soul2/testing/R$string;->share:I

    .line 528
    .line 529
    invoke-direct {v5, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    :cond_18
    :goto_6
    iget v5, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 536
    .line 537
    if-ne v5, v6, :cond_19

    .line 538
    .line 539
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 540
    .line 541
    const/16 v6, 0xd

    .line 542
    .line 543
    sget v7, Lnet/kaki87/soul2/testing/R$string;->extract:I

    .line 544
    .line 545
    invoke-direct {v5, v6, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    :cond_19
    iget v5, v2, Lcom/mycompany/app/main/MainListView;->d:I

    .line 552
    .line 553
    const/16 v8, 0x12

    .line 554
    .line 555
    if-ne v5, v8, :cond_1a

    .line 556
    .line 557
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 558
    .line 559
    const/16 v6, 0xe

    .line 560
    .line 561
    sget v7, Lnet/kaki87/soul2/testing/R$string;->open_with:I

    .line 562
    .line 563
    invoke-direct {v5, v6, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    :cond_1a
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 570
    .line 571
    const/16 v6, 0xf

    .line 572
    .line 573
    sget v7, Lnet/kaki87/soul2/testing/R$string;->details:I

    .line 574
    .line 575
    invoke-direct {v5, v6, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-object v8, v4

    .line 582
    new-instance v4, Lcom/mycompany/app/view/MyPopupMenu;

    .line 583
    .line 584
    iget-object v5, v2, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 585
    .line 586
    iget-object v6, v2, Lcom/mycompany/app/main/MainListView;->h:Landroid/widget/RelativeLayout;

    .line 587
    .line 588
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 589
    .line 590
    new-instance v10, Lcom/mycompany/app/main/MainListView$80;

    .line 591
    .line 592
    invoke-direct {v10, v2, v1}, Lcom/mycompany/app/main/MainListView$80;-><init>(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 593
    .line 594
    .line 595
    move-object/from16 v7, p1

    .line 596
    .line 597
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 598
    .line 599
    .line 600
    iput-object v4, v2, Lcom/mycompany/app/main/MainListView;->p0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 601
    .line 602
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->V0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 603
    .line 604
    if-eqz v1, :cond_1b

    .line 605
    .line 606
    iput-object v4, v1, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 607
    .line 608
    return-void

    .line 609
    :cond_1b
    iget-object v1, v2, Lcom/mycompany/app/main/MainListView;->W0:Lcom/mycompany/app/view/MyDialogBottom;

    .line 610
    .line 611
    if-eqz v1, :cond_1c

    .line 612
    .line 613
    iput-object v4, v1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 614
    .line 615
    return-void

    .line 616
    :cond_1c
    if-eqz v3, :cond_1e

    .line 617
    .line 618
    iput-object v4, v3, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 619
    .line 620
    return-void

    .line 621
    :cond_1d
    :goto_7
    iget-object v3, v2, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 622
    .line 623
    invoke-virtual {v3, v1}, Lcom/mycompany/app/main/MainListAdapter;->m(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    if-nez v1, :cond_1f

    .line 628
    .line 629
    :cond_1e
    :goto_8
    return-void

    .line 630
    :cond_1f
    new-instance v3, Ljava/util/ArrayList;

    .line 631
    .line 632
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    const/4 v1, 0x0

    .line 639
    invoke-static {v2, v3, v1, v6}, Lcom/mycompany/app/main/MainListView;->d(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Z)V

    .line 640
    .line 641
    .line 642
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$71;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->K()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Lcom/mycompany/app/main/MainListAdapter;->p(I)Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->p0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->C()V

    .line 24
    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iget v2, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 35
    .line 36
    const/16 v3, 0x20

    .line 37
    .line 38
    const/16 v4, 0x8

    .line 39
    .line 40
    if-ne v2, v3, :cond_3

    .line 41
    .line 42
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 43
    .line 44
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete_file:I

    .line 45
    .line 46
    invoke-direct {v2, v4, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 53
    .line 54
    const/16 v3, 0x9

    .line 55
    .line 56
    sget v4, Lnet/kaki87/soul2/testing/R$string;->delete_record:I

    .line 57
    .line 58
    invoke-direct {v2, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const/16 v3, 0x1a

    .line 66
    .line 67
    if-ne v2, v3, :cond_4

    .line 68
    .line 69
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 70
    .line 71
    const/16 v3, 0x10

    .line 72
    .line 73
    sget v5, Lnet/kaki87/soul2/testing/R$string;->used_on:I

    .line 74
    .line 75
    invoke-direct {v2, v3, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 82
    .line 83
    const/16 v3, 0x11

    .line 84
    .line 85
    sget v5, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 86
    .line 87
    invoke-direct {v2, v3, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_4
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 94
    .line 95
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 96
    .line 97
    invoke-direct {v2, v4, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :goto_0
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 104
    .line 105
    iget-object v4, v0, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 106
    .line 107
    iget-object v5, v0, Lcom/mycompany/app/main/MainListView;->h:Landroid/widget/RelativeLayout;

    .line 108
    .line 109
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 110
    .line 111
    new-instance v9, Lcom/mycompany/app/main/MainListView$79;

    .line 112
    .line 113
    invoke-direct {v9, v0, p2, v1}, Lcom/mycompany/app/main/MainListView$79;-><init>(Lcom/mycompany/app/main/MainListView;ILcom/mycompany/app/main/MainItem$GroupItem;)V

    .line 114
    .line 115
    .line 116
    move-object v6, p1

    .line 117
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 118
    .line 119
    .line 120
    iput-object v3, v0, Lcom/mycompany/app/main/MainListView;->p0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 121
    .line 122
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->V0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    iput-object v3, p1, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->W0:Lcom/mycompany/app/view/MyDialogBottom;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    iput-object v3, p1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 134
    .line 135
    return-void

    .line 136
    :cond_6
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    iput-object v3, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 141
    .line 142
    :cond_7
    :goto_1
    return-void
.end method
