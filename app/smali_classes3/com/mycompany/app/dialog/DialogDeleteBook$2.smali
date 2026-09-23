.class Lcom/mycompany/app/dialog/DialogDeleteBook$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDeleteBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteBook$2;->c:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteBook$2;->c:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->c0:I

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 8
    .line 9
    if-eqz v3, :cond_36

    .line 10
    .line 11
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_11

    .line 16
    .line 17
    :cond_0
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    const v4, -0x50506

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 44
    .line 45
    .line 46
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    const/high16 v4, -0x1000000

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 74
    .line 75
    .line 76
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 77
    .line 78
    const v4, -0xe19938

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->e0:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const/16 v4, 0x20

    .line 91
    .line 92
    const/4 v5, 0x2

    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v7, 0x0

    .line 95
    if-nez v3, :cond_2

    .line 96
    .line 97
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->e0:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 105
    .line 106
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    .line 107
    .line 108
    invoke-virtual {v3, v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 109
    .line 110
    .line 111
    move v3, v4

    .line 112
    goto/16 :goto_e

    .line 113
    .line 114
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    const/16 v8, 0x1b

    .line 121
    .line 122
    if-ne v3, v6, :cond_6

    .line 123
    .line 124
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 131
    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    if-ne v2, v8, :cond_4

    .line 135
    .line 136
    iget-object v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_3

    .line 143
    .line 144
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 153
    .line 154
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_5
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v10, "1"

    .line 173
    .line 174
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 178
    .line 179
    sget v11, Lnet/kaki87/soul2/testing/R$string;->items:I

    .line 180
    .line 181
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_6
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 213
    .line 214
    sget v11, Lnet/kaki87/soul2/testing/R$string;->items:I

    .line 215
    .line 216
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    :goto_1
    const/16 v3, 0x17

    .line 231
    .line 232
    const v9, -0x70708

    .line 233
    .line 234
    .line 235
    if-eq v2, v3, :cond_26

    .line 236
    .line 237
    if-ne v2, v8, :cond_7

    .line 238
    .line 239
    goto/16 :goto_b

    .line 240
    .line 241
    :cond_7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 242
    .line 243
    if-eqz v3, :cond_25

    .line 244
    .line 245
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 246
    .line 247
    if-eqz v3, :cond_25

    .line 248
    .line 249
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_8

    .line 254
    .line 255
    goto/16 :goto_a

    .line 256
    .line 257
    :cond_8
    const/16 v3, 0x13

    .line 258
    .line 259
    if-eq v2, v3, :cond_24

    .line 260
    .line 261
    const/16 v3, 0x14

    .line 262
    .line 263
    if-eq v2, v3, :cond_24

    .line 264
    .line 265
    const/16 v3, 0x15

    .line 266
    .line 267
    if-eq v2, v3, :cond_24

    .line 268
    .line 269
    const/16 v3, 0x16

    .line 270
    .line 271
    if-eq v2, v3, :cond_24

    .line 272
    .line 273
    const/16 v3, 0x1c

    .line 274
    .line 275
    if-eq v2, v3, :cond_24

    .line 276
    .line 277
    const/16 v3, 0x1d

    .line 278
    .line 279
    if-eq v2, v3, :cond_24

    .line 280
    .line 281
    const/16 v3, 0x1e

    .line 282
    .line 283
    if-eq v2, v3, :cond_24

    .line 284
    .line 285
    const/16 v3, 0x1f

    .line 286
    .line 287
    if-ne v2, v3, :cond_9

    .line 288
    .line 289
    goto/16 :goto_9

    .line 290
    .line 291
    :cond_9
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 292
    .line 293
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    const/16 v8, 0x2a

    .line 298
    .line 299
    const/16 v10, 0x24

    .line 300
    .line 301
    const/16 v11, 0x11

    .line 302
    .line 303
    const/16 v12, 0x12

    .line 304
    .line 305
    if-eq v3, v6, :cond_14

    .line 306
    .line 307
    const/16 v3, 0xe

    .line 308
    .line 309
    if-ne v2, v3, :cond_a

    .line 310
    .line 311
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 312
    .line 313
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_library_black_24:I

    .line 314
    .line 315
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_a

    .line 319
    .line 320
    :cond_a
    const/16 v3, 0xf

    .line 321
    .line 322
    if-ne v2, v3, :cond_b

    .line 323
    .line 324
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 325
    .line 326
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_as_pdf_black_24:I

    .line 327
    .line 328
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_a

    .line 332
    .line 333
    :cond_b
    const/16 v3, 0x10

    .line 334
    .line 335
    if-ne v2, v3, :cond_c

    .line 336
    .line 337
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 338
    .line 339
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_zip_black_24:I

    .line 340
    .line 341
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_a

    .line 345
    .line 346
    :cond_c
    const/16 v3, 0x18

    .line 347
    .line 348
    if-ne v2, v3, :cond_d

    .line 349
    .line 350
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 351
    .line 352
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_black_24:I

    .line 353
    .line 354
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_a

    .line 358
    .line 359
    :cond_d
    const/16 v3, 0x19

    .line 360
    .line 361
    if-ne v2, v3, :cond_e

    .line 362
    .line 363
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 364
    .line 365
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_24:I

    .line 366
    .line 367
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_a

    .line 371
    .line 372
    :cond_e
    const/16 v3, 0x1a

    .line 373
    .line 374
    if-ne v2, v3, :cond_f

    .line 375
    .line 376
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 377
    .line 378
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_24:I

    .line 379
    .line 380
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_a

    .line 384
    .line 385
    :cond_f
    const/16 v3, 0x23

    .line 386
    .line 387
    if-ne v2, v3, :cond_10

    .line 388
    .line 389
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 390
    .line 391
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    .line 392
    .line 393
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_a

    .line 397
    .line 398
    :cond_10
    const/16 v3, 0x25

    .line 399
    .line 400
    if-ne v2, v3, :cond_11

    .line 401
    .line 402
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 403
    .line 404
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_black_24:I

    .line 405
    .line 406
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_a

    .line 410
    .line 411
    :cond_11
    if-eq v2, v11, :cond_13

    .line 412
    .line 413
    if-eq v2, v12, :cond_13

    .line 414
    .line 415
    if-eq v2, v10, :cond_13

    .line 416
    .line 417
    if-ne v2, v8, :cond_12

    .line 418
    .line 419
    goto :goto_2

    .line 420
    :cond_12
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 421
    .line 422
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_black_24:I

    .line 423
    .line 424
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_a

    .line 428
    .line 429
    :cond_13
    :goto_2
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 430
    .line 431
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 432
    .line 433
    invoke-virtual {v3, v9, v8}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_a

    .line 437
    .line 438
    :cond_14
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 439
    .line 440
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 445
    .line 446
    if-nez v3, :cond_15

    .line 447
    .line 448
    goto/16 :goto_a

    .line 449
    .line 450
    :cond_15
    const/4 v13, 0x3

    .line 451
    if-ne v2, v4, :cond_16

    .line 452
    .line 453
    iget v14, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 454
    .line 455
    if-eq v14, v13, :cond_17

    .line 456
    .line 457
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 458
    .line 459
    iget v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 460
    .line 461
    iget v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 462
    .line 463
    invoke-virtual {v8, v9, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_a

    .line 467
    .line 468
    :cond_16
    if-ne v2, v12, :cond_17

    .line 469
    .line 470
    iget v14, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 471
    .line 472
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_24:I

    .line 473
    .line 474
    if-ne v14, v15, :cond_17

    .line 475
    .line 476
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 477
    .line 478
    iget v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 479
    .line 480
    invoke-virtual {v8, v3, v14}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_a

    .line 484
    .line 485
    :cond_17
    iget v14, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 486
    .line 487
    const/16 v15, 0xb

    .line 488
    .line 489
    const/4 v4, 0x4

    .line 490
    const/4 v7, 0x0

    .line 491
    if-eq v14, v6, :cond_1a

    .line 492
    .line 493
    if-eq v14, v5, :cond_1a

    .line 494
    .line 495
    if-eq v14, v13, :cond_1a

    .line 496
    .line 497
    if-eq v14, v4, :cond_1a

    .line 498
    .line 499
    const/4 v13, 0x5

    .line 500
    if-eq v14, v13, :cond_1a

    .line 501
    .line 502
    const/4 v13, 0x6

    .line 503
    if-eq v14, v13, :cond_1a

    .line 504
    .line 505
    if-eq v14, v15, :cond_1a

    .line 506
    .line 507
    if-eq v2, v11, :cond_19

    .line 508
    .line 509
    if-eq v2, v12, :cond_19

    .line 510
    .line 511
    if-ne v2, v10, :cond_18

    .line 512
    .line 513
    goto :goto_3

    .line 514
    :cond_18
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 515
    .line 516
    iget v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 517
    .line 518
    iget v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 519
    .line 520
    invoke-virtual {v4, v7, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_a

    .line 524
    .line 525
    :cond_19
    :goto_3
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 526
    .line 527
    iget v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 528
    .line 529
    iget v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 530
    .line 531
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v4, v8, v9, v3, v7}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 534
    .line 535
    .line 536
    goto/16 :goto_a

    .line 537
    .line 538
    :cond_1a
    new-instance v13, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 539
    .line 540
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 541
    .line 542
    .line 543
    if-ne v14, v15, :cond_1c

    .line 544
    .line 545
    if-ne v2, v8, :cond_1b

    .line 546
    .line 547
    const/16 v8, 0x28

    .line 548
    .line 549
    iput v8, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 550
    .line 551
    iget-object v8, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 552
    .line 553
    iput-object v8, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 554
    .line 555
    iget-wide v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->E:J

    .line 556
    .line 557
    iput-wide v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 558
    .line 559
    goto :goto_4

    .line 560
    :cond_1b
    iput v2, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 561
    .line 562
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 563
    .line 564
    iput-object v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 565
    .line 566
    iget-wide v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 567
    .line 568
    iput-wide v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 569
    .line 570
    :goto_4
    iput v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 571
    .line 572
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 573
    .line 574
    iput-object v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 575
    .line 576
    iget v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 577
    .line 578
    iput v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 579
    .line 580
    iget v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 581
    .line 582
    iput v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 583
    .line 584
    iget v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 585
    .line 586
    iput v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 587
    .line 588
    goto :goto_5

    .line 589
    :cond_1c
    move-object v13, v3

    .line 590
    :goto_5
    iget-object v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 591
    .line 592
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 593
    .line 594
    .line 595
    move-result v5

    .line 596
    if-eqz v5, :cond_1f

    .line 597
    .line 598
    if-eq v2, v11, :cond_1e

    .line 599
    .line 600
    if-eq v2, v12, :cond_1e

    .line 601
    .line 602
    if-ne v2, v10, :cond_1d

    .line 603
    .line 604
    goto :goto_6

    .line 605
    :cond_1d
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 606
    .line 607
    iget v4, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 608
    .line 609
    iget v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 610
    .line 611
    invoke-virtual {v3, v4, v5}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 612
    .line 613
    .line 614
    goto :goto_a

    .line 615
    :cond_1e
    :goto_6
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 616
    .line 617
    iget v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 618
    .line 619
    iget v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 620
    .line 621
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 622
    .line 623
    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 624
    .line 625
    .line 626
    goto :goto_a

    .line 627
    :cond_1f
    invoke-static {v13}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 632
    .line 633
    .line 634
    move-result v6

    .line 635
    if-eqz v6, :cond_21

    .line 636
    .line 637
    iget v3, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 638
    .line 639
    if-ne v3, v4, :cond_20

    .line 640
    .line 641
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 642
    .line 643
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 644
    .line 645
    .line 646
    :cond_20
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogDeleteBook;->C()V

    .line 647
    .line 648
    .line 649
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 650
    .line 651
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 652
    .line 653
    .line 654
    goto :goto_a

    .line 655
    :cond_21
    new-instance v4, Lcom/mycompany/app/main/MainListLoader;

    .line 656
    .line 657
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->a0:Landroid/content/Context;

    .line 658
    .line 659
    new-instance v6, Lcom/mycompany/app/dialog/DialogDeleteBook$5;

    .line 660
    .line 661
    invoke-direct {v6, v1}, Lcom/mycompany/app/dialog/DialogDeleteBook$5;-><init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V

    .line 662
    .line 663
    .line 664
    const/4 v8, 0x0

    .line 665
    invoke-direct {v4, v5, v8, v6}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 666
    .line 667
    .line 668
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->q0:Lcom/mycompany/app/main/MainListLoader;

    .line 669
    .line 670
    if-eq v2, v11, :cond_23

    .line 671
    .line 672
    if-eq v2, v12, :cond_23

    .line 673
    .line 674
    if-ne v2, v10, :cond_22

    .line 675
    .line 676
    goto :goto_7

    .line 677
    :cond_22
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 678
    .line 679
    iget v4, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 680
    .line 681
    iget v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 682
    .line 683
    invoke-virtual {v3, v4, v5}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 684
    .line 685
    .line 686
    goto :goto_8

    .line 687
    :cond_23
    :goto_7
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 688
    .line 689
    iget v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 690
    .line 691
    iget v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 692
    .line 693
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 694
    .line 695
    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 696
    .line 697
    .line 698
    :goto_8
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 699
    .line 700
    iget v4, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 701
    .line 702
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->q0:Lcom/mycompany/app/main/MainListLoader;

    .line 710
    .line 711
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 712
    .line 713
    invoke-virtual {v3, v13, v4}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 714
    .line 715
    .line 716
    goto :goto_a

    .line 717
    :cond_24
    :goto_9
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 718
    .line 719
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 720
    .line 721
    invoke-virtual {v3, v9, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 722
    .line 723
    .line 724
    :cond_25
    :goto_a
    const/16 v3, 0x20

    .line 725
    .line 726
    goto/16 :goto_e

    .line 727
    .line 728
    :cond_26
    :goto_b
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 729
    .line 730
    if-eqz v3, :cond_25

    .line 731
    .line 732
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 733
    .line 734
    if-eqz v3, :cond_25

    .line 735
    .line 736
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 737
    .line 738
    .line 739
    move-result v3

    .line 740
    if-eqz v3, :cond_27

    .line 741
    .line 742
    goto :goto_a

    .line 743
    :cond_27
    if-ne v2, v8, :cond_28

    .line 744
    .line 745
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_extension_black_24:I

    .line 746
    .line 747
    goto :goto_c

    .line 748
    :cond_28
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 749
    .line 750
    :goto_c
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 751
    .line 752
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 753
    .line 754
    .line 755
    move-result v4

    .line 756
    const/4 v5, 0x1

    .line 757
    if-eq v4, v5, :cond_29

    .line 758
    .line 759
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 760
    .line 761
    invoke-virtual {v4, v9, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 762
    .line 763
    .line 764
    goto :goto_a

    .line 765
    :cond_29
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 766
    .line 767
    const/4 v5, 0x0

    .line 768
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 773
    .line 774
    if-nez v4, :cond_2a

    .line 775
    .line 776
    goto :goto_a

    .line 777
    :cond_2a
    if-ne v2, v8, :cond_2b

    .line 778
    .line 779
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 780
    .line 781
    goto :goto_d

    .line 782
    :cond_2b
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 783
    .line 784
    :goto_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    if-eqz v6, :cond_2c

    .line 789
    .line 790
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 791
    .line 792
    invoke-virtual {v4, v9, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 793
    .line 794
    .line 795
    goto :goto_a

    .line 796
    :cond_2c
    const/4 v15, 0x2

    .line 797
    invoke-static {v15, v5}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v6

    .line 801
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 802
    .line 803
    .line 804
    move-result-object v7

    .line 805
    invoke-virtual {v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 806
    .line 807
    .line 808
    move-result-object v7

    .line 809
    invoke-virtual {v7, v6}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 810
    .line 811
    .line 812
    move-result-object v6

    .line 813
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 814
    .line 815
    .line 816
    move-result v7

    .line 817
    if-eqz v7, :cond_2e

    .line 818
    .line 819
    if-ne v2, v8, :cond_2d

    .line 820
    .line 821
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 822
    .line 823
    const/4 v5, 0x1

    .line 824
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 825
    .line 826
    .line 827
    :cond_2d
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 828
    .line 829
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 830
    .line 831
    .line 832
    goto :goto_a

    .line 833
    :cond_2e
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 834
    .line 835
    invoke-virtual {v6, v9, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 836
    .line 837
    .line 838
    new-instance v3, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 839
    .line 840
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 841
    .line 842
    .line 843
    const/4 v6, 0x7

    .line 844
    iput v6, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 845
    .line 846
    iput-object v5, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 847
    .line 848
    iput-object v5, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 849
    .line 850
    iget v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 851
    .line 852
    iput v4, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 853
    .line 854
    const/4 v15, 0x2

    .line 855
    iput v15, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 856
    .line 857
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->r0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 858
    .line 859
    if-nez v4, :cond_2f

    .line 860
    .line 861
    new-instance v4, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 862
    .line 863
    invoke-direct {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 864
    .line 865
    .line 866
    const/4 v5, 0x1

    .line 867
    iput-boolean v5, v4, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 868
    .line 869
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 870
    .line 871
    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 872
    .line 873
    .line 874
    new-instance v5, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 875
    .line 876
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 877
    .line 878
    .line 879
    iput-object v5, v4, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 880
    .line 881
    new-instance v5, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 882
    .line 883
    invoke-direct {v5, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 884
    .line 885
    .line 886
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->r0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 887
    .line 888
    :cond_2f
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 889
    .line 890
    .line 891
    move-result-object v4

    .line 892
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 893
    .line 894
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->r0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 895
    .line 896
    new-instance v7, Lcom/mycompany/app/dialog/DialogDeleteBook$6;

    .line 897
    .line 898
    invoke-direct {v7, v1}, Lcom/mycompany/app/dialog/DialogDeleteBook$6;-><init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 902
    .line 903
    .line 904
    goto/16 :goto_a

    .line 905
    .line 906
    :goto_e
    if-ne v2, v3, :cond_34

    .line 907
    .line 908
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 909
    .line 910
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 911
    .line 912
    .line 913
    move-result v2

    .line 914
    const/4 v5, 0x1

    .line 915
    if-ne v2, v5, :cond_32

    .line 916
    .line 917
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->d0:Ljava/util/List;

    .line 918
    .line 919
    const/4 v8, 0x0

    .line 920
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 925
    .line 926
    if-eqz v2, :cond_32

    .line 927
    .line 928
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 929
    .line 930
    const/16 v4, 0x8

    .line 931
    .line 932
    if-eq v3, v4, :cond_32

    .line 933
    .line 934
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 935
    .line 936
    if-eq v3, v5, :cond_30

    .line 937
    .line 938
    const/4 v15, 0x2

    .line 939
    if-ne v3, v15, :cond_32

    .line 940
    .line 941
    :cond_30
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 942
    .line 943
    const-wide/16 v6, 0x0

    .line 944
    .line 945
    cmp-long v3, v3, v6

    .line 946
    .line 947
    if-nez v3, :cond_31

    .line 948
    .line 949
    iget-wide v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 950
    .line 951
    cmp-long v2, v2, v6

    .line 952
    .line 953
    if-lez v2, :cond_31

    .line 954
    .line 955
    move v6, v5

    .line 956
    goto :goto_f

    .line 957
    :cond_31
    move v6, v8

    .line 958
    :goto_f
    iput-boolean v6, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->t0:Z

    .line 959
    .line 960
    if-eqz v6, :cond_32

    .line 961
    .line 962
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 963
    .line 964
    sget v3, Lnet/kaki87/soul2/testing/R$string;->stop:I

    .line 965
    .line 966
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 967
    .line 968
    .line 969
    :cond_32
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->t0:Z

    .line 970
    .line 971
    if-nez v2, :cond_35

    .line 972
    .line 973
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->g0:Z

    .line 974
    .line 975
    if-eqz v2, :cond_33

    .line 976
    .line 977
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 978
    .line 979
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete_file:I

    .line 980
    .line 981
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 982
    .line 983
    .line 984
    goto :goto_10

    .line 985
    :cond_33
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 986
    .line 987
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete_record:I

    .line 988
    .line 989
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 990
    .line 991
    .line 992
    goto :goto_10

    .line 993
    :cond_34
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 994
    .line 995
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 996
    .line 997
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 998
    .line 999
    .line 1000
    :cond_35
    :goto_10
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 1001
    .line 1002
    new-instance v3, Lcom/mycompany/app/dialog/DialogDeleteBook$3;

    .line 1003
    .line 1004
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogDeleteBook$3;-><init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    .line 1009
    .line 1010
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDeleteBook;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 1011
    .line 1012
    new-instance v3, Lcom/mycompany/app/dialog/DialogDeleteBook$4;

    .line 1013
    .line 1014
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogDeleteBook$4;-><init>(Lcom/mycompany/app/dialog/DialogDeleteBook;)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 1018
    .line 1019
    .line 1020
    :cond_36
    :goto_11
    return-void
.end method
