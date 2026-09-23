.class Lcom/mycompany/app/web/WebNestView$21$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView$21$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView$21$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$21$1$1;->c:Lcom/mycompany/app/web/WebNestView$21$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$21$1$1;->c:Lcom/mycompany/app/web/WebNestView$21$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView$21$1;->a:Lcom/mycompany/app/web/WebNestView$21;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView$21;->c:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    iget v1, v0, Lcom/mycompany/app/web/WebNestView;->W1:I

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->X1:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->X1:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v6, "file:///android_asset/shortcut.html"

    .line 20
    .line 21
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_0
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->k6(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const-string v8, "(function(){"

    .line 35
    .line 36
    invoke-static {v8}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    iget v9, v0, Lcom/mycompany/app/web/WebNestView;->V1:I

    .line 41
    .line 42
    const/4 v10, 0x2

    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    if-ne v9, v10, :cond_2

    .line 46
    .line 47
    :cond_1
    const-string v9, "function myPageLong(){var cl="

    .line 48
    .line 49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getLongHeight()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v9, ";return (cl>0)&&(document.documentElement.scrollHeight>cl);}function myPageComp(){return document.readyState==\'complete\';}function myPageState(){if(!android||!android.onPageState){return false;}var be=document.body;if(be&&be.hasChildNodes()){android.onPageState(myPageLong()?4:myPageComp()?3:2);return true;}if(myPageComp()){android.onPageState(1);return true;}return false;}if(!myPageState()){document.addEventListener(\'readystatechange\',myPageState);}"

    .line 60
    .line 61
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_2
    if-eqz v6, :cond_5

    .line 65
    .line 66
    sget-boolean v9, Lcom/mycompany/app/pref/PrefWeb;->o:Z

    .line 67
    .line 68
    if-eqz v9, :cond_3

    .line 69
    .line 70
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->u4()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-nez v11, :cond_3

    .line 79
    .line 80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :cond_3
    sget-boolean v9, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 84
    .line 85
    if-eqz v9, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    sget v9, Lcom/mycompany/app/pref/PrefZtwo;->C:I

    .line 89
    .line 90
    and-int/2addr v9, v10

    .line 91
    if-ne v9, v10, :cond_6

    .line 92
    .line 93
    :goto_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->v4()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-nez v11, :cond_6

    .line 102
    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    sget-boolean v9, Lcom/mycompany/app/pref/PrefPdf;->r:Z

    .line 108
    .line 109
    if-eqz v9, :cond_6

    .line 110
    .line 111
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->v5(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_6

    .line 116
    .line 117
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->Q(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    :cond_6
    :goto_1
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 122
    .line 123
    invoke-static {v2, v5, v9, v7}, Lcom/mycompany/app/main/MainUtil;->A0(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-nez v11, :cond_7

    .line 132
    .line 133
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_7
    invoke-static {v8, v0, v2, v5}, Lcom/mycompany/app/main/MainUtil;->k4(Ljava/lang/StringBuilder;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    sget-boolean v9, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 141
    .line 142
    if-nez v9, :cond_8

    .line 143
    .line 144
    sget-boolean v11, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 145
    .line 146
    if-eqz v11, :cond_e

    .line 147
    .line 148
    :cond_8
    sget-boolean v11, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 149
    .line 150
    if-nez v9, :cond_9

    .line 151
    .line 152
    if-nez v11, :cond_9

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    const-string v12, "if(document.head&&!document.getElementById(\'sb_font_style\')){var ele=document.createElement(\'style\');ele.id=\'sb_font_style\';ele.innerText=\'"

    .line 156
    .line 157
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    if-eqz v9, :cond_a

    .line 161
    .line 162
    const-string v12, "@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}"

    .line 163
    .line 164
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-nez v12, :cond_b

    .line 172
    .line 173
    const-string v12, "facebook.com"

    .line 174
    .line 175
    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-eqz v12, :cond_b

    .line 180
    .line 181
    const-string v12, "*:not([class*=\"icon\"],[class^=\"fa\"],ion-icon,span[class=\"f3\"],span[class=\"f5\"]){"

    .line 182
    .line 183
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_b
    const-string v12, "*:not([class*=\"icon\"],[class^=\"fa\"],ion-icon){"

    .line 188
    .line 189
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :goto_2
    if-eqz v9, :cond_c

    .line 193
    .line 194
    const-string v9, "font-family:soul_user_font !important;"

    .line 195
    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :cond_c
    if-eqz v11, :cond_d

    .line 200
    .line 201
    const-string v9, "font-weight:bold !important;"

    .line 202
    .line 203
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    :cond_d
    const-string v9, "}\';document.head.appendChild(ele);}"

    .line 207
    .line 208
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    :cond_e
    :goto_3
    sget v9, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 212
    .line 213
    if-ne v9, v4, :cond_11

    .line 214
    .line 215
    const/4 v9, -0x1

    .line 216
    if-eq v1, v9, :cond_11

    .line 217
    .line 218
    const-string v9, "if(android&&android.onThemeDet){"

    .line 219
    .line 220
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    if-nez v6, :cond_10

    .line 224
    .line 225
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->c6(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_f

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_f
    const-string v6, "if(document.head){var tema=document.querySelector(\"meta[name=theme-color]\");if(tema){android.onThemeDet(\'"

    .line 233
    .line 234
    const-string v9, "\',tema.content);}else{android.onThemeDet(\'"

    .line 235
    .line 236
    invoke-static {v8, v6, v1, v9, v1}, Landroidx/work/impl/workers/a;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    const-string v1, "\',null);}}}"

    .line 240
    .line 241
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_10
    :goto_4
    const-string v6, "android.onThemeDet(\'"

    .line 246
    .line 247
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v1, "\',\'btc\');}"

    .line 254
    .line 255
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    :cond_11
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_12

    .line 263
    .line 264
    const-string v1, "document.addEventListener(\"contextmenu\",function(evt){window.sblong=evt.target||evt.srcElement;android.onLongParse();});"

    .line 265
    .line 266
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v1, "meeco.kr"

    .line 270
    .line 271
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_12

    .line 276
    .line 277
    const-string v1, "if(document.head){var mece=document.createElement(\'style\');mece.innerText=\'div[style*=\"position:absolute;z-index:\"]{display:none !important;}div[class*=\"xe_content\"]{opacity:1 !important;}\';document.head.appendChild(mece);}"

    .line 278
    .line 279
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    :cond_12
    sget v1, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 283
    .line 284
    if-eq v1, v10, :cond_13

    .line 285
    .line 286
    const-string v1, "var elw=document.querySelectorAll(\"*[style*=\'translate\']\");if(elw&&(elw.length>0)){for(var i=0;i<elw.length;i++){elw[i].addEventListener(\"touchstart\",function(){android.onSlideDet();});}}"

    .line 287
    .line 288
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    :cond_13
    const-string v1, "})();"

    .line 292
    .line 293
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-static {v0, v1, v4}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 301
    .line 302
    .line 303
    :goto_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_14

    .line 308
    .line 309
    goto/16 :goto_9

    .line 310
    .line 311
    :cond_14
    sget v1, Lcom/mycompany/app/pref/PrefTts;->u:I

    .line 312
    .line 313
    if-eqz v1, :cond_1b

    .line 314
    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    :try_start_0
    iget-object v3, v1, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 327
    .line 328
    if-eqz v3, :cond_19

    .line 329
    .line 330
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_15

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_15
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_16

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_16
    iget-object v6, v1, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_17

    .line 355
    .line 356
    move v7, v4

    .line 357
    goto :goto_7

    .line 358
    :cond_17
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    if-eqz v3, :cond_18

    .line 363
    .line 364
    goto :goto_7

    .line 365
    :cond_18
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :catch_0
    :cond_19
    :goto_7
    if-nez v7, :cond_1c

    .line 372
    .line 373
    sget v1, Lcom/mycompany/app/pref/PrefTts;->u:I

    .line 374
    .line 375
    if-ne v1, v4, :cond_1a

    .line 376
    .line 377
    invoke-virtual {v0, v2, v4}, Lcom/mycompany/app/web/WebNestView;->R(Ljava/lang/String;Z)V

    .line 378
    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_1a
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->x7(Landroid/webkit/WebView;)V

    .line 382
    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_1b
    iput-object v3, v0, Lcom/mycompany/app/web/WebNestView;->Z1:Ljava/lang/String;

    .line 386
    .line 387
    :cond_1c
    :goto_8
    const-string v1, "namu.wiki"

    .line 388
    .line 389
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-eqz v1, :cond_1e

    .line 394
    .line 395
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 396
    .line 397
    if-nez v1, :cond_1d

    .line 398
    .line 399
    goto :goto_9

    .line 400
    :cond_1d
    new-instance v2, Lcom/mycompany/app/web/WebNestView$22;

    .line 401
    .line 402
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$22;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 403
    .line 404
    .line 405
    const-wide/16 v3, 0x320

    .line 406
    .line 407
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 408
    .line 409
    .line 410
    :cond_1e
    :goto_9
    return-void
.end method
