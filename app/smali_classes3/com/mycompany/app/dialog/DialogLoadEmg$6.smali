.class Lcom/mycompany/app/dialog/DialogLoadEmg$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogLoadEmg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadEmg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg$6;->a:Lcom/mycompany/app/dialog/DialogLoadEmg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogLoadEmg$6;->a:Lcom/mycompany/app/dialog/DialogLoadEmg;

    .line 3
    .line 4
    iput v0, v1, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0, v0, v0}, Lcom/mycompany/app/dialog/DialogLoadEmg;->B(ZZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg$6;->a:Lcom/mycompany/app/dialog/DialogLoadEmg;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 11
    .line 12
    return-void
.end method

.method public final c(Ljava/util/ArrayList;IILjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLoadEmg$6;->a:Lcom/mycompany/app/dialog/DialogLoadEmg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->m0:Lcom/mycompany/app/web/WebEmgTask;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 18
    .line 19
    const/16 v3, 0x64

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    :cond_2
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->u0:Z

    .line 38
    .line 39
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->m0:Lcom/mycompany/app/web/WebEmgTask;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/mycompany/app/web/WebEmgTask;->a()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ge v4, v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogLoadEmg;->C(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->t0:Z

    .line 52
    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->t0:Z

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogLoadEmg;->C(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->m0:Lcom/mycompany/app/web/WebEmgTask;

    .line 62
    .line 63
    if-nez v4, :cond_5

    .line 64
    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_5
    iput v2, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->k0:I

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    if-eqz p1, :cond_12

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_12

    .line 77
    .line 78
    if-eqz p3, :cond_12

    .line 79
    .line 80
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_6

    .line 85
    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :cond_6
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->l0:Z

    .line 89
    .line 90
    if-nez v4, :cond_11

    .line 91
    .line 92
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 93
    .line 94
    if-nez v4, :cond_7

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_7
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->l0:Z

    .line 99
    .line 100
    new-instance v4, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v5, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    move v6, v1

    .line 111
    :goto_0
    if-ge v6, p3, :cond_9

    .line 112
    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v8, ".jpg"

    .line 122
    .line 123
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    if-ne v6, p2, :cond_8

    .line 131
    .line 132
    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :goto_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v6, v6, 0x1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result p4

    .line 149
    move v6, v1

    .line 150
    :cond_a
    :goto_2
    if-ge v6, p4, :cond_e

    .line 151
    .line 152
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    add-int/lit8 v6, v6, 0x1

    .line 157
    .line 158
    check-cast v7, Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_b

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_b
    const/16 v8, 0x2d

    .line 168
    .line 169
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    const/4 v9, -0x1

    .line 174
    if-eq v8, v9, :cond_a

    .line 175
    .line 176
    add-int/lit8 v8, v8, 0x1

    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    if-lt v8, v9, :cond_c

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_c
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    sub-int/2addr v8, v2

    .line 194
    if-eq v8, p2, :cond_a

    .line 195
    .line 196
    if-ltz v8, :cond_a

    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-lt v8, v9, :cond_d

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_d
    invoke-virtual {v5, v8, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_e
    new-instance p1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 210
    .line 211
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    iput p3, p1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->a:I

    .line 215
    .line 216
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->b0:Landroid/content/Context;

    .line 217
    .line 218
    invoke-static {p3}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    iput-object v4, p3, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 223
    .line 224
    iput-object v5, p3, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 225
    .line 226
    iput-object p1, p3, Lcom/mycompany/app/data/DataUrl;->c:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 227
    .line 228
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->b0:Landroid/content/Context;

    .line 229
    .line 230
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->R1(Landroid/content/Context;)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    const-string p3, "EXTRA_TYPE"

    .line 235
    .line 236
    const/16 p4, 0xc

    .line 237
    .line 238
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->o0:Ljava/lang/String;

    .line 242
    .line 243
    iget-object p4, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->n0:Lcom/mycompany/app/web/WebNestView;

    .line 244
    .line 245
    if-eqz p4, :cond_f

    .line 246
    .line 247
    invoke-virtual {p4}, Lcom/mycompany/app/web/WebNestView;->getTitle()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p4

    .line 251
    invoke-static {p4, v2}, Lcom/mycompany/app/main/MainUtil;->K1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p4

    .line 255
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    if-nez v4, :cond_f

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_f
    invoke-static {p3, v2}, Lcom/mycompany/app/main/MainUtil;->H1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p3

    .line 266
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->r1(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p4

    .line 270
    :goto_3
    const-string p3, "EXTRA_NAME"

    .line 271
    .line 272
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    .line 274
    .line 275
    const-string p3, "EXTRA_INDEX"

    .line 276
    .line 277
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    const-string p2, "EXTRA_PAGE"

    .line 281
    .line 282
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    .line 284
    .line 285
    const-string p2, "EXTRA_REFERER"

    .line 286
    .line 287
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->o0:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    const-string p2, "EXTRA_PRELOAD"

    .line 293
    .line 294
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    const-string p2, "EXTRA_LOAD_TYPE"

    .line 298
    .line 299
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    sget p2, Lcom/mycompany/app/pref/PrefMain;->p:I

    .line 303
    .line 304
    if-ge p2, v3, :cond_10

    .line 305
    .line 306
    add-int/2addr p2, v2

    .line 307
    sput p2, Lcom/mycompany/app/pref/PrefMain;->p:I

    .line 308
    .line 309
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->b0:Landroid/content/Context;

    .line 310
    .line 311
    const/4 p4, 0x5

    .line 312
    const-string v2, "mShowAdsImage"

    .line 313
    .line 314
    invoke-static {p3, p4, p2, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 318
    .line 319
    invoke-virtual {p2, p1}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 320
    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_10
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 324
    .line 325
    const/16 p3, 0x12

    .line 326
    .line 327
    invoke-virtual {p2, p1, p3}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 328
    .line 329
    .line 330
    move v1, v2

    .line 331
    :goto_4
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->c0:Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;

    .line 332
    .line 333
    if-eqz p1, :cond_11

    .line 334
    .line 335
    invoke-interface {p1, v1}, Lcom/mycompany/app/dialog/DialogLoadImg$LoadImgListener;->c(Z)V

    .line 336
    .line 337
    .line 338
    :cond_11
    :goto_5
    return-void

    .line 339
    :cond_12
    :goto_6
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->u0:Z

    .line 340
    .line 341
    if-nez p1, :cond_13

    .line 342
    .line 343
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->u0:Z

    .line 344
    .line 345
    :cond_13
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->m0:Lcom/mycompany/app/web/WebEmgTask;

    .line 346
    .line 347
    iget-boolean p1, p1, Lcom/mycompany/app/web/WebEmgTask;->f:Z

    .line 348
    .line 349
    if-eqz p1, :cond_14

    .line 350
    .line 351
    invoke-virtual {v0, v1, v2, v1}, Lcom/mycompany/app/dialog/DialogLoadEmg;->B(ZZZ)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :cond_14
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogLoadEmg;->u0:Z

    .line 356
    .line 357
    if-eqz p1, :cond_15

    .line 358
    .line 359
    invoke-virtual {v0, v1, v1, v2}, Lcom/mycompany/app/dialog/DialogLoadEmg;->B(ZZZ)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :cond_15
    invoke-virtual {v0, v1, v1, v1}, Lcom/mycompany/app/dialog/DialogLoadEmg;->B(ZZZ)V

    .line 364
    .line 365
    .line 366
    return-void
.end method
