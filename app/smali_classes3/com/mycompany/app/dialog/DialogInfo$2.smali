.class Lcom/mycompany/app/dialog/DialogInfo$2;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$2;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo$2;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->c0:I

    .line 6
    .line 7
    const/16 v3, 0x1b

    .line 8
    .line 9
    const-string v4, "yyyy.MM.dd  hh:mm:ss a"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const v9, -0x50506

    .line 13
    .line 14
    .line 15
    const/4 v10, 0x0

    .line 16
    const v11, -0x3e3e3f

    .line 17
    .line 18
    .line 19
    const v12, -0x9e9e9f

    .line 20
    .line 21
    .line 22
    const/high16 v13, -0x1000000

    .line 23
    .line 24
    const/4 v14, 0x1

    .line 25
    const/4 v15, 0x2

    .line 26
    if-ne v2, v3, :cond_1f

    .line 27
    .line 28
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    if-eqz v2, :cond_42

    .line 31
    .line 32
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto/16 :goto_21

    .line 37
    .line 38
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    goto/16 :goto_21

    .line 43
    .line 44
    :cond_1
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-wide/16 v16, 0x0

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_3
    :goto_0
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->l0:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 70
    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_5

    .line 101
    .line 102
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 103
    .line 104
    :goto_2
    const-wide/16 v16, 0x0

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_3
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    sget v7, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 115
    .line 116
    .line 117
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    :goto_4
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_8

    .line 129
    .line 130
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->o0:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 136
    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_6
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    .line 159
    .line 160
    :goto_5
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-le v6, v14, :cond_7

    .line 167
    .line 168
    const-string v6, "v"

    .line 169
    .line 170
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_7

    .line 175
    .line 176
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :cond_7
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    sget v7, Lnet/kaki87/soul2/testing/R$string;->version:I

    .line 183
    .line 184
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 185
    .line 186
    .line 187
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    :cond_8
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_9

    .line 199
    .line 200
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-nez v3, :cond_c

    .line 207
    .line 208
    :cond_9
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->r0:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 214
    .line 215
    if-eqz v3, :cond_a

    .line 216
    .line 217
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 218
    .line 219
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    .line 221
    .line 222
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 223
    .line 224
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_a
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 229
    .line 230
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    .line 232
    .line 233
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    .line 235
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    .line 237
    .line 238
    :goto_6
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-nez v3, :cond_b

    .line 245
    .line 246
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_b
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 250
    .line 251
    :goto_7
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    sget v7, Lnet/kaki87/soul2/testing/R$string;->info:I

    .line 254
    .line 255
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 256
    .line 257
    .line 258
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 259
    .line 260
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    :cond_c
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->j:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-nez v3, :cond_e

    .line 270
    .line 271
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->u0:Landroid/widget/LinearLayout;

    .line 272
    .line 273
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 277
    .line 278
    if-eqz v3, :cond_d

    .line 279
    .line 280
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 281
    .line 282
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    .line 284
    .line 285
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 286
    .line 287
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_d
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 292
    .line 293
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    .line 295
    .line 296
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 297
    .line 298
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    .line 300
    .line 301
    :goto_8
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 302
    .line 303
    sget v6, Lnet/kaki87/soul2/testing/R$string;->author:I

    .line 304
    .line 305
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 306
    .line 307
    .line 308
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    iget-object v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->j:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    :cond_e
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    const v6, -0xe19938

    .line 322
    .line 323
    .line 324
    if-eqz v3, :cond_12

    .line 325
    .line 326
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->x0:Landroid/widget/LinearLayout;

    .line 327
    .line 328
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 332
    .line 333
    if-eqz v3, :cond_f

    .line 334
    .line 335
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 336
    .line 337
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_f
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 342
    .line 343
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    .line 345
    .line 346
    :goto_9
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 347
    .line 348
    if-eqz v3, :cond_10

    .line 349
    .line 350
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 351
    .line 352
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 353
    .line 354
    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 355
    .line 356
    .line 357
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 358
    .line 359
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_10
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 364
    .line 365
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 366
    .line 367
    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 368
    .line 369
    .line 370
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 371
    .line 372
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    .line 374
    .line 375
    :goto_a
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    if-eqz v7, :cond_11

    .line 386
    .line 387
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    .line 388
    .line 389
    :cond_11
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 390
    .line 391
    sget v8, Lnet/kaki87/soul2/testing/R$string;->site:I

    .line 392
    .line 393
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 394
    .line 395
    .line 396
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 397
    .line 398
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->u6(Ljava/lang/String;)Landroid/text/SpannableString;

    .line 399
    .line 400
    .line 401
    move-result-object v8

    .line 402
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->Q0:Ljava/lang/String;

    .line 406
    .line 407
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 408
    .line 409
    new-instance v7, Lcom/mycompany/app/dialog/DialogInfo$4;

    .line 410
    .line 411
    invoke-direct {v7, v1}, Lcom/mycompany/app/dialog/DialogInfo$4;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    .line 416
    .line 417
    :cond_12
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 418
    .line 419
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    if-nez v7, :cond_15

    .line 424
    .line 425
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    if-eqz v7, :cond_13

    .line 430
    .line 431
    move v8, v14

    .line 432
    goto :goto_b

    .line 433
    :cond_13
    const-string v7, "userscript://"

    .line 434
    .line 435
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    if-eqz v3, :cond_14

    .line 440
    .line 441
    move v8, v15

    .line 442
    goto :goto_b

    .line 443
    :cond_14
    const/4 v8, 0x3

    .line 444
    goto :goto_b

    .line 445
    :cond_15
    move v8, v10

    .line 446
    :goto_b
    if-eqz v8, :cond_1d

    .line 447
    .line 448
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->A0:Landroid/widget/LinearLayout;

    .line 449
    .line 450
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 451
    .line 452
    .line 453
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 454
    .line 455
    if-eqz v3, :cond_16

    .line 456
    .line 457
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 458
    .line 459
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    .line 461
    .line 462
    goto :goto_c

    .line 463
    :cond_16
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 464
    .line 465
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    .line 467
    .line 468
    :goto_c
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 469
    .line 470
    sget v7, Lnet/kaki87/soul2/testing/R$string;->link:I

    .line 471
    .line 472
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 473
    .line 474
    .line 475
    if-ne v8, v14, :cond_19

    .line 476
    .line 477
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 478
    .line 479
    if-eqz v3, :cond_17

    .line 480
    .line 481
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 482
    .line 483
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 484
    .line 485
    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 486
    .line 487
    .line 488
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 489
    .line 490
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    .line 492
    .line 493
    goto :goto_d

    .line 494
    :cond_17
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 495
    .line 496
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 497
    .line 498
    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 499
    .line 500
    .line 501
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 502
    .line 503
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    .line 505
    .line 506
    :goto_d
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 507
    .line 508
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    if-eqz v6, :cond_18

    .line 517
    .line 518
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 519
    .line 520
    :cond_18
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 521
    .line 522
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->u6(Ljava/lang/String;)Landroid/text/SpannableString;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    .line 528
    .line 529
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->R0:Ljava/lang/String;

    .line 530
    .line 531
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 532
    .line 533
    new-instance v6, Lcom/mycompany/app/dialog/DialogInfo$5;

    .line 534
    .line 535
    invoke-direct {v6, v1}, Lcom/mycompany/app/dialog/DialogInfo$5;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    .line 540
    .line 541
    goto :goto_10

    .line 542
    :cond_19
    if-ne v8, v15, :cond_1b

    .line 543
    .line 544
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 545
    .line 546
    if-eqz v3, :cond_1a

    .line 547
    .line 548
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 549
    .line 550
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    .line 552
    .line 553
    goto :goto_e

    .line 554
    :cond_1a
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 555
    .line 556
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    .line 558
    .line 559
    :goto_e
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 560
    .line 561
    sget v6, Lnet/kaki87/soul2/testing/R$string;->user_defined:I

    .line 562
    .line 563
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 564
    .line 565
    .line 566
    goto :goto_10

    .line 567
    :cond_1b
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 568
    .line 569
    if-eqz v3, :cond_1c

    .line 570
    .line 571
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 572
    .line 573
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 574
    .line 575
    .line 576
    goto :goto_f

    .line 577
    :cond_1c
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 578
    .line 579
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 580
    .line 581
    .line 582
    :goto_f
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 583
    .line 584
    sget v6, Lnet/kaki87/soul2/testing/R$string;->local_file:I

    .line 585
    .line 586
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 587
    .line 588
    .line 589
    :cond_1d
    :goto_10
    iget-wide v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 590
    .line 591
    cmp-long v3, v6, v16

    .line 592
    .line 593
    if-lez v3, :cond_42

    .line 594
    .line 595
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->D0:Landroid/widget/LinearLayout;

    .line 596
    .line 597
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 598
    .line 599
    .line 600
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 601
    .line 602
    if-eqz v3, :cond_1e

    .line 603
    .line 604
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 605
    .line 606
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 607
    .line 608
    .line 609
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 610
    .line 611
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    .line 613
    .line 614
    goto :goto_11

    .line 615
    :cond_1e
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 616
    .line 617
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 618
    .line 619
    .line 620
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 621
    .line 622
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    .line 624
    .line 625
    :goto_11
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 626
    .line 627
    sget v6, Lnet/kaki87/soul2/testing/R$string;->modified:I

    .line 628
    .line 629
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 630
    .line 631
    .line 632
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 633
    .line 634
    iget-wide v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 635
    .line 636
    invoke-static {v6, v7, v5, v4}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_21

    .line 644
    .line 645
    :cond_1f
    const-wide/16 v16, 0x0

    .line 646
    .line 647
    iget-boolean v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->e0:Z

    .line 648
    .line 649
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 650
    .line 651
    if-eqz v6, :cond_42

    .line 652
    .line 653
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 654
    .line 655
    if-nez v6, :cond_20

    .line 656
    .line 657
    goto/16 :goto_21

    .line 658
    .line 659
    :cond_20
    const/16 v6, 0x1e

    .line 660
    .line 661
    const/16 v7, 0x1d

    .line 662
    .line 663
    const/16 v8, 0x1c

    .line 664
    .line 665
    const/16 v5, 0x16

    .line 666
    .line 667
    const/16 v15, 0x15

    .line 668
    .line 669
    const/16 v14, 0x14

    .line 670
    .line 671
    const/16 v10, 0x13

    .line 672
    .line 673
    const/16 v13, 0x17

    .line 674
    .line 675
    if-eq v2, v10, :cond_25

    .line 676
    .line 677
    if-eq v2, v14, :cond_25

    .line 678
    .line 679
    if-eq v2, v15, :cond_25

    .line 680
    .line 681
    if-eq v2, v5, :cond_25

    .line 682
    .line 683
    if-eq v2, v8, :cond_25

    .line 684
    .line 685
    if-eq v2, v7, :cond_25

    .line 686
    .line 687
    if-eq v2, v6, :cond_25

    .line 688
    .line 689
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 690
    .line 691
    iget-object v6, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 692
    .line 693
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 694
    .line 695
    .line 696
    move-result v6

    .line 697
    if-nez v6, :cond_25

    .line 698
    .line 699
    if-ne v2, v13, :cond_21

    .line 700
    .line 701
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 702
    .line 703
    sget v7, Lnet/kaki87/soul2/testing/R$string;->domain_url:I

    .line 704
    .line 705
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 706
    .line 707
    .line 708
    goto :goto_12

    .line 709
    :cond_21
    const/16 v6, 0x25

    .line 710
    .line 711
    if-ne v2, v6, :cond_22

    .line 712
    .line 713
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 714
    .line 715
    sget v7, Lnet/kaki87/soul2/testing/R$string;->memo_title:I

    .line 716
    .line 717
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 718
    .line 719
    .line 720
    goto :goto_12

    .line 721
    :cond_22
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 722
    .line 723
    sget v7, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 724
    .line 725
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 726
    .line 727
    .line 728
    :goto_12
    if-ne v2, v13, :cond_23

    .line 729
    .line 730
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 731
    .line 732
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 733
    .line 734
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 735
    .line 736
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    .line 738
    .line 739
    goto :goto_13

    .line 740
    :cond_23
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 741
    .line 742
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 743
    .line 744
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 745
    .line 746
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    .line 748
    .line 749
    :goto_13
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 750
    .line 751
    if-eqz v6, :cond_24

    .line 752
    .line 753
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 754
    .line 755
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 756
    .line 757
    .line 758
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 759
    .line 760
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 761
    .line 762
    .line 763
    goto :goto_14

    .line 764
    :cond_24
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 765
    .line 766
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 767
    .line 768
    .line 769
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 770
    .line 771
    const/high16 v7, -0x1000000

    .line 772
    .line 773
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 774
    .line 775
    .line 776
    :goto_14
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->l0:Landroid/widget/LinearLayout;

    .line 777
    .line 778
    const/4 v7, 0x0

    .line 779
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 780
    .line 781
    .line 782
    :cond_25
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 783
    .line 784
    iget v6, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 785
    .line 786
    const/4 v7, 0x3

    .line 787
    if-ne v6, v7, :cond_26

    .line 788
    .line 789
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 790
    .line 791
    if-eqz v6, :cond_26

    .line 792
    .line 793
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 794
    .line 795
    const/4 v7, 0x0

    .line 796
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 797
    .line 798
    .line 799
    new-instance v6, Lcom/mycompany/app/dialog/DialogInfo$14;

    .line 800
    .line 801
    invoke-direct {v6, v1}, Lcom/mycompany/app/dialog/DialogInfo$14;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 805
    .line 806
    .line 807
    :cond_26
    const/16 v6, 0x19

    .line 808
    .line 809
    if-eqz v3, :cond_32

    .line 810
    .line 811
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 812
    .line 813
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 814
    .line 815
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 816
    .line 817
    .line 818
    move-result v7

    .line 819
    if-nez v7, :cond_32

    .line 820
    .line 821
    const/16 v7, 0x11

    .line 822
    .line 823
    if-eq v2, v7, :cond_2e

    .line 824
    .line 825
    const/16 v7, 0x12

    .line 826
    .line 827
    if-ne v2, v7, :cond_27

    .line 828
    .line 829
    goto/16 :goto_17

    .line 830
    .line 831
    :cond_27
    if-eq v2, v10, :cond_2d

    .line 832
    .line 833
    if-eq v2, v14, :cond_2d

    .line 834
    .line 835
    if-eq v2, v15, :cond_2d

    .line 836
    .line 837
    if-eq v2, v5, :cond_2d

    .line 838
    .line 839
    if-eq v2, v8, :cond_2d

    .line 840
    .line 841
    const/16 v5, 0x1d

    .line 842
    .line 843
    if-eq v2, v5, :cond_2d

    .line 844
    .line 845
    const/16 v5, 0x1e

    .line 846
    .line 847
    if-ne v2, v5, :cond_28

    .line 848
    .line 849
    goto :goto_16

    .line 850
    :cond_28
    if-ne v2, v13, :cond_29

    .line 851
    .line 852
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 853
    .line 854
    sget v7, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 855
    .line 856
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 857
    .line 858
    .line 859
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 860
    .line 861
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 862
    .line 863
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 864
    .line 865
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    .line 867
    .line 868
    goto/16 :goto_18

    .line 869
    .line 870
    :cond_29
    if-eq v2, v6, :cond_2c

    .line 871
    .line 872
    const/16 v5, 0x23

    .line 873
    .line 874
    if-ne v2, v5, :cond_2a

    .line 875
    .line 876
    goto :goto_15

    .line 877
    :cond_2a
    const/16 v5, 0x24

    .line 878
    .line 879
    if-ne v2, v5, :cond_2b

    .line 880
    .line 881
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 882
    .line 883
    sget v7, Lnet/kaki87/soul2/testing/R$string;->user_agent:I

    .line 884
    .line 885
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 886
    .line 887
    .line 888
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 889
    .line 890
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 891
    .line 892
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 893
    .line 894
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    .line 896
    .line 897
    goto :goto_18

    .line 898
    :cond_2b
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 899
    .line 900
    sget v7, Lnet/kaki87/soul2/testing/R$string;->domain_name:I

    .line 901
    .line 902
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 903
    .line 904
    .line 905
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 906
    .line 907
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 908
    .line 909
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 910
    .line 911
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    .line 913
    .line 914
    goto :goto_18

    .line 915
    :cond_2c
    :goto_15
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 916
    .line 917
    sget v7, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 918
    .line 919
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 920
    .line 921
    .line 922
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 923
    .line 924
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 925
    .line 926
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 927
    .line 928
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    .line 930
    .line 931
    goto :goto_18

    .line 932
    :cond_2d
    :goto_16
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 933
    .line 934
    sget v7, Lnet/kaki87/soul2/testing/R$string;->domain_url:I

    .line 935
    .line 936
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 937
    .line 938
    .line 939
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 940
    .line 941
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 942
    .line 943
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 944
    .line 945
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    .line 947
    .line 948
    goto :goto_18

    .line 949
    :cond_2e
    :goto_17
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 950
    .line 951
    sget v7, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 952
    .line 953
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 954
    .line 955
    .line 956
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 957
    .line 958
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 959
    .line 960
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v5

    .line 964
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 965
    .line 966
    .line 967
    move-result v7

    .line 968
    if-eqz v7, :cond_2f

    .line 969
    .line 970
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 971
    .line 972
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 973
    .line 974
    :cond_2f
    if-eqz v5, :cond_30

    .line 975
    .line 976
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 977
    .line 978
    .line 979
    move-result v7

    .line 980
    const/16 v8, 0xc8

    .line 981
    .line 982
    if-le v7, v8, :cond_30

    .line 983
    .line 984
    const/4 v7, 0x0

    .line 985
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v5

    .line 989
    :cond_30
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 990
    .line 991
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    .line 993
    .line 994
    :goto_18
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 995
    .line 996
    if-eqz v5, :cond_31

    .line 997
    .line 998
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 999
    .line 1000
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1001
    .line 1002
    .line 1003
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1004
    .line 1005
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1006
    .line 1007
    .line 1008
    goto :goto_19

    .line 1009
    :cond_31
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1010
    .line 1011
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1012
    .line 1013
    .line 1014
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1015
    .line 1016
    const/high16 v7, -0x1000000

    .line 1017
    .line 1018
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1019
    .line 1020
    .line 1021
    :goto_19
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->o0:Landroid/widget/LinearLayout;

    .line 1022
    .line 1023
    const/4 v7, 0x0

    .line 1024
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    .line 1026
    .line 1027
    :cond_32
    const/16 v5, 0x20

    .line 1028
    .line 1029
    if-ne v2, v5, :cond_39

    .line 1030
    .line 1031
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1032
    .line 1033
    iget v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 1034
    .line 1035
    const/16 v8, 0x8

    .line 1036
    .line 1037
    if-ne v7, v8, :cond_35

    .line 1038
    .line 1039
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 1040
    .line 1041
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v5

    .line 1045
    if-nez v5, :cond_35

    .line 1046
    .line 1047
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->r0:Landroid/widget/LinearLayout;

    .line 1048
    .line 1049
    const/4 v7, 0x0

    .line 1050
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    .line 1052
    .line 1053
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1054
    .line 1055
    sget v7, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 1056
    .line 1057
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1058
    .line 1059
    .line 1060
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1061
    .line 1062
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 1063
    .line 1064
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v5

    .line 1068
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1069
    .line 1070
    .line 1071
    move-result v7

    .line 1072
    if-nez v7, :cond_33

    .line 1073
    .line 1074
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1075
    .line 1076
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    .line 1078
    .line 1079
    goto :goto_1a

    .line 1080
    :cond_33
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1081
    .line 1082
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1083
    .line 1084
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 1085
    .line 1086
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    .line 1088
    .line 1089
    :goto_1a
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1090
    .line 1091
    if-eqz v5, :cond_34

    .line 1092
    .line 1093
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1094
    .line 1095
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1096
    .line 1097
    .line 1098
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1099
    .line 1100
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1101
    .line 1102
    .line 1103
    goto :goto_1b

    .line 1104
    :cond_34
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1105
    .line 1106
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1107
    .line 1108
    .line 1109
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1110
    .line 1111
    const/high16 v7, -0x1000000

    .line 1112
    .line 1113
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1114
    .line 1115
    .line 1116
    :cond_35
    :goto_1b
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1117
    .line 1118
    iget v7, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 1119
    .line 1120
    const/4 v8, 0x1

    .line 1121
    if-ne v7, v8, :cond_37

    .line 1122
    .line 1123
    iget-object v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1124
    .line 1125
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v5

    .line 1129
    if-nez v5, :cond_39

    .line 1130
    .line 1131
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 1132
    .line 1133
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1134
    .line 1135
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1136
    .line 1137
    invoke-static {v5, v7}, Lcom/mycompany/app/main/MainUtil;->V1(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainUtil$SizeItem;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v5

    .line 1141
    if-eqz v5, :cond_39

    .line 1142
    .line 1143
    iget v7, v5, Lcom/mycompany/app/main/MainUtil$SizeItem;->a:I

    .line 1144
    .line 1145
    if-lez v7, :cond_39

    .line 1146
    .line 1147
    iget v7, v5, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    .line 1148
    .line 1149
    if-lez v7, :cond_39

    .line 1150
    .line 1151
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->u0:Landroid/widget/LinearLayout;

    .line 1152
    .line 1153
    const/4 v8, 0x0

    .line 1154
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    .line 1156
    .line 1157
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1158
    .line 1159
    sget v8, Lnet/kaki87/soul2/testing/R$string;->resolution:I

    .line 1160
    .line 1161
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1162
    .line 1163
    .line 1164
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1165
    .line 1166
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    const-string v10, ""

    .line 1169
    .line 1170
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    iget v10, v5, Lcom/mycompany/app/main/MainUtil$SizeItem;->a:I

    .line 1174
    .line 1175
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    .line 1178
    const-string v10, " x "

    .line 1179
    .line 1180
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    iget v5, v5, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    .line 1184
    .line 1185
    invoke-static {v8, v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 1186
    .line 1187
    .line 1188
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1189
    .line 1190
    const/4 v7, 0x3

    .line 1191
    invoke-virtual {v5, v7}, Landroid/view/View;->setTextDirection(I)V

    .line 1192
    .line 1193
    .line 1194
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1195
    .line 1196
    if-eqz v5, :cond_36

    .line 1197
    .line 1198
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1199
    .line 1200
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1204
    .line 1205
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1206
    .line 1207
    .line 1208
    goto/16 :goto_1d

    .line 1209
    .line 1210
    :cond_36
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1211
    .line 1212
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1213
    .line 1214
    .line 1215
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1216
    .line 1217
    const/high16 v7, -0x1000000

    .line 1218
    .line 1219
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1220
    .line 1221
    .line 1222
    goto :goto_1d

    .line 1223
    :cond_37
    const/4 v5, 0x2

    .line 1224
    if-ne v7, v5, :cond_39

    .line 1225
    .line 1226
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 1227
    .line 1228
    if-eqz v5, :cond_39

    .line 1229
    .line 1230
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1231
    .line 1232
    if-eqz v5, :cond_38

    .line 1233
    .line 1234
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1235
    .line 1236
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1237
    .line 1238
    .line 1239
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1240
    .line 1241
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1242
    .line 1243
    .line 1244
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1245
    .line 1246
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1247
    .line 1248
    .line 1249
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1250
    .line 1251
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1252
    .line 1253
    .line 1254
    goto :goto_1c

    .line 1255
    :cond_38
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1256
    .line 1257
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1258
    .line 1259
    .line 1260
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1261
    .line 1262
    const/high16 v7, -0x1000000

    .line 1263
    .line 1264
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1265
    .line 1266
    .line 1267
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1268
    .line 1269
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1270
    .line 1271
    .line 1272
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1273
    .line 1274
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1275
    .line 1276
    .line 1277
    :goto_1c
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->u0:Landroid/widget/LinearLayout;

    .line 1278
    .line 1279
    const/4 v7, 0x0

    .line 1280
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    .line 1282
    .line 1283
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->D0:Landroid/widget/LinearLayout;

    .line 1284
    .line 1285
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    .line 1287
    .line 1288
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1289
    .line 1290
    sget v7, Lnet/kaki87/soul2/testing/R$string;->resolution:I

    .line 1291
    .line 1292
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1293
    .line 1294
    .line 1295
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1296
    .line 1297
    const-string v7, "."

    .line 1298
    .line 1299
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    .line 1301
    .line 1302
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1303
    .line 1304
    sget v8, Lnet/kaki87/soul2/testing/R$string;->duration:I

    .line 1305
    .line 1306
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1307
    .line 1308
    .line 1309
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1310
    .line 1311
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    .line 1313
    .line 1314
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 1315
    .line 1316
    const/4 v7, 0x0

    .line 1317
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 1318
    .line 1319
    .line 1320
    new-instance v5, Lcom/mycompany/app/dialog/DialogInfo$15;

    .line 1321
    .line 1322
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogInfo$15;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 1326
    .line 1327
    .line 1328
    :cond_39
    :goto_1d
    if-eqz v3, :cond_3a

    .line 1329
    .line 1330
    if-ne v2, v6, :cond_40

    .line 1331
    .line 1332
    :cond_3a
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1333
    .line 1334
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 1335
    .line 1336
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v3

    .line 1340
    if-nez v3, :cond_40

    .line 1341
    .line 1342
    const/16 v3, 0xe

    .line 1343
    .line 1344
    if-eq v2, v3, :cond_3e

    .line 1345
    .line 1346
    const/16 v3, 0xf

    .line 1347
    .line 1348
    if-eq v2, v3, :cond_3e

    .line 1349
    .line 1350
    const/16 v3, 0x10

    .line 1351
    .line 1352
    if-ne v2, v3, :cond_3b

    .line 1353
    .line 1354
    goto :goto_1e

    .line 1355
    :cond_3b
    const/16 v3, 0x18

    .line 1356
    .line 1357
    if-ne v2, v3, :cond_3c

    .line 1358
    .line 1359
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1360
    .line 1361
    sget v3, Lnet/kaki87/soul2/testing/R$string;->memo_title:I

    .line 1362
    .line 1363
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1364
    .line 1365
    .line 1366
    goto :goto_1f

    .line 1367
    :cond_3c
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1368
    .line 1369
    iget-boolean v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 1370
    .line 1371
    if-eqz v2, :cond_3d

    .line 1372
    .line 1373
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1374
    .line 1375
    sget v3, Lnet/kaki87/soul2/testing/R$string;->file:I

    .line 1376
    .line 1377
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1378
    .line 1379
    .line 1380
    goto :goto_1f

    .line 1381
    :cond_3d
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1382
    .line 1383
    sget v3, Lnet/kaki87/soul2/testing/R$string;->size:I

    .line 1384
    .line 1385
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1386
    .line 1387
    .line 1388
    goto :goto_1f

    .line 1389
    :cond_3e
    :goto_1e
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1390
    .line 1391
    sget v3, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 1392
    .line 1393
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1394
    .line 1395
    .line 1396
    :goto_1f
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->G0:Landroid/widget/LinearLayout;

    .line 1397
    .line 1398
    const/4 v7, 0x0

    .line 1399
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1400
    .line 1401
    .line 1402
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1403
    .line 1404
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1405
    .line 1406
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 1407
    .line 1408
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    .line 1410
    .line 1411
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1412
    .line 1413
    if-eqz v2, :cond_3f

    .line 1414
    .line 1415
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1416
    .line 1417
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1418
    .line 1419
    .line 1420
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1421
    .line 1422
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1423
    .line 1424
    .line 1425
    goto :goto_20

    .line 1426
    :cond_3f
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1427
    .line 1428
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1429
    .line 1430
    .line 1431
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1432
    .line 1433
    const/high16 v7, -0x1000000

    .line 1434
    .line 1435
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1436
    .line 1437
    .line 1438
    :cond_40
    :goto_20
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1439
    .line 1440
    iget-wide v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 1441
    .line 1442
    cmp-long v2, v2, v16

    .line 1443
    .line 1444
    if-lez v2, :cond_42

    .line 1445
    .line 1446
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->J0:Landroid/widget/LinearLayout;

    .line 1447
    .line 1448
    const/4 v7, 0x0

    .line 1449
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1450
    .line 1451
    .line 1452
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1453
    .line 1454
    sget v3, Lnet/kaki87/soul2/testing/R$string;->modified:I

    .line 1455
    .line 1456
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1457
    .line 1458
    .line 1459
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->L0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1460
    .line 1461
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogInfo;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1462
    .line 1463
    iget-wide v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 1464
    .line 1465
    const/4 v3, 0x0

    .line 1466
    invoke-static {v5, v6, v3, v4}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v3

    .line 1470
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1471
    .line 1472
    .line 1473
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1474
    .line 1475
    if-eqz v2, :cond_41

    .line 1476
    .line 1477
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1478
    .line 1479
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1480
    .line 1481
    .line 1482
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->L0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1483
    .line 1484
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1485
    .line 1486
    .line 1487
    goto :goto_21

    .line 1488
    :cond_41
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1489
    .line 1490
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1491
    .line 1492
    .line 1493
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->L0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1494
    .line 1495
    const/high16 v7, -0x1000000

    .line 1496
    .line 1497
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1498
    .line 1499
    .line 1500
    :cond_42
    :goto_21
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 1501
    .line 1502
    if-nez v2, :cond_43

    .line 1503
    .line 1504
    return-void

    .line 1505
    :cond_43
    new-instance v3, Lcom/mycompany/app/dialog/DialogInfo$2$1;

    .line 1506
    .line 1507
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogInfo$2$1;-><init>(Lcom/mycompany/app/dialog/DialogInfo$2;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 1511
    .line 1512
    .line 1513
    return-void
.end method
