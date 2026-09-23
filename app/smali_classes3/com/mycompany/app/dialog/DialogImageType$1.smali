.class Lcom/mycompany/app/dialog/DialogImageType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogImageType;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogImageType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageType$1;->c:Lcom/mycompany/app/dialog/DialogImageType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageType$1;->c:Lcom/mycompany/app/dialog/DialogImageType;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_count_view:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    new-instance v6, Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    invoke-direct {v6, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 24
    .line 25
    const/4 v8, -0x1

    .line 26
    invoke-virtual {v5, v6, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 27
    .line 28
    .line 29
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    invoke-direct {v7, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v3}, Landroid/view/View;->setId(I)V

    .line 36
    .line 37
    .line 38
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    invoke-virtual {v7, v10, v11, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    .line 43
    .line 44
    const/16 v10, 0x10

    .line 45
    .line 46
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    .line 48
    .line 49
    const/4 v12, 0x3

    .line 50
    invoke-virtual {v7, v12}, Landroid/view/View;->setTextDirection(I)V

    .line 51
    .line 52
    .line 53
    const/high16 v12, 0x41800000    # 16.0f

    .line 54
    .line 55
    invoke-virtual {v7, v4, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 56
    .line 57
    .line 58
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .line 60
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 61
    .line 62
    const/4 v15, -0x2

    .line 63
    invoke-direct {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    const/16 v14, 0x15

    .line 67
    .line 68
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    .line 70
    .line 71
    const/high16 v12, 0x42700000    # 60.0f

    .line 72
    .line 73
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    float-to-int v12, v12

    .line 78
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-direct {v12, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 93
    .line 94
    .line 95
    const/high16 v13, 0x41900000    # 18.0f

    .line 96
    .line 97
    invoke-virtual {v12, v4, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 98
    .line 99
    .line 100
    sget v13, Lnet/kaki87/soul2/testing/R$string;->image_type:I

    .line 101
    .line 102
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 103
    .line 104
    .line 105
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .line 107
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 108
    .line 109
    invoke-direct {v13, v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 113
    .line 114
    .line 115
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 116
    .line 117
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    new-instance v3, Lcom/mycompany/app/view/MyButtonCheck;

    .line 124
    .line 125
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 129
    .line 130
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 131
    .line 132
    invoke-direct {v10, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    .line 137
    .line 138
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 139
    .line 140
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    new-instance v6, Landroidx/core/widget/NestedScrollView;

    .line 147
    .line 148
    invoke-direct {v6, v2, v9}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->r7(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    const/4 v10, 0x2

    .line 155
    invoke-virtual {v6, v10}, Landroid/view/View;->setOverScrollMode(I)V

    .line 156
    .line 157
    .line 158
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    .line 160
    invoke-direct {v10, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    const/high16 v13, 0x3f800000    # 1.0f

    .line 164
    .line 165
    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 166
    .line 167
    invoke-static {v5, v6, v10, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    const/4 v13, -0x2

    .line 172
    invoke-virtual {v6, v10, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 173
    .line 174
    .line 175
    const/high16 v6, 0x42500000    # 52.0f

    .line 176
    .line 177
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    float-to-int v6, v6

    .line 182
    new-instance v13, Lcom/mycompany/app/view/MyLineFrame;

    .line 183
    .line 184
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 188
    .line 189
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 190
    .line 191
    invoke-virtual {v13, v14, v11, v15, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 192
    .line 193
    .line 194
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 195
    .line 196
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v13, v4}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v13, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 203
    .line 204
    .line 205
    const/high16 v14, 0x41800000    # 16.0f

    .line 206
    .line 207
    invoke-static {v2, v9, v4, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 208
    .line 209
    .line 210
    move-result-object v15

    .line 211
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    .line 213
    const/4 v9, -0x2

    .line 214
    invoke-direct {v14, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    const v9, 0x800013

    .line 218
    .line 219
    .line 220
    iput v9, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    .line 222
    invoke-virtual {v13, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .line 224
    .line 225
    new-instance v14, Lcom/mycompany/app/view/MyButtonCheck;

    .line 226
    .line 227
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 231
    .line 232
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 233
    .line 234
    invoke-direct {v9, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 235
    .line 236
    .line 237
    const v8, 0x800015

    .line 238
    .line 239
    .line 240
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 241
    .line 242
    invoke-virtual {v13, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    .line 244
    .line 245
    new-instance v9, Lcom/mycompany/app/view/MyLineFrame;

    .line 246
    .line 247
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 251
    .line 252
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 253
    .line 254
    invoke-virtual {v9, v8, v11, v4, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 255
    .line 256
    .line 257
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 258
    .line 259
    invoke-virtual {v9, v4}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 260
    .line 261
    .line 262
    const/4 v4, 0x1

    .line 263
    invoke-virtual {v9, v4}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 264
    .line 265
    .line 266
    const/4 v8, -0x1

    .line 267
    invoke-virtual {v10, v9, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 268
    .line 269
    .line 270
    const/high16 v8, 0x41800000    # 16.0f

    .line 271
    .line 272
    const/4 v11, 0x0

    .line 273
    invoke-static {v2, v11, v4, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 278
    .line 279
    const/4 v8, -0x2

    .line 280
    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 281
    .line 282
    .line 283
    const v8, 0x800013

    .line 284
    .line 285
    .line 286
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    .line 288
    invoke-virtual {v9, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .line 290
    .line 291
    new-instance v4, Lcom/mycompany/app/view/MyButtonCheck;

    .line 292
    .line 293
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 294
    .line 295
    .line 296
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 297
    .line 298
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 299
    .line 300
    invoke-direct {v8, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 301
    .line 302
    .line 303
    const v11, 0x800015

    .line 304
    .line 305
    .line 306
    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 307
    .line 308
    invoke-virtual {v9, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .line 310
    .line 311
    new-instance v8, Lcom/mycompany/app/view/MyLineFrame;

    .line 312
    .line 313
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 314
    .line 315
    .line 316
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 317
    .line 318
    move-object/from16 v16, v4

    .line 319
    .line 320
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 321
    .line 322
    move-object/from16 v17, v0

    .line 323
    .line 324
    const/4 v0, 0x0

    .line 325
    invoke-virtual {v8, v11, v0, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 326
    .line 327
    .line 328
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 329
    .line 330
    invoke-virtual {v8, v0}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 331
    .line 332
    .line 333
    const/4 v4, 0x1

    .line 334
    invoke-virtual {v8, v4}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 335
    .line 336
    .line 337
    const/4 v0, -0x1

    .line 338
    invoke-virtual {v10, v8, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v18, v9

    .line 342
    .line 343
    const/high16 v0, 0x41800000    # 16.0f

    .line 344
    .line 345
    const/4 v11, 0x0

    .line 346
    invoke-static {v2, v11, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 351
    .line 352
    const/4 v4, -0x2

    .line 353
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 354
    .line 355
    .line 356
    const v4, 0x800013

    .line 357
    .line 358
    .line 359
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 360
    .line 361
    invoke-virtual {v8, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    .line 363
    .line 364
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck;

    .line 365
    .line 366
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 367
    .line 368
    .line 369
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 370
    .line 371
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 372
    .line 373
    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 374
    .line 375
    .line 376
    const v11, 0x800015

    .line 377
    .line 378
    .line 379
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 380
    .line 381
    invoke-virtual {v8, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 385
    .line 386
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 390
    .line 391
    move-object/from16 v19, v0

    .line 392
    .line 393
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 394
    .line 395
    move-object/from16 v20, v9

    .line 396
    .line 397
    const/4 v9, 0x0

    .line 398
    invoke-virtual {v4, v11, v9, v0, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 399
    .line 400
    .line 401
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 402
    .line 403
    invoke-virtual {v4, v0}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 404
    .line 405
    .line 406
    const/4 v0, 0x1

    .line 407
    invoke-virtual {v4, v0}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 408
    .line 409
    .line 410
    const/4 v9, -0x1

    .line 411
    invoke-virtual {v10, v4, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 412
    .line 413
    .line 414
    move-object/from16 v21, v8

    .line 415
    .line 416
    const/high16 v9, 0x41800000    # 16.0f

    .line 417
    .line 418
    const/4 v11, 0x0

    .line 419
    invoke-static {v2, v11, v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 420
    .line 421
    .line 422
    move-result-object v8

    .line 423
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 424
    .line 425
    const/4 v9, -0x2

    .line 426
    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 427
    .line 428
    .line 429
    const v9, 0x800013

    .line 430
    .line 431
    .line 432
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 433
    .line 434
    invoke-virtual {v4, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    .line 436
    .line 437
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck;

    .line 438
    .line 439
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 440
    .line 441
    .line 442
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 443
    .line 444
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 445
    .line 446
    invoke-direct {v9, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 447
    .line 448
    .line 449
    const v11, 0x800015

    .line 450
    .line 451
    .line 452
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 453
    .line 454
    invoke-virtual {v4, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    .line 456
    .line 457
    new-instance v9, Lcom/mycompany/app/view/MyLineFrame;

    .line 458
    .line 459
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 460
    .line 461
    .line 462
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 463
    .line 464
    move-object/from16 v22, v0

    .line 465
    .line 466
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 467
    .line 468
    move-object/from16 v23, v8

    .line 469
    .line 470
    const/4 v8, 0x0

    .line 471
    invoke-virtual {v9, v11, v8, v0, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 472
    .line 473
    .line 474
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 475
    .line 476
    invoke-virtual {v9, v0}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 477
    .line 478
    .line 479
    const/4 v0, 0x1

    .line 480
    invoke-virtual {v9, v0}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 481
    .line 482
    .line 483
    const/4 v8, -0x1

    .line 484
    invoke-virtual {v10, v9, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 485
    .line 486
    .line 487
    move-object/from16 v24, v4

    .line 488
    .line 489
    const/high16 v8, 0x41800000    # 16.0f

    .line 490
    .line 491
    const/4 v11, 0x0

    .line 492
    invoke-static {v2, v11, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 497
    .line 498
    const/4 v8, -0x2

    .line 499
    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 500
    .line 501
    .line 502
    const v8, 0x800013

    .line 503
    .line 504
    .line 505
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 506
    .line 507
    invoke-virtual {v9, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    .line 509
    .line 510
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck;

    .line 511
    .line 512
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 513
    .line 514
    .line 515
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 516
    .line 517
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 518
    .line 519
    invoke-direct {v8, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 520
    .line 521
    .line 522
    const v11, 0x800015

    .line 523
    .line 524
    .line 525
    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 526
    .line 527
    invoke-virtual {v9, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    .line 529
    .line 530
    new-instance v8, Landroid/widget/FrameLayout;

    .line 531
    .line 532
    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 533
    .line 534
    .line 535
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 536
    .line 537
    move-object/from16 v25, v0

    .line 538
    .line 539
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 540
    .line 541
    move-object/from16 v26, v4

    .line 542
    .line 543
    const/4 v4, 0x0

    .line 544
    invoke-virtual {v8, v11, v4, v0, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 545
    .line 546
    .line 547
    const/4 v0, -0x1

    .line 548
    invoke-virtual {v10, v8, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 549
    .line 550
    .line 551
    const/high16 v0, 0x41800000    # 16.0f

    .line 552
    .line 553
    const/4 v4, 0x1

    .line 554
    const/4 v11, 0x0

    .line 555
    invoke-static {v2, v11, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 560
    .line 561
    const/4 v4, -0x2

    .line 562
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 563
    .line 564
    .line 565
    const v4, 0x800013

    .line 566
    .line 567
    .line 568
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 569
    .line 570
    invoke-virtual {v8, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    .line 572
    .line 573
    new-instance v0, Lcom/mycompany/app/view/MyButtonCheck;

    .line 574
    .line 575
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 576
    .line 577
    .line 578
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 579
    .line 580
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 581
    .line 582
    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 583
    .line 584
    .line 585
    const v11, 0x800015

    .line 586
    .line 587
    .line 588
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 589
    .line 590
    invoke-virtual {v8, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    .line 592
    .line 593
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 594
    .line 595
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 596
    .line 597
    .line 598
    const/16 v2, 0x11

    .line 599
    .line 600
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 601
    .line 602
    .line 603
    const/high16 v2, 0x41800000    # 16.0f

    .line 604
    .line 605
    const/4 v11, 0x1

    .line 606
    invoke-virtual {v4, v11, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 607
    .line 608
    .line 609
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 610
    .line 611
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 612
    .line 613
    .line 614
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 615
    .line 616
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v4, v11}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 620
    .line 621
    .line 622
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 623
    .line 624
    const/4 v11, -0x1

    .line 625
    invoke-virtual {v5, v4, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 626
    .line 627
    .line 628
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogImageType;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 629
    .line 630
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogImageType;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 631
    .line 632
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogImageType;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 633
    .line 634
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogImageType;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 635
    .line 636
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogImageType;->j0:Landroid/widget/LinearLayout;

    .line 637
    .line 638
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogImageType;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 639
    .line 640
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogImageType;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 641
    .line 642
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogImageType;->m0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 643
    .line 644
    move-object/from16 v2, v18

    .line 645
    .line 646
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->n0:Lcom/mycompany/app/view/MyLineFrame;

    .line 647
    .line 648
    move-object/from16 v2, v17

    .line 649
    .line 650
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 651
    .line 652
    move-object/from16 v2, v16

    .line 653
    .line 654
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->p0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 655
    .line 656
    move-object/from16 v2, v21

    .line 657
    .line 658
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 659
    .line 660
    move-object/from16 v2, v20

    .line 661
    .line 662
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 663
    .line 664
    move-object/from16 v2, v19

    .line 665
    .line 666
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->s0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 667
    .line 668
    move-object/from16 v2, v24

    .line 669
    .line 670
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->t0:Lcom/mycompany/app/view/MyLineFrame;

    .line 671
    .line 672
    move-object/from16 v2, v23

    .line 673
    .line 674
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 675
    .line 676
    move-object/from16 v2, v22

    .line 677
    .line 678
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->v0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 679
    .line 680
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogImageType;->w0:Lcom/mycompany/app/view/MyLineFrame;

    .line 681
    .line 682
    move-object/from16 v2, v26

    .line 683
    .line 684
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 685
    .line 686
    move-object/from16 v2, v25

    .line 687
    .line 688
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogImageType;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 689
    .line 690
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogImageType;->z0:Landroid/widget/FrameLayout;

    .line 691
    .line 692
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogImageType;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 693
    .line 694
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogImageType;->B0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 695
    .line 696
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogImageType;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 697
    .line 698
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 699
    .line 700
    if-nez v0, :cond_1

    .line 701
    .line 702
    :goto_0
    return-void

    .line 703
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageType$2;

    .line 704
    .line 705
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogImageType$2;-><init>(Lcom/mycompany/app/dialog/DialogImageType;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    .line 710
    .line 711
    return-void
.end method
