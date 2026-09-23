.class Lcom/mycompany/app/setting/SettingSwipe$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSwipe;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSwipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$18;->c:Lcom/mycompany/app/setting/SettingSwipe;

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe$18;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingSwipe;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyDialogLinear;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 21
    .line 22
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 28
    .line 29
    .line 30
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 31
    .line 32
    const/4 v6, -0x1

    .line 33
    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 49
    .line 50
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    const v8, 0x800013

    .line 54
    .line 55
    .line 56
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    .line 58
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 59
    .line 60
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    invoke-direct {v7, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    .line 71
    .line 72
    const/4 v10, 0x2

    .line 73
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74
    .line 75
    .line 76
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 77
    .line 78
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 79
    .line 80
    .line 81
    const/high16 v11, 0x41800000    # 16.0f

    .line 82
    .line 83
    invoke-virtual {v7, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 84
    .line 85
    .line 86
    sget v12, Lnet/kaki87/soul2/testing/R$string;->tip:I

    .line 87
    .line 88
    const/4 v13, -0x2

    .line 89
    invoke-static {v7, v12, v6, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    .line 95
    iget-object v8, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 96
    .line 97
    const/high16 v14, 0x42800000    # 64.0f

    .line 98
    .line 99
    invoke-static {v8, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    float-to-int v8, v8

    .line 104
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 105
    .line 106
    .line 107
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 108
    .line 109
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    new-instance v4, Landroidx/core/widget/NestedScrollView;

    .line 116
    .line 117
    invoke-direct {v4, v1, v9}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v10}, Landroid/view/View;->setOverScrollMode(I)V

    .line 121
    .line 122
    .line 123
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .line 125
    const/4 v10, 0x0

    .line 126
    invoke-direct {v8, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    const/high16 v10, 0x3f800000    # 1.0f

    .line 130
    .line 131
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 132
    .line 133
    invoke-virtual {v2, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    new-instance v8, Landroid/widget/LinearLayout;

    .line 137
    .line 138
    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 142
    .line 143
    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    .line 148
    .line 149
    iget-object v12, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 150
    .line 151
    const/high16 v14, 0x42900000    # 72.0f

    .line 152
    .line 153
    invoke-static {v12, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    float-to-int v12, v12

    .line 158
    invoke-virtual {v8, v12}, Landroid/view/View;->setMinimumHeight(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v8, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 162
    .line 163
    .line 164
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    invoke-direct {v4, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8, v4, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 173
    .line 174
    .line 175
    iget-object v12, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 176
    .line 177
    const/high16 v14, 0x41b00000    # 22.0f

    .line 178
    .line 179
    invoke-static {v12, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    float-to-int v12, v12

    .line 184
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 185
    .line 186
    invoke-direct {v14, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 187
    .line 188
    .line 189
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 190
    .line 191
    int-to-float v15, v15

    .line 192
    invoke-virtual {v14, v15, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 193
    .line 194
    .line 195
    const/high16 v15, 0x41600000    # 14.0f

    .line 196
    .line 197
    invoke-virtual {v14, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 198
    .line 199
    .line 200
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 201
    .line 202
    invoke-direct {v15, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    .line 204
    .line 205
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 206
    .line 207
    iput v10, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 208
    .line 209
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    .line 214
    .line 215
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    invoke-direct {v10, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 221
    .line 222
    .line 223
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 224
    .line 225
    invoke-direct {v15, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    .line 227
    .line 228
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 229
    .line 230
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 231
    .line 232
    invoke-virtual {v8, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .line 234
    .line 235
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 236
    .line 237
    invoke-direct {v11, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 238
    .line 239
    .line 240
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 241
    .line 242
    int-to-float v15, v15

    .line 243
    const/high16 v9, 0x3f800000    # 1.0f

    .line 244
    .line 245
    invoke-virtual {v11, v15, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 246
    .line 247
    .line 248
    const/high16 v9, 0x41600000    # 14.0f

    .line 249
    .line 250
    invoke-virtual {v11, v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 251
    .line 252
    .line 253
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 254
    .line 255
    invoke-direct {v9, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 256
    .line 257
    .line 258
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 259
    .line 260
    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 261
    .line 262
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 269
    .line 270
    const/4 v15, 0x0

    .line 271
    invoke-direct {v9, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 272
    .line 273
    .line 274
    const/high16 v15, 0x41800000    # 16.0f

    .line 275
    .line 276
    invoke-virtual {v9, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 277
    .line 278
    .line 279
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 280
    .line 281
    invoke-direct {v15, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 282
    .line 283
    .line 284
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 285
    .line 286
    iput v6, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 287
    .line 288
    invoke-virtual {v8, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .line 290
    .line 291
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 292
    .line 293
    const/4 v15, 0x0

    .line 294
    invoke-direct {v6, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 295
    .line 296
    .line 297
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 298
    .line 299
    int-to-float v15, v15

    .line 300
    const/high16 v13, 0x3f800000    # 1.0f

    .line 301
    .line 302
    invoke-virtual {v6, v15, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 303
    .line 304
    .line 305
    const/high16 v13, 0x41600000    # 14.0f

    .line 306
    .line 307
    invoke-virtual {v6, v3, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 308
    .line 309
    .line 310
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 311
    .line 312
    const/4 v3, -0x1

    .line 313
    const/4 v15, -0x2

    .line 314
    invoke-direct {v13, v3, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    .line 316
    .line 317
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 318
    .line 319
    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 320
    .line 321
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v8, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 328
    .line 329
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    const/16 v8, 0x11

    .line 333
    .line 334
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 335
    .line 336
    .line 337
    const/4 v8, 0x1

    .line 338
    const/high16 v15, 0x41800000    # 16.0f

    .line 339
    .line 340
    invoke-virtual {v3, v8, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 341
    .line 342
    .line 343
    sget v12, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 344
    .line 345
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    .line 346
    .line 347
    .line 348
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 349
    .line 350
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v8}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 354
    .line 355
    .line 356
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 357
    .line 358
    const/4 v12, -0x1

    .line 359
    invoke-virtual {v2, v3, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 360
    .line 361
    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    sget v12, Lnet/kaki87/soul2/testing/R$string;->prev_page:I

    .line 368
    .line 369
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v12, " / "

    .line 377
    .line 378
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    sget v13, Lnet/kaki87/soul2/testing/R$string;->next_page:I

    .line 382
    .line 383
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v13

    .line 387
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    new-instance v13, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    sget v15, Lnet/kaki87/soul2/testing/R$string;->prev_tab:I

    .line 396
    .line 397
    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v15

    .line 401
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    sget v12, Lnet/kaki87/soul2/testing/R$string;->next_tab:I

    .line 408
    .line 409
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v12

    .line 413
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    new-instance v12, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v15, "P : "

    .line 419
    .line 420
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    sget v15, Lnet/kaki87/soul2/testing/R$string;->page_move:I

    .line 424
    .line 425
    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v15

    .line 429
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v12

    .line 436
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    .line 445
    .line 446
    new-instance v8, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v12, "T : "

    .line 449
    .line 450
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    sget v12, Lnet/kaki87/soul2/testing/R$string;->tab_move:I

    .line 454
    .line 455
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v12

    .line 459
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    .line 475
    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string v12, "S : "

    .line 479
    .line 480
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    sget v12, Lnet/kaki87/soul2/testing/R$string;->system_name:I

    .line 484
    .line 485
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v12

    .line 489
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    .line 498
    .line 499
    sget v8, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 500
    .line 501
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 502
    .line 503
    .line 504
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 505
    .line 506
    if-eqz v8, :cond_1

    .line 507
    .line 508
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_wb_incandescent_2_dark_24:I

    .line 509
    .line 510
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    .line 512
    .line 513
    const v5, -0x50506

    .line 514
    .line 515
    .line 516
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    .line 536
    .line 537
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 538
    .line 539
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    .line 544
    .line 545
    goto :goto_0

    .line 546
    :cond_1
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_wb_incandescent_2_black_24:I

    .line 547
    .line 548
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    .line 550
    .line 551
    const/high16 v5, -0x1000000

    .line 552
    .line 553
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 572
    .line 573
    .line 574
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 575
    .line 576
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 577
    .line 578
    .line 579
    const v4, -0xe19938

    .line 580
    .line 581
    .line 582
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 583
    .line 584
    .line 585
    :goto_0
    new-instance v4, Lcom/mycompany/app/setting/SettingSwipe$19;

    .line 586
    .line 587
    invoke-direct {v4, v1}, Lcom/mycompany/app/setting/SettingSwipe$19;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    .line 592
    .line 593
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingSwipe;->d2:Lcom/mycompany/app/view/MyDialogLinear;

    .line 594
    .line 595
    iget-object v2, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 596
    .line 597
    if-nez v2, :cond_2

    .line 598
    .line 599
    :goto_1
    return-void

    .line 600
    :cond_2
    new-instance v3, Lcom/mycompany/app/setting/SettingSwipe$20;

    .line 601
    .line 602
    invoke-direct {v3, v1}, Lcom/mycompany/app/setting/SettingSwipe$20;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    .line 607
    .line 608
    return-void
.end method
