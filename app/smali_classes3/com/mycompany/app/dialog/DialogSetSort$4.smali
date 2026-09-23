.class Lcom/mycompany/app/dialog/DialogSetSort$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetSort;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetSort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort$4;->c:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort$4;->c:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetSort;->b0:Landroid/content/Context;

    .line 4
    .line 5
    iget v1, p1, Lcom/mycompany/app/dialog/DialogSetSort;->c0:I

    .line 6
    .line 7
    iget v2, p1, Lcom/mycompany/app/dialog/DialogSetSort;->e0:I

    .line 8
    .line 9
    iget v3, p1, Lcom/mycompany/app/dialog/DialogSetSort;->f0:I

    .line 10
    .line 11
    iget-boolean v4, p1, Lcom/mycompany/app/dialog/DialogSetSort;->g0:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sput v3, Lcom/mycompany/app/pref/PrefList;->w:I

    .line 17
    .line 18
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->x:Z

    .line 19
    .line 20
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "mFileItem"

    .line 25
    .line 26
    sget v2, Lcom/mycompany/app/pref/PrefList;->w:I

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "mFileRvse"

    .line 32
    .line 33
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->x:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    const/4 v6, 0x1

    .line 44
    const-string v7, "mAlbumRvse"

    .line 45
    .line 46
    const-string v8, "mAlbumItem"

    .line 47
    .line 48
    const-string v9, "mAlbumFold2"

    .line 49
    .line 50
    if-ne v1, v6, :cond_1

    .line 51
    .line 52
    sput v2, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 53
    .line 54
    sput v3, Lcom/mycompany/app/pref/PrefList;->l:I

    .line 55
    .line 56
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->m:Z

    .line 57
    .line 58
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget v1, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 63
    .line 64
    invoke-virtual {v0, v1, v9}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget v1, Lcom/mycompany/app/pref/PrefList;->l:I

    .line 68
    .line 69
    invoke-virtual {v0, v1, v8}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->m:Z

    .line 73
    .line 74
    invoke-virtual {v0, v7, v1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_1
    const/4 v6, 0x2

    .line 83
    if-ne v1, v6, :cond_2

    .line 84
    .line 85
    sput v2, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 86
    .line 87
    sput v3, Lcom/mycompany/app/pref/PrefList;->l:I

    .line 88
    .line 89
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->m:Z

    .line 90
    .line 91
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget v1, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 96
    .line 97
    invoke-virtual {v0, v1, v9}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget v1, Lcom/mycompany/app/pref/PrefList;->l:I

    .line 101
    .line 102
    invoke-virtual {v0, v1, v8}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->m:Z

    .line 106
    .line 107
    invoke-virtual {v0, v7, v1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_2
    const/4 v6, 0x3

    .line 116
    if-ne v1, v6, :cond_3

    .line 117
    .line 118
    sput v2, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 119
    .line 120
    sput v3, Lcom/mycompany/app/pref/PrefList;->l:I

    .line 121
    .line 122
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->m:Z

    .line 123
    .line 124
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sget v1, Lcom/mycompany/app/pref/PrefList;->k:I

    .line 129
    .line 130
    invoke-virtual {v0, v1, v9}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget v1, Lcom/mycompany/app/pref/PrefList;->l:I

    .line 134
    .line 135
    invoke-virtual {v0, v1, v8}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->m:Z

    .line 139
    .line 140
    invoke-virtual {v0, v7, v1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_3
    const/16 v6, 0xd

    .line 149
    .line 150
    if-ne v1, v6, :cond_4

    .line 151
    .line 152
    sput v3, Lcom/mycompany/app/pref/PrefList;->s:I

    .line 153
    .line 154
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->t:Z

    .line 155
    .line 156
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "mCastItem"

    .line 161
    .line 162
    sget v2, Lcom/mycompany/app/pref/PrefList;->s:I

    .line 163
    .line 164
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v1, "mCastRvse"

    .line 168
    .line 169
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->t:Z

    .line 170
    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_4
    const/16 v6, 0xe

    .line 180
    .line 181
    const-string v7, "mBookAlbumRvse"

    .line 182
    .line 183
    const-string v8, "mBookAlbumItem"

    .line 184
    .line 185
    const-string v9, "mBookAlbumFold2"

    .line 186
    .line 187
    if-ne v1, v6, :cond_5

    .line 188
    .line 189
    sput v2, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 190
    .line 191
    sput v3, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 192
    .line 193
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->C:Z

    .line 194
    .line 195
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sget v1, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 200
    .line 201
    invoke-virtual {v0, v1, v9}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget v1, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 205
    .line 206
    invoke-virtual {v0, v1, v8}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->C:Z

    .line 210
    .line 211
    invoke-virtual {v0, v7, v1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_5
    const/16 v6, 0xf

    .line 220
    .line 221
    if-ne v1, v6, :cond_6

    .line 222
    .line 223
    sput v2, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 224
    .line 225
    sput v3, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 226
    .line 227
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->C:Z

    .line 228
    .line 229
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    sget v1, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 234
    .line 235
    invoke-virtual {v0, v1, v9}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    sget v1, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 239
    .line 240
    invoke-virtual {v0, v1, v8}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->C:Z

    .line 244
    .line 245
    invoke-virtual {v0, v7, v1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_6
    const/16 v6, 0x10

    .line 254
    .line 255
    if-ne v1, v6, :cond_7

    .line 256
    .line 257
    sput v2, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 258
    .line 259
    sput v3, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 260
    .line 261
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->C:Z

    .line 262
    .line 263
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    sget v1, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 268
    .line 269
    invoke-virtual {v0, v1, v9}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    sget v1, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 273
    .line 274
    invoke-virtual {v0, v1, v8}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->C:Z

    .line 278
    .line 279
    invoke-virtual {v0, v7, v1}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_7
    const/16 v6, 0x11

    .line 288
    .line 289
    if-ne v1, v6, :cond_8

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_8
    const/16 v6, 0x12

    .line 294
    .line 295
    if-ne v1, v6, :cond_9

    .line 296
    .line 297
    sput v2, Lcom/mycompany/app/pref/PrefList;->L:I

    .line 298
    .line 299
    sput v3, Lcom/mycompany/app/pref/PrefList;->M:I

    .line 300
    .line 301
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->N:Z

    .line 302
    .line 303
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    const-string v1, "mBookHistFold2"

    .line 308
    .line 309
    sget v2, Lcom/mycompany/app/pref/PrefList;->L:I

    .line 310
    .line 311
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string v1, "mBookHistItem"

    .line 315
    .line 316
    sget v2, Lcom/mycompany/app/pref/PrefList;->M:I

    .line 317
    .line 318
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v1, "mBookHistRvse"

    .line 322
    .line 323
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->N:Z

    .line 324
    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_9
    const/16 v6, 0x13

    .line 334
    .line 335
    if-ne v1, v6, :cond_a

    .line 336
    .line 337
    sput v2, Lcom/mycompany/app/pref/PrefList;->Q:I

    .line 338
    .line 339
    sput v3, Lcom/mycompany/app/pref/PrefList;->R:I

    .line 340
    .line 341
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->S:Z

    .line 342
    .line 343
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const-string v1, "mBookAdsFold"

    .line 348
    .line 349
    sget v2, Lcom/mycompany/app/pref/PrefList;->Q:I

    .line 350
    .line 351
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const-string v1, "mBookAdsItem"

    .line 355
    .line 356
    sget v2, Lcom/mycompany/app/pref/PrefList;->R:I

    .line 357
    .line 358
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v1, "mBookAdsRvse"

    .line 362
    .line 363
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->S:Z

    .line 364
    .line 365
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_a
    const/16 v6, 0x14

    .line 374
    .line 375
    if-ne v1, v6, :cond_b

    .line 376
    .line 377
    sput v2, Lcom/mycompany/app/pref/PrefList;->V:I

    .line 378
    .line 379
    sput v3, Lcom/mycompany/app/pref/PrefList;->W:I

    .line 380
    .line 381
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->X:Z

    .line 382
    .line 383
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    const-string v1, "mBookOverFold"

    .line 388
    .line 389
    sget v2, Lcom/mycompany/app/pref/PrefList;->V:I

    .line 390
    .line 391
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const-string v1, "mBookOverItem"

    .line 395
    .line 396
    sget v2, Lcom/mycompany/app/pref/PrefList;->W:I

    .line 397
    .line 398
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string v1, "mBookOverRvse"

    .line 402
    .line 403
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->X:Z

    .line 404
    .line 405
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :cond_b
    const/16 v6, 0x15

    .line 414
    .line 415
    if-ne v1, v6, :cond_c

    .line 416
    .line 417
    sput v2, Lcom/mycompany/app/pref/PrefList;->a0:I

    .line 418
    .line 419
    sput v3, Lcom/mycompany/app/pref/PrefList;->b0:I

    .line 420
    .line 421
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->c0:Z

    .line 422
    .line 423
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    const-string v1, "mBookPopFold"

    .line 428
    .line 429
    sget v2, Lcom/mycompany/app/pref/PrefList;->a0:I

    .line 430
    .line 431
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const-string v1, "mBookPopItem"

    .line 435
    .line 436
    sget v2, Lcom/mycompany/app/pref/PrefList;->b0:I

    .line 437
    .line 438
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const-string v1, "mBookPopRvse"

    .line 442
    .line 443
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->c0:Z

    .line 444
    .line 445
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_c
    const/16 v6, 0x16

    .line 454
    .line 455
    if-ne v1, v6, :cond_d

    .line 456
    .line 457
    sput v2, Lcom/mycompany/app/pref/PrefList;->f0:I

    .line 458
    .line 459
    sput v3, Lcom/mycompany/app/pref/PrefList;->g0:I

    .line 460
    .line 461
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->h0:Z

    .line 462
    .line 463
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    const-string v1, "mBookLinkFold"

    .line 468
    .line 469
    sget v2, Lcom/mycompany/app/pref/PrefList;->f0:I

    .line 470
    .line 471
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const-string v1, "mBookLinkItem"

    .line 475
    .line 476
    sget v2, Lcom/mycompany/app/pref/PrefList;->g0:I

    .line 477
    .line 478
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 479
    .line 480
    .line 481
    const-string v1, "mBookLinkRvse"

    .line 482
    .line 483
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->h0:Z

    .line 484
    .line 485
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 489
    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_d
    const/16 v6, 0x17

    .line 494
    .line 495
    if-ne v1, v6, :cond_e

    .line 496
    .line 497
    sput v2, Lcom/mycompany/app/pref/PrefList;->k0:I

    .line 498
    .line 499
    sput v3, Lcom/mycompany/app/pref/PrefList;->l0:I

    .line 500
    .line 501
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->m0:Z

    .line 502
    .line 503
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    const-string v1, "mBookBlockFold"

    .line 508
    .line 509
    sget v2, Lcom/mycompany/app/pref/PrefList;->k0:I

    .line 510
    .line 511
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 512
    .line 513
    .line 514
    const-string v1, "mBookBlockItem"

    .line 515
    .line 516
    sget v2, Lcom/mycompany/app/pref/PrefList;->l0:I

    .line 517
    .line 518
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 519
    .line 520
    .line 521
    const-string v1, "mBookBlockRvse"

    .line 522
    .line 523
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->m0:Z

    .line 524
    .line 525
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 529
    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :cond_e
    const/16 v6, 0x18

    .line 534
    .line 535
    if-ne v1, v6, :cond_f

    .line 536
    .line 537
    sput v2, Lcom/mycompany/app/pref/PrefList;->p0:I

    .line 538
    .line 539
    sput v3, Lcom/mycompany/app/pref/PrefList;->q0:I

    .line 540
    .line 541
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->r0:Z

    .line 542
    .line 543
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    const-string v1, "mBookDcFold"

    .line 548
    .line 549
    sget v2, Lcom/mycompany/app/pref/PrefList;->p0:I

    .line 550
    .line 551
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 552
    .line 553
    .line 554
    const-string v1, "mBookDcItem"

    .line 555
    .line 556
    sget v2, Lcom/mycompany/app/pref/PrefList;->q0:I

    .line 557
    .line 558
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 559
    .line 560
    .line 561
    const-string v1, "mBookDcRvse"

    .line 562
    .line 563
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->r0:Z

    .line 564
    .line 565
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_0

    .line 572
    .line 573
    :cond_f
    const/16 v6, 0x19

    .line 574
    .line 575
    if-ne v1, v6, :cond_10

    .line 576
    .line 577
    sput v3, Lcom/mycompany/app/pref/PrefList;->u0:I

    .line 578
    .line 579
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->v0:Z

    .line 580
    .line 581
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    const-string v1, "mBookFilterItem"

    .line 586
    .line 587
    sget v2, Lcom/mycompany/app/pref/PrefList;->u0:I

    .line 588
    .line 589
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 590
    .line 591
    .line 592
    const-string v1, "mBookFilterRvse"

    .line 593
    .line 594
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->v0:Z

    .line 595
    .line 596
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_0

    .line 603
    .line 604
    :cond_10
    const/16 v6, 0x1a

    .line 605
    .line 606
    if-ne v1, v6, :cond_11

    .line 607
    .line 608
    sput v2, Lcom/mycompany/app/pref/PrefList;->W0:I

    .line 609
    .line 610
    sput v3, Lcom/mycompany/app/pref/PrefList;->X0:I

    .line 611
    .line 612
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->Y0:Z

    .line 613
    .line 614
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    const-string v1, "mBookUserFold"

    .line 619
    .line 620
    sget v2, Lcom/mycompany/app/pref/PrefList;->W0:I

    .line 621
    .line 622
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 623
    .line 624
    .line 625
    const-string v1, "mBookUserItem"

    .line 626
    .line 627
    sget v2, Lcom/mycompany/app/pref/PrefList;->X0:I

    .line 628
    .line 629
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 630
    .line 631
    .line 632
    const-string v1, "mBookUserRvse"

    .line 633
    .line 634
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->Y0:Z

    .line 635
    .line 636
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_0

    .line 643
    .line 644
    :cond_11
    const/16 v6, 0x1b

    .line 645
    .line 646
    if-ne v1, v6, :cond_12

    .line 647
    .line 648
    sput v3, Lcom/mycompany/app/pref/PrefList;->D0:I

    .line 649
    .line 650
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->E0:Z

    .line 651
    .line 652
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    const-string v1, "mBookScrItem"

    .line 657
    .line 658
    sget v2, Lcom/mycompany/app/pref/PrefList;->D0:I

    .line 659
    .line 660
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 661
    .line 662
    .line 663
    const-string v1, "mBookScrRvse"

    .line 664
    .line 665
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->E0:Z

    .line 666
    .line 667
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 671
    .line 672
    .line 673
    goto/16 :goto_0

    .line 674
    .line 675
    :cond_12
    const/16 v6, 0x1c

    .line 676
    .line 677
    if-ne v1, v6, :cond_13

    .line 678
    .line 679
    sput v2, Lcom/mycompany/app/pref/PrefList;->y0:I

    .line 680
    .line 681
    sput v3, Lcom/mycompany/app/pref/PrefList;->z0:I

    .line 682
    .line 683
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->A0:Z

    .line 684
    .line 685
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    const-string v1, "mBookJavaFold"

    .line 690
    .line 691
    sget v2, Lcom/mycompany/app/pref/PrefList;->y0:I

    .line 692
    .line 693
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 694
    .line 695
    .line 696
    const-string v1, "mBookJavaItem"

    .line 697
    .line 698
    sget v2, Lcom/mycompany/app/pref/PrefList;->z0:I

    .line 699
    .line 700
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 701
    .line 702
    .line 703
    const-string v1, "mBookJavaRvse"

    .line 704
    .line 705
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->A0:Z

    .line 706
    .line 707
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_0

    .line 714
    .line 715
    :cond_13
    const/16 v6, 0x1d

    .line 716
    .line 717
    if-ne v1, v6, :cond_14

    .line 718
    .line 719
    sput v2, Lcom/mycompany/app/pref/PrefList;->H0:I

    .line 720
    .line 721
    sput v3, Lcom/mycompany/app/pref/PrefList;->I0:I

    .line 722
    .line 723
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->J0:Z

    .line 724
    .line 725
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    const-string v1, "mBookTmemFold"

    .line 730
    .line 731
    sget v2, Lcom/mycompany/app/pref/PrefList;->H0:I

    .line 732
    .line 733
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 734
    .line 735
    .line 736
    const-string v1, "mBookTmemItem"

    .line 737
    .line 738
    sget v2, Lcom/mycompany/app/pref/PrefList;->I0:I

    .line 739
    .line 740
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 741
    .line 742
    .line 743
    const-string v1, "mBookTmemRvse"

    .line 744
    .line 745
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->J0:Z

    .line 746
    .line 747
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_0

    .line 754
    .line 755
    :cond_14
    const/16 v6, 0x1e

    .line 756
    .line 757
    if-ne v1, v6, :cond_15

    .line 758
    .line 759
    sput v2, Lcom/mycompany/app/pref/PrefList;->M0:I

    .line 760
    .line 761
    sput v3, Lcom/mycompany/app/pref/PrefList;->N0:I

    .line 762
    .line 763
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->O0:Z

    .line 764
    .line 765
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    const-string v1, "mBookTransFold"

    .line 770
    .line 771
    sget v2, Lcom/mycompany/app/pref/PrefList;->M0:I

    .line 772
    .line 773
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 774
    .line 775
    .line 776
    const-string v1, "mBookTransItem"

    .line 777
    .line 778
    sget v2, Lcom/mycompany/app/pref/PrefList;->N0:I

    .line 779
    .line 780
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 781
    .line 782
    .line 783
    const-string v1, "mBookTransRvse"

    .line 784
    .line 785
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->O0:Z

    .line 786
    .line 787
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 791
    .line 792
    .line 793
    goto :goto_0

    .line 794
    :cond_15
    const/16 v6, 0x1f

    .line 795
    .line 796
    if-ne v1, v6, :cond_16

    .line 797
    .line 798
    sput v2, Lcom/mycompany/app/pref/PrefList;->R0:I

    .line 799
    .line 800
    sput v3, Lcom/mycompany/app/pref/PrefList;->S0:I

    .line 801
    .line 802
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->T0:Z

    .line 803
    .line 804
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    const-string v1, "mBookPmsFold"

    .line 809
    .line 810
    sget v2, Lcom/mycompany/app/pref/PrefList;->R0:I

    .line 811
    .line 812
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 813
    .line 814
    .line 815
    const-string v1, "mBookPmsItem"

    .line 816
    .line 817
    sget v2, Lcom/mycompany/app/pref/PrefList;->S0:I

    .line 818
    .line 819
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 820
    .line 821
    .line 822
    const-string v1, "mBookPmsRvse"

    .line 823
    .line 824
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->T0:Z

    .line 825
    .line 826
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 830
    .line 831
    .line 832
    goto :goto_0

    .line 833
    :cond_16
    const/16 v6, 0x20

    .line 834
    .line 835
    if-ne v1, v6, :cond_17

    .line 836
    .line 837
    sput v2, Lcom/mycompany/app/pref/PrefList;->a1:I

    .line 838
    .line 839
    sput v3, Lcom/mycompany/app/pref/PrefList;->b1:I

    .line 840
    .line 841
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->c1:Z

    .line 842
    .line 843
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    const-string v1, "mBookDownFold2"

    .line 848
    .line 849
    sget v2, Lcom/mycompany/app/pref/PrefList;->a1:I

    .line 850
    .line 851
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 852
    .line 853
    .line 854
    const-string v1, "mBookDownItem"

    .line 855
    .line 856
    sget v2, Lcom/mycompany/app/pref/PrefList;->b1:I

    .line 857
    .line 858
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 859
    .line 860
    .line 861
    const-string v1, "mBookDownRvse"

    .line 862
    .line 863
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->c1:Z

    .line 864
    .line 865
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 869
    .line 870
    .line 871
    goto :goto_0

    .line 872
    :cond_17
    const/16 v2, 0x2b

    .line 873
    .line 874
    if-ne v1, v2, :cond_18

    .line 875
    .line 876
    sput v3, Lcom/mycompany/app/pref/PrefList;->h1:I

    .line 877
    .line 878
    sput-boolean v4, Lcom/mycompany/app/pref/PrefList;->i1:Z

    .line 879
    .line 880
    invoke-static {v0, v5}, Lcom/mycompany/app/pref/PrefList;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefList;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    const-string v1, "mGdriveItem"

    .line 885
    .line 886
    sget v2, Lcom/mycompany/app/pref/PrefList;->h1:I

    .line 887
    .line 888
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 889
    .line 890
    .line 891
    const-string v1, "mGdriveRvse"

    .line 892
    .line 893
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->i1:Z

    .line 894
    .line 895
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 899
    .line 900
    .line 901
    :cond_18
    :goto_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetSort;->d0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 902
    .line 903
    if-eqz v0, :cond_19

    .line 904
    .line 905
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 906
    .line 907
    .line 908
    :cond_19
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetSort;->dismiss()V

    .line 909
    .line 910
    .line 911
    return-void
.end method
