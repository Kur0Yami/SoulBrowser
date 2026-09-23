.class Lcom/mycompany/app/dialog/DialogInfo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$3;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo$3;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->c0:I

    .line 4
    .line 5
    const/16 v2, 0x1b

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-ne v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 14
    .line 15
    if-eqz v2, :cond_13

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    iget v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 22
    .line 23
    iget v6, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 24
    .line 25
    invoke-virtual {v2, v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 49
    .line 50
    sget-boolean v4, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 51
    .line 52
    invoke-static {v2, v1, v3}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->N0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 57
    .line 58
    new-instance v1, Lcom/mycompany/app/dialog/DialogInfo$10;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogInfo$10;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    const/16 v2, 0x17

    .line 68
    .line 69
    if-ne v1, v2, :cond_3

    .line 70
    .line 71
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogInfo;->B(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 76
    .line 77
    if-eqz v2, :cond_13

    .line 78
    .line 79
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 80
    .line 81
    if-nez v5, :cond_4

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_4
    const/16 v6, 0x13

    .line 86
    .line 87
    if-eq v1, v6, :cond_13

    .line 88
    .line 89
    const/16 v6, 0x14

    .line 90
    .line 91
    if-eq v1, v6, :cond_13

    .line 92
    .line 93
    const/16 v6, 0x15

    .line 94
    .line 95
    if-eq v1, v6, :cond_13

    .line 96
    .line 97
    const/16 v6, 0x16

    .line 98
    .line 99
    if-eq v1, v6, :cond_13

    .line 100
    .line 101
    const/16 v6, 0x19

    .line 102
    .line 103
    if-eq v1, v6, :cond_13

    .line 104
    .line 105
    const/16 v6, 0x1c

    .line 106
    .line 107
    if-eq v1, v6, :cond_13

    .line 108
    .line 109
    const/16 v6, 0x1d

    .line 110
    .line 111
    if-eq v1, v6, :cond_13

    .line 112
    .line 113
    const/16 v6, 0x1e

    .line 114
    .line 115
    if-ne v1, v6, :cond_5

    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_5
    const/16 v6, 0x20

    .line 120
    .line 121
    const/4 v7, 0x3

    .line 122
    if-ne v1, v6, :cond_6

    .line 123
    .line 124
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 125
    .line 126
    if-eq v6, v7, :cond_a

    .line 127
    .line 128
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 129
    .line 130
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 131
    .line 132
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 136
    .line 137
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 141
    .line 142
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_6
    const/16 v6, 0x12

    .line 147
    .line 148
    if-ne v1, v6, :cond_7

    .line 149
    .line 150
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 151
    .line 152
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_24:I

    .line 153
    .line 154
    if-ne v6, v8, :cond_a

    .line 155
    .line 156
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 157
    .line 158
    invoke-virtual {v2, v1, v6}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 162
    .line 163
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 167
    .line 168
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_7
    const/16 v6, 0x23

    .line 173
    .line 174
    if-ne v1, v6, :cond_8

    .line 175
    .line 176
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 177
    .line 178
    if-eqz v6, :cond_a

    .line 179
    .line 180
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 181
    .line 182
    invoke-virtual {v2, v6, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 186
    .line 187
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 191
    .line 192
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_8
    const/16 v6, 0x24

    .line 197
    .line 198
    if-ne v1, v6, :cond_9

    .line 199
    .line 200
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 201
    .line 202
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 203
    .line 204
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v2, v1, v6, v5, v3}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 210
    .line 211
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 215
    .line 216
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_9
    const/16 v6, 0x25

    .line 221
    .line 222
    if-ne v1, v6, :cond_a

    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :cond_a
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 227
    .line 228
    const/16 v8, 0xb

    .line 229
    .line 230
    const/4 v9, 0x1

    .line 231
    const/4 v10, 0x4

    .line 232
    if-eq v6, v9, :cond_b

    .line 233
    .line 234
    const/4 v11, 0x2

    .line 235
    if-eq v6, v11, :cond_b

    .line 236
    .line 237
    if-eq v6, v7, :cond_b

    .line 238
    .line 239
    if-eq v6, v10, :cond_b

    .line 240
    .line 241
    const/4 v7, 0x5

    .line 242
    if-eq v6, v7, :cond_b

    .line 243
    .line 244
    const/4 v7, 0x6

    .line 245
    if-eq v6, v7, :cond_b

    .line 246
    .line 247
    if-eq v6, v8, :cond_b

    .line 248
    .line 249
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 250
    .line 251
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 252
    .line 253
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 254
    .line 255
    .line 256
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 257
    .line 258
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 262
    .line 263
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_b
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 268
    .line 269
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 270
    .line 271
    .line 272
    if-ne v6, v8, :cond_c

    .line 273
    .line 274
    iput v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 275
    .line 276
    iput v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 277
    .line 278
    iget-object v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 279
    .line 280
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 281
    .line 282
    iget-object v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 283
    .line 284
    iput-object v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 285
    .line 286
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 287
    .line 288
    iget-wide v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 289
    .line 290
    iput-wide v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 291
    .line 292
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 293
    .line 294
    iput v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 295
    .line 296
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 297
    .line 298
    iput v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 299
    .line 300
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 301
    .line 302
    iput v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 303
    .line 304
    move-object v5, v2

    .line 305
    :cond_c
    iget-object v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_e

    .line 312
    .line 313
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->e0:Z

    .line 314
    .line 315
    if-eqz v1, :cond_d

    .line 316
    .line 317
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 318
    .line 319
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 320
    .line 321
    iget v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 322
    .line 323
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 324
    .line 325
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v1, v5, v6, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 328
    .line 329
    .line 330
    goto :goto_0

    .line 331
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 332
    .line 333
    iget v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 334
    .line 335
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 336
    .line 337
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 338
    .line 339
    .line 340
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 341
    .line 342
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 346
    .line 347
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_e
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 352
    .line 353
    if-eq v1, v9, :cond_11

    .line 354
    .line 355
    invoke-static {v5}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-eqz v2, :cond_10

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogInfo;->E(Landroid/graphics/Bitmap;)V

    .line 366
    .line 367
    .line 368
    iget v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 369
    .line 370
    if-ne v2, v10, :cond_f

    .line 371
    .line 372
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 373
    .line 374
    const v3, -0x70708

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 378
    .line 379
    .line 380
    :cond_f
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 381
    .line 382
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 386
    .line 387
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 391
    .line 392
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :cond_10
    new-instance v1, Lcom/mycompany/app/main/MainListLoader;

    .line 397
    .line 398
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 399
    .line 400
    new-instance v3, Lcom/mycompany/app/dialog/DialogInfo$6;

    .line 401
    .line 402
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogInfo$6;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 403
    .line 404
    .line 405
    invoke-direct {v1, v2, v4, v3}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 406
    .line 407
    .line 408
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->M0:Lcom/mycompany/app/main/MainListLoader;

    .line 409
    .line 410
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 411
    .line 412
    iget v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 413
    .line 414
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 415
    .line 416
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 417
    .line 418
    .line 419
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 420
    .line 421
    iget v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 422
    .line 423
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 431
    .line 432
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 436
    .line 437
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->M0:Lcom/mycompany/app/main/MainListLoader;

    .line 441
    .line 442
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 443
    .line 444
    invoke-virtual {v1, v5, v0}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :cond_11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 449
    .line 450
    iget v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 451
    .line 452
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 453
    .line 454
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 455
    .line 456
    .line 457
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 458
    .line 459
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 460
    .line 461
    .line 462
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 463
    .line 464
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 465
    .line 466
    .line 467
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 468
    .line 469
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 470
    .line 471
    invoke-static {v1}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_12

    .line 476
    .line 477
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogInfo;->F()V

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :cond_12
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 482
    .line 483
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 484
    .line 485
    .line 486
    new-instance v1, Lcom/mycompany/app/dialog/DialogInfo$7;

    .line 487
    .line 488
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogInfo$7;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 492
    .line 493
    .line 494
    :cond_13
    :goto_1
    return-void
.end method
