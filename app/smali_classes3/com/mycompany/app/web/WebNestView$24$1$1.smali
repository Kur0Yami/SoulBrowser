.class Lcom/mycompany/app/web/WebNestView$24$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView$24$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView$24$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$24$1$1;->c:Lcom/mycompany/app/web/WebNestView$24$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView$24$1$1;->c:Lcom/mycompany/app/web/WebNestView$24$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestView$24$1;->a:Lcom/mycompany/app/web/WebNestView$24;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebNestView;->m2:Z

    .line 10
    .line 11
    iget-object v4, v2, Lcom/mycompany/app/web/WebNestView;->n2:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v2, Lcom/mycompany/app/web/WebNestView;->o2:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v6, v2, Lcom/mycompany/app/web/WebNestView;->p2:Ljava/lang/String;

    .line 16
    .line 17
    iget-boolean v7, v2, Lcom/mycompany/app/web/WebNestView;->q2:Z

    .line 18
    .line 19
    iget-boolean v8, v2, Lcom/mycompany/app/web/WebNestView;->r2:Z

    .line 20
    .line 21
    iget-object v9, v2, Lcom/mycompany/app/web/WebNestView;->s2:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    iput-boolean v10, v2, Lcom/mycompany/app/web/WebNestView;->m2:Z

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    iput-object v11, v2, Lcom/mycompany/app/web/WebNestView;->n2:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v11, v2, Lcom/mycompany/app/web/WebNestView;->o2:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v11, v2, Lcom/mycompany/app/web/WebNestView;->p2:Ljava/lang/String;

    .line 32
    .line 33
    iput-boolean v10, v2, Lcom/mycompany/app/web/WebNestView;->q2:Z

    .line 34
    .line 35
    iput-boolean v10, v2, Lcom/mycompany/app/web/WebNestView;->r2:Z

    .line 36
    .line 37
    iput-object v11, v2, Lcom/mycompany/app/web/WebNestView;->s2:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget-object v1, v1, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 46
    .line 47
    iput-boolean v10, v1, Lcom/mycompany/app/web/WebNestView;->c2:Z

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebNestView;->t()Lcom/mycompany/app/web/WebClean;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v12, " "

    .line 57
    .line 58
    const-string v13, "function myRemImg(cmd){var ele=document.querySelector(cmd);if(!ele)return;"

    .line 59
    .line 60
    const-string v14, "var par=ele.parentNode;if(par){var pa2=par.parentNode;"

    .line 61
    .line 62
    const-string v15, "while(pa2&&(pa2.tagName!=\'HTML\')&&(pa2.tagName!=\'BODY\')&&(pa2.childElementCount==1)){"

    .line 63
    .line 64
    const-string v10, "ele=par;par=pa2;pa2=pa2.parentNode;}"

    .line 65
    .line 66
    const-string v11, "if(pa2&&(pa2.tagName!=\'HTML\')&&(pa2.tagName!=\'BODY\')){ele=par;par=pa2;}"

    .line 67
    .line 68
    const-string v0, "par.removeChild(ele);}else{ele.style.display=\'none\';}}"

    .line 69
    .line 70
    move/from16 v17, v3

    .line 71
    .line 72
    const-string v3, ","

    .line 73
    .line 74
    move/from16 v18, v7

    .line 75
    .line 76
    const-string v7, "_rsv1"

    .line 77
    .line 78
    move/from16 v19, v8

    .line 79
    .line 80
    const-string v8, "})();"

    .line 81
    .line 82
    move-object/from16 v20, v5

    .line 83
    .line 84
    const-string v5, "(function(){"

    .line 85
    .line 86
    move-object/from16 v21, v12

    .line 87
    .line 88
    if-nez v17, :cond_17

    .line 89
    .line 90
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v17

    .line 94
    if-nez v17, :cond_17

    .line 95
    .line 96
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_17

    .line 101
    .line 102
    if-eqz v2, :cond_14

    .line 103
    .line 104
    iget-object v9, v1, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 105
    .line 106
    invoke-virtual {v2, v6}, Lcom/mycompany/app/web/WebClean;->i0(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v17

    .line 110
    if-eqz v17, :cond_b

    .line 111
    .line 112
    iget-object v12, v2, Lcom/mycompany/app/web/WebClean;->K:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v20

    .line 118
    if-nez v20, :cond_1

    .line 119
    .line 120
    invoke-static {v12}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    :goto_0
    move-object/from16 v22, v4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    const/4 v12, 0x0

    .line 128
    goto :goto_0

    .line 129
    :goto_1
    iget-object v4, v2, Lcom/mycompany/app/web/WebClean;->n:Ljava/util/List;

    .line 130
    .line 131
    move-object/from16 v20, v4

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    iput-object v4, v2, Lcom/mycompany/app/web/WebClean;->n:Ljava/util/List;

    .line 135
    .line 136
    if-eqz v20, :cond_6

    .line 137
    .line 138
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v16

    .line 142
    if-nez v16, :cond_6

    .line 143
    .line 144
    :try_start_0
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 152
    const/16 v16, 0x0

    .line 153
    .line 154
    :goto_2
    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v23

    .line 158
    if-eqz v23, :cond_5

    .line 159
    .line 160
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v23
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    move-object/from16 v24, v1

    .line 165
    .line 166
    :try_start_2
    move-object/from16 v1, v23

    .line 167
    .line 168
    check-cast v1, Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v23
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    if-eqz v23, :cond_2

    .line 175
    .line 176
    move-object/from16 v23, v9

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_2
    move-object/from16 v23, v9

    .line 180
    .line 181
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebClean;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v25

    .line 189
    if-eqz v25, :cond_3

    .line 190
    .line 191
    :goto_3
    move-object/from16 v9, v23

    .line 192
    .line 193
    move-object/from16 v1, v24

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v25

    .line 200
    if-eqz v25, :cond_4

    .line 201
    .line 202
    move-object/from16 v16, v9

    .line 203
    .line 204
    :cond_4
    invoke-static {v4, v1, v9, v7}, Lcom/mycompany/app/db/book/DbAdsCmd;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :catch_0
    :cond_5
    move-object/from16 v24, v1

    .line 209
    .line 210
    :catch_1
    move-object/from16 v23, v9

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :catch_2
    :cond_6
    move-object/from16 v24, v1

    .line 214
    .line 215
    move-object/from16 v23, v9

    .line 216
    .line 217
    const/16 v16, 0x0

    .line 218
    .line 219
    :catch_3
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_9

    .line 224
    .line 225
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_7

    .line 230
    .line 231
    invoke-virtual {v2, v6}, Lcom/mycompany/app/web/WebClean;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v16

    .line 235
    :cond_7
    move-object/from16 v1, v16

    .line 236
    .line 237
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-nez v4, :cond_9

    .line 242
    .line 243
    if-nez v12, :cond_8

    .line 244
    .line 245
    new-instance v12, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_8
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    :goto_5
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    :cond_9
    if-eqz v12, :cond_a

    .line 258
    .line 259
    const-string v1, "{var eles=document.querySelectorAll(\'"

    .line 260
    .line 261
    const/4 v3, 0x0

    .line 262
    invoke-virtual {v12, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v1, "\');if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var ele=eles[i];var par=ele.parentNode;if(par){par.removeChild(ele);}else{ele.style.display=\'none\';}}}}"

    .line 266
    .line 267
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    :cond_a
    move-object/from16 v16, v12

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_b
    move-object/from16 v24, v1

    .line 274
    .line 275
    move-object/from16 v22, v4

    .line 276
    .line 277
    move-object/from16 v23, v9

    .line 278
    .line 279
    const/16 v16, 0x0

    .line 280
    .line 281
    :goto_6
    iget-object v1, v2, Lcom/mycompany/app/web/WebClean;->L:Ljava/util/ArrayList;

    .line 282
    .line 283
    if-eqz v1, :cond_d

    .line 284
    .line 285
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-nez v3, :cond_d

    .line 290
    .line 291
    :try_start_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 295
    move-object/from16 v7, v16

    .line 296
    .line 297
    const/4 v4, 0x0

    .line 298
    :goto_7
    if-ge v4, v3, :cond_c

    .line 299
    .line 300
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    add-int/lit8 v4, v4, 0x1

    .line 305
    .line 306
    check-cast v9, Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {v7, v9}, Lcom/mycompany/app/web/WebClean;->y0(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 312
    goto :goto_7

    .line 313
    :catch_4
    :cond_c
    move-object/from16 v16, v7

    .line 314
    .line 315
    :catch_5
    const/4 v1, 0x1

    .line 316
    goto :goto_8

    .line 317
    :cond_d
    const/4 v1, 0x0

    .line 318
    :goto_8
    iget-object v3, v2, Lcom/mycompany/app/web/WebClean;->J:Ljava/util/List;

    .line 319
    .line 320
    if-nez v3, :cond_e

    .line 321
    .line 322
    :catch_6
    :goto_9
    const/4 v3, 0x0

    .line 323
    goto :goto_a

    .line 324
    :cond_e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-eqz v4, :cond_f

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_f
    :try_start_6
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 335
    :goto_a
    if-eqz v3, :cond_10

    .line 336
    .line 337
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/main/MainUtil;->O(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    move-result-object v16

    .line 341
    :cond_10
    move-object/from16 v3, v16

    .line 342
    .line 343
    if-nez v3, :cond_11

    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_11
    const-string v4, "if(window.sbfkey){android.onFndTag(window.sbfkey,window.sbfval);}"

    .line 347
    .line 348
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const/4 v4, 0x0

    .line 352
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v5, "if(!window.sbfkey||!window.sbfval){window.sbfkey=key;window.sbfval=val;}else{window.sbfkey+=\',\'+key;window.sbfval+=\',\'+val;}}"

    .line 359
    .line 360
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v5, "window.sbfkey=null;window.sbfval=null;function myFndTag(key,val){if(!key||!val)return;"

    .line 364
    .line 365
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    if-eqz v1, :cond_12

    .line 369
    .line 370
    invoke-virtual {v3, v4, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v4, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v4, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, v4, v15}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v4, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v4, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    :cond_12
    iget-object v0, v2, Lcom/mycompany/app/web/WebClean;->M:Ljava/util/List;

    .line 389
    .line 390
    if-eqz v0, :cond_13

    .line 391
    .line 392
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-nez v1, :cond_13

    .line 397
    .line 398
    move-object/from16 v1, v21

    .line 399
    .line 400
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    :try_start_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_13

    .line 412
    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 420
    .line 421
    .line 422
    goto :goto_b

    .line 423
    :catch_7
    :cond_13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    move-object/from16 v1, v23

    .line 428
    .line 429
    const/4 v2, 0x1

    .line 430
    invoke-static {v1, v0, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 431
    .line 432
    .line 433
    goto :goto_c

    .line 434
    :cond_14
    move-object/from16 v24, v1

    .line 435
    .line 436
    move-object/from16 v22, v4

    .line 437
    .line 438
    :goto_c
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->k6(Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_16

    .line 443
    .line 444
    move-object/from16 v4, v24

    .line 445
    .line 446
    iget-object v0, v4, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 447
    .line 448
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 449
    .line 450
    if-nez v1, :cond_15

    .line 451
    .line 452
    goto :goto_d

    .line 453
    :cond_15
    new-instance v2, Lcom/mycompany/app/web/WebNestView$25;

    .line 454
    .line 455
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$25;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 456
    .line 457
    .line 458
    const-wide/16 v7, 0x3e8

    .line 459
    .line 460
    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 461
    .line 462
    .line 463
    :goto_d
    move-object v2, v4

    .line 464
    move-object/from16 v4, v22

    .line 465
    .line 466
    goto/16 :goto_64

    .line 467
    .line 468
    :cond_16
    move-object/from16 v4, v22

    .line 469
    .line 470
    move-object/from16 v2, v24

    .line 471
    .line 472
    goto/16 :goto_64

    .line 473
    .line 474
    :cond_17
    move-object/from16 v22, v4

    .line 475
    .line 476
    move-object v4, v1

    .line 477
    move-object/from16 v1, v21

    .line 478
    .line 479
    if-eqz v2, :cond_b8

    .line 480
    .line 481
    iget-object v9, v4, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 482
    .line 483
    iget-object v12, v9, Lcom/mycompany/app/web/WebNestView;->r1:Ljava/lang/String;

    .line 484
    .line 485
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 486
    .line 487
    .line 488
    move-result v21

    .line 489
    if-eqz v21, :cond_18

    .line 490
    .line 491
    move-object/from16 v21, v1

    .line 492
    .line 493
    move-object/from16 v24, v4

    .line 494
    .line 495
    move-object/from16 v4, v22

    .line 496
    .line 497
    const/4 v1, 0x0

    .line 498
    goto :goto_e

    .line 499
    :cond_18
    move-object/from16 v21, v1

    .line 500
    .line 501
    move-object/from16 v24, v4

    .line 502
    .line 503
    move-object/from16 v4, v22

    .line 504
    .line 505
    invoke-virtual {v9, v4}, Lcom/mycompany/app/web/WebNestView;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 510
    .line 511
    .line 512
    move-result v22

    .line 513
    if-eqz v22, :cond_19

    .line 514
    .line 515
    const/4 v1, 0x1

    .line 516
    goto :goto_e

    .line 517
    :cond_19
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    :goto_e
    iget-boolean v12, v2, Lcom/mycompany/app/web/WebClean;->N:Z

    .line 522
    .line 523
    move/from16 v22, v1

    .line 524
    .line 525
    const-string v1, ""

    .line 526
    .line 527
    move/from16 v23, v12

    .line 528
    .line 529
    const-string v12, "div[class*=\"ad_box\"],"

    .line 530
    .line 531
    move-object/from16 v25, v13

    .line 532
    .line 533
    const-string v13, "ins[class*=\"adsbygoogle\"],ins[class*=\"adsbyadop\"],[id*=\"div-gpt-ad\"],amp-ad"

    .line 534
    .line 535
    move-object/from16 v26, v14

    .line 536
    .line 537
    const-string v14, "_ele"

    .line 538
    .line 539
    move-object/from16 v27, v15

    .line 540
    .line 541
    const-string v15, "_doc"

    .line 542
    .line 543
    if-eqz v23, :cond_3a

    .line 544
    .line 545
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_1a

    .line 550
    .line 551
    goto/16 :goto_26

    .line 552
    .line 553
    :cond_1a
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    if-eqz v0, :cond_31

    .line 558
    .line 559
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 560
    .line 561
    .line 562
    move-result v10

    .line 563
    if-eqz v10, :cond_1b

    .line 564
    .line 565
    goto/16 :goto_1e

    .line 566
    .line 567
    :cond_1b
    sget-object v10, Lcom/mycompany/app/db/book/DbAdsCmd;->c:Lcom/mycompany/app/db/book/DbAdsCmd;

    .line 568
    .line 569
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 570
    .line 571
    .line 572
    move-result v10

    .line 573
    if-eqz v10, :cond_1c

    .line 574
    .line 575
    :goto_f
    const/4 v7, 0x0

    .line 576
    goto/16 :goto_18

    .line 577
    .line 578
    :cond_1c
    const-string v10, "_rsv2"

    .line 579
    .line 580
    filled-new-array {v14, v15, v7, v10}, [Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v27

    .line 584
    const-string v28, "_host=?"

    .line 585
    .line 586
    filled-new-array {v6}, [Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v29

    .line 590
    :try_start_8
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbAdsCmd;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbAdsCmd;

    .line 591
    .line 592
    .line 593
    move-result-object v11

    .line 594
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 595
    .line 596
    .line 597
    move-result-object v25

    .line 598
    const-string v26, "DbAdsCmd_table"

    .line 599
    .line 600
    const/16 v30, 0x0

    .line 601
    .line 602
    invoke-static/range {v25 .. v30}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 603
    .line 604
    .line 605
    move-result-object v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 606
    if-eqz v11, :cond_1d

    .line 607
    .line 608
    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 609
    .line 610
    .line 611
    move-result v20

    .line 612
    if-eqz v20, :cond_1d

    .line 613
    .line 614
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 615
    .line 616
    .line 617
    move-result v14

    .line 618
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    move-result v7

    .line 622
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 623
    .line 624
    .line 625
    move-result v10

    .line 626
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 630
    :try_start_a
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 634
    :try_start_b
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 638
    :try_start_c
    sget-boolean v20, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 639
    .line 640
    if-eqz v20, :cond_1e

    .line 641
    .line 642
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 643
    .line 644
    .line 645
    move-result v15

    .line 646
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v15
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 650
    goto :goto_13

    .line 651
    :catch_8
    :goto_10
    const/4 v10, 0x0

    .line 652
    goto :goto_12

    .line 653
    :catch_9
    const/4 v7, 0x0

    .line 654
    goto :goto_10

    .line 655
    :catch_a
    const/4 v7, 0x0

    .line 656
    const/4 v10, 0x0

    .line 657
    goto :goto_11

    .line 658
    :cond_1d
    const/4 v7, 0x0

    .line 659
    const/4 v10, 0x0

    .line 660
    :goto_11
    const/4 v14, 0x0

    .line 661
    goto :goto_12

    .line 662
    :catch_b
    const/4 v7, 0x0

    .line 663
    const/4 v10, 0x0

    .line 664
    const/4 v11, 0x0

    .line 665
    goto :goto_11

    .line 666
    :catch_c
    :cond_1e
    :goto_12
    const/4 v15, 0x0

    .line 667
    :goto_13
    if-eqz v11, :cond_1f

    .line 668
    .line 669
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 670
    .line 671
    .line 672
    :cond_1f
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 673
    .line 674
    .line 675
    move-result v11

    .line 676
    if-nez v11, :cond_20

    .line 677
    .line 678
    invoke-static {v14}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    move-result-object v11

    .line 682
    goto :goto_14

    .line 683
    :cond_20
    const/4 v11, 0x0

    .line 684
    :goto_14
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 685
    .line 686
    .line 687
    move-result v14

    .line 688
    if-nez v14, :cond_22

    .line 689
    .line 690
    if-nez v11, :cond_21

    .line 691
    .line 692
    new-instance v11, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .line 696
    .line 697
    goto :goto_15

    .line 698
    :cond_21
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    :goto_15
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    :cond_22
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 705
    .line 706
    .line 707
    move-result v14

    .line 708
    if-nez v14, :cond_24

    .line 709
    .line 710
    if-nez v11, :cond_23

    .line 711
    .line 712
    new-instance v11, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .line 716
    .line 717
    goto :goto_16

    .line 718
    :cond_23
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    :goto_16
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    :cond_24
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 725
    .line 726
    .line 727
    move-result v7

    .line 728
    if-nez v7, :cond_26

    .line 729
    .line 730
    if-nez v11, :cond_25

    .line 731
    .line 732
    new-instance v11, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    goto :goto_17

    .line 738
    :cond_25
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    :goto_17
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    :cond_26
    if-nez v11, :cond_27

    .line 745
    .line 746
    goto/16 :goto_f

    .line 747
    .line 748
    :cond_27
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v7

    .line 752
    :goto_18
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 753
    .line 754
    .line 755
    move-result v10

    .line 756
    if-nez v10, :cond_2a

    .line 757
    .line 758
    invoke-static {v4, v6}, Lcom/mycompany/app/web/WebClean;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 759
    .line 760
    .line 761
    move-result v10

    .line 762
    if-eqz v10, :cond_29

    .line 763
    .line 764
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 765
    .line 766
    .line 767
    move-result v10

    .line 768
    if-eqz v10, :cond_28

    .line 769
    .line 770
    goto :goto_19

    .line 771
    :cond_28
    invoke-virtual {v7, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v7

    .line 775
    :cond_29
    :goto_19
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 776
    .line 777
    .line 778
    move-result v10

    .line 779
    if-nez v10, :cond_2a

    .line 780
    .line 781
    goto :goto_1f

    .line 782
    :cond_2a
    invoke-virtual {v2, v6}, Lcom/mycompany/app/web/WebClean;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 783
    .line 784
    .line 785
    move-result-object v7

    .line 786
    if-eqz v7, :cond_2f

    .line 787
    .line 788
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 789
    .line 790
    .line 791
    move-result v10

    .line 792
    if-nez v10, :cond_2f

    .line 793
    .line 794
    :try_start_d
    invoke-static {v4, v6}, Lcom/mycompany/app/web/WebClean;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 795
    .line 796
    .line 797
    move-result v10

    .line 798
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 799
    .line 800
    .line 801
    move-result v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 802
    const/4 v14, 0x0

    .line 803
    const/4 v15, 0x0

    .line 804
    :goto_1a
    if-ge v14, v11, :cond_30

    .line 805
    .line 806
    :try_start_e
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v20

    .line 810
    add-int/lit8 v14, v14, 0x1

    .line 811
    .line 812
    move-object/from16 v21, v7

    .line 813
    .line 814
    move-object/from16 v7, v20

    .line 815
    .line 816
    check-cast v7, Ljava/lang/String;

    .line 817
    .line 818
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 819
    .line 820
    .line 821
    move-result v20

    .line 822
    if-eqz v20, :cond_2b

    .line 823
    .line 824
    goto :goto_1c

    .line 825
    :cond_2b
    if-eqz v10, :cond_2d

    .line 826
    .line 827
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 828
    .line 829
    .line 830
    move-result v20

    .line 831
    if-eqz v20, :cond_2c

    .line 832
    .line 833
    goto :goto_1b

    .line 834
    :cond_2c
    invoke-virtual {v7, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v7

    .line 838
    :goto_1b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 839
    .line 840
    .line 841
    move-result v20

    .line 842
    if-eqz v20, :cond_2d

    .line 843
    .line 844
    :goto_1c
    move-object/from16 v7, v21

    .line 845
    .line 846
    goto :goto_1a

    .line 847
    :cond_2d
    if-nez v15, :cond_2e

    .line 848
    .line 849
    new-instance v20, Ljava/lang/StringBuilder;

    .line 850
    .line 851
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 852
    .line 853
    .line 854
    move-object/from16 v15, v20

    .line 855
    .line 856
    goto :goto_1d

    .line 857
    :cond_2e
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    :goto_1d
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 861
    .line 862
    .line 863
    goto :goto_1c

    .line 864
    :catch_d
    :cond_2f
    const/4 v15, 0x0

    .line 865
    :catch_e
    :cond_30
    if-nez v15, :cond_32

    .line 866
    .line 867
    :cond_31
    :goto_1e
    const/4 v7, 0x0

    .line 868
    goto :goto_1f

    .line 869
    :cond_32
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v7

    .line 873
    :goto_1f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 874
    .line 875
    .line 876
    move-result v1

    .line 877
    if-nez v1, :cond_33

    .line 878
    .line 879
    invoke-static {v7}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    move-result-object v11

    .line 883
    const/4 v1, 0x1

    .line 884
    goto :goto_20

    .line 885
    :cond_33
    const/4 v1, 0x0

    .line 886
    const/4 v11, 0x0

    .line 887
    :goto_20
    invoke-static {v0, v6}, Lcom/mycompany/app/db/book/DbBookUser;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v7

    .line 891
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 892
    .line 893
    .line 894
    move-result v10

    .line 895
    if-nez v10, :cond_35

    .line 896
    .line 897
    if-nez v11, :cond_34

    .line 898
    .line 899
    new-instance v11, Ljava/lang/StringBuilder;

    .line 900
    .line 901
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .line 903
    .line 904
    goto :goto_21

    .line 905
    :cond_34
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    :goto_21
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    add-int/lit8 v1, v1, 0x1

    .line 912
    .line 913
    :cond_35
    const-string v7, "noname"

    .line 914
    .line 915
    invoke-static {v0, v7}, Lcom/mycompany/app/db/book/DbBookUser;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 920
    .line 921
    .line 922
    move-result v7

    .line 923
    if-nez v7, :cond_37

    .line 924
    .line 925
    if-nez v11, :cond_36

    .line 926
    .line 927
    new-instance v11, Ljava/lang/StringBuilder;

    .line 928
    .line 929
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 930
    .line 931
    .line 932
    goto :goto_22

    .line 933
    :cond_36
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    :goto_22
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    add-int/lit8 v1, v1, 0x1

    .line 940
    .line 941
    :cond_37
    if-nez v11, :cond_38

    .line 942
    .line 943
    :goto_23
    const/4 v3, 0x0

    .line 944
    goto :goto_24

    .line 945
    :cond_38
    const-string v0, ",ins[class*=\"adsbygoogle\"],ins[class*=\"adsbyadop\"],[id*=\"div-gpt-ad\"],amp-ad"

    .line 946
    .line 947
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v13

    .line 954
    goto :goto_23

    .line 955
    :goto_24
    invoke-virtual {v2, v6, v13, v3}, Lcom/mycompany/app/web/WebClean;->g0(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 960
    .line 961
    .line 962
    move-result v2

    .line 963
    if-eqz v2, :cond_39

    .line 964
    .line 965
    goto :goto_25

    .line 966
    :cond_39
    const/4 v2, 0x1

    .line 967
    invoke-static {v9, v0, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 968
    .line 969
    .line 970
    :goto_25
    move-object v0, v5

    .line 971
    move-object v5, v8

    .line 972
    goto/16 :goto_62

    .line 973
    .line 974
    :cond_3a
    move-object/from16 v23, v10

    .line 975
    .line 976
    iget-object v10, v2, Lcom/mycompany/app/web/WebClean;->a:Lcom/mycompany/app/web/WebClean$WebCleanListener;

    .line 977
    .line 978
    if-nez v10, :cond_3b

    .line 979
    .line 980
    goto :goto_26

    .line 981
    :cond_3b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 982
    .line 983
    .line 984
    move-result v10

    .line 985
    if-eqz v10, :cond_3c

    .line 986
    .line 987
    :goto_26
    move-object v0, v5

    .line 988
    move-object v5, v8

    .line 989
    const/4 v1, 0x0

    .line 990
    goto/16 :goto_62

    .line 991
    .line 992
    :cond_3c
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 993
    .line 994
    .line 995
    move-result-object v10

    .line 996
    move-object/from16 v28, v11

    .line 997
    .line 998
    iget-object v11, v2, Lcom/mycompany/app/web/WebClean;->A:Ljava/util/ArrayList;

    .line 999
    .line 1000
    move-object/from16 v29, v0

    .line 1001
    .line 1002
    if-eqz v11, :cond_3f

    .line 1003
    .line 1004
    :try_start_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1005
    .line 1006
    .line 1007
    move-result v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    .line 1008
    move-object/from16 v31, v8

    .line 1009
    .line 1010
    const/4 v8, 0x0

    .line 1011
    :goto_27
    if-ge v8, v0, :cond_40

    .line 1012
    .line 1013
    :try_start_10
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v32

    .line 1017
    add-int/lit8 v8, v8, 0x1

    .line 1018
    .line 1019
    move/from16 v33, v0

    .line 1020
    .line 1021
    move-object/from16 v0, v32

    .line 1022
    .line 1023
    check-cast v0, Lcom/mycompany/app/web/WebClean$CmdItem;

    .line 1024
    .line 1025
    if-nez v0, :cond_3d

    .line 1026
    .line 1027
    :goto_28
    move/from16 v0, v33

    .line 1028
    .line 1029
    goto :goto_27

    .line 1030
    :cond_3d
    move/from16 v32, v8

    .line 1031
    .line 1032
    iget-object v8, v0, Lcom/mycompany/app/web/WebClean$CmdItem;->a:Ljava/lang/String;

    .line 1033
    .line 1034
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v8

    .line 1038
    if-eqz v8, :cond_3e

    .line 1039
    .line 1040
    iget-object v0, v0, Lcom/mycompany/app/web/WebClean$CmdItem;->b:Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    .line 1041
    .line 1042
    :catch_f
    move-object/from16 v32, v5

    .line 1043
    .line 1044
    goto/16 :goto_2c

    .line 1045
    .line 1046
    :cond_3e
    move/from16 v8, v32

    .line 1047
    .line 1048
    goto :goto_28

    .line 1049
    :catch_10
    :cond_3f
    move-object/from16 v31, v8

    .line 1050
    .line 1051
    :catch_11
    :cond_40
    iget-object v0, v2, Lcom/mycompany/app/web/WebClean;->B:Ljava/util/ArrayList;

    .line 1052
    .line 1053
    if-eqz v0, :cond_41

    .line 1054
    .line 1055
    :try_start_11
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    .line 1059
    if-eqz v0, :cond_41

    .line 1060
    .line 1061
    move-object/from16 v32, v5

    .line 1062
    .line 1063
    const/4 v0, 0x0

    .line 1064
    goto/16 :goto_2c

    .line 1065
    .line 1066
    :catch_12
    :cond_41
    invoke-virtual {v2, v6}, Lcom/mycompany/app/web/WebClean;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    if-eqz v0, :cond_42

    .line 1071
    .line 1072
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1073
    .line 1074
    .line 1075
    move-result v8

    .line 1076
    if-eqz v8, :cond_43

    .line 1077
    .line 1078
    :cond_42
    move-object/from16 v32, v5

    .line 1079
    .line 1080
    goto :goto_2b

    .line 1081
    :cond_43
    :try_start_12
    iget-object v8, v2, Lcom/mycompany/app/web/WebClean;->A:Ljava/util/ArrayList;

    .line 1082
    .line 1083
    if-nez v8, :cond_44

    .line 1084
    .line 1085
    new-instance v8, Ljava/util/ArrayList;

    .line 1086
    .line 1087
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    .line 1089
    .line 1090
    iput-object v8, v2, Lcom/mycompany/app/web/WebClean;->A:Ljava/util/ArrayList;

    .line 1091
    .line 1092
    move-object/from16 v32, v5

    .line 1093
    .line 1094
    goto :goto_2a

    .line 1095
    :cond_44
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1096
    .line 1097
    .line 1098
    move-result v11
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 1099
    move-object/from16 v32, v5

    .line 1100
    .line 1101
    const/4 v5, 0x0

    .line 1102
    :goto_29
    if-ge v5, v11, :cond_47

    .line 1103
    .line 1104
    :try_start_13
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v33

    .line 1108
    add-int/lit8 v5, v5, 0x1

    .line 1109
    .line 1110
    move/from16 v34, v5

    .line 1111
    .line 1112
    move-object/from16 v5, v33

    .line 1113
    .line 1114
    check-cast v5, Lcom/mycompany/app/web/WebClean$CmdItem;

    .line 1115
    .line 1116
    if-nez v5, :cond_46

    .line 1117
    .line 1118
    :cond_45
    move/from16 v5, v34

    .line 1119
    .line 1120
    goto :goto_29

    .line 1121
    :cond_46
    iget-object v5, v5, Lcom/mycompany/app/web/WebClean$CmdItem;->a:Ljava/lang/String;

    .line 1122
    .line 1123
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v5

    .line 1127
    if-eqz v5, :cond_45

    .line 1128
    .line 1129
    goto :goto_2c

    .line 1130
    :cond_47
    iget-object v5, v2, Lcom/mycompany/app/web/WebClean;->A:Ljava/util/ArrayList;

    .line 1131
    .line 1132
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1133
    .line 1134
    .line 1135
    move-result v5

    .line 1136
    const/16 v8, 0x14

    .line 1137
    .line 1138
    if-le v5, v8, :cond_48

    .line 1139
    .line 1140
    iget-object v5, v2, Lcom/mycompany/app/web/WebClean;->A:Ljava/util/ArrayList;

    .line 1141
    .line 1142
    const/4 v8, 0x0

    .line 1143
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    :cond_48
    :goto_2a
    new-instance v5, Lcom/mycompany/app/web/WebClean$CmdItem;

    .line 1147
    .line 1148
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1149
    .line 1150
    .line 1151
    iput-object v6, v5, Lcom/mycompany/app/web/WebClean$CmdItem;->a:Ljava/lang/String;

    .line 1152
    .line 1153
    iput-object v0, v5, Lcom/mycompany/app/web/WebClean$CmdItem;->b:Ljava/util/List;

    .line 1154
    .line 1155
    iget-object v8, v2, Lcom/mycompany/app/web/WebClean;->A:Ljava/util/ArrayList;

    .line 1156
    .line 1157
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 1158
    .line 1159
    .line 1160
    goto :goto_2c

    .line 1161
    :goto_2b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v5

    .line 1165
    if-eqz v5, :cond_49

    .line 1166
    .line 1167
    goto :goto_2c

    .line 1168
    :cond_49
    :try_start_14
    iget-object v5, v2, Lcom/mycompany/app/web/WebClean;->B:Ljava/util/ArrayList;

    .line 1169
    .line 1170
    if-nez v5, :cond_4a

    .line 1171
    .line 1172
    new-instance v5, Ljava/util/ArrayList;

    .line 1173
    .line 1174
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .line 1176
    .line 1177
    iput-object v5, v2, Lcom/mycompany/app/web/WebClean;->B:Ljava/util/ArrayList;

    .line 1178
    .line 1179
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    goto :goto_2c

    .line 1183
    :cond_4a
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v5

    .line 1187
    if-nez v5, :cond_4b

    .line 1188
    .line 1189
    iget-object v5, v2, Lcom/mycompany/app/web/WebClean;->B:Ljava/util/ArrayList;

    .line 1190
    .line 1191
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    :cond_4b
    iget-object v5, v2, Lcom/mycompany/app/web/WebClean;->B:Ljava/util/ArrayList;

    .line 1195
    .line 1196
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1197
    .line 1198
    .line 1199
    move-result v5

    .line 1200
    const/16 v8, 0x14

    .line 1201
    .line 1202
    if-le v5, v8, :cond_4c

    .line 1203
    .line 1204
    iget-object v5, v2, Lcom/mycompany/app/web/WebClean;->B:Ljava/util/ArrayList;

    .line 1205
    .line 1206
    const/4 v8, 0x0

    .line 1207
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    .line 1208
    .line 1209
    .line 1210
    :catch_13
    :cond_4c
    :goto_2c
    if-eqz v0, :cond_51

    .line 1211
    .line 1212
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1213
    .line 1214
    .line 1215
    move-result v5

    .line 1216
    if-nez v5, :cond_51

    .line 1217
    .line 1218
    :try_start_15
    invoke-static {v4, v6}, Lcom/mycompany/app/web/WebClean;->a0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v5

    .line 1222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14

    .line 1226
    const/4 v8, 0x0

    .line 1227
    const/4 v11, 0x0

    .line 1228
    :goto_2d
    :try_start_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v33

    .line 1232
    if-eqz v33, :cond_52

    .line 1233
    .line 1234
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v33

    .line 1238
    move-object/from16 v34, v0

    .line 1239
    .line 1240
    move-object/from16 v0, v33

    .line 1241
    .line 1242
    check-cast v0, Ljava/lang/String;

    .line 1243
    .line 1244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v33

    .line 1248
    if-eqz v33, :cond_4d

    .line 1249
    .line 1250
    goto :goto_2f

    .line 1251
    :cond_4d
    if-eqz v5, :cond_4f

    .line 1252
    .line 1253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v33

    .line 1257
    if-eqz v33, :cond_4e

    .line 1258
    .line 1259
    goto :goto_2e

    .line 1260
    :cond_4e
    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    :goto_2e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1265
    .line 1266
    .line 1267
    move-result v33

    .line 1268
    if-eqz v33, :cond_4f

    .line 1269
    .line 1270
    :goto_2f
    move-object/from16 v0, v34

    .line 1271
    .line 1272
    goto :goto_2d

    .line 1273
    :cond_4f
    if-nez v11, :cond_50

    .line 1274
    .line 1275
    new-instance v33, Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 1278
    .line 1279
    .line 1280
    move-object/from16 v11, v33

    .line 1281
    .line 1282
    goto :goto_30

    .line 1283
    :cond_50
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    .line 1285
    .line 1286
    :goto_30
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15

    .line 1287
    .line 1288
    .line 1289
    add-int/lit8 v8, v8, 0x1

    .line 1290
    .line 1291
    goto :goto_2f

    .line 1292
    :catch_14
    :cond_51
    const/4 v8, 0x0

    .line 1293
    const/4 v11, 0x0

    .line 1294
    :catch_15
    :cond_52
    iget-object v0, v2, Lcom/mycompany/app/web/WebClean;->l:Ljava/lang/String;

    .line 1295
    .line 1296
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v0

    .line 1300
    if-nez v0, :cond_54

    .line 1301
    .line 1302
    iput-object v6, v2, Lcom/mycompany/app/web/WebClean;->l:Ljava/lang/String;

    .line 1303
    .line 1304
    if-eqz v11, :cond_53

    .line 1305
    .line 1306
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    goto :goto_31

    .line 1311
    :cond_53
    const/4 v0, 0x0

    .line 1312
    :goto_31
    invoke-static {v10, v6, v0, v14}, Lcom/mycompany/app/db/book/DbAdsCmd;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    .line 1314
    .line 1315
    :cond_54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-eqz v0, :cond_56

    .line 1320
    .line 1321
    :catch_16
    :cond_55
    :goto_32
    const/4 v0, 0x0

    .line 1322
    goto :goto_34

    .line 1323
    :cond_56
    iget-object v0, v2, Lcom/mycompany/app/web/WebClean;->D:Ljava/util/ArrayList;

    .line 1324
    .line 1325
    if-eqz v0, :cond_55

    .line 1326
    .line 1327
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1328
    .line 1329
    .line 1330
    move-result v1

    .line 1331
    if-eqz v1, :cond_57

    .line 1332
    .line 1333
    goto :goto_32

    .line 1334
    :cond_57
    :try_start_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1335
    .line 1336
    .line 1337
    move-result v1

    .line 1338
    const/4 v5, 0x0

    .line 1339
    :cond_58
    :goto_33
    if-ge v5, v1, :cond_55

    .line 1340
    .line 1341
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v12

    .line 1345
    add-int/lit8 v5, v5, 0x1

    .line 1346
    .line 1347
    check-cast v12, Lcom/mycompany/app/web/WebClean$CmdItem;

    .line 1348
    .line 1349
    if-nez v12, :cond_59

    .line 1350
    .line 1351
    goto :goto_33

    .line 1352
    :cond_59
    iget-object v14, v12, Lcom/mycompany/app/web/WebClean$CmdItem;->a:Ljava/lang/String;

    .line 1353
    .line 1354
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1355
    .line 1356
    .line 1357
    move-result v14

    .line 1358
    if-eqz v14, :cond_58

    .line 1359
    .line 1360
    iget-object v0, v12, Lcom/mycompany/app/web/WebClean$CmdItem;->b:Ljava/util/List;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16

    .line 1361
    .line 1362
    :goto_34
    if-eqz v0, :cond_5c

    .line 1363
    .line 1364
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1365
    .line 1366
    .line 1367
    move-result v1

    .line 1368
    if-nez v1, :cond_5c

    .line 1369
    .line 1370
    :try_start_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1375
    .line 1376
    .line 1377
    move-result v1

    .line 1378
    if-eqz v1, :cond_5c

    .line 1379
    .line 1380
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v1

    .line 1384
    check-cast v1, Ljava/lang/String;

    .line 1385
    .line 1386
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v5

    .line 1390
    if-eqz v5, :cond_5a

    .line 1391
    .line 1392
    goto :goto_35

    .line 1393
    :cond_5a
    if-nez v11, :cond_5b

    .line 1394
    .line 1395
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1396
    .line 1397
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1398
    .line 1399
    .line 1400
    move-object v11, v5

    .line 1401
    goto :goto_36

    .line 1402
    :cond_5b
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    .line 1404
    .line 1405
    :goto_36
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17

    .line 1406
    .line 1407
    .line 1408
    add-int/lit8 v8, v8, 0x1

    .line 1409
    .line 1410
    goto :goto_35

    .line 1411
    :catch_17
    :cond_5c
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 1412
    .line 1413
    if-eqz v0, :cond_61

    .line 1414
    .line 1415
    invoke-virtual {v2, v6}, Lcom/mycompany/app/web/WebClean;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v0

    .line 1419
    if-eqz v0, :cond_5f

    .line 1420
    .line 1421
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1422
    .line 1423
    .line 1424
    move-result v1

    .line 1425
    if-nez v1, :cond_5f

    .line 1426
    .line 1427
    :try_start_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1428
    .line 1429
    .line 1430
    move-result v1

    .line 1431
    const/4 v5, 0x0

    .line 1432
    :goto_37
    if-ge v5, v1, :cond_5f

    .line 1433
    .line 1434
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v12

    .line 1438
    add-int/lit8 v5, v5, 0x1

    .line 1439
    .line 1440
    check-cast v12, Ljava/lang/String;

    .line 1441
    .line 1442
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v14

    .line 1446
    if-eqz v14, :cond_5d

    .line 1447
    .line 1448
    goto :goto_37

    .line 1449
    :cond_5d
    if-nez v11, :cond_5e

    .line 1450
    .line 1451
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1454
    .line 1455
    .line 1456
    move-object v11, v14

    .line 1457
    goto :goto_38

    .line 1458
    :cond_5e
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    .line 1460
    .line 1461
    :goto_38
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18

    .line 1462
    .line 1463
    .line 1464
    add-int/lit8 v8, v8, 0x1

    .line 1465
    .line 1466
    goto :goto_37

    .line 1467
    :catch_18
    :cond_5f
    if-nez v22, :cond_61

    .line 1468
    .line 1469
    invoke-static {v10, v6, v15}, Lcom/mycompany/app/db/book/DbAdsCmd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v0

    .line 1473
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v1

    .line 1477
    if-nez v1, :cond_61

    .line 1478
    .line 1479
    if-nez v11, :cond_60

    .line 1480
    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1484
    .line 1485
    .line 1486
    move-object v11, v1

    .line 1487
    goto :goto_39

    .line 1488
    :cond_60
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    .line 1491
    :goto_39
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    .line 1494
    add-int/lit8 v8, v8, 0x1

    .line 1495
    .line 1496
    :cond_61
    invoke-virtual {v2, v6}, Lcom/mycompany/app/web/WebClean;->l(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    if-eqz v0, :cond_65

    .line 1501
    .line 1502
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1503
    .line 1504
    .line 1505
    move-result v1

    .line 1506
    if-nez v1, :cond_65

    .line 1507
    .line 1508
    :try_start_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1509
    .line 1510
    .line 1511
    move-result v1

    .line 1512
    const/4 v5, 0x0

    .line 1513
    :goto_3a
    if-ge v5, v1, :cond_64

    .line 1514
    .line 1515
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v7

    .line 1519
    add-int/lit8 v5, v5, 0x1

    .line 1520
    .line 1521
    check-cast v7, Ljava/lang/String;

    .line 1522
    .line 1523
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1524
    .line 1525
    .line 1526
    move-result v12

    .line 1527
    if-eqz v12, :cond_62

    .line 1528
    .line 1529
    goto :goto_3a

    .line 1530
    :cond_62
    if-nez v11, :cond_63

    .line 1531
    .line 1532
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1535
    .line 1536
    .line 1537
    move-object v11, v12

    .line 1538
    goto :goto_3b

    .line 1539
    :cond_63
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    :goto_3b
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_19

    .line 1543
    .line 1544
    .line 1545
    goto :goto_3a

    .line 1546
    :catch_19
    :cond_64
    :goto_3c
    add-int/lit8 v8, v8, 0x1

    .line 1547
    .line 1548
    goto :goto_3e

    .line 1549
    :cond_65
    invoke-static {v10, v6, v7}, Lcom/mycompany/app/db/book/DbAdsCmd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v0

    .line 1553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1554
    .line 1555
    .line 1556
    move-result v1

    .line 1557
    if-nez v1, :cond_67

    .line 1558
    .line 1559
    if-nez v11, :cond_66

    .line 1560
    .line 1561
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1564
    .line 1565
    .line 1566
    goto :goto_3d

    .line 1567
    :cond_66
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    .line 1569
    .line 1570
    :goto_3d
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    .line 1572
    .line 1573
    goto :goto_3c

    .line 1574
    :cond_67
    :goto_3e
    invoke-virtual {v2, v6}, Lcom/mycompany/app/web/WebClean;->n(Ljava/lang/String;)Ljava/util/List;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v0

    .line 1578
    if-eqz v0, :cond_68

    .line 1579
    .line 1580
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1581
    .line 1582
    .line 1583
    move-result v1

    .line 1584
    if-eqz v1, :cond_69

    .line 1585
    .line 1586
    :cond_68
    invoke-virtual {v2, v10, v6}, Lcom/mycompany/app/web/WebClean;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v0

    .line 1590
    :cond_69
    if-eqz v0, :cond_6c

    .line 1591
    .line 1592
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1593
    .line 1594
    .line 1595
    move-result v1

    .line 1596
    if-nez v1, :cond_6c

    .line 1597
    .line 1598
    :try_start_1b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v0

    .line 1602
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1603
    .line 1604
    .line 1605
    move-result v1

    .line 1606
    if-eqz v1, :cond_6c

    .line 1607
    .line 1608
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v1

    .line 1612
    check-cast v1, Ljava/lang/String;

    .line 1613
    .line 1614
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v5

    .line 1618
    if-eqz v5, :cond_6a

    .line 1619
    .line 1620
    goto :goto_3f

    .line 1621
    :cond_6a
    if-nez v11, :cond_6b

    .line 1622
    .line 1623
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1624
    .line 1625
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1626
    .line 1627
    .line 1628
    move-object v11, v5

    .line 1629
    goto :goto_40

    .line 1630
    :cond_6b
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    .line 1632
    .line 1633
    :goto_40
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1a

    .line 1634
    .line 1635
    .line 1636
    add-int/lit8 v8, v8, 0x1

    .line 1637
    .line 1638
    goto :goto_3f

    .line 1639
    :catch_1a
    :cond_6c
    if-nez v11, :cond_6d

    .line 1640
    .line 1641
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1644
    .line 1645
    .line 1646
    goto :goto_41

    .line 1647
    :cond_6d
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    .line 1649
    .line 1650
    :goto_41
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v0

    .line 1657
    iput-object v0, v2, Lcom/mycompany/app/web/WebClean;->K:Ljava/lang/String;

    .line 1658
    .line 1659
    const/4 v1, 0x1

    .line 1660
    invoke-virtual {v2, v6, v0, v1}, Lcom/mycompany/app/web/WebClean;->g0(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v0

    .line 1664
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v5

    .line 1668
    if-nez v5, :cond_6e

    .line 1669
    .line 1670
    invoke-static {v9, v0, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 1671
    .line 1672
    .line 1673
    :cond_6e
    iget-object v0, v2, Lcom/mycompany/app/web/WebClean;->E:Ljava/util/HashMap;

    .line 1674
    .line 1675
    if-eqz v0, :cond_70

    .line 1676
    .line 1677
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 1678
    .line 1679
    .line 1680
    move-result v0

    .line 1681
    if-eqz v0, :cond_6f

    .line 1682
    .line 1683
    goto :goto_42

    .line 1684
    :cond_6f
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v0

    .line 1688
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1689
    .line 1690
    .line 1691
    move-result v1

    .line 1692
    if-eqz v1, :cond_71

    .line 1693
    .line 1694
    :cond_70
    :goto_42
    const/4 v1, 0x0

    .line 1695
    goto/16 :goto_48

    .line 1696
    .line 1697
    :cond_71
    iget-object v1, v2, Lcom/mycompany/app/web/WebClean;->E:Ljava/util/HashMap;

    .line 1698
    .line 1699
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v0

    .line 1703
    check-cast v0, Ljava/util/List;

    .line 1704
    .line 1705
    if-eqz v0, :cond_76

    .line 1706
    .line 1707
    :try_start_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1711
    const/4 v1, 0x0

    .line 1712
    :cond_72
    :goto_43
    :try_start_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1713
    .line 1714
    .line 1715
    move-result v5

    .line 1716
    if-eqz v5, :cond_77

    .line 1717
    .line 1718
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v5

    .line 1722
    check-cast v5, Ljava/lang/String;

    .line 1723
    .line 1724
    if-nez v5, :cond_73

    .line 1725
    .line 1726
    goto :goto_43

    .line 1727
    :cond_73
    invoke-static {v5}, Lcom/mycompany/app/web/WebClean;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v5

    .line 1731
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1732
    .line 1733
    .line 1734
    move-result v7

    .line 1735
    if-eqz v7, :cond_74

    .line 1736
    .line 1737
    goto :goto_43

    .line 1738
    :cond_74
    if-nez v1, :cond_75

    .line 1739
    .line 1740
    new-instance v7, Ljava/util/ArrayList;

    .line 1741
    .line 1742
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 1743
    .line 1744
    .line 1745
    :try_start_1e
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1b

    .line 1746
    .line 1747
    .line 1748
    move-object v1, v7

    .line 1749
    goto :goto_43

    .line 1750
    :catch_1b
    move-object v1, v7

    .line 1751
    goto :goto_44

    .line 1752
    :cond_75
    :try_start_1f
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1753
    .line 1754
    .line 1755
    move-result v7

    .line 1756
    if-nez v7, :cond_72

    .line 1757
    .line 1758
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1d

    .line 1759
    .line 1760
    .line 1761
    goto :goto_43

    .line 1762
    :catch_1c
    :cond_76
    const/4 v1, 0x0

    .line 1763
    :catch_1d
    :cond_77
    :goto_44
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1764
    .line 1765
    .line 1766
    move-result v0

    .line 1767
    if-eqz v0, :cond_78

    .line 1768
    .line 1769
    goto/16 :goto_48

    .line 1770
    .line 1771
    :cond_78
    iget-object v0, v2, Lcom/mycompany/app/web/WebClean;->E:Ljava/util/HashMap;

    .line 1772
    .line 1773
    move-object/from16 v5, v20

    .line 1774
    .line 1775
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v0

    .line 1779
    check-cast v0, Ljava/util/List;

    .line 1780
    .line 1781
    if-eqz v0, :cond_7d

    .line 1782
    .line 1783
    :try_start_20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v0

    .line 1787
    :cond_79
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1788
    .line 1789
    .line 1790
    move-result v7

    .line 1791
    if-eqz v7, :cond_7d

    .line 1792
    .line 1793
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v7

    .line 1797
    check-cast v7, Ljava/lang/String;

    .line 1798
    .line 1799
    if-nez v7, :cond_7a

    .line 1800
    .line 1801
    goto :goto_45

    .line 1802
    :cond_7a
    invoke-static {v7}, Lcom/mycompany/app/web/WebClean;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v7

    .line 1806
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1807
    .line 1808
    .line 1809
    move-result v10

    .line 1810
    if-eqz v10, :cond_7b

    .line 1811
    .line 1812
    goto :goto_45

    .line 1813
    :cond_7b
    if-nez v1, :cond_7c

    .line 1814
    .line 1815
    new-instance v10, Ljava/util/ArrayList;

    .line 1816
    .line 1817
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1f

    .line 1818
    .line 1819
    .line 1820
    :try_start_21
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1e

    .line 1821
    .line 1822
    .line 1823
    move-object v1, v10

    .line 1824
    goto :goto_45

    .line 1825
    :catch_1e
    move-object v1, v10

    .line 1826
    goto :goto_46

    .line 1827
    :cond_7c
    :try_start_22
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1828
    .line 1829
    .line 1830
    move-result v10

    .line 1831
    if-nez v10, :cond_79

    .line 1832
    .line 1833
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1f

    .line 1834
    .line 1835
    .line 1836
    goto :goto_45

    .line 1837
    :catch_1f
    :cond_7d
    :goto_46
    iget-object v0, v2, Lcom/mycompany/app/web/WebClean;->F:Ljava/util/HashMap;

    .line 1838
    .line 1839
    if-eqz v0, :cond_84

    .line 1840
    .line 1841
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 1842
    .line 1843
    .line 1844
    move-result v0

    .line 1845
    if-eqz v0, :cond_7e

    .line 1846
    .line 1847
    goto :goto_48

    .line 1848
    :cond_7e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1849
    .line 1850
    .line 1851
    move-result v0

    .line 1852
    if-nez v0, :cond_84

    .line 1853
    .line 1854
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1855
    .line 1856
    .line 1857
    move-result v0

    .line 1858
    if-eqz v0, :cond_7f

    .line 1859
    .line 1860
    goto :goto_48

    .line 1861
    :cond_7f
    iget-object v0, v2, Lcom/mycompany/app/web/WebClean;->F:Ljava/util/HashMap;

    .line 1862
    .line 1863
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v0

    .line 1867
    check-cast v0, Ljava/util/List;

    .line 1868
    .line 1869
    if-eqz v0, :cond_84

    .line 1870
    .line 1871
    :try_start_23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v0

    .line 1875
    :cond_80
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1876
    .line 1877
    .line 1878
    move-result v5

    .line 1879
    if-eqz v5, :cond_84

    .line 1880
    .line 1881
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v5

    .line 1885
    check-cast v5, Ljava/lang/String;

    .line 1886
    .line 1887
    if-nez v5, :cond_81

    .line 1888
    .line 1889
    goto :goto_47

    .line 1890
    :cond_81
    invoke-static {v5}, Lcom/mycompany/app/web/WebClean;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v5

    .line 1894
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1895
    .line 1896
    .line 1897
    move-result v7

    .line 1898
    if-eqz v7, :cond_82

    .line 1899
    .line 1900
    goto :goto_47

    .line 1901
    :cond_82
    if-nez v1, :cond_83

    .line 1902
    .line 1903
    new-instance v7, Ljava/util/ArrayList;

    .line 1904
    .line 1905
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_21

    .line 1906
    .line 1907
    .line 1908
    :try_start_24
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_20

    .line 1909
    .line 1910
    .line 1911
    move-object v1, v7

    .line 1912
    goto :goto_47

    .line 1913
    :catch_20
    move-object v1, v7

    .line 1914
    goto :goto_48

    .line 1915
    :cond_83
    :try_start_25
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1916
    .line 1917
    .line 1918
    move-result v7

    .line 1919
    if-nez v7, :cond_80

    .line 1920
    .line 1921
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_21

    .line 1922
    .line 1923
    .line 1924
    goto :goto_47

    .line 1925
    :catch_21
    :cond_84
    :goto_48
    if-eqz v1, :cond_89

    .line 1926
    .line 1927
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1928
    .line 1929
    .line 1930
    move-result v0

    .line 1931
    if-eqz v0, :cond_85

    .line 1932
    .line 1933
    goto :goto_4a

    .line 1934
    :cond_85
    :try_start_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1935
    .line 1936
    .line 1937
    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_22

    .line 1938
    const/4 v5, 0x0

    .line 1939
    const/4 v7, 0x0

    .line 1940
    :goto_49
    if-ge v5, v0, :cond_8a

    .line 1941
    .line 1942
    :try_start_27
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v10

    .line 1946
    add-int/lit8 v5, v5, 0x1

    .line 1947
    .line 1948
    check-cast v10, Ljava/lang/String;

    .line 1949
    .line 1950
    if-nez v10, :cond_86

    .line 1951
    .line 1952
    goto :goto_49

    .line 1953
    :cond_86
    invoke-static {v10}, Lcom/mycompany/app/web/WebClean;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v10

    .line 1957
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1958
    .line 1959
    .line 1960
    move-result v11

    .line 1961
    if-eqz v11, :cond_87

    .line 1962
    .line 1963
    goto :goto_49

    .line 1964
    :cond_87
    if-nez v7, :cond_88

    .line 1965
    .line 1966
    new-instance v11, Ljava/util/ArrayList;

    .line 1967
    .line 1968
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    .line 1970
    .line 1971
    move-object v7, v11

    .line 1972
    :cond_88
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_23

    .line 1973
    .line 1974
    .line 1975
    goto :goto_49

    .line 1976
    :catch_22
    :cond_89
    :goto_4a
    const/4 v7, 0x0

    .line 1977
    :catch_23
    :cond_8a
    iput-object v7, v2, Lcom/mycompany/app/web/WebClean;->L:Ljava/util/ArrayList;

    .line 1978
    .line 1979
    if-eqz v7, :cond_8b

    .line 1980
    .line 1981
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 1982
    .line 1983
    .line 1984
    move-result v0

    .line 1985
    if-eqz v0, :cond_8c

    .line 1986
    .line 1987
    :cond_8b
    :goto_4b
    move-object/from16 v5, v31

    .line 1988
    .line 1989
    move-object/from16 v0, v32

    .line 1990
    .line 1991
    goto/16 :goto_4f

    .line 1992
    .line 1993
    :cond_8c
    :try_start_28
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1994
    .line 1995
    .line 1996
    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_24

    .line 1997
    const/4 v1, 0x0

    .line 1998
    const/4 v5, 0x0

    .line 1999
    :goto_4c
    if-ge v1, v0, :cond_8f

    .line 2000
    .line 2001
    :try_start_29
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v10

    .line 2005
    add-int/lit8 v1, v1, 0x1

    .line 2006
    .line 2007
    check-cast v10, Ljava/lang/String;

    .line 2008
    .line 2009
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2010
    .line 2011
    .line 2012
    move-result v11

    .line 2013
    if-eqz v11, :cond_8d

    .line 2014
    .line 2015
    goto :goto_4c

    .line 2016
    :cond_8d
    if-nez v5, :cond_8e

    .line 2017
    .line 2018
    new-instance v11, Ljava/lang/StringBuilder;

    .line 2019
    .line 2020
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2021
    .line 2022
    .line 2023
    move-object v5, v11

    .line 2024
    goto :goto_4d

    .line 2025
    :cond_8e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    .line 2027
    .line 2028
    :goto_4d
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_25

    .line 2029
    .line 2030
    .line 2031
    goto :goto_4c

    .line 2032
    :catch_24
    const/4 v5, 0x0

    .line 2033
    :catch_25
    :cond_8f
    if-nez v5, :cond_90

    .line 2034
    .line 2035
    goto :goto_4b

    .line 2036
    :cond_90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v0

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2041
    .line 2042
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2043
    .line 2044
    .line 2045
    const-string v3, "if(document.head){var ele=document.createElement(\'style\');ele.innerText=\'"

    .line 2046
    .line 2047
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    .line 2049
    .line 2050
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2051
    .line 2052
    .line 2053
    const-string v0, "{display:none !important;}\';document.head.appendChild(ele);}"

    .line 2054
    .line 2055
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    .line 2057
    .line 2058
    :try_start_2a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 2059
    .line 2060
    .line 2061
    move-result v0

    .line 2062
    const/4 v3, 0x0

    .line 2063
    :goto_4e
    if-ge v3, v0, :cond_91

    .line 2064
    .line 2065
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v5

    .line 2069
    add-int/lit8 v3, v3, 0x1

    .line 2070
    .line 2071
    check-cast v5, Ljava/lang/String;

    .line 2072
    .line 2073
    invoke-static {v1, v5}, Lcom/mycompany/app/web/WebClean;->y0(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    .line 2075
    .line 2076
    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_26

    .line 2077
    goto :goto_4e

    .line 2078
    :catch_26
    :cond_91
    if-nez v1, :cond_92

    .line 2079
    .line 2080
    goto :goto_4b

    .line 2081
    :cond_92
    move-object/from16 v0, v32

    .line 2082
    .line 2083
    const/4 v3, 0x0

    .line 2084
    invoke-virtual {v1, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    .line 2086
    .line 2087
    move-object/from16 v5, v31

    .line 2088
    .line 2089
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    .line 2091
    .line 2092
    move-object/from16 v7, v29

    .line 2093
    .line 2094
    invoke-virtual {v1, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    .line 2096
    .line 2097
    move-object/from16 v7, v28

    .line 2098
    .line 2099
    invoke-virtual {v1, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    .line 2101
    .line 2102
    move-object/from16 v7, v23

    .line 2103
    .line 2104
    invoke-virtual {v1, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    .line 2106
    .line 2107
    move-object/from16 v7, v27

    .line 2108
    .line 2109
    invoke-virtual {v1, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    .line 2111
    .line 2112
    move-object/from16 v7, v26

    .line 2113
    .line 2114
    invoke-virtual {v1, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2115
    .line 2116
    .line 2117
    move-object/from16 v7, v25

    .line 2118
    .line 2119
    invoke-virtual {v1, v3, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    .line 2121
    .line 2122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v1

    .line 2126
    const/4 v3, 0x1

    .line 2127
    invoke-static {v9, v1, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 2128
    .line 2129
    .line 2130
    add-int/lit8 v8, v8, 0x1

    .line 2131
    .line 2132
    :goto_4f
    iget-object v1, v2, Lcom/mycompany/app/web/WebClean;->C:Ljava/util/ArrayList;

    .line 2133
    .line 2134
    if-eqz v1, :cond_95

    .line 2135
    .line 2136
    :try_start_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2137
    .line 2138
    .line 2139
    move-result v3

    .line 2140
    const/4 v7, 0x0

    .line 2141
    :cond_93
    :goto_50
    if-ge v7, v3, :cond_95

    .line 2142
    .line 2143
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v10

    .line 2147
    add-int/lit8 v7, v7, 0x1

    .line 2148
    .line 2149
    check-cast v10, Lcom/mycompany/app/web/WebClean$CmdItem;

    .line 2150
    .line 2151
    if-nez v10, :cond_94

    .line 2152
    .line 2153
    goto :goto_50

    .line 2154
    :cond_94
    iget-object v11, v10, Lcom/mycompany/app/web/WebClean$CmdItem;->a:Ljava/lang/String;

    .line 2155
    .line 2156
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2157
    .line 2158
    .line 2159
    move-result v11

    .line 2160
    if-eqz v11, :cond_93

    .line 2161
    .line 2162
    iget-object v1, v10, Lcom/mycompany/app/web/WebClean$CmdItem;->b:Ljava/util/List;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_27

    .line 2163
    .line 2164
    goto/16 :goto_5e

    .line 2165
    .line 2166
    :catch_27
    :cond_95
    iget-boolean v1, v2, Lcom/mycompany/app/web/WebClean;->N:Z

    .line 2167
    .line 2168
    if-nez v1, :cond_98

    .line 2169
    .line 2170
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2171
    .line 2172
    .line 2173
    move-result v1

    .line 2174
    if-eqz v1, :cond_96

    .line 2175
    .line 2176
    goto :goto_51

    .line 2177
    :cond_96
    iget-object v1, v2, Lcom/mycompany/app/web/WebClean;->W:Ljava/util/ArrayList;

    .line 2178
    .line 2179
    if-eqz v1, :cond_98

    .line 2180
    .line 2181
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2182
    .line 2183
    .line 2184
    move-result v1

    .line 2185
    if-nez v1, :cond_97

    .line 2186
    .line 2187
    goto :goto_51

    .line 2188
    :cond_97
    :try_start_2c
    iget-boolean v1, v2, Lcom/mycompany/app/web/WebClean;->N:Z

    .line 2189
    .line 2190
    if-eqz v1, :cond_99

    .line 2191
    .line 2192
    :cond_98
    :goto_51
    const/4 v1, 0x0

    .line 2193
    goto/16 :goto_5b

    .line 2194
    .line 2195
    :cond_99
    iget-object v1, v2, Lcom/mycompany/app/web/WebClean;->U:Ljava/util/HashMap;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_28

    .line 2196
    .line 2197
    :try_start_2d
    iget-object v3, v2, Lcom/mycompany/app/web/WebClean;->W:Ljava/util/ArrayList;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_29

    .line 2198
    .line 2199
    goto :goto_52

    .line 2200
    :catch_28
    const/4 v1, 0x0

    .line 2201
    :catch_29
    const/4 v3, 0x0

    .line 2202
    :goto_52
    if-eqz v3, :cond_98

    .line 2203
    .line 2204
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 2205
    .line 2206
    .line 2207
    move-result v7

    .line 2208
    if-eqz v7, :cond_9a

    .line 2209
    .line 2210
    goto :goto_51

    .line 2211
    :cond_9a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2212
    .line 2213
    .line 2214
    move-result v7

    .line 2215
    const/4 v10, 0x0

    .line 2216
    const/4 v11, 0x0

    .line 2217
    :goto_53
    if-ge v10, v7, :cond_aa

    .line 2218
    .line 2219
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v12

    .line 2223
    add-int/lit8 v10, v10, 0x1

    .line 2224
    .line 2225
    check-cast v12, Lcom/mycompany/app/web/WebClean$ScrItem;

    .line 2226
    .line 2227
    iget-boolean v13, v2, Lcom/mycompany/app/web/WebClean;->N:Z

    .line 2228
    .line 2229
    if-eqz v13, :cond_9b

    .line 2230
    .line 2231
    goto :goto_51

    .line 2232
    :cond_9b
    if-nez v12, :cond_9d

    .line 2233
    .line 2234
    :cond_9c
    :goto_54
    move-object/from16 v23, v1

    .line 2235
    .line 2236
    move-object/from16 v22, v3

    .line 2237
    .line 2238
    move/from16 v20, v7

    .line 2239
    .line 2240
    goto/16 :goto_59

    .line 2241
    .line 2242
    :cond_9d
    iget-object v13, v12, Lcom/mycompany/app/web/WebClean$ScrItem;->a:Ljava/lang/String;

    .line 2243
    .line 2244
    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2245
    .line 2246
    .line 2247
    move-result v13

    .line 2248
    if-nez v13, :cond_9e

    .line 2249
    .line 2250
    goto :goto_54

    .line 2251
    :cond_9e
    iget-object v13, v12, Lcom/mycompany/app/web/WebClean$ScrItem;->c:Ljava/util/ArrayList;

    .line 2252
    .line 2253
    if-eqz v13, :cond_a7

    .line 2254
    .line 2255
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2256
    .line 2257
    .line 2258
    move-result v13

    .line 2259
    if-nez v13, :cond_a7

    .line 2260
    .line 2261
    if-eqz v1, :cond_9c

    .line 2262
    .line 2263
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 2264
    .line 2265
    .line 2266
    move-result v13

    .line 2267
    if-eqz v13, :cond_9f

    .line 2268
    .line 2269
    goto :goto_54

    .line 2270
    :cond_9f
    iget-object v13, v12, Lcom/mycompany/app/web/WebClean$ScrItem;->c:Ljava/util/ArrayList;

    .line 2271
    .line 2272
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 2273
    .line 2274
    .line 2275
    move-result v14

    .line 2276
    const/4 v15, 0x0

    .line 2277
    :goto_55
    if-ge v15, v14, :cond_a7

    .line 2278
    .line 2279
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v20

    .line 2283
    add-int/lit8 v15, v15, 0x1

    .line 2284
    .line 2285
    move-object/from16 v22, v3

    .line 2286
    .line 2287
    move-object/from16 v3, v20

    .line 2288
    .line 2289
    check-cast v3, Ljava/lang/String;

    .line 2290
    .line 2291
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v3

    .line 2295
    check-cast v3, Lcom/mycompany/app/web/WebClean$FunItem;

    .line 2296
    .line 2297
    if-nez v3, :cond_a0

    .line 2298
    .line 2299
    move/from16 v20, v7

    .line 2300
    .line 2301
    goto :goto_56

    .line 2302
    :cond_a0
    move/from16 v20, v7

    .line 2303
    .line 2304
    iget-object v7, v3, Lcom/mycompany/app/web/WebClean$FunItem;->b:Ljava/lang/String;

    .line 2305
    .line 2306
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2307
    .line 2308
    .line 2309
    move-result v7

    .line 2310
    if-nez v7, :cond_a2

    .line 2311
    .line 2312
    iget-object v7, v3, Lcom/mycompany/app/web/WebClean$FunItem;->b:Ljava/lang/String;

    .line 2313
    .line 2314
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    .line 2316
    .line 2317
    move-result-object v7

    .line 2318
    check-cast v7, Lcom/mycompany/app/web/WebClean$FunItem;

    .line 2319
    .line 2320
    if-nez v7, :cond_a1

    .line 2321
    .line 2322
    :goto_56
    move/from16 v7, v20

    .line 2323
    .line 2324
    move-object/from16 v3, v22

    .line 2325
    .line 2326
    goto :goto_55

    .line 2327
    :cond_a1
    if-nez v11, :cond_a3

    .line 2328
    .line 2329
    new-instance v11, Ljava/util/ArrayList;

    .line 2330
    .line 2331
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2332
    .line 2333
    .line 2334
    iget-object v7, v7, Lcom/mycompany/app/web/WebClean$FunItem;->a:Ljava/lang/String;

    .line 2335
    .line 2336
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    .line 2338
    .line 2339
    :cond_a2
    move-object/from16 v23, v1

    .line 2340
    .line 2341
    goto :goto_57

    .line 2342
    :cond_a3
    move-object/from16 v23, v1

    .line 2343
    .line 2344
    iget-object v1, v7, Lcom/mycompany/app/web/WebClean$FunItem;->a:Ljava/lang/String;

    .line 2345
    .line 2346
    invoke-interface {v11, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 2347
    .line 2348
    .line 2349
    move-result v1

    .line 2350
    if-nez v1, :cond_a4

    .line 2351
    .line 2352
    iget-object v1, v7, Lcom/mycompany/app/web/WebClean$FunItem;->a:Ljava/lang/String;

    .line 2353
    .line 2354
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2355
    .line 2356
    .line 2357
    :cond_a4
    :goto_57
    if-nez v11, :cond_a5

    .line 2358
    .line 2359
    new-instance v1, Ljava/util/ArrayList;

    .line 2360
    .line 2361
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2362
    .line 2363
    .line 2364
    iget-object v3, v3, Lcom/mycompany/app/web/WebClean$FunItem;->a:Ljava/lang/String;

    .line 2365
    .line 2366
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2367
    .line 2368
    .line 2369
    move-object v11, v1

    .line 2370
    goto :goto_58

    .line 2371
    :cond_a5
    iget-object v1, v3, Lcom/mycompany/app/web/WebClean$FunItem;->a:Ljava/lang/String;

    .line 2372
    .line 2373
    invoke-interface {v11, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 2374
    .line 2375
    .line 2376
    move-result v1

    .line 2377
    if-nez v1, :cond_a6

    .line 2378
    .line 2379
    iget-object v1, v3, Lcom/mycompany/app/web/WebClean$FunItem;->a:Ljava/lang/String;

    .line 2380
    .line 2381
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2382
    .line 2383
    .line 2384
    :cond_a6
    :goto_58
    move/from16 v7, v20

    .line 2385
    .line 2386
    move-object/from16 v3, v22

    .line 2387
    .line 2388
    move-object/from16 v1, v23

    .line 2389
    .line 2390
    goto :goto_55

    .line 2391
    :cond_a7
    move-object/from16 v23, v1

    .line 2392
    .line 2393
    move-object/from16 v22, v3

    .line 2394
    .line 2395
    move/from16 v20, v7

    .line 2396
    .line 2397
    goto :goto_5a

    .line 2398
    :cond_a8
    :goto_59
    move/from16 v7, v20

    .line 2399
    .line 2400
    move-object/from16 v3, v22

    .line 2401
    .line 2402
    move-object/from16 v1, v23

    .line 2403
    .line 2404
    goto/16 :goto_53

    .line 2405
    .line 2406
    :goto_5a
    if-nez v11, :cond_a9

    .line 2407
    .line 2408
    new-instance v1, Ljava/util/ArrayList;

    .line 2409
    .line 2410
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2411
    .line 2412
    .line 2413
    iget-object v3, v12, Lcom/mycompany/app/web/WebClean$ScrItem;->b:Ljava/lang/String;

    .line 2414
    .line 2415
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2416
    .line 2417
    .line 2418
    move-object v11, v1

    .line 2419
    goto :goto_59

    .line 2420
    :cond_a9
    iget-object v1, v12, Lcom/mycompany/app/web/WebClean$ScrItem;->b:Ljava/lang/String;

    .line 2421
    .line 2422
    invoke-interface {v11, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 2423
    .line 2424
    .line 2425
    move-result v1

    .line 2426
    if-nez v1, :cond_a8

    .line 2427
    .line 2428
    iget-object v1, v12, Lcom/mycompany/app/web/WebClean$ScrItem;->b:Ljava/lang/String;

    .line 2429
    .line 2430
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2431
    .line 2432
    .line 2433
    goto :goto_59

    .line 2434
    :cond_aa
    move-object v1, v11

    .line 2435
    :goto_5b
    if-eqz v1, :cond_b1

    .line 2436
    .line 2437
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 2438
    .line 2439
    .line 2440
    move-result v3

    .line 2441
    if-eqz v3, :cond_ab

    .line 2442
    .line 2443
    goto :goto_5e

    .line 2444
    :cond_ab
    :try_start_2e
    iget-object v3, v2, Lcom/mycompany/app/web/WebClean;->C:Ljava/util/ArrayList;

    .line 2445
    .line 2446
    if-nez v3, :cond_ac

    .line 2447
    .line 2448
    new-instance v3, Ljava/util/ArrayList;

    .line 2449
    .line 2450
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2451
    .line 2452
    .line 2453
    iput-object v3, v2, Lcom/mycompany/app/web/WebClean;->C:Ljava/util/ArrayList;

    .line 2454
    .line 2455
    goto :goto_5d

    .line 2456
    :cond_ac
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2457
    .line 2458
    .line 2459
    move-result v7

    .line 2460
    const/4 v10, 0x0

    .line 2461
    :cond_ad
    :goto_5c
    if-ge v10, v7, :cond_af

    .line 2462
    .line 2463
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v11

    .line 2467
    add-int/lit8 v10, v10, 0x1

    .line 2468
    .line 2469
    check-cast v11, Lcom/mycompany/app/web/WebClean$CmdItem;

    .line 2470
    .line 2471
    if-nez v11, :cond_ae

    .line 2472
    .line 2473
    goto :goto_5c

    .line 2474
    :cond_ae
    iget-object v11, v11, Lcom/mycompany/app/web/WebClean$CmdItem;->a:Ljava/lang/String;

    .line 2475
    .line 2476
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2477
    .line 2478
    .line 2479
    move-result v11

    .line 2480
    if-eqz v11, :cond_ad

    .line 2481
    .line 2482
    goto :goto_5e

    .line 2483
    :cond_af
    iget-object v3, v2, Lcom/mycompany/app/web/WebClean;->C:Ljava/util/ArrayList;

    .line 2484
    .line 2485
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2486
    .line 2487
    .line 2488
    move-result v3

    .line 2489
    const/16 v7, 0x14

    .line 2490
    .line 2491
    if-le v3, v7, :cond_b0

    .line 2492
    .line 2493
    iget-object v3, v2, Lcom/mycompany/app/web/WebClean;->C:Ljava/util/ArrayList;

    .line 2494
    .line 2495
    const/4 v7, 0x0

    .line 2496
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2497
    .line 2498
    .line 2499
    :cond_b0
    :goto_5d
    new-instance v3, Lcom/mycompany/app/web/WebClean$CmdItem;

    .line 2500
    .line 2501
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2502
    .line 2503
    .line 2504
    iput-object v6, v3, Lcom/mycompany/app/web/WebClean$CmdItem;->a:Ljava/lang/String;

    .line 2505
    .line 2506
    iput-object v1, v3, Lcom/mycompany/app/web/WebClean$CmdItem;->b:Ljava/util/List;

    .line 2507
    .line 2508
    iget-object v7, v2, Lcom/mycompany/app/web/WebClean;->C:Ljava/util/ArrayList;

    .line 2509
    .line 2510
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2a

    .line 2511
    .line 2512
    .line 2513
    :catch_2a
    :cond_b1
    :goto_5e
    iput-object v1, v2, Lcom/mycompany/app/web/WebClean;->M:Ljava/util/List;

    .line 2514
    .line 2515
    if-eqz v1, :cond_b7

    .line 2516
    .line 2517
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 2518
    .line 2519
    .line 2520
    move-result v2

    .line 2521
    if-eqz v2, :cond_b2

    .line 2522
    .line 2523
    goto :goto_61

    .line 2524
    :cond_b2
    :try_start_2f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2525
    .line 2526
    .line 2527
    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2b

    .line 2528
    const/4 v11, 0x0

    .line 2529
    :goto_5f
    :try_start_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2530
    .line 2531
    .line 2532
    move-result v2

    .line 2533
    if-eqz v2, :cond_b5

    .line 2534
    .line 2535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2536
    .line 2537
    .line 2538
    move-result-object v2

    .line 2539
    check-cast v2, Ljava/lang/String;

    .line 2540
    .line 2541
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2542
    .line 2543
    .line 2544
    move-result v3

    .line 2545
    if-eqz v3, :cond_b3

    .line 2546
    .line 2547
    goto :goto_5f

    .line 2548
    :cond_b3
    if-nez v11, :cond_b4

    .line 2549
    .line 2550
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2551
    .line 2552
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2553
    .line 2554
    .line 2555
    move-object v11, v3

    .line 2556
    move-object/from16 v3, v21

    .line 2557
    .line 2558
    goto :goto_60

    .line 2559
    :cond_b4
    move-object/from16 v3, v21

    .line 2560
    .line 2561
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    .line 2563
    .line 2564
    :goto_60
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_2c

    .line 2565
    .line 2566
    .line 2567
    move-object/from16 v21, v3

    .line 2568
    .line 2569
    goto :goto_5f

    .line 2570
    :catch_2b
    const/4 v11, 0x0

    .line 2571
    :catch_2c
    :cond_b5
    if-nez v11, :cond_b6

    .line 2572
    .line 2573
    goto :goto_61

    .line 2574
    :cond_b6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2575
    .line 2576
    .line 2577
    move-result-object v1

    .line 2578
    const/4 v2, 0x1

    .line 2579
    invoke-static {v9, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 2580
    .line 2581
    .line 2582
    add-int/lit8 v8, v8, 0x1

    .line 2583
    .line 2584
    :cond_b7
    :goto_61
    move v1, v8

    .line 2585
    :goto_62
    move-object/from16 v2, v24

    .line 2586
    .line 2587
    if-lez v1, :cond_b9

    .line 2588
    .line 2589
    iget-object v3, v2, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2590
    .line 2591
    iget-object v3, v3, Lcom/mycompany/app/web/WebNestView;->u:Lcom/mycompany/app/web/WebNestView$WebViewListener;

    .line 2592
    .line 2593
    if-eqz v3, :cond_b9

    .line 2594
    .line 2595
    invoke-interface {v3, v1}, Lcom/mycompany/app/web/WebNestView$WebViewListener;->f(I)V

    .line 2596
    .line 2597
    .line 2598
    goto :goto_63

    .line 2599
    :cond_b8
    move-object v2, v4

    .line 2600
    move-object v0, v5

    .line 2601
    move-object v5, v8

    .line 2602
    move-object/from16 v4, v22

    .line 2603
    .line 2604
    :cond_b9
    :goto_63
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->y5(Ljava/lang/String;)Z

    .line 2605
    .line 2606
    .line 2607
    move-result v1

    .line 2608
    if-eqz v1, :cond_ba

    .line 2609
    .line 2610
    iget-object v1, v2, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2611
    .line 2612
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2613
    .line 2614
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2615
    .line 2616
    .line 2617
    const-string v7, "if(document.head&&!document.getElementById(\'sb_hmg_style\')){var ele=document.createElement(\'style\');ele.id=\'sb_hmg_style\';ele.innerText=\'*{min-height:0px !important;}\';document.head.appendChild(ele);}"

    .line 2618
    .line 2619
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2620
    .line 2621
    .line 2622
    const/4 v8, 0x0

    .line 2623
    invoke-virtual {v3, v8, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2624
    .line 2625
    .line 2626
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    .line 2628
    .line 2629
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2630
    .line 2631
    .line 2632
    move-result-object v0

    .line 2633
    const/4 v3, 0x1

    .line 2634
    invoke-static {v1, v0, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 2635
    .line 2636
    .line 2637
    :cond_ba
    :goto_64
    if-eqz v18, :cond_bc

    .line 2638
    .line 2639
    sget-boolean v0, Lcom/mycompany/app/pref/PrefTts;->t:Z

    .line 2640
    .line 2641
    if-eqz v0, :cond_bc

    .line 2642
    .line 2643
    iget-object v0, v2, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2644
    .line 2645
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->t()Lcom/mycompany/app/web/WebClean;

    .line 2646
    .line 2647
    .line 2648
    move-result-object v1

    .line 2649
    if-eqz v1, :cond_bb

    .line 2650
    .line 2651
    invoke-virtual {v1, v6}, Lcom/mycompany/app/web/WebClean;->h0(Ljava/lang/String;)Z

    .line 2652
    .line 2653
    .line 2654
    move-result v1

    .line 2655
    if-nez v1, :cond_bb

    .line 2656
    .line 2657
    invoke-virtual {v0, v4}, Lcom/mycompany/app/web/WebNestView;->setDocChecked(Ljava/lang/String;)V

    .line 2658
    .line 2659
    .line 2660
    goto :goto_65

    .line 2661
    :cond_bb
    iput-object v4, v0, Lcom/mycompany/app/web/WebNestView;->t2:Ljava/lang/String;

    .line 2662
    .line 2663
    iput-object v6, v0, Lcom/mycompany/app/web/WebNestView;->u2:Ljava/lang/String;

    .line 2664
    .line 2665
    move/from16 v1, v19

    .line 2666
    .line 2667
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->v2:Z

    .line 2668
    .line 2669
    const-string v1, "(function(){android.onCheckHtml(document.body.innerHTML);})();"

    .line 2670
    .line 2671
    const/4 v3, 0x1

    .line 2672
    invoke-static {v0, v1, v3}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 2673
    .line 2674
    .line 2675
    :cond_bc
    :goto_65
    iget-object v0, v2, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2676
    .line 2677
    const/4 v3, 0x0

    .line 2678
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebNestView;->c2:Z

    .line 2679
    .line 2680
    return-void
.end method
