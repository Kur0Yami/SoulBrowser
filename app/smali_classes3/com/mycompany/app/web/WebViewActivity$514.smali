.class Lcom/mycompany/app/web/WebViewActivity$514;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$514;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$514;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Zm:I

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->an:Landroid/view/View;

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->an:Landroid/view/View;

    .line 9
    .line 10
    const-string v3, "EXTRA_TYPE"

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x2

    .line 14
    const-string v6, "about:blank"

    .line 15
    .line 16
    const-string v8, "file:///android_asset/shortcut.html"

    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    const/4 v10, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    :pswitch_0
    goto/16 :goto_11

    .line 24
    .line 25
    :pswitch_1
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_11

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->e9(Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    :goto_0
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->G1(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_3
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$516;

    .line 86
    .line 87
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$516;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->L1(Ljava/lang/String;Lcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_4
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    move-object v0, v2

    if-eqz v0, :cond_tab_menu_e2

    goto :cond_tab_menu_have_anchor

    :cond_tab_menu_e2
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    :cond_tab_menu_have_anchor
    if-nez v0, :cond_tab_menu_d1

    goto/16 :goto_11

    :cond_tab_menu_d1
    iget v3, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v1, v0, v4, v3, v5}, Lcom/mycompany/app/web/WebViewActivity;->D1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;IIZ)V

    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->Y5:Lcom/mycompany/app/dialog/DialogTabPress;

    if-nez v3, :cond_tab_menu_inset

    return-void

    :cond_tab_menu_inset
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->a6()Z

    move-result v7

    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    move-result v4

    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/mycompany/app/view/MyDialogBottom;->x(IIZZZ)V

    return-void

    .line 188
    :pswitch_5
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-nez v2, :cond_a

    .line 197
    .line 198
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_9

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_9
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v0, v7, v9}, Lcom/mycompany/app/web/WebViewActivity;->E9(Ljava/lang/String;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_a
    :goto_2
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 213
    .line 214
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_6
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 219
    .line 220
    if-nez v0, :cond_b

    .line 221
    .line 222
    goto/16 :goto_11

    .line 223
    .line 224
    :cond_b
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->y3(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :pswitch_7
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 233
    .line 234
    .line 235
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 236
    .line 237
    if-eqz v0, :cond_c

    .line 238
    .line 239
    goto/16 :goto_11

    .line 240
    .line 241
    :cond_c
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    goto/16 :goto_11

    .line 248
    .line 249
    :cond_d
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f8:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 250
    .line 251
    if-eqz v0, :cond_e

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDark;->dismiss()V

    .line 254
    .line 255
    .line 256
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->f8:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 257
    .line 258
    :cond_e
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 259
    .line 260
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->Z7(Z)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetDark;

    .line 268
    .line 269
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$562;

    .line 270
    .line 271
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$562;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 272
    .line 273
    .line 274
    invoke-direct {v0, v1, v3, v2}, Lcom/mycompany/app/dialog/DialogSetDark;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;)V

    .line 275
    .line 276
    .line 277
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f8:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 278
    .line 279
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$563;

    .line 280
    .line 281
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$563;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :pswitch_8
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/mycompany/app/web/WebViewActivity;->j3(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-instance v2, Landroid/content/Intent;

    .line 300
    .line 301
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 302
    .line 303
    const-class v4, Lcom/mycompany/app/setting/SettingMain;

    .line 304
    .line 305
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .line 307
    .line 308
    const-string v3, "EXTRA_PATH"

    .line 309
    .line 310
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v2, v9}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :pswitch_9
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 318
    .line 319
    .line 320
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->q:Z

    .line 321
    .line 322
    if-eqz v0, :cond_f

    .line 323
    .line 324
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->o9()V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_f
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->C7(I)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_a
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 333
    .line 334
    .line 335
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 336
    .line 337
    if-nez v0, :cond_10

    .line 338
    .line 339
    goto/16 :goto_11

    .line 340
    .line 341
    :cond_10
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->xj:Z

    .line 342
    .line 343
    if-eqz v0, :cond_11

    .line 344
    .line 345
    goto/16 :goto_11

    .line 346
    .line 347
    :cond_11
    iput-boolean v9, v1, Lcom/mycompany/app/web/WebViewActivity;->xj:Z

    .line 348
    .line 349
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->yj:Ljava/lang/String;

    .line 350
    .line 351
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->z8:Z

    .line 352
    .line 353
    if-nez v0, :cond_12

    .line 354
    .line 355
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->F9()V

    .line 356
    .line 357
    .line 358
    iput-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->xj:Z

    .line 359
    .line 360
    return-void

    .line 361
    :cond_12
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-eqz v2, :cond_13

    .line 370
    .line 371
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->h7(Z)V

    .line 372
    .line 373
    .line 374
    iput-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->xj:Z

    .line 375
    .line 376
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 377
    .line 378
    invoke-static {v0, v10}, Lcom/mycompany/app/main/MainUtil;->l8(Landroid/content/Context;Z)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :cond_13
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->yj:Ljava/lang/String;

    .line 383
    .line 384
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$338;

    .line 385
    .line 386
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$338;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :pswitch_b
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 394
    .line 395
    if-nez v0, :cond_14

    .line 396
    .line 397
    goto/16 :goto_11

    .line 398
    .line 399
    :cond_14
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 400
    .line 401
    .line 402
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 403
    .line 404
    if-eqz v0, :cond_15

    .line 405
    .line 406
    goto/16 :goto_11

    .line 407
    .line 408
    :cond_15
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_16

    .line 413
    .line 414
    goto/16 :goto_11

    .line 415
    .line 416
    :cond_16
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i8:Lcom/mycompany/app/dialog/DialogSetAdblock;

    .line 417
    .line 418
    if-eqz v0, :cond_17

    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetAdblock;->dismiss()V

    .line 421
    .line 422
    .line 423
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->i8:Lcom/mycompany/app/dialog/DialogSetAdblock;

    .line 424
    .line 425
    :cond_17
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetAdblock;

    .line 426
    .line 427
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$569;

    .line 432
    .line 433
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$569;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 434
    .line 435
    .line 436
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetAdblock;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;)V

    .line 437
    .line 438
    .line 439
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i8:Lcom/mycompany/app/dialog/DialogSetAdblock;

    .line 440
    .line 441
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$570;

    .line 442
    .line 443
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$570;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :pswitch_c
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 451
    .line 452
    .line 453
    new-instance v0, Landroid/content/Intent;

    .line 454
    .line 455
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 456
    .line 457
    const-class v3, Lcom/mycompany/app/setting/SettingGesture;

    .line 458
    .line 459
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :pswitch_d
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 467
    .line 468
    .line 469
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 470
    .line 471
    if-eqz v0, :cond_18

    .line 472
    .line 473
    goto/16 :goto_11

    .line 474
    .line 475
    :cond_18
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-eqz v0, :cond_19

    .line 480
    .line 481
    goto/16 :goto_11

    .line 482
    .line 483
    :cond_19
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->h8:Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 484
    .line 485
    if-eqz v0, :cond_1a

    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetUseTts;->dismiss()V

    .line 488
    .line 489
    .line 490
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->h8:Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 491
    .line 492
    :cond_1a
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 493
    .line 494
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$567;

    .line 495
    .line 496
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$567;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 497
    .line 498
    .line 499
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetUseTts;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 500
    .line 501
    .line 502
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->h8:Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 503
    .line 504
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$568;

    .line 505
    .line 506
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$568;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :pswitch_e
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 514
    .line 515
    .line 516
    iget v0, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 517
    .line 518
    invoke-virtual {v1, v10, v0, v9}, Lcom/mycompany/app/web/WebViewActivity;->y9(III)V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :pswitch_f
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v10, v10}, Lcom/mycompany/app/web/WebViewActivity;->V7(ZZ)Z

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_10
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1, v9, v10}, Lcom/mycompany/app/web/WebViewActivity;->V7(ZZ)Z

    .line 533
    .line 534
    .line 535
    return-void

    .line 536
    :pswitch_11
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, v10, v9}, Lcom/mycompany/app/web/WebViewActivity;->V7(ZZ)Z

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :pswitch_12
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1, v9, v9}, Lcom/mycompany/app/web/WebViewActivity;->V7(ZZ)Z

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    :pswitch_13
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 551
    .line 552
    .line 553
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 554
    .line 555
    if-eqz v0, :cond_1b

    .line 556
    .line 557
    goto/16 :goto_11

    .line 558
    .line 559
    :cond_1b
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-eqz v0, :cond_1c

    .line 564
    .line 565
    goto/16 :goto_11

    .line 566
    .line 567
    :cond_1c
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->t8:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 568
    .line 569
    if-eqz v0, :cond_1d

    .line 570
    .line 571
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetScrFil;->dismiss()V

    .line 572
    .line 573
    .line 574
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->t8:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 575
    .line 576
    :cond_1d
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 577
    .line 578
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$590;

    .line 579
    .line 580
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$590;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 581
    .line 582
    .line 583
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetScrFil;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 584
    .line 585
    .line 586
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->t8:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 587
    .line 588
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$591;

    .line 589
    .line 590
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$591;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 594
    .line 595
    .line 596
    return-void

    .line 597
    :pswitch_14
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 598
    .line 599
    .line 600
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Vj:Z

    .line 601
    .line 602
    if-eqz v0, :cond_1e

    .line 603
    .line 604
    goto/16 :goto_11

    .line 605
    .line 606
    :cond_1e
    iput-boolean v9, v1, Lcom/mycompany/app/web/WebViewActivity;->Vj:Z

    .line 607
    .line 608
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 609
    .line 610
    if-nez v0, :cond_1f

    .line 611
    .line 612
    goto/16 :goto_11

    .line 613
    .line 614
    :cond_1f
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$356;

    .line 615
    .line 616
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$356;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 620
    .line 621
    .line 622
    return-void

    .line 623
    :pswitch_15
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$517;

    .line 624
    .line 625
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$517;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 629
    .line 630
    .line 631
    return-void

    .line 632
    :pswitch_16
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 633
    .line 634
    .line 635
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->V5:Landroid/view/View;

    .line 636
    .line 637
    if-eqz v3, :cond_23

    .line 638
    .line 639
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->U5:Lcom/mycompany/app/view/MyPopupMenu;

    .line 640
    .line 641
    if-eqz v0, :cond_20

    .line 642
    .line 643
    goto/16 :goto_3

    .line 644
    .line 645
    :cond_20
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->a5()V

    .line 646
    .line 647
    .line 648
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->N8:Ljava/lang/String;

    .line 649
    .line 650
    invoke-static {v1}, Lcom/mycompany/app/web/WebViewActivity;->U5build(Lcom/mycompany/app/web/WebViewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    .line 813
    .line 814
    .line 815
    :cond_21
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 816
    .line 817
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 818
    .line 819
    iget-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 820
    .line 821
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$305;

    .line 826
    .line 827
    invoke-direct {v6, v1}, Lcom/mycompany/app/web/WebViewActivity$305;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 828
    .line 829
    .line 830
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 831
    .line 832
    .line 833
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->U5:Lcom/mycompany/app/view/MyPopupMenu;

    .line 834
    .line 835
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 836
    .line 837
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 838
    .line 839
    if-nez v0, :cond_22

    .line 840
    .line 841
    goto :goto_3

    .line 842
    :cond_22
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$306;

    .line 843
    .line 844
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$306;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 848
    .line 849
    .line 850
    :goto_3
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->V5:Landroid/view/View;

    .line 851
    .line 852
    return-void

    .line 853
    :cond_23
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->w9(Z)V

    .line 854
    .line 855
    .line 856
    return-void

    .line 857
    :pswitch_17
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 858
    .line 859
    .line 860
    new-instance v0, Landroid/content/Intent;

    .line 861
    .line 862
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 863
    .line 864
    const-class v3, Lcom/mycompany/app/main/MainTxtView;

    .line 865
    .line 866
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 870
    .line 871
    .line 872
    return-void

    .line 873
    :pswitch_18
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 874
    .line 875
    .line 876
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 877
    .line 878
    if-eqz v0, :cond_24

    .line 879
    .line 880
    goto/16 :goto_11

    .line 881
    .line 882
    :cond_24
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    if-eqz v0, :cond_25

    .line 887
    .line 888
    goto/16 :goto_11

    .line 889
    .line 890
    :cond_25
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->j8:Lcom/mycompany/app/dialog/DialogSetJava;

    .line 891
    .line 892
    if-eqz v0, :cond_26

    .line 893
    .line 894
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetJava;->dismiss()V

    .line 895
    .line 896
    .line 897
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->j8:Lcom/mycompany/app/dialog/DialogSetJava;

    .line 898
    .line 899
    :cond_26
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetJava;

    .line 900
    .line 901
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$573;

    .line 906
    .line 907
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$573;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 908
    .line 909
    .line 910
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetJava;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetAdblock$DialogAdsListener;)V

    .line 911
    .line 912
    .line 913
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->j8:Lcom/mycompany/app/dialog/DialogSetJava;

    .line 914
    .line 915
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$574;

    .line 916
    .line 917
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$574;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 921
    .line 922
    .line 923
    return-void

    .line 924
    :pswitch_19
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 925
    .line 926
    .line 927
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 928
    .line 929
    if-eqz v0, :cond_27

    .line 930
    .line 931
    goto/16 :goto_11

    .line 932
    .line 933
    :cond_27
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-eqz v0, :cond_28

    .line 938
    .line 939
    goto/16 :goto_11

    .line 940
    .line 941
    :cond_28
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->s8:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 942
    .line 943
    if-eqz v0, :cond_29

    .line 944
    .line 945
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetCookie;->dismiss()V

    .line 946
    .line 947
    .line 948
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->s8:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 949
    .line 950
    :cond_29
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 951
    .line 952
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$588;

    .line 953
    .line 954
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$588;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 955
    .line 956
    .line 957
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetCookie;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 958
    .line 959
    .line 960
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->s8:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 961
    .line 962
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$589;

    .line 963
    .line 964
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$589;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 968
    .line 969
    .line 970
    return-void

    .line 971
    :pswitch_1a
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 976
    .line 977
    .line 978
    move-result v2

    .line 979
    if-nez v2, :cond_2b

    .line 980
    .line 981
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    move-result v0

    .line 985
    if-eqz v0, :cond_2a

    .line 986
    .line 987
    goto :goto_4

    .line 988
    :cond_2a
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->y8()V

    .line 992
    .line 993
    .line 994
    return-void

    .line 995
    :cond_2b
    :goto_4
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 996
    .line 997
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 998
    .line 999
    .line 1000
    return-void

    .line 1001
    :pswitch_1b
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->K5()Z

    .line 1002
    .line 1003
    .line 1004
    move-result v0

    .line 1005
    if-nez v0, :cond_2c

    .line 1006
    .line 1007
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_support_land:I

    .line 1008
    .line 1009
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 1010
    .line 1011
    .line 1012
    return-void

    .line 1013
    :cond_2c
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1014
    .line 1015
    .line 1016
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->H:Z

    .line 1017
    .line 1018
    if-eqz v0, :cond_2d

    .line 1019
    .line 1020
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->ba()V

    .line 1021
    .line 1022
    .line 1023
    return-void

    .line 1024
    :cond_2d
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->aa()V

    .line 1025
    .line 1026
    .line 1027
    return-void

    .line 1028
    :pswitch_1c
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v1, v9}, Lcom/mycompany/app/web/WebViewActivity;->w9(Z)V

    .line 1032
    .line 1033
    .line 1034
    return-void

    .line 1035
    :pswitch_1d
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 1036
    .line 1037
    if-nez v0, :cond_2e

    .line 1038
    .line 1039
    goto/16 :goto_11

    .line 1040
    .line 1041
    :cond_2e
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Ba:Z

    .line 1042
    .line 1043
    if-eqz v0, :cond_2f

    .line 1044
    .line 1045
    iput-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Ba:Z

    .line 1046
    .line 1047
    return-void

    .line 1048
    :cond_2f
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v1, v9}, Lcom/mycompany/app/web/WebViewActivity;->E7(Z)V

    .line 1052
    .line 1053
    .line 1054
    return-void

    .line 1055
    :pswitch_1e
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 1056
    .line 1057
    if-nez v0, :cond_30

    .line 1058
    .line 1059
    goto/16 :goto_11

    .line 1060
    .line 1061
    :cond_30
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v2

    .line 1069
    if-eqz v2, :cond_31

    .line 1070
    .line 1071
    sget v0, Lnet/kaki87/soul2/testing/R$string;->blank_page:I

    .line 1072
    .line 1073
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 1074
    .line 1075
    .line 1076
    return-void

    .line 1077
    :cond_31
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1078
    .line 1079
    .line 1080
    const-string v2, "Copied URL"

    .line 1081
    .line 1082
    sget v3, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 1083
    .line 1084
    invoke-static {v3, v1, v2, v0}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    return-void

    .line 1088
    :pswitch_1f
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1089
    .line 1090
    .line 1091
    new-instance v0, Landroid/content/Intent;

    .line 1092
    .line 1093
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 1094
    .line 1095
    const-class v3, Lcom/mycompany/app/main/list/MainListAgent;

    .line 1096
    .line 1097
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1101
    .line 1102
    .line 1103
    return-void

    .line 1104
    :pswitch_20
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1105
    .line 1106
    .line 1107
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 1108
    .line 1109
    if-eqz v0, :cond_32

    .line 1110
    .line 1111
    goto/16 :goto_11

    .line 1112
    .line 1113
    :cond_32
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 1114
    .line 1115
    .line 1116
    move-result v0

    .line 1117
    if-eqz v0, :cond_33

    .line 1118
    .line 1119
    goto/16 :goto_11

    .line 1120
    .line 1121
    :cond_33
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->r8:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 1122
    .line 1123
    if-eqz v0, :cond_34

    .line 1124
    .line 1125
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetVpn;->dismiss()V

    .line 1126
    .line 1127
    .line 1128
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->r8:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 1129
    .line 1130
    :cond_34
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 1131
    .line 1132
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$586;

    .line 1133
    .line 1134
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$586;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1135
    .line 1136
    .line 1137
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetVpn;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;)V

    .line 1138
    .line 1139
    .line 1140
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->r8:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 1141
    .line 1142
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$587;

    .line 1143
    .line 1144
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$587;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1148
    .line 1149
    .line 1150
    return-void

    .line 1151
    :pswitch_21
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1152
    .line 1153
    .line 1154
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 1155
    .line 1156
    if-eqz v0, :cond_35

    .line 1157
    .line 1158
    goto/16 :goto_11

    .line 1159
    .line 1160
    :cond_35
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    if-eqz v0, :cond_36

    .line 1165
    .line 1166
    goto/16 :goto_11

    .line 1167
    .line 1168
    :cond_36
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->q8:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 1169
    .line 1170
    if-eqz v0, :cond_37

    .line 1171
    .line 1172
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->dismiss()V

    .line 1173
    .line 1174
    .line 1175
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->q8:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 1176
    .line 1177
    :cond_37
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 1178
    .line 1179
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$584;

    .line 1180
    .line 1181
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$584;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1182
    .line 1183
    .line 1184
    invoke-direct {v0, v1, v10, v9, v2}, Lcom/mycompany/app/dialog/DialogSetPrivacy;-><init>(Lcom/mycompany/app/main/MainActivity;ZZLcom/mycompany/app/dialog/DialogSetPrivacy$TabDeletedListener;)V

    .line 1185
    .line 1186
    .line 1187
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->q8:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 1188
    .line 1189
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$585;

    .line 1190
    .line 1191
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$585;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1195
    .line 1196
    .line 1197
    return-void

    .line 1198
    :pswitch_22
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v1, v10, v10, v10}, Lcom/mycompany/app/web/WebViewActivity;->y9(III)V

    .line 1202
    .line 1203
    .line 1204
    return-void

    .line 1205
    :pswitch_23
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->z2()V

    .line 1209
    .line 1210
    .line 1211
    return-void

    .line 1212
    :pswitch_24
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->R7()V

    .line 1216
    .line 1217
    .line 1218
    return-void

    .line 1219
    :pswitch_25
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1220
    .line 1221
    .line 1222
    iget v0, v1, Lcom/mycompany/app/web/WebViewActivity;->T2:I

    .line 1223
    .line 1224
    if-eqz v0, :cond_38

    .line 1225
    .line 1226
    goto/16 :goto_11

    .line 1227
    .line 1228
    :cond_38
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 1229
    .line 1230
    if-eqz v0, :cond_90

    .line 1231
    .line 1232
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1233
    .line 1234
    .line 1235
    move-result v0

    .line 1236
    if-lt v0, v5, :cond_90

    .line 1237
    .line 1238
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->s:Z

    .line 1239
    .line 1240
    if-nez v0, :cond_39

    .line 1241
    .line 1242
    iget v0, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 1243
    .line 1244
    if-gtz v0, :cond_39

    .line 1245
    .line 1246
    goto/16 :goto_11

    .line 1247
    .line 1248
    :cond_39
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 1249
    .line 1250
    if-nez v0, :cond_3a

    .line 1251
    .line 1252
    goto/16 :goto_11

    .line 1253
    .line 1254
    :cond_3a
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$142;

    .line 1255
    .line 1256
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$142;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1260
    .line 1261
    .line 1262
    return-void

    .line 1263
    :pswitch_26
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 1264
    .line 1265
    if-nez v0, :cond_3b

    .line 1266
    .line 1267
    goto/16 :goto_11

    .line 1268
    .line 1269
    :cond_3b
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1270
    .line 1271
    .line 1272
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 1273
    .line 1274
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->d1:Lcom/mycompany/app/web/WebCrashView;

    .line 1275
    .line 1276
    if-nez v2, :cond_3c

    .line 1277
    .line 1278
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->E6()V

    .line 1279
    .line 1280
    .line 1281
    return-void

    .line 1282
    :cond_3c
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebCrashView;->getCrashUrl()Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v1

    .line 1286
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->G(Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    return-void

    .line 1290
    :pswitch_27
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1291
    .line 1292
    .line 1293
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Uj:Z

    .line 1294
    .line 1295
    if-eqz v0, :cond_3d

    .line 1296
    .line 1297
    goto/16 :goto_11

    .line 1298
    .line 1299
    :cond_3d
    iput-boolean v9, v1, Lcom/mycompany/app/web/WebViewActivity;->Uj:Z

    .line 1300
    .line 1301
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 1302
    .line 1303
    if-nez v0, :cond_3e

    .line 1304
    .line 1305
    goto/16 :goto_11

    .line 1306
    .line 1307
    :cond_3e
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$352;

    .line 1308
    .line 1309
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$352;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1313
    .line 1314
    .line 1315
    return-void

    .line 1316
    :pswitch_28
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1317
    .line 1318
    .line 1319
    new-instance v0, Landroid/content/Intent;

    .line 1320
    .line 1321
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 1322
    .line 1323
    const-class v3, Lcom/mycompany/app/main/list/MainListMemo;

    .line 1324
    .line 1325
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1329
    .line 1330
    .line 1331
    return-void

    .line 1332
    :pswitch_29
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v2

    .line 1340
    if-nez v2, :cond_44

    .line 1341
    .line 1342
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1343
    .line 1344
    .line 1345
    move-result v2

    .line 1346
    if-eqz v2, :cond_3f

    .line 1347
    .line 1348
    goto :goto_5

    .line 1349
    :cond_3f
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1350
    .line 1351
    .line 1352
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 1353
    .line 1354
    if-nez v2, :cond_40

    .line 1355
    .line 1356
    goto/16 :goto_11

    .line 1357
    .line 1358
    :cond_40
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 1359
    .line 1360
    if-eqz v2, :cond_41

    .line 1361
    .line 1362
    goto/16 :goto_11

    .line 1363
    .line 1364
    :cond_41
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 1365
    .line 1366
    .line 1367
    move-result v2

    .line 1368
    if-eqz v2, :cond_42

    .line 1369
    .line 1370
    goto/16 :goto_11

    .line 1371
    .line 1372
    :cond_42
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->I2()V

    .line 1373
    .line 1374
    .line 1375
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->p8:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 1376
    .line 1377
    if-eqz v2, :cond_43

    .line 1378
    .line 1379
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogViewSrc;->dismiss()V

    .line 1380
    .line 1381
    .line 1382
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->p8:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 1383
    .line 1384
    :cond_43
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->Z9()V

    .line 1385
    .line 1386
    .line 1387
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 1388
    .line 1389
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 1390
    .line 1391
    invoke-virtual {v1, v3, v0}, Lcom/mycompany/app/web/WebViewActivity;->v3(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v4

    .line 1395
    invoke-direct {v2, v1, v3, v0, v4}, Lcom/mycompany/app/dialog/DialogViewSrc;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    .line 1397
    .line 1398
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->p8:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 1399
    .line 1400
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$582;

    .line 1401
    .line 1402
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$582;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1406
    .line 1407
    .line 1408
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->p8:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 1409
    .line 1410
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$583;

    .line 1411
    .line 1412
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$583;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1413
    .line 1414
    .line 1415
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 1416
    .line 1417
    return-void

    .line 1418
    :cond_44
    :goto_5
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 1419
    .line 1420
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 1421
    .line 1422
    .line 1423
    return-void

    .line 1424
    :pswitch_2a
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v0

    .line 1428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v2

    .line 1432
    if-nez v2, :cond_4a

    .line 1433
    .line 1434
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1435
    .line 1436
    .line 1437
    move-result v2

    .line 1438
    if-eqz v2, :cond_45

    .line 1439
    .line 1440
    goto :goto_6

    .line 1441
    :cond_45
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1442
    .line 1443
    .line 1444
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->S:I

    .line 1445
    .line 1446
    if-ne v2, v5, :cond_46

    .line 1447
    .line 1448
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->g8(Ljava/lang/String;)V

    .line 1449
    .line 1450
    .line 1451
    return-void

    .line 1452
    :cond_46
    if-ne v2, v9, :cond_47

    .line 1453
    .line 1454
    invoke-virtual {v1, v0, v7, v10}, Lcom/mycompany/app/web/WebViewActivity;->E9(Ljava/lang/String;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V

    .line 1455
    .line 1456
    .line 1457
    return-void

    .line 1458
    :cond_47
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 1459
    .line 1460
    if-eqz v2, :cond_48

    .line 1461
    .line 1462
    goto/16 :goto_11

    .line 1463
    .line 1464
    :cond_48
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 1465
    .line 1466
    .line 1467
    move-result v2

    .line 1468
    if-eqz v2, :cond_49

    .line 1469
    .line 1470
    goto/16 :goto_11

    .line 1471
    .line 1472
    :cond_49
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->v4()V

    .line 1473
    .line 1474
    .line 1475
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetRead;

    .line 1476
    .line 1477
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$576;

    .line 1478
    .line 1479
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$576;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1480
    .line 1481
    .line 1482
    invoke-direct {v2, v1, v0, v3}, Lcom/mycompany/app/dialog/DialogSetRead;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetRead$SetReadListener;)V

    .line 1483
    .line 1484
    .line 1485
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->l8:Lcom/mycompany/app/dialog/DialogSetRead;

    .line 1486
    .line 1487
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$577;

    .line 1488
    .line 1489
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$577;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1493
    .line 1494
    .line 1495
    return-void

    .line 1496
    :cond_4a
    :goto_6
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 1497
    .line 1498
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 1499
    .line 1500
    .line 1501
    return-void

    .line 1502
    :pswitch_2b
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 1503
    .line 1504
    if-nez v0, :cond_4b

    .line 1505
    .line 1506
    goto/16 :goto_11

    .line 1507
    .line 1508
    :cond_4b
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1509
    .line 1510
    .line 1511
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->X1:Z

    .line 1512
    .line 1513
    if-nez v0, :cond_4c

    .line 1514
    .line 1515
    goto/16 :goto_11

    .line 1516
    .line 1517
    :cond_4c
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 1518
    .line 1519
    .line 1520
    move-result v0

    .line 1521
    if-eqz v0, :cond_4d

    .line 1522
    .line 1523
    goto/16 :goto_11

    .line 1524
    .line 1525
    :cond_4d
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->D:Z

    .line 1526
    .line 1527
    if-eqz v0, :cond_4e

    .line 1528
    .line 1529
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->A9()V

    .line 1530
    .line 1531
    .line 1532
    return-void

    .line 1533
    :cond_4e
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->z9()V

    .line 1534
    .line 1535
    .line 1536
    return-void

    .line 1537
    :pswitch_2c
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1538
    .line 1539
    .line 1540
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 1541
    .line 1542
    if-nez v0, :cond_4f

    .line 1543
    .line 1544
    goto/16 :goto_11

    .line 1545
    .line 1546
    :cond_4f
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 1547
    .line 1548
    if-eqz v0, :cond_50

    .line 1549
    .line 1550
    goto/16 :goto_11

    .line 1551
    .line 1552
    :cond_50
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 1553
    .line 1554
    .line 1555
    move-result v0

    .line 1556
    if-eqz v0, :cond_51

    .line 1557
    .line 1558
    goto/16 :goto_11

    .line 1559
    .line 1560
    :cond_51
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J4()V

    .line 1561
    .line 1562
    .line 1563
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 1564
    .line 1565
    if-eqz v0, :cond_52

    .line 1566
    .line 1567
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->N:Ljava/lang/String;

    .line 1568
    .line 1569
    :goto_7
    move-object v2, v0

    .line 1570
    goto :goto_8

    .line 1571
    :cond_52
    sget-object v0, Lcom/mycompany/app/pref/PrefAlbum;->M:Ljava/lang/String;

    .line 1572
    .line 1573
    goto :goto_7

    .line 1574
    :goto_8
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->Z9()V

    .line 1575
    .line 1576
    .line 1577
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 1578
    .line 1579
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$331;

    .line 1580
    .line 1581
    invoke-direct {v5, v1}, Lcom/mycompany/app/web/WebViewActivity$331;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1582
    .line 1583
    .line 1584
    const/4 v3, 0x0

    .line 1585
    const/4 v4, 0x0

    .line 1586
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogWebBookList;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/util/List;ILcom/mycompany/app/dialog/DialogWebBookList$BookListListener;)V

    .line 1587
    .line 1588
    .line 1589
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->j6:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 1590
    .line 1591
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$332;

    .line 1592
    .line 1593
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$332;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1594
    .line 1595
    .line 1596
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->z:Lcom/mycompany/app/dialog/DialogWebBookList$BookInfoListener;

    .line 1597
    .line 1598
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$333;

    .line 1599
    .line 1600
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$333;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1604
    .line 1605
    .line 1606
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->j6:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 1607
    .line 1608
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$334;

    .line 1609
    .line 1610
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$334;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1611
    .line 1612
    .line 1613
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 1614
    .line 1615
    return-void

    .line 1616
    :pswitch_2d
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1617
    .line 1618
    .line 1619
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->j:Z

    .line 1620
    .line 1621
    if-eqz v0, :cond_53

    .line 1622
    .line 1623
    invoke-virtual {v1, v9}, Lcom/mycompany/app/web/WebViewActivity;->x2(Z)Z

    .line 1624
    .line 1625
    .line 1626
    return-void

    .line 1627
    :cond_53
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->c3()Ljava/lang/String;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v0

    .line 1631
    invoke-virtual {v1, v0, v7}, Lcom/mycompany/app/web/WebViewActivity;->S5(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    .line 1633
    .line 1634
    return-void

    .line 1635
    :pswitch_2e
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 1636
    .line 1637
    if-nez v0, :cond_54

    .line 1638
    .line 1639
    goto/16 :goto_11

    .line 1640
    .line 1641
    :cond_54
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 1645
    .line 1646
    .line 1647
    move-result v0

    .line 1648
    if-eqz v0, :cond_55

    .line 1649
    .line 1650
    goto/16 :goto_11

    .line 1651
    .line 1652
    :cond_55
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->Q7()V

    .line 1653
    .line 1654
    .line 1655
    return-void

    .line 1656
    :pswitch_2f
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 1657
    .line 1658
    if-nez v0, :cond_56

    .line 1659
    .line 1660
    goto/16 :goto_11

    .line 1661
    .line 1662
    :cond_56
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 1666
    .line 1667
    .line 1668
    move-result v0

    .line 1669
    if-eqz v0, :cond_57

    .line 1670
    .line 1671
    goto/16 :goto_11

    .line 1672
    .line 1673
    :cond_57
    invoke-virtual {v1, v7}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 1674
    .line 1675
    .line 1676
    return-void

    .line 1677
    :pswitch_30
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1678
    .line 1679
    .line 1680
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->finish()V

    .line 1681
    .line 1682
    .line 1683
    return-void

    .line 1684
    :pswitch_31
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1685
    .line 1686
    .line 1687
    new-instance v0, Landroid/content/Intent;

    .line 1688
    .line 1689
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 1690
    .line 1691
    const-class v3, Lcom/mycompany/app/main/list/MainListCast;

    .line 1692
    .line 1693
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1694
    .line 1695
    .line 1696
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1697
    .line 1698
    .line 1699
    return-void

    .line 1700
    :pswitch_32
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1701
    .line 1702
    .line 1703
    new-instance v0, Landroid/content/Intent;

    .line 1704
    .line 1705
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 1706
    .line 1707
    const-class v4, Lcom/mycompany/app/main/list/MainListAlbum;

    .line 1708
    .line 1709
    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1710
    .line 1711
    .line 1712
    sget v2, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 1713
    .line 1714
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1715
    .line 1716
    .line 1717
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 1718
    .line 1719
    .line 1720
    iput-boolean v9, v1, Lcom/mycompany/app/web/WebViewActivity;->z9:Z

    .line 1721
    .line 1722
    return-void

    .line 1723
    :pswitch_33
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 1724
    .line 1725
    if-nez v0, :cond_58

    .line 1726
    .line 1727
    goto/16 :goto_11

    .line 1728
    .line 1729
    :cond_58
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1730
    .line 1731
    .line 1732
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 1733
    .line 1734
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 1735
    .line 1736
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 1737
    .line 1738
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 1739
    .line 1740
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 1741
    .line 1742
    .line 1743
    move-result v4

    .line 1744
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 1745
    .line 1746
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    .line 1747
    .line 1748
    .line 1749
    move-result v6

    .line 1750
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1751
    .line 1752
    if-eqz v7, :cond_59

    .line 1753
    .line 1754
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 1755
    .line 1756
    if-eqz v7, :cond_59

    .line 1757
    .line 1758
    sput-boolean v10, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 1759
    .line 1760
    sput v10, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 1761
    .line 1762
    sput v10, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 1763
    .line 1764
    sput-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1765
    .line 1766
    sput-boolean v10, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 1767
    .line 1768
    goto :goto_9

    .line 1769
    :cond_59
    sput-boolean v10, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 1770
    .line 1771
    sput v9, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 1772
    .line 1773
    sput v9, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 1774
    .line 1775
    sput-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1776
    .line 1777
    sput-boolean v9, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 1778
    .line 1779
    :goto_9
    sget-boolean v7, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 1780
    .line 1781
    if-ne v0, v7, :cond_5a

    .line 1782
    .line 1783
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 1784
    .line 1785
    if-ne v2, v0, :cond_5a

    .line 1786
    .line 1787
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 1788
    .line 1789
    if-eq v3, v0, :cond_5d

    .line 1790
    .line 1791
    :cond_5a
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 1792
    .line 1793
    if-nez v0, :cond_5b

    .line 1794
    .line 1795
    goto :goto_a

    .line 1796
    :cond_5b
    invoke-static {v0, v10}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v0

    .line 1800
    if-nez v0, :cond_5c

    .line 1801
    .line 1802
    goto :goto_a

    .line 1803
    :cond_5c
    const-string v2, "mThemeSys"

    .line 1804
    .line 1805
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 1806
    .line 1807
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 1808
    .line 1809
    .line 1810
    const-string v2, "mThemeUi"

    .line 1811
    .line 1812
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 1813
    .line 1814
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 1815
    .line 1816
    .line 1817
    const-string v2, "mThemeWeb"

    .line 1818
    .line 1819
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 1820
    .line 1821
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 1822
    .line 1823
    .line 1824
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 1825
    .line 1826
    .line 1827
    :goto_a
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f7()V

    .line 1828
    .line 1829
    .line 1830
    :cond_5d
    invoke-virtual {v1, v6, v4, v5}, Lcom/mycompany/app/web/WebViewActivity;->k2(IZZ)Z

    .line 1831
    .line 1832
    .line 1833
    sget v0, Lcom/mycompany/app/main/MainApp;->M1:I

    .line 1834
    .line 1835
    if-ne v0, v9, :cond_90

    .line 1836
    .line 1837
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->q0:Z

    .line 1838
    .line 1839
    if-eqz v0, :cond_90

    .line 1840
    .line 1841
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 1842
    .line 1843
    if-eqz v0, :cond_90

    .line 1844
    .line 1845
    if-nez v5, :cond_90

    .line 1846
    .line 1847
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->n9()V

    .line 1848
    .line 1849
    .line 1850
    return-void

    .line 1851
    :pswitch_34
    move v0, v4

    .line 1852
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1853
    .line 1854
    .line 1855
    sget-boolean v2, Lcom/mycompany/app/db/book/DbBookTab;->f:Z

    .line 1856
    .line 1857
    if-eqz v2, :cond_5e

    .line 1858
    .line 1859
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 1860
    .line 1861
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 1862
    .line 1863
    .line 1864
    return-void

    .line 1865
    :cond_5e
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 1866
    .line 1867
    if-nez v2, :cond_62

    .line 1868
    .line 1869
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 1870
    .line 1871
    if-nez v4, :cond_5f

    .line 1872
    .line 1873
    move v6, v10

    .line 1874
    goto :goto_b

    .line 1875
    :cond_5f
    sget-boolean v6, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 1876
    .line 1877
    :goto_b
    if-eqz v6, :cond_62

    .line 1878
    .line 1879
    if-nez v4, :cond_60

    .line 1880
    .line 1881
    goto :goto_c

    .line 1882
    :cond_60
    sget-boolean v10, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 1883
    .line 1884
    :goto_c
    if-nez v10, :cond_61

    .line 1885
    .line 1886
    goto/16 :goto_11

    .line 1887
    .line 1888
    :cond_61
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 1889
    .line 1890
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v2

    .line 1894
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 1898
    .line 1899
    .line 1900
    return-void

    .line 1901
    :cond_62
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Ec:Z

    .line 1902
    .line 1903
    if-eqz v0, :cond_63

    .line 1904
    .line 1905
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 1906
    .line 1907
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 1908
    .line 1909
    .line 1910
    return-void

    .line 1911
    :cond_63
    xor-int/lit8 v0, v2, 0x1

    .line 1912
    .line 1913
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->l8(Z)V

    .line 1914
    .line 1915
    .line 1916
    return-void

    .line 1917
    :pswitch_35
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1918
    .line 1919
    .line 1920
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 1921
    .line 1922
    if-eqz v0, :cond_64

    .line 1923
    .line 1924
    goto/16 :goto_11

    .line 1925
    .line 1926
    :cond_64
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v0

    .line 1930
    if-eqz v0, :cond_65

    .line 1931
    .line 1932
    goto/16 :goto_11

    .line 1933
    .line 1934
    :cond_65
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->e8:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 1935
    .line 1936
    if-eqz v0, :cond_66

    .line 1937
    .line 1938
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetFull;->dismiss()V

    .line 1939
    .line 1940
    .line 1941
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->e8:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 1942
    .line 1943
    :cond_66
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 1944
    .line 1945
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->w9:Z

    .line 1946
    .line 1947
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 1948
    .line 1949
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->x9:Z

    .line 1950
    .line 1951
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->v:Z

    .line 1952
    .line 1953
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->m4:Z

    .line 1954
    .line 1955
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 1956
    .line 1957
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->n4:Z

    .line 1958
    .line 1959
    iput-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Dg:Z

    .line 1960
    .line 1961
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetFull;

    .line 1962
    .line 1963
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$560;

    .line 1964
    .line 1965
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$560;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1966
    .line 1967
    .line 1968
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetFull;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 1969
    .line 1970
    .line 1971
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->e8:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 1972
    .line 1973
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$561;

    .line 1974
    .line 1975
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$561;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 1976
    .line 1977
    .line 1978
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1979
    .line 1980
    .line 1981
    return-void

    .line 1982
    :pswitch_36
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 1983
    .line 1984
    .line 1985
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 1986
    .line 1987
    if-eqz v0, :cond_67

    .line 1988
    .line 1989
    goto/16 :goto_11

    .line 1990
    .line 1991
    :cond_67
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 1992
    .line 1993
    .line 1994
    move-result v0

    .line 1995
    if-eqz v0, :cond_68

    .line 1996
    .line 1997
    goto/16 :goto_11

    .line 1998
    .line 1999
    :cond_68
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->d8:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 2000
    .line 2001
    if-eqz v0, :cond_69

    .line 2002
    .line 2003
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekWebText;->dismiss()V

    .line 2004
    .line 2005
    .line 2006
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->d8:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 2007
    .line 2008
    :cond_69
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->X9(Z)V

    .line 2009
    .line 2010
    .line 2011
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 2012
    .line 2013
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2014
    .line 2015
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$558;

    .line 2016
    .line 2017
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$558;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2018
    .line 2019
    .line 2020
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSeekWebText;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/web/WebNestView;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V

    .line 2021
    .line 2022
    .line 2023
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->d8:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 2024
    .line 2025
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$559;

    .line 2026
    .line 2027
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$559;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2028
    .line 2029
    .line 2030
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2031
    .line 2032
    .line 2033
    return-void

    .line 2034
    :pswitch_37
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2035
    .line 2036
    .line 2037
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 2038
    .line 2039
    if-eqz v0, :cond_6a

    .line 2040
    .line 2041
    goto/16 :goto_11

    .line 2042
    .line 2043
    :cond_6a
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 2044
    .line 2045
    .line 2046
    move-result v0

    .line 2047
    if-eqz v0, :cond_6b

    .line 2048
    .line 2049
    goto/16 :goto_11

    .line 2050
    .line 2051
    :cond_6b
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->c8:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2052
    .line 2053
    if-eqz v0, :cond_6c

    .line 2054
    .line 2055
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekBright;->dismiss()V

    .line 2056
    .line 2057
    .line 2058
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->c8:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2059
    .line 2060
    :cond_6c
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2061
    .line 2062
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2063
    .line 2064
    .line 2065
    move-result-object v2

    .line 2066
    invoke-direct {v0, v1, v2, v10, v7}, Lcom/mycompany/app/dialog/DialogSeekBright;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/Window;ILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 2067
    .line 2068
    .line 2069
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->c8:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2070
    .line 2071
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$557;

    .line 2072
    .line 2073
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$557;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2074
    .line 2075
    .line 2076
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2077
    .line 2078
    .line 2079
    return-void

    .line 2080
    :pswitch_38
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2081
    .line 2082
    if-nez v0, :cond_6d

    .line 2083
    .line 2084
    goto/16 :goto_11

    .line 2085
    .line 2086
    :cond_6d
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2087
    .line 2088
    .line 2089
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2090
    .line 2091
    if-nez v0, :cond_6e

    .line 2092
    .line 2093
    goto/16 :goto_11

    .line 2094
    .line 2095
    :cond_6e
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 2096
    .line 2097
    if-eqz v0, :cond_6f

    .line 2098
    .line 2099
    goto/16 :goto_11

    .line 2100
    .line 2101
    :cond_6f
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 2102
    .line 2103
    .line 2104
    move-result v0

    .line 2105
    if-eqz v0, :cond_70

    .line 2106
    .line 2107
    goto/16 :goto_11

    .line 2108
    .line 2109
    :cond_70
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t4()V

    .line 2110
    .line 2111
    .line 2112
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2113
    .line 2114
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->B()Z

    .line 2115
    .line 2116
    .line 2117
    move-result v0

    .line 2118
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Il:Z

    .line 2119
    .line 2120
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetDesk;

    .line 2121
    .line 2122
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2123
    .line 2124
    iget-boolean v2, v2, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 2125
    .line 2126
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$417;

    .line 2127
    .line 2128
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$417;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2129
    .line 2130
    .line 2131
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogSetDesk;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;)V

    .line 2132
    .line 2133
    .line 2134
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Y6:Lcom/mycompany/app/dialog/DialogSetDesk;

    .line 2135
    .line 2136
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$418;

    .line 2137
    .line 2138
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$418;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2139
    .line 2140
    .line 2141
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2142
    .line 2143
    .line 2144
    return-void

    .line 2145
    :pswitch_39
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2146
    .line 2147
    if-nez v0, :cond_71

    .line 2148
    .line 2149
    goto/16 :goto_11

    .line 2150
    .line 2151
    :cond_71
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v0

    .line 2155
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2156
    .line 2157
    .line 2158
    move-result v0

    .line 2159
    if-eqz v0, :cond_72

    .line 2160
    .line 2161
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 2162
    .line 2163
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 2164
    .line 2165
    .line 2166
    return-void

    .line 2167
    :cond_72
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2168
    .line 2169
    .line 2170
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2171
    .line 2172
    if-nez v0, :cond_73

    .line 2173
    .line 2174
    goto/16 :goto_11

    .line 2175
    .line 2176
    :cond_73
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 2177
    .line 2178
    if-eqz v0, :cond_74

    .line 2179
    .line 2180
    goto/16 :goto_11

    .line 2181
    .line 2182
    :cond_74
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 2183
    .line 2184
    .line 2185
    move-result v0

    .line 2186
    if-eqz v0, :cond_75

    .line 2187
    .line 2188
    goto/16 :goto_11

    .line 2189
    .line 2190
    :cond_75
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->n4()V

    .line 2191
    .line 2192
    .line 2193
    new-instance v0, Lcom/mycompany/app/dialog/DialogPrintPage;

    .line 2194
    .line 2195
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2196
    .line 2197
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 2198
    .line 2199
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->v3(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2200
    .line 2201
    .line 2202
    move-result-object v2

    .line 2203
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2204
    .line 2205
    invoke-virtual {v3}, Lcom/mycompany/app/web/WebNestView;->getFavicon()Landroid/graphics/Bitmap;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v3

    .line 2209
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$386;

    .line 2210
    .line 2211
    invoke-direct {v4, v1}, Lcom/mycompany/app/web/WebViewActivity$386;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2212
    .line 2213
    .line 2214
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogPrintPage;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;)V

    .line 2215
    .line 2216
    .line 2217
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->C6:Lcom/mycompany/app/dialog/DialogPrintPage;

    .line 2218
    .line 2219
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$387;

    .line 2220
    .line 2221
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$387;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2222
    .line 2223
    .line 2224
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2225
    .line 2226
    .line 2227
    return-void

    .line 2228
    :pswitch_3a
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v2

    .line 2232
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2233
    .line 2234
    .line 2235
    move-result v0

    .line 2236
    if-nez v0, :cond_7b

    .line 2237
    .line 2238
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2239
    .line 2240
    .line 2241
    move-result v0

    .line 2242
    if-eqz v0, :cond_76

    .line 2243
    .line 2244
    goto :goto_d

    .line 2245
    :cond_76
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2246
    .line 2247
    .line 2248
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2249
    .line 2250
    if-nez v0, :cond_77

    .line 2251
    .line 2252
    goto/16 :goto_11

    .line 2253
    .line 2254
    :cond_77
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 2255
    .line 2256
    if-eqz v0, :cond_78

    .line 2257
    .line 2258
    goto/16 :goto_11

    .line 2259
    .line 2260
    :cond_78
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 2261
    .line 2262
    .line 2263
    move-result v0

    .line 2264
    if-eqz v0, :cond_79

    .line 2265
    .line 2266
    goto/16 :goto_11

    .line 2267
    .line 2268
    :cond_79
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->B6:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 2269
    .line 2270
    if-eqz v0, :cond_7a

    .line 2271
    .line 2272
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownPage;->dismiss()V

    .line 2273
    .line 2274
    .line 2275
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->B6:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 2276
    .line 2277
    :cond_7a
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownPage;

    .line 2278
    .line 2279
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2280
    .line 2281
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/web/WebViewActivity;->v3(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v3

    .line 2285
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2286
    .line 2287
    invoke-virtual {v4}, Lcom/mycompany/app/web/WebNestView;->getFavicon()Landroid/graphics/Bitmap;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v4

    .line 2291
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$383;

    .line 2292
    .line 2293
    invoke-direct {v5, v1}, Lcom/mycompany/app/web/WebViewActivity$383;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2294
    .line 2295
    .line 2296
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogDownPage;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;)V

    .line 2297
    .line 2298
    .line 2299
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->B6:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 2300
    .line 2301
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$384;

    .line 2302
    .line 2303
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$384;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2304
    .line 2305
    .line 2306
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2307
    .line 2308
    .line 2309
    return-void

    .line 2310
    :cond_7b
    :goto_d
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 2311
    .line 2312
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 2313
    .line 2314
    .line 2315
    return-void

    .line 2316
    :pswitch_3b
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2317
    .line 2318
    if-nez v0, :cond_7c

    .line 2319
    .line 2320
    goto/16 :goto_11

    .line 2321
    .line 2322
    :cond_7c
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v0

    .line 2326
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2327
    .line 2328
    .line 2329
    move-result v0

    .line 2330
    if-eqz v0, :cond_7d

    .line 2331
    .line 2332
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 2333
    .line 2334
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 2335
    .line 2336
    .line 2337
    return-void

    .line 2338
    :cond_7d
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2339
    .line 2340
    .line 2341
    invoke-virtual {v1, v7}, Lcom/mycompany/app/web/WebViewActivity;->i5(Ljava/lang/String;)V

    .line 2342
    .line 2343
    .line 2344
    return-void

    .line 2345
    :pswitch_3c
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2346
    .line 2347
    .line 2348
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->m9()V

    .line 2349
    .line 2350
    .line 2351
    return-void

    .line 2352
    :pswitch_3d
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2353
    .line 2354
    if-nez v0, :cond_7e

    .line 2355
    .line 2356
    goto/16 :goto_11

    .line 2357
    .line 2358
    :cond_7e
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 2359
    .line 2360
    .line 2361
    move-result-object v0

    .line 2362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2363
    .line 2364
    .line 2365
    move-result v2

    .line 2366
    if-nez v2, :cond_80

    .line 2367
    .line 2368
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2369
    .line 2370
    .line 2371
    move-result v2

    .line 2372
    if-eqz v2, :cond_7f

    .line 2373
    .line 2374
    goto :goto_e

    .line 2375
    :cond_7f
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2376
    .line 2377
    .line 2378
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2379
    .line 2380
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestView;->getTitle()Ljava/lang/String;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v2

    .line 2384
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->m8(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    .line 2386
    .line 2387
    return-void

    .line 2388
    :cond_80
    :goto_e
    sget v0, Lnet/kaki87/soul2/testing/R$string;->blank_page:I

    .line 2389
    .line 2390
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 2391
    .line 2392
    .line 2393
    return-void

    .line 2394
    :pswitch_3e
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2395
    .line 2396
    .line 2397
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->v9()V

    .line 2398
    .line 2399
    .line 2400
    return-void

    .line 2401
    :pswitch_3f
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2402
    .line 2403
    .line 2404
    new-instance v0, Landroid/content/Intent;

    .line 2405
    .line 2406
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 2407
    .line 2408
    const-class v3, Lcom/mycompany/app/editor/EditorActivity;

    .line 2409
    .line 2410
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2411
    .line 2412
    .line 2413
    const/16 v2, 0xd

    .line 2414
    .line 2415
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 2416
    .line 2417
    .line 2418
    return-void

    .line 2419
    :pswitch_40
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2420
    .line 2421
    .line 2422
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 2423
    .line 2424
    if-eqz v0, :cond_81

    .line 2425
    .line 2426
    goto/16 :goto_11

    .line 2427
    .line 2428
    :cond_81
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 2429
    .line 2430
    .line 2431
    move-result v0

    .line 2432
    if-eqz v0, :cond_82

    .line 2433
    .line 2434
    goto/16 :goto_11

    .line 2435
    .line 2436
    :cond_82
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->N3()V

    .line 2437
    .line 2438
    .line 2439
    new-instance v0, Lcom/mycompany/app/view/MyDialogBottom;

    .line 2440
    .line 2441
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2442
    .line 2443
    .line 2444
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->s6:Lcom/mycompany/app/view/MyDialogBottom;

    .line 2445
    .line 2446
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$373;

    .line 2447
    .line 2448
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$373;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2449
    .line 2450
    .line 2451
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2452
    .line 2453
    .line 2454
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 2455
    .line 2456
    if-nez v0, :cond_83

    .line 2457
    .line 2458
    goto/16 :goto_11

    .line 2459
    .line 2460
    :cond_83
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$374;

    .line 2461
    .line 2462
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$374;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2463
    .line 2464
    .line 2465
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2466
    .line 2467
    .line 2468
    return-void

    .line 2469
    :pswitch_41
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2470
    .line 2471
    if-nez v0, :cond_84

    .line 2472
    .line 2473
    goto/16 :goto_11

    .line 2474
    .line 2475
    :cond_84
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 2476
    .line 2477
    .line 2478
    move-result-object v0

    .line 2479
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2480
    .line 2481
    .line 2482
    move-result v2

    .line 2483
    if-nez v2, :cond_87

    .line 2484
    .line 2485
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2486
    .line 2487
    .line 2488
    move-result v2

    .line 2489
    if-nez v2, :cond_87

    .line 2490
    .line 2491
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2492
    .line 2493
    .line 2494
    move-result v2

    .line 2495
    if-eqz v2, :cond_85

    .line 2496
    .line 2497
    goto :goto_f

    .line 2498
    :cond_85
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2499
    .line 2500
    .line 2501
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 2502
    .line 2503
    .line 2504
    move-result v2

    .line 2505
    if-eqz v2, :cond_86

    .line 2506
    .line 2507
    goto/16 :goto_11

    .line 2508
    .line 2509
    :cond_86
    invoke-virtual {v1, v0, v10}, Lcom/mycompany/app/web/WebViewActivity;->z3(Ljava/lang/String;Z)V

    .line 2510
    .line 2511
    .line 2512
    return-void

    .line 2513
    :cond_87
    :goto_f
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 2514
    .line 2515
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 2516
    .line 2517
    .line 2518
    return-void

    .line 2519
    :pswitch_42
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2520
    .line 2521
    if-nez v0, :cond_88

    .line 2522
    .line 2523
    goto/16 :goto_11

    .line 2524
    .line 2525
    :cond_88
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v0

    .line 2529
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2530
    .line 2531
    .line 2532
    move-result v2

    .line 2533
    if-nez v2, :cond_8b

    .line 2534
    .line 2535
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2536
    .line 2537
    .line 2538
    move-result v2

    .line 2539
    if-nez v2, :cond_8b

    .line 2540
    .line 2541
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2542
    .line 2543
    .line 2544
    move-result v2

    .line 2545
    if-eqz v2, :cond_89

    .line 2546
    .line 2547
    goto :goto_10

    .line 2548
    :cond_89
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2549
    .line 2550
    .line 2551
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 2552
    .line 2553
    .line 2554
    move-result v2

    .line 2555
    if-eqz v2, :cond_8a

    .line 2556
    .line 2557
    goto/16 :goto_11

    .line 2558
    .line 2559
    :cond_8a
    invoke-virtual {v1, v0, v10}, Lcom/mycompany/app/web/WebViewActivity;->r9(Ljava/lang/String;Z)V

    .line 2560
    .line 2561
    .line 2562
    return-void

    .line 2563
    :cond_8b
    :goto_10
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 2564
    .line 2565
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 2566
    .line 2567
    .line 2568
    return-void

    .line 2569
    :pswitch_43
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2570
    .line 2571
    if-nez v2, :cond_8c

    .line 2572
    .line 2573
    goto/16 :goto_11

    .line 2574
    .line 2575
    :cond_8c
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2576
    .line 2577
    .line 2578
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 2579
    .line 2580
    xor-int/2addr v2, v9

    .line 2581
    sput-boolean v2, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 2582
    .line 2583
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 2584
    .line 2585
    const/16 v4, 0xf

    .line 2586
    .line 2587
    const-string v5, "mHideImage"

    .line 2588
    .line 2589
    invoke-static {v4, v3, v5, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 2590
    .line 2591
    .line 2592
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->k7(I)V

    .line 2593
    .line 2594
    .line 2595
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2596
    .line 2597
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 2598
    .line 2599
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebNestView;->setHideImage(Z)V

    .line 2600
    .line 2601
    .line 2602
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->F6()V

    .line 2603
    .line 2604
    .line 2605
    return-void

    .line 2606
    :pswitch_44
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2607
    .line 2608
    .line 2609
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 2610
    .line 2611
    .line 2612
    move-result-object v0

    .line 2613
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$515;

    .line 2614
    .line 2615
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$515;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2616
    .line 2617
    .line 2618
    invoke-virtual {v1, v7, v0, v9, v2}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 2619
    .line 2620
    .line 2621
    return-void

    .line 2622
    :pswitch_45
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2623
    .line 2624
    .line 2625
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 2626
    .line 2627
    new-instance v2, Landroid/content/Intent;

    .line 2628
    .line 2629
    const-class v3, Lcom/mycompany/app/main/list/MainListDown;

    .line 2630
    .line 2631
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2632
    .line 2633
    .line 2634
    const/16 v0, 0x8

    .line 2635
    .line 2636
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 2637
    .line 2638
    .line 2639
    return-void

    .line 2640
    :pswitch_46
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2641
    .line 2642
    .line 2643
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2644
    .line 2645
    if-nez v0, :cond_8d

    .line 2646
    .line 2647
    goto :goto_11

    .line 2648
    :cond_8d
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 2649
    .line 2650
    if-eqz v0, :cond_8e

    .line 2651
    .line 2652
    goto :goto_11

    .line 2653
    :cond_8e
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 2654
    .line 2655
    .line 2656
    move-result v0

    .line 2657
    if-eqz v0, :cond_8f

    .line 2658
    .line 2659
    goto :goto_11

    .line 2660
    :cond_8f
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->a4()V

    .line 2661
    .line 2662
    .line 2663
    new-instance v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 2664
    .line 2665
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2666
    .line 2667
    .line 2668
    const/16 v2, 0x12

    .line 2669
    .line 2670
    iput v2, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 2671
    .line 2672
    sget v2, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 2673
    .line 2674
    iput v2, v0, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 2675
    .line 2676
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->Z9()V

    .line 2677
    .line 2678
    .line 2679
    new-instance v2, Lcom/mycompany/app/dialog/DialogListBook;

    .line 2680
    .line 2681
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$335;

    .line 2682
    .line 2683
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$335;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2684
    .line 2685
    .line 2686
    invoke-direct {v2, v1, v0, v7, v3}, Lcom/mycompany/app/dialog/DialogListBook;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainListView$ListViewConfig;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogListBook$ListBookListener;)V

    .line 2687
    .line 2688
    .line 2689
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->k6:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2690
    .line 2691
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$336;

    .line 2692
    .line 2693
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$336;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2694
    .line 2695
    .line 2696
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2697
    .line 2698
    .line 2699
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->k6:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2700
    .line 2701
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$337;

    .line 2702
    .line 2703
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$337;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 2704
    .line 2705
    .line 2706
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 2707
    .line 2708
    return-void

    .line 2709
    :pswitch_47
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->t9(Landroid/view/View;)V

    .line 2710
    .line 2711
    .line 2712
    return-void

    .line 2713
    :pswitch_48
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 2714
    .line 2715
    .line 2716
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 2717
    .line 2718
    if-nez v0, :cond_91

    .line 2719
    .line 2720
    :cond_90
    :goto_11
    return-void

    .line 2721
    :cond_91
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Ba:Z

    .line 2722
    .line 2723
    if-eqz v0, :cond_92

    .line 2724
    .line 2725
    iput-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Ba:Z

    .line 2726
    .line 2727
    return-void

    .line 2728
    :cond_92
    invoke-virtual {v1, v9}, Lcom/mycompany/app/web/WebViewActivity;->E7(Z)V

    .line 2729
    .line 2730
    .line 2731
    return-void

    .line 2732
    :pswitch_4a
    invoke-static {v1}, Lcom/mycompany/app/web/DevToolsHelper;->loadEruda(Lcom/mycompany/app/web/WebViewActivity;)V

    return-void

    .line 2733
    nop

    .line 2734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4a
    .end packed-switch
.end method
