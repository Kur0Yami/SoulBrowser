.class public Lcom/mycompany/app/quick/QuickControl;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Landroid/widget/RelativeLayout;

.field public g:Lcom/mycompany/app/view/MyButtonImage;

.field public h:Lcom/mycompany/app/view/MyTextFast;

.field public i:Lcom/mycompany/app/view/MyTextFast;

.field public j:Lcom/mycompany/app/view/MyButtonCheck;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/LinearLayout;

.field public q:Lcom/mycompany/app/view/MyLineText;

.field public r:Lcom/mycompany/app/view/MyTextFast;

.field public s:Lcom/mycompany/app/quick/QuickView;


# virtual methods
.method public final a(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->quick_ctrl_head:I

    .line 11
    .line 12
    sget v3, Lnet/kaki87/soul2/testing/R$id;->quick_ctrl_count:I

    .line 13
    .line 14
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    .line 20
    .line 21
    .line 22
    sget v5, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 23
    .line 24
    const/4 v6, -0x1

    .line 25
    invoke-virtual {v0, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 34
    .line 35
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    .line 37
    .line 38
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    .line 40
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 41
    .line 42
    invoke-direct {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 46
    .line 47
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    new-instance v7, Lcom/mycompany/app/view/MyTextFast;

    .line 54
    .line 55
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v3}, Landroid/view/View;->setId(I)V

    .line 59
    .line 60
    .line 61
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    invoke-virtual {v7, v8, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    .line 66
    .line 67
    const/16 v8, 0x10

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    .line 71
    .line 72
    const/4 v10, 0x3

    .line 73
    invoke-virtual {v7, v10}, Landroid/view/View;->setTextDirection(I)V

    .line 74
    .line 75
    .line 76
    const/4 v11, 0x1

    .line 77
    const/high16 v12, 0x41800000    # 16.0f

    .line 78
    .line 79
    invoke-virtual {v7, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 80
    .line 81
    .line 82
    const/4 v13, -0x2

    .line 83
    const/16 v14, 0x15

    .line 84
    .line 85
    invoke-static {v13, v6, v14}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    const/high16 v15, 0x42500000    # 52.0f

    .line 90
    .line 91
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    float-to-int v15, v15

    .line 96
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    new-instance v13, Lcom/mycompany/app/view/MyTextFast;

    .line 103
    .line 104
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 111
    .line 112
    .line 113
    const/high16 v15, 0x41900000    # 18.0f

    .line 114
    .line 115
    invoke-virtual {v13, v11, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 116
    .line 117
    .line 118
    sget v15, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 119
    .line 120
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(I)V

    .line 121
    .line 122
    .line 123
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    .line 125
    invoke-direct {v15, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v15, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 129
    .line 130
    .line 131
    sget v3, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 132
    .line 133
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    new-instance v3, Lcom/mycompany/app/view/MyButtonCheck;

    .line 140
    .line 141
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    .line 146
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 147
    .line 148
    invoke-direct {v8, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    new-instance v8, Landroid/view/View;

    .line 158
    .line 159
    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->shadow_list_up:I

    .line 163
    .line 164
    invoke-virtual {v8, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    .line 166
    .line 167
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 168
    .line 169
    sget v11, Lcom/mycompany/app/main/MainApp;->e1:I

    .line 170
    .line 171
    invoke-direct {v15, v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v15, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .line 179
    .line 180
    new-instance v11, Landroid/view/View;

    .line 181
    .line 182
    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 186
    .line 187
    sget v12, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 188
    .line 189
    invoke-direct {v15, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v15, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    new-instance v12, Landroid/view/View;

    .line 199
    .line 200
    invoke-direct {v12, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 204
    .line 205
    sget v6, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 206
    .line 207
    invoke-direct {v15, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v15, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .line 218
    .line 219
    new-instance v2, Landroid/view/View;

    .line 220
    .line 221
    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    .line 226
    sget v10, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 227
    .line 228
    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 229
    .line 230
    .line 231
    const/16 v10, 0xc

    .line 232
    .line 233
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    .line 235
    .line 236
    sget v15, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 237
    .line 238
    iput v15, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 239
    .line 240
    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    .line 242
    .line 243
    new-instance v6, Landroid/view/View;

    .line 244
    .line 245
    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 246
    .line 247
    .line 248
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    .line 250
    sget v9, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 251
    .line 252
    invoke-direct {v15, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 259
    .line 260
    .line 261
    sget v9, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 262
    .line 263
    iput v9, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 264
    .line 265
    invoke-virtual {v0, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    new-instance v9, Landroid/widget/LinearLayout;

    .line 269
    .line 270
    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    const/4 v14, 0x0

    .line 274
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    .line 279
    .line 280
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 281
    .line 282
    sget v14, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 283
    .line 284
    move-object/from16 v17, v6

    .line 285
    .line 286
    const/4 v6, -0x1

    .line 287
    invoke-direct {v15, v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    const/16 v10, 0x11

    .line 297
    .line 298
    move-object/from16 v16, v2

    .line 299
    .line 300
    const/high16 v14, 0x41800000    # 16.0f

    .line 301
    .line 302
    const/4 v15, 0x1

    .line 303
    invoke-static {v1, v10, v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    sget v14, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 308
    .line 309
    const/4 v15, 0x0

    .line 310
    invoke-static {v2, v14, v1, v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    const/high16 v6, 0x3f800000    # 1.0f

    .line 315
    .line 316
    iput v6, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 317
    .line 318
    invoke-virtual {v9, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    .line 320
    .line 321
    new-instance v14, Lcom/mycompany/app/view/MyTextFast;

    .line 322
    .line 323
    invoke-direct {v14, v1}, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 327
    .line 328
    .line 329
    const/high16 v1, 0x41800000    # 16.0f

    .line 330
    .line 331
    const/4 v10, 0x1

    .line 332
    invoke-virtual {v14, v10, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 333
    .line 334
    .line 335
    sget v1, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 336
    .line 337
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 338
    .line 339
    .line 340
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 341
    .line 342
    const/4 v10, -0x1

    .line 343
    invoke-direct {v1, v15, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 344
    .line 345
    .line 346
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 347
    .line 348
    invoke-virtual {v9, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    .line 350
    .line 351
    iput-object v4, v0, Lcom/mycompany/app/quick/QuickControl;->f:Landroid/widget/RelativeLayout;

    .line 352
    .line 353
    iput-object v5, v0, Lcom/mycompany/app/quick/QuickControl;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 354
    .line 355
    iput-object v13, v0, Lcom/mycompany/app/quick/QuickControl;->h:Lcom/mycompany/app/view/MyTextFast;

    .line 356
    .line 357
    iput-object v7, v0, Lcom/mycompany/app/quick/QuickControl;->i:Lcom/mycompany/app/view/MyTextFast;

    .line 358
    .line 359
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickControl;->j:Lcom/mycompany/app/view/MyButtonCheck;

    .line 360
    .line 361
    iput-object v8, v0, Lcom/mycompany/app/quick/QuickControl;->k:Landroid/view/View;

    .line 362
    .line 363
    iput-object v11, v0, Lcom/mycompany/app/quick/QuickControl;->l:Landroid/view/View;

    .line 364
    .line 365
    iput-object v12, v0, Lcom/mycompany/app/quick/QuickControl;->m:Landroid/view/View;

    .line 366
    .line 367
    move-object/from16 v1, v16

    .line 368
    .line 369
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickControl;->n:Landroid/view/View;

    .line 370
    .line 371
    move-object/from16 v1, v17

    .line 372
    .line 373
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickControl;->o:Landroid/view/View;

    .line 374
    .line 375
    iput-object v9, v0, Lcom/mycompany/app/quick/QuickControl;->p:Landroid/widget/LinearLayout;

    .line 376
    .line 377
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 378
    .line 379
    iput-object v14, v0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 380
    .line 381
    move/from16 v1, p1

    .line 382
    .line 383
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickControl;->c:Z

    .line 384
    .line 385
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/quick/QuickControl;->setColor(Z)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickControl;->f:Landroid/widget/RelativeLayout;

    .line 389
    .line 390
    new-instance v2, Lcom/mycompany/app/quick/QuickControl$1;

    .line 391
    .line 392
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    .line 397
    .line 398
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickControl;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 399
    .line 400
    new-instance v2, Lcom/mycompany/app/quick/QuickControl$2;

    .line 401
    .line 402
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickControl$2;-><init>(Lcom/mycompany/app/quick/QuickControl;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickControl;->j:Lcom/mycompany/app/view/MyButtonCheck;

    .line 409
    .line 410
    new-instance v2, Lcom/mycompany/app/quick/QuickControl$3;

    .line 411
    .line 412
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickControl$3;-><init>(Lcom/mycompany/app/quick/QuickControl;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    .line 417
    .line 418
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 419
    .line 420
    new-instance v2, Lcom/mycompany/app/quick/QuickControl$4;

    .line 421
    .line 422
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickControl$4;-><init>(Lcom/mycompany/app/quick/QuickControl;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    .line 427
    .line 428
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 429
    .line 430
    new-instance v2, Lcom/mycompany/app/quick/QuickControl$5;

    .line 431
    .line 432
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickControl$5;-><init>(Lcom/mycompany/app/quick/QuickControl;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    .line 437
    .line 438
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickControl;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickControl;->j:Lcom/mycompany/app/view/MyButtonCheck;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->j:Lcom/mycompany/app/view/MyButtonCheck;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 28
    .line 29
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->f:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->h:Lcom/mycompany/app/view/MyTextFast;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->i:Lcom/mycompany/app/view/MyTextFast;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->k:Landroid/view/View;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->l:Landroid/view/View;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->m:Landroid/view/View;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->n:Landroid/view/View;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->o:Landroid/view/View;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->p:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickControl;->s:Lcom/mycompany/app/quick/QuickView;

    .line 50
    .line 51
    return-void
.end method

.method public final c(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickControl;->i:Lcom/mycompany/app/view/MyTextFast;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickControl;->c:Z

    .line 7
    .line 8
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickControl;->j:Lcom/mycompany/app/view/MyButtonCheck;

    .line 15
    .line 16
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 17
    .line 18
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 21
    .line 22
    .line 23
    const v0, -0x50506

    .line 24
    .line 25
    .line 26
    const v1, -0x7f7f80

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickControl;->j:Lcom/mycompany/app/view/MyButtonCheck;

    .line 31
    .line 32
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 33
    .line 34
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 37
    .line 38
    .line 39
    const v0, -0xe19938

    .line 40
    .line 41
    .line 42
    const v1, -0x252526

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickControl;->i:Lcom/mycompany/app/view/MyTextFast;

    .line 46
    .line 47
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickControl;->j:Lcom/mycompany/app/view/MyButtonCheck;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x1

    .line 58
    if-lt p1, p2, :cond_2

    .line 59
    .line 60
    move p2, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move p2, v3

    .line 63
    :goto_1
    invoke-virtual {v2, p2, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 64
    .line 65
    .line 66
    if-lez p1, :cond_3

    .line 67
    .line 68
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 69
    .line 70
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 80
    .line 81
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 85
    .line 86
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    :goto_2
    if-ne p1, v4, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 92
    .line 93
    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public setColor(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickControl;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickControl;->c:Z

    .line 7
    .line 8
    sget v0, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->V4()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq p1, v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-ne p1, v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget v0, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 28
    .line 29
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->f:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eq v0, p1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->f:Landroid/widget/RelativeLayout;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->f:Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->k:Landroid/view/View;

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickControl;->c:Z

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    const/16 v0, 0x8

    .line 61
    .line 62
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickControl;->c:Z

    .line 66
    .line 67
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/high16 v0, -0x1000000

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->f:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->p:Landroid/widget/LinearLayout;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->h:Lcom/mycompany/app/view/MyTextFast;

    .line 93
    .line 94
    const v0, -0x50506

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->i:Lcom/mycompany/app/view/MyTextFast;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->l:Landroid/view/View;

    .line 106
    .line 107
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_top_left_b:I

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->m:Landroid/view/View;

    .line 113
    .line 114
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_top_right_b:I

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->n:Landroid/view/View;

    .line 120
    .line 121
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_b:I

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->o:Landroid/view/View;

    .line 127
    .line 128
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_b:I

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 134
    .line 135
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 146
    .line 147
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    const v0, -0xc0c0c1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->j:Lcom/mycompany/app/view/MyButtonCheck;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->f:Landroid/widget/RelativeLayout;

    .line 172
    .line 173
    const v1, -0x70708

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->p:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 185
    .line 186
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->h:Lcom/mycompany/app/view/MyTextFast;

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->i:Lcom/mycompany/app/view/MyTextFast;

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->l:Landroid/view/View;

    .line 202
    .line 203
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->round_top_left_g:I

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->m:Landroid/view/View;

    .line 209
    .line 210
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->round_top_right_g:I

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->n:Landroid/view/View;

    .line 216
    .line 217
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_g:I

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->o:Landroid/view/View;

    .line 223
    .line 224
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_g:I

    .line 225
    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 230
    .line 231
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->q:Lcom/mycompany/app/view/MyLineText;

    .line 237
    .line 238
    const v0, -0xe19938

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 245
    .line 246
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 247
    .line 248
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->r:Lcom/mycompany/app/view/MyTextFast;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 257
    .line 258
    const/high16 v0, 0x21000000

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->j:Lcom/mycompany/app/view/MyButtonCheck;

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method public setQuickMode(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickControl;->c:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickControl;->c:Z

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickControl;->setColor(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setQuickView(Lcom/mycompany/app/quick/QuickView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickControl;->s:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    return-void
.end method
