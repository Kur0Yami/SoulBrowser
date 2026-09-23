.class Lcom/mycompany/app/web/WebViewActivity$202;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$202;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$202;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebViewActivity;->H1:Z

    .line 4
    .line 5
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$202;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I1:Z

    .line 4
    .line 5
    if-nez v1, :cond_57

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_57

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->J1:Z

    .line 14
    .line 15
    if-nez v1, :cond_57

    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->K1:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->F2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->E3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->F3:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I3:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->J3:Lcom/mycompany/app/dialog/DialogTabEdit;

    .line 84
    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->d4:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 96
    .line 97
    if-eqz v1, :cond_7

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Z5:Lcom/mycompany/app/dialog/DialogTabMenu;

    .line 108
    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e6:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 120
    .line 121
    if-eqz v1, :cond_9

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_9

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f6:Lcom/mycompany/app/dialog/DialogNewsSearch;

    .line 132
    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_a

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->h6:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 144
    .line 145
    if-eqz v1, :cond_b

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_b

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i6:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 156
    .line 157
    if-eqz v1, :cond_c

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_c

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j6:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 168
    .line 169
    if-eqz v1, :cond_d

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogNormal;->i()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_d

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k6:Lcom/mycompany/app/dialog/DialogListBook;

    .line 180
    .line 181
    if-eqz v1, :cond_e

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogNormal;->i()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_e

    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l6:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 192
    .line 193
    if-eqz v1, :cond_f

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_f

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->m6:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 204
    .line 205
    if-eqz v1, :cond_10

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_10

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_10
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->n6:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 216
    .line 217
    if-eqz v1, :cond_11

    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_11

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_11
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o6:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 228
    .line 229
    if-eqz v1, :cond_12

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_12

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_12
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->p6:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 240
    .line 241
    if-eqz v1, :cond_13

    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_13

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_13
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->q6:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 252
    .line 253
    if-eqz v1, :cond_14

    .line 254
    .line 255
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_14

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_14
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->r6:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 264
    .line 265
    if-eqz v1, :cond_15

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_15

    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_15
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->s6:Lcom/mycompany/app/view/MyDialogBottom;

    .line 276
    .line 277
    if-eqz v1, :cond_16

    .line 278
    .line 279
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_16

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_16
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->A6:Lcom/mycompany/app/dialog/DialogCapture;

    .line 288
    .line 289
    if-eqz v1, :cond_17

    .line 290
    .line 291
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogNormal;->i()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_17

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_17
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B6:Lcom/mycompany/app/dialog/DialogDownPage;

    .line 300
    .line 301
    if-eqz v1, :cond_18

    .line 302
    .line 303
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_18

    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_18
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->C6:Lcom/mycompany/app/dialog/DialogPrintPage;

    .line 312
    .line 313
    if-eqz v1, :cond_19

    .line 314
    .line 315
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_19

    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :cond_19
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->D6:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 324
    .line 325
    if-eqz v1, :cond_1a

    .line 326
    .line 327
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_1a

    .line 332
    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    :cond_1a
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->E6:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 336
    .line 337
    if-eqz v1, :cond_1b

    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_1b

    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :cond_1b
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->F6:Lcom/mycompany/app/dialog/DialogTransMsg;

    .line 348
    .line 349
    if-eqz v1, :cond_1c

    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_1c

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_1c
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G6:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 360
    .line 361
    if-eqz v1, :cond_1d

    .line 362
    .line 363
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_1d

    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :cond_1d
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Y6:Lcom/mycompany/app/dialog/DialogSetDesk;

    .line 372
    .line 373
    if-eqz v1, :cond_1e

    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_1e

    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_1e
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Z6:Lcom/mycompany/app/dialog/DialogSetUrl;

    .line 384
    .line 385
    if-eqz v1, :cond_1f

    .line 386
    .line 387
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_1f

    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :cond_1f
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->a7:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 396
    .line 397
    if-eqz v1, :cond_20

    .line 398
    .line 399
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-eqz v1, :cond_20

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_20
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b7:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 408
    .line 409
    if-eqz v1, :cond_21

    .line 410
    .line 411
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_21

    .line 416
    .line 417
    goto/16 :goto_0

    .line 418
    .line 419
    :cond_21
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->c7:Lcom/mycompany/app/dialog/DialogWebView;

    .line 420
    .line 421
    if-eqz v1, :cond_22

    .line 422
    .line 423
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-eqz v1, :cond_22

    .line 428
    .line 429
    goto/16 :goto_0

    .line 430
    .line 431
    :cond_22
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e7:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 432
    .line 433
    if-eqz v1, :cond_23

    .line 434
    .line 435
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_23

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_23
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f7:Lcom/mycompany/app/dialog/DialogBlockLink;

    .line 444
    .line 445
    if-eqz v1, :cond_24

    .line 446
    .line 447
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-eqz v1, :cond_24

    .line 452
    .line 453
    goto/16 :goto_0

    .line 454
    .line 455
    :cond_24
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->g7:Lcom/mycompany/app/dialog/DialogBlockImage;

    .line 456
    .line 457
    if-eqz v1, :cond_25

    .line 458
    .line 459
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_25

    .line 464
    .line 465
    goto/16 :goto_0

    .line 466
    .line 467
    :cond_25
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->q7:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 468
    .line 469
    if-eqz v1, :cond_26

    .line 470
    .line 471
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_26

    .line 476
    .line 477
    goto/16 :goto_0

    .line 478
    .line 479
    :cond_26
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->r7:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 480
    .line 481
    if-eqz v1, :cond_27

    .line 482
    .line 483
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    if-eqz v1, :cond_27

    .line 488
    .line 489
    goto/16 :goto_0

    .line 490
    .line 491
    :cond_27
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->s7:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 492
    .line 493
    if-eqz v1, :cond_28

    .line 494
    .line 495
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-eqz v1, :cond_28

    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :cond_28
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->t7:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 504
    .line 505
    if-eqz v1, :cond_29

    .line 506
    .line 507
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-eqz v1, :cond_29

    .line 512
    .line 513
    goto/16 :goto_0

    .line 514
    .line 515
    :cond_29
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->v7:Lcom/mycompany/app/dialog/DialogPrompt;

    .line 516
    .line 517
    if-eqz v1, :cond_2a

    .line 518
    .line 519
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_2a

    .line 524
    .line 525
    goto/16 :goto_0

    .line 526
    .line 527
    :cond_2a
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->w7:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 528
    .line 529
    if-eqz v1, :cond_2b

    .line 530
    .line 531
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    if-eqz v1, :cond_2b

    .line 536
    .line 537
    goto/16 :goto_0

    .line 538
    .line 539
    :cond_2b
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->x7:Lcom/mycompany/app/dialog/DialogPermission;

    .line 540
    .line 541
    if-eqz v1, :cond_2c

    .line 542
    .line 543
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-eqz v1, :cond_2c

    .line 548
    .line 549
    goto/16 :goto_0

    .line 550
    .line 551
    :cond_2c
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->D7:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 552
    .line 553
    if-eqz v1, :cond_2d

    .line 554
    .line 555
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-eqz v1, :cond_2d

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :cond_2d
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->E7:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 564
    .line 565
    if-eqz v1, :cond_2e

    .line 566
    .line 567
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    if-eqz v1, :cond_2e

    .line 572
    .line 573
    goto/16 :goto_0

    .line 574
    .line 575
    :cond_2e
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->F7:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 576
    .line 577
    if-eqz v1, :cond_2f

    .line 578
    .line 579
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    if-eqz v1, :cond_2f

    .line 584
    .line 585
    goto/16 :goto_0

    .line 586
    .line 587
    :cond_2f
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->K7:Lcom/mycompany/app/dialog/DialogAdNative;

    .line 588
    .line 589
    if-eqz v1, :cond_30

    .line 590
    .line 591
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_30

    .line 596
    .line 597
    goto/16 :goto_0

    .line 598
    .line 599
    :cond_30
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->N7:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 600
    .line 601
    if-eqz v1, :cond_31

    .line 602
    .line 603
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogNormal;->i()Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_31

    .line 608
    .line 609
    goto/16 :goto_0

    .line 610
    .line 611
    :cond_31
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->O7:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 612
    .line 613
    if-eqz v1, :cond_32

    .line 614
    .line 615
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-eqz v1, :cond_32

    .line 620
    .line 621
    goto/16 :goto_0

    .line 622
    .line 623
    :cond_32
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R7:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 624
    .line 625
    if-eqz v1, :cond_33

    .line 626
    .line 627
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    if-eqz v1, :cond_33

    .line 632
    .line 633
    goto/16 :goto_0

    .line 634
    .line 635
    :cond_33
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->S7:Lcom/mycompany/app/dialog/DialogLoadEmg;

    .line 636
    .line 637
    if-eqz v1, :cond_34

    .line 638
    .line 639
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 640
    .line 641
    .line 642
    move-result v1

    .line 643
    if-eqz v1, :cond_34

    .line 644
    .line 645
    goto/16 :goto_0

    .line 646
    .line 647
    :cond_34
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->T7:Lcom/mycompany/app/dialog/DialogLoadHmg;

    .line 648
    .line 649
    if-eqz v1, :cond_35

    .line 650
    .line 651
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    if-eqz v1, :cond_35

    .line 656
    .line 657
    goto/16 :goto_0

    .line 658
    .line 659
    :cond_35
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U7:Lcom/mycompany/app/web/WebGridDialog;

    .line 660
    .line 661
    if-eqz v1, :cond_36

    .line 662
    .line 663
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogNormal;->i()Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-eqz v1, :cond_36

    .line 668
    .line 669
    goto/16 :goto_0

    .line 670
    .line 671
    :cond_36
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->V7:Lcom/mycompany/app/web/WebEmgDialog;

    .line 672
    .line 673
    if-eqz v1, :cond_37

    .line 674
    .line 675
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogNormal;->i()Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    if-eqz v1, :cond_37

    .line 680
    .line 681
    goto/16 :goto_0

    .line 682
    .line 683
    :cond_37
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->W7:Lcom/mycompany/app/web/WebHmgDialog;

    .line 684
    .line 685
    if-eqz v1, :cond_38

    .line 686
    .line 687
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogNormal;->i()Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-eqz v1, :cond_38

    .line 692
    .line 693
    goto/16 :goto_0

    .line 694
    .line 695
    :cond_38
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->X7:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 696
    .line 697
    if-eqz v1, :cond_39

    .line 698
    .line 699
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    if-eqz v1, :cond_39

    .line 704
    .line 705
    goto/16 :goto_0

    .line 706
    .line 707
    :cond_39
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Y7:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 708
    .line 709
    if-eqz v1, :cond_3a

    .line 710
    .line 711
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    if-eqz v1, :cond_3a

    .line 716
    .line 717
    goto/16 :goto_0

    .line 718
    .line 719
    :cond_3a
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Z7:Lcom/mycompany/app/dialog/DialogPreview;

    .line 720
    .line 721
    if-eqz v1, :cond_3b

    .line 722
    .line 723
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 724
    .line 725
    .line 726
    move-result v1

    .line 727
    if-eqz v1, :cond_3b

    .line 728
    .line 729
    goto/16 :goto_0

    .line 730
    .line 731
    :cond_3b
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->a8:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 732
    .line 733
    if-eqz v1, :cond_3c

    .line 734
    .line 735
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-eqz v1, :cond_3c

    .line 740
    .line 741
    goto/16 :goto_0

    .line 742
    .line 743
    :cond_3c
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->c8:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 744
    .line 745
    if-eqz v1, :cond_3d

    .line 746
    .line 747
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 748
    .line 749
    .line 750
    move-result v1

    .line 751
    if-eqz v1, :cond_3d

    .line 752
    .line 753
    goto/16 :goto_0

    .line 754
    .line 755
    :cond_3d
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->d8:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 756
    .line 757
    if-eqz v1, :cond_3e

    .line 758
    .line 759
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-eqz v1, :cond_3e

    .line 764
    .line 765
    goto/16 :goto_0

    .line 766
    .line 767
    :cond_3e
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e8:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 768
    .line 769
    if-eqz v1, :cond_3f

    .line 770
    .line 771
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    if-eqz v1, :cond_3f

    .line 776
    .line 777
    goto/16 :goto_0

    .line 778
    .line 779
    :cond_3f
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f8:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 780
    .line 781
    if-eqz v1, :cond_40

    .line 782
    .line 783
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 784
    .line 785
    .line 786
    move-result v1

    .line 787
    if-eqz v1, :cond_40

    .line 788
    .line 789
    goto/16 :goto_0

    .line 790
    .line 791
    :cond_40
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->g8:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 792
    .line 793
    if-eqz v1, :cond_41

    .line 794
    .line 795
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 796
    .line 797
    .line 798
    move-result v1

    .line 799
    if-eqz v1, :cond_41

    .line 800
    .line 801
    goto/16 :goto_0

    .line 802
    .line 803
    :cond_41
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->h8:Lcom/mycompany/app/dialog/DialogSetUseTts;

    .line 804
    .line 805
    if-eqz v1, :cond_42

    .line 806
    .line 807
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 808
    .line 809
    .line 810
    move-result v1

    .line 811
    if-eqz v1, :cond_42

    .line 812
    .line 813
    goto/16 :goto_0

    .line 814
    .line 815
    :cond_42
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i8:Lcom/mycompany/app/dialog/DialogSetAdblock;

    .line 816
    .line 817
    if-eqz v1, :cond_43

    .line 818
    .line 819
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    if-eqz v1, :cond_43

    .line 824
    .line 825
    goto/16 :goto_0

    .line 826
    .line 827
    :cond_43
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j8:Lcom/mycompany/app/dialog/DialogSetJava;

    .line 828
    .line 829
    if-eqz v1, :cond_44

    .line 830
    .line 831
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 832
    .line 833
    .line 834
    move-result v1

    .line 835
    if-eqz v1, :cond_44

    .line 836
    .line 837
    goto/16 :goto_0

    .line 838
    .line 839
    :cond_44
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k8:Lcom/mycompany/app/dialog/DialogSetTmem;

    .line 840
    .line 841
    if-eqz v1, :cond_45

    .line 842
    .line 843
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 844
    .line 845
    .line 846
    move-result v1

    .line 847
    if-eqz v1, :cond_45

    .line 848
    .line 849
    goto/16 :goto_0

    .line 850
    .line 851
    :cond_45
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l8:Lcom/mycompany/app/dialog/DialogSetRead;

    .line 852
    .line 853
    if-eqz v1, :cond_46

    .line 854
    .line 855
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 856
    .line 857
    .line 858
    move-result v1

    .line 859
    if-eqz v1, :cond_46

    .line 860
    .line 861
    goto/16 :goto_0

    .line 862
    .line 863
    :cond_46
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->p8:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 864
    .line 865
    if-eqz v1, :cond_47

    .line 866
    .line 867
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogNormal;->i()Z

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    if-eqz v1, :cond_47

    .line 872
    .line 873
    goto/16 :goto_0

    .line 874
    .line 875
    :cond_47
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->q8:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 876
    .line 877
    if-eqz v1, :cond_48

    .line 878
    .line 879
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    if-eqz v1, :cond_48

    .line 884
    .line 885
    goto/16 :goto_0

    .line 886
    .line 887
    :cond_48
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->r8:Lcom/mycompany/app/dialog/DialogSetVpn;

    .line 888
    .line 889
    if-eqz v1, :cond_49

    .line 890
    .line 891
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 892
    .line 893
    .line 894
    move-result v1

    .line 895
    if-eqz v1, :cond_49

    .line 896
    .line 897
    goto/16 :goto_0

    .line 898
    .line 899
    :cond_49
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->s8:Lcom/mycompany/app/dialog/DialogSetCookie;

    .line 900
    .line 901
    if-eqz v1, :cond_4a

    .line 902
    .line 903
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    if-eqz v1, :cond_4a

    .line 908
    .line 909
    goto/16 :goto_0

    .line 910
    .line 911
    :cond_4a
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->t8:Lcom/mycompany/app/dialog/DialogSetScrFil;

    .line 912
    .line 913
    if-eqz v1, :cond_4b

    .line 914
    .line 915
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    if-eqz v1, :cond_4b

    .line 920
    .line 921
    goto/16 :goto_0

    .line 922
    .line 923
    :cond_4b
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u8:Lcom/mycompany/app/dialog/DialogWebCerti;

    .line 924
    .line 925
    if-eqz v1, :cond_4c

    .line 926
    .line 927
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    if-eqz v1, :cond_4c

    .line 932
    .line 933
    goto/16 :goto_0

    .line 934
    .line 935
    :cond_4c
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->v8:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 936
    .line 937
    if-eqz v1, :cond_4d

    .line 938
    .line 939
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 940
    .line 941
    .line 942
    move-result v1

    .line 943
    if-eqz v1, :cond_4d

    .line 944
    .line 945
    goto/16 :goto_0

    .line 946
    .line 947
    :cond_4d
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->w8:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 948
    .line 949
    if-eqz v1, :cond_4e

    .line 950
    .line 951
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 952
    .line 953
    .line 954
    move-result v1

    .line 955
    if-eqz v1, :cond_4e

    .line 956
    .line 957
    goto :goto_0

    .line 958
    :cond_4e
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->gb:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 959
    .line 960
    if-eqz v1, :cond_4f

    .line 961
    .line 962
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 963
    .line 964
    .line 965
    move-result v1

    .line 966
    if-eqz v1, :cond_4f

    .line 967
    .line 968
    goto :goto_0

    .line 969
    :cond_4f
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->hb:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 970
    .line 971
    if-eqz v1, :cond_50

    .line 972
    .line 973
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 974
    .line 975
    .line 976
    move-result v1

    .line 977
    if-eqz v1, :cond_50

    .line 978
    .line 979
    goto :goto_0

    .line 980
    :cond_50
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ib:Lcom/mycompany/app/dialog/DialogListBook;

    .line 981
    .line 982
    if-eqz v1, :cond_51

    .line 983
    .line 984
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogNormal;->i()Z

    .line 985
    .line 986
    .line 987
    move-result v1

    .line 988
    if-eqz v1, :cond_51

    .line 989
    .line 990
    goto :goto_0

    .line 991
    :cond_51
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->jb:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 992
    .line 993
    if-eqz v1, :cond_52

    .line 994
    .line 995
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 996
    .line 997
    .line 998
    move-result v1

    .line 999
    if-eqz v1, :cond_52

    .line 1000
    .line 1001
    goto :goto_0

    .line 1002
    :cond_52
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->kb:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 1003
    .line 1004
    if-eqz v1, :cond_53

    .line 1005
    .line 1006
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 1007
    .line 1008
    .line 1009
    move-result v1

    .line 1010
    if-eqz v1, :cond_53

    .line 1011
    .line 1012
    goto :goto_0

    .line 1013
    :cond_53
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Yb:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 1014
    .line 1015
    if-eqz v1, :cond_54

    .line 1016
    .line 1017
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 1018
    .line 1019
    .line 1020
    move-result v1

    .line 1021
    if-eqz v1, :cond_54

    .line 1022
    .line 1023
    goto :goto_0

    .line 1024
    :cond_54
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Zb:Lcom/mycompany/app/dialog/DialogUpdateScript;

    .line 1025
    .line 1026
    if-eqz v1, :cond_55

    .line 1027
    .line 1028
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->j()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v1

    .line 1032
    if-eqz v1, :cond_55

    .line 1033
    .line 1034
    goto :goto_0

    .line 1035
    :cond_55
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 1036
    .line 1037
    if-eqz v0, :cond_56

    .line 1038
    .line 1039
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFrame;->h()Z

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    if-eqz v0, :cond_56

    .line 1044
    .line 1045
    goto :goto_0

    .line 1046
    :cond_56
    const/4 v0, 0x0

    .line 1047
    return v0

    .line 1048
    :cond_57
    :goto_0
    const/4 v0, 0x1

    .line 1049
    return v0
.end method
