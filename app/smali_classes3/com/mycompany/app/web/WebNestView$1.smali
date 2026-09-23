.class Lcom/mycompany/app/web/WebNestView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$1;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$1;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_a

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->i:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    goto/16 :goto_a

    .line 15
    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->setViewCookie(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebNestView;->z0:Z

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    iget-object v3, v0, Lcom/mycompany/app/web/WebNestView;->B0:Ljava/lang/String;

    .line 29
    .line 30
    :goto_0
    move v5, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/web/WebNestView;->C0:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    iget-object v3, v0, Lcom/mycompany/app/web/WebNestView;->C0:Ljava/lang/String;

    .line 41
    .line 42
    move v5, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->a0:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    iput-object v6, v0, Lcom/mycompany/app/web/WebNestView;->C0:Ljava/lang/String;

    .line 53
    .line 54
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebNestView;->D:Z

    .line 55
    .line 56
    sget-boolean v8, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 57
    .line 58
    if-eq v7, v8, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebNestView;->setAddPage(Z)V

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->B()Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    iget-boolean v8, v0, Lcom/mycompany/app/web/WebNestView;->n:Z

    .line 68
    .line 69
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebNestView;->n:Z

    .line 70
    .line 71
    sget-boolean v9, Lcom/mycompany/app/pref/PrefWeb;->j:Z

    .line 72
    .line 73
    if-eqz v9, :cond_5

    .line 74
    .line 75
    iget-boolean v9, v0, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 76
    .line 77
    if-nez v9, :cond_5

    .line 78
    .line 79
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebNestView;->C:Z

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->F0(Landroid/content/Context;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-static {v8, v9}, Lcom/mycompany/app/main/MainUtil;->Q7(Landroid/webkit/WebSettings;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move v9, v2

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    move v9, v8

    .line 95
    move-object v8, v6

    .line 96
    :goto_2
    iget v10, v0, Lcom/mycompany/app/web/WebNestView;->M:I

    .line 97
    .line 98
    sget v11, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 99
    .line 100
    if-eq v10, v11, :cond_7

    .line 101
    .line 102
    if-nez v8, :cond_6

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    :cond_6
    sget v10, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 109
    .line 110
    invoke-virtual {v0, v1, v10, v8}, Lcom/mycompany/app/web/WebNestView;->K(Landroid/content/Context;ILandroid/webkit/WebSettings;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    move v9, v2

    .line 117
    :cond_7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->B()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eq v7, v1, :cond_8

    .line 122
    .line 123
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v3, v1}, Lcom/mycompany/app/main/MainUtil;->U7(Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    move v9, v2

    .line 131
    :cond_8
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->N:Z

    .line 132
    .line 133
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->u:Z

    .line 134
    .line 135
    if-eq v1, v7, :cond_9

    .line 136
    .line 137
    invoke-virtual {v0, v7}, Lcom/mycompany/app/web/WebNestView;->setHideImage(Z)V

    .line 138
    .line 139
    .line 140
    move v9, v2

    .line 141
    :cond_9
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->O:Z

    .line 142
    .line 143
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->v:Z

    .line 144
    .line 145
    if-eq v1, v7, :cond_a

    .line 146
    .line 147
    invoke-virtual {v0, v7}, Lcom/mycompany/app/web/WebNestView;->setPreRaster(Z)V

    .line 148
    .line 149
    .line 150
    :cond_a
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->P:I

    .line 151
    .line 152
    sget v7, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 153
    .line 154
    if-eq v1, v7, :cond_b

    .line 155
    .line 156
    invoke-virtual {v0, v7}, Lcom/mycompany/app/web/WebNestView;->setTextSize(I)V

    .line 157
    .line 158
    .line 159
    :cond_b
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->Q:I

    .line 160
    .line 161
    sget v7, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 162
    .line 163
    if-eq v1, v7, :cond_c

    .line 164
    .line 165
    invoke-virtual {v0, v7}, Lcom/mycompany/app/web/WebNestView;->setScrollPos(I)V

    .line 166
    .line 167
    .line 168
    :cond_c
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->S:Z

    .line 169
    .line 170
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 171
    .line 172
    if-ne v1, v7, :cond_d

    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->R:Ljava/lang/String;

    .line 175
    .line 176
    sget-object v7, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_e

    .line 183
    .line 184
    :cond_d
    sget-object v1, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 185
    .line 186
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->R:Ljava/lang/String;

    .line 187
    .line 188
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 189
    .line 190
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->S:Z

    .line 191
    .line 192
    move v9, v2

    .line 193
    :cond_e
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->L:I

    .line 194
    .line 195
    sget v7, Lcom/mycompany/app/pref/PrefZtwo;->A:I

    .line 196
    .line 197
    if-eq v1, v7, :cond_11

    .line 198
    .line 199
    if-nez v8, :cond_f

    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    :cond_f
    invoke-virtual {v8}, Landroid/webkit/WebSettings;->getTextZoom()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    sget v7, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 210
    .line 211
    if-eq v1, v7, :cond_10

    .line 212
    .line 213
    invoke-virtual {v8, v7}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 214
    .line 215
    .line 216
    :cond_10
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->A:I

    .line 217
    .line 218
    iput v1, v0, Lcom/mycompany/app/web/WebNestView;->L:I

    .line 219
    .line 220
    move v9, v2

    .line 221
    :cond_11
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->U:Z

    .line 222
    .line 223
    sget-boolean v7, Lcom/mycompany/app/pref/PrefPdf;->r:Z

    .line 224
    .line 225
    if-eq v1, v7, :cond_13

    .line 226
    .line 227
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebNestView;->U:Z

    .line 228
    .line 229
    if-nez v9, :cond_13

    .line 230
    .line 231
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->v5(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_13

    .line 236
    .line 237
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->r:Z

    .line 238
    .line 239
    if-eqz v1, :cond_12

    .line 240
    .line 241
    new-instance v1, Lcom/mycompany/app/web/WebNestView$2;

    .line 242
    .line 243
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebNestView$2;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->J(Ljava/lang/Runnable;)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_12
    move v9, v2

    .line 251
    :cond_13
    :goto_3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->V:Z

    .line 252
    .line 253
    sget-boolean v7, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 254
    .line 255
    if-eq v1, v7, :cond_14

    .line 256
    .line 257
    invoke-virtual {v0, v7}, Lcom/mycompany/app/web/WebNestView;->setEnableJs(Z)V

    .line 258
    .line 259
    .line 260
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->H:Z

    .line 261
    .line 262
    if-eqz v1, :cond_14

    .line 263
    .line 264
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v3, v1, v2}, Lcom/mycompany/app/web/WebNestView;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 269
    .line 270
    .line 271
    :cond_14
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->F:Z

    .line 272
    .line 273
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 274
    .line 275
    if-eq v1, v7, :cond_19

    .line 276
    .line 277
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebNestView;->F:Z

    .line 278
    .line 279
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 280
    .line 281
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->G:Z

    .line 282
    .line 283
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 284
    .line 285
    iput v1, v0, Lcom/mycompany/app/web/WebNestView;->H:I

    .line 286
    .line 287
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j5()Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_16

    .line 292
    .line 293
    if-nez v9, :cond_15

    .line 294
    .line 295
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->z0:Z

    .line 296
    .line 297
    if-nez v1, :cond_15

    .line 298
    .line 299
    if-nez v5, :cond_15

    .line 300
    .line 301
    move v1, v2

    .line 302
    goto :goto_4

    .line 303
    :cond_15
    move v1, v4

    .line 304
    :goto_4
    if-eqz v1, :cond_1c

    .line 305
    .line 306
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    goto :goto_6

    .line 311
    :cond_16
    if-nez v8, :cond_17

    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    :cond_17
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 318
    .line 319
    invoke-static {v8, v1}, Lcom/mycompany/app/main/MainUtil;->X7(Landroid/webkit/WebSettings;Z)V

    .line 320
    .line 321
    .line 322
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-static {v3, v6}, Lcom/mycompany/app/main/MainUtil;->g5(Ljava/lang/String;Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_18

    .line 331
    .line 332
    if-nez v9, :cond_18

    .line 333
    .line 334
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->z0:Z

    .line 335
    .line 336
    if-nez v1, :cond_18

    .line 337
    .line 338
    if-nez v5, :cond_18

    .line 339
    .line 340
    move v1, v2

    .line 341
    goto :goto_6

    .line 342
    :cond_18
    :goto_5
    move v1, v4

    .line 343
    goto :goto_6

    .line 344
    :cond_19
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->G:Z

    .line 345
    .line 346
    sget-boolean v8, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 347
    .line 348
    if-ne v1, v8, :cond_1a

    .line 349
    .line 350
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->H:I

    .line 351
    .line 352
    sget v8, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 353
    .line 354
    if-eq v1, v8, :cond_18

    .line 355
    .line 356
    :cond_1a
    if-eqz v7, :cond_1b

    .line 357
    .line 358
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    :cond_1b
    invoke-virtual {v0, v3, v6}, Lcom/mycompany/app/web/WebNestView;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_1c
    :goto_6
    iget-object v7, v0, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 367
    .line 368
    if-eqz v7, :cond_1d

    .line 369
    .line 370
    move v7, v2

    .line 371
    goto :goto_7

    .line 372
    :cond_1d
    move v7, v4

    .line 373
    :goto_7
    const-string v8, "file:///android_asset/shortcut.html"

    .line 374
    .line 375
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v8

    .line 379
    iget-boolean v10, v0, Lcom/mycompany/app/web/WebNestView;->K:Z

    .line 380
    .line 381
    if-eq v10, v8, :cond_1e

    .line 382
    .line 383
    iput-boolean v8, v0, Lcom/mycompany/app/web/WebNestView;->K:Z

    .line 384
    .line 385
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebNestView;->W(Z)V

    .line 386
    .line 387
    .line 388
    :cond_1e
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->y()Z

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    if-eqz v8, :cond_1f

    .line 393
    .line 394
    iput v4, v0, Lcom/mycompany/app/web/WebNestView;->z:I

    .line 395
    .line 396
    iput v4, v0, Lcom/mycompany/app/web/WebNestView;->A:I

    .line 397
    .line 398
    :cond_1f
    iget-boolean v8, v0, Lcom/mycompany/app/web/WebNestView;->E:Z

    .line 399
    .line 400
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 401
    .line 402
    if-eq v8, v10, :cond_22

    .line 403
    .line 404
    iput-boolean v10, v0, Lcom/mycompany/app/web/WebNestView;->E:Z

    .line 405
    .line 406
    iget-object v8, v0, Lcom/mycompany/app/web/WebNestView;->b1:Lcom/mycompany/app/web/WebSslView;

    .line 407
    .line 408
    if-eqz v8, :cond_20

    .line 409
    .line 410
    invoke-virtual {v8}, Lcom/mycompany/app/web/WebSslView;->a()V

    .line 411
    .line 412
    .line 413
    :cond_20
    iget-object v8, v0, Lcom/mycompany/app/web/WebNestView;->d1:Lcom/mycompany/app/web/WebCrashView;

    .line 414
    .line 415
    if-eqz v8, :cond_21

    .line 416
    .line 417
    invoke-virtual {v8}, Lcom/mycompany/app/web/WebCrashView;->a()V

    .line 418
    .line 419
    .line 420
    :cond_21
    move v8, v2

    .line 421
    goto :goto_8

    .line 422
    :cond_22
    move v8, v4

    .line 423
    :goto_8
    iget-boolean v10, v0, Lcom/mycompany/app/web/WebNestView;->I:Z

    .line 424
    .line 425
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 426
    .line 427
    .line 428
    move-result v11

    .line 429
    if-ne v10, v11, :cond_23

    .line 430
    .line 431
    iget-boolean v10, v0, Lcom/mycompany/app/web/WebNestView;->J:Z

    .line 432
    .line 433
    sget-boolean v11, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 434
    .line 435
    if-eq v10, v11, :cond_24

    .line 436
    .line 437
    :cond_23
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    iput-boolean v8, v0, Lcom/mycompany/app/web/WebNestView;->I:Z

    .line 442
    .line 443
    sget-boolean v8, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 444
    .line 445
    iput-boolean v8, v0, Lcom/mycompany/app/web/WebNestView;->J:Z

    .line 446
    .line 447
    move v8, v2

    .line 448
    :cond_24
    sget-boolean v10, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 449
    .line 450
    if-eqz v10, :cond_25

    .line 451
    .line 452
    goto :goto_9

    .line 453
    :cond_25
    sget v10, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 454
    .line 455
    const/4 v11, 0x2

    .line 456
    and-int/2addr v10, v11

    .line 457
    if-ne v10, v11, :cond_26

    .line 458
    .line 459
    goto :goto_9

    .line 460
    :cond_26
    move v2, v4

    .line 461
    :goto_9
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebNestView;->W:Z

    .line 462
    .line 463
    if-eq v4, v2, :cond_27

    .line 464
    .line 465
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebNestView;->W:Z

    .line 466
    .line 467
    if-nez v9, :cond_27

    .line 468
    .line 469
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->m6(Ljava/lang/String;)Z

    .line 470
    .line 471
    .line 472
    move-result v9

    .line 473
    :cond_27
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->v1:Ljava/lang/String;

    .line 474
    .line 475
    iput-object v6, v0, Lcom/mycompany/app/web/WebNestView;->w1:Ljava/lang/String;

    .line 476
    .line 477
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebNestView;->x1:Z

    .line 478
    .line 479
    iput-boolean v9, v0, Lcom/mycompany/app/web/WebNestView;->y1:Z

    .line 480
    .line 481
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->z1:Z

    .line 482
    .line 483
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebNestView;->A1:Z

    .line 484
    .line 485
    iput-boolean v8, v0, Lcom/mycompany/app/web/WebNestView;->B1:Z

    .line 486
    .line 487
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 488
    .line 489
    if-nez v1, :cond_28

    .line 490
    .line 491
    :goto_a
    return-void

    .line 492
    :cond_28
    new-instance v2, Lcom/mycompany/app/web/WebNestView$3;

    .line 493
    .line 494
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$3;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    .line 499
    .line 500
    return-void
.end method
