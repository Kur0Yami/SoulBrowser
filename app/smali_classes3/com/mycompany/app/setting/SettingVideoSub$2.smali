.class Lcom/mycompany/app/setting/SettingVideoSub$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$2;->c:Lcom/mycompany/app/setting/SettingVideoSub;

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub$2;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoSub;->M1:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    const/high16 v3, 0x41400000    # 12.0f

    .line 18
    .line 19
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    float-to-int v3, v3

    .line 24
    new-instance v4, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v7, -0x1

    .line 36
    const/4 v8, -0x2

    .line 37
    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 41
    .line 42
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 43
    .line 44
    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 57
    .line 58
    .line 59
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    invoke-direct {v9, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    .line 64
    .line 65
    const/high16 v11, 0x41800000    # 16.0f

    .line 66
    .line 67
    invoke-virtual {v9, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 68
    .line 69
    .line 70
    sget v12, Lnet/kaki87/soul2/testing/R$string;->sub_line:I

    .line 71
    .line 72
    invoke-static {v9, v12, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 77
    .line 78
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    invoke-direct {v12, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 93
    .line 94
    .line 95
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 96
    .line 97
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 98
    .line 99
    .line 100
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .line 102
    invoke-direct {v13, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    .line 104
    .line 105
    const v14, 0x800005

    .line 106
    .line 107
    .line 108
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    .line 110
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 111
    .line 112
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Lcom/mycompany/app/view/MyLineFrame;

    .line 119
    .line 120
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 124
    .line 125
    invoke-virtual {v2, v13}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 126
    .line 127
    .line 128
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 129
    .line 130
    invoke-virtual {v4, v2, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 131
    .line 132
    .line 133
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 139
    .line 140
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    .line 142
    .line 143
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 144
    .line 145
    invoke-virtual {v2, v13, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 146
    .line 147
    .line 148
    new-instance v5, Landroid/widget/SeekBar;

    .line 149
    .line 150
    invoke-direct {v5, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    .line 155
    invoke-direct {v11, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    .line 157
    .line 158
    const v10, 0x800013

    .line 159
    .line 160
    .line 161
    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 162
    .line 163
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 164
    .line 165
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 166
    .line 167
    .line 168
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 169
    .line 170
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 177
    .line 178
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 182
    .line 183
    .line 184
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    .line 186
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 187
    .line 188
    invoke-direct {v11, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 189
    .line 190
    .line 191
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 192
    .line 193
    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    new-instance v2, Landroid/widget/FrameLayout;

    .line 197
    .line 198
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 202
    .line 203
    .line 204
    const/4 v3, -0x1

    .line 205
    invoke-virtual {v4, v2, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 206
    .line 207
    .line 208
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    .line 210
    const/4 v7, 0x0

    .line 211
    invoke-direct {v3, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    .line 213
    .line 214
    const/4 v6, 0x1

    .line 215
    const/high16 v11, 0x41800000    # 16.0f

    .line 216
    .line 217
    invoke-virtual {v3, v6, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 218
    .line 219
    .line 220
    sget v14, Lnet/kaki87/soul2/testing/R$string;->color_alpha:I

    .line 221
    .line 222
    invoke-static {v3, v14, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 227
    .line 228
    invoke-virtual {v14, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .line 233
    .line 234
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 235
    .line 236
    invoke-direct {v8, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v8, v6, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 243
    .line 244
    .line 245
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 246
    .line 247
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 248
    .line 249
    .line 250
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    .line 252
    const/4 v7, -0x2

    .line 253
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 254
    .line 255
    .line 256
    const v7, 0x800005

    .line 257
    .line 258
    .line 259
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 260
    .line 261
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 262
    .line 263
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Lcom/mycompany/app/view/MyLineFrame;

    .line 270
    .line 271
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 272
    .line 273
    .line 274
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 275
    .line 276
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 277
    .line 278
    .line 279
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 280
    .line 281
    const/4 v7, -0x1

    .line 282
    invoke-virtual {v4, v2, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 283
    .line 284
    .line 285
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 286
    .line 287
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 291
    .line 292
    .line 293
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 294
    .line 295
    invoke-virtual {v2, v6, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 296
    .line 297
    .line 298
    new-instance v11, Landroid/widget/SeekBar;

    .line 299
    .line 300
    invoke-direct {v11, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 301
    .line 302
    .line 303
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 304
    .line 305
    const/4 v0, -0x2

    .line 306
    invoke-direct {v14, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 307
    .line 308
    .line 309
    const v0, 0x800013

    .line 310
    .line 311
    .line 312
    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 313
    .line 314
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 315
    .line 316
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 317
    .line 318
    .line 319
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 320
    .line 321
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 328
    .line 329
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 333
    .line 334
    .line 335
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 336
    .line 337
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 338
    .line 339
    invoke-direct {v7, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 340
    .line 341
    .line 342
    const v14, 0x800005

    .line 343
    .line 344
    .line 345
    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    .line 347
    invoke-virtual {v2, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    new-instance v2, Landroid/widget/LinearLayout;

    .line 351
    .line 352
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 356
    .line 357
    const/4 v14, 0x0

    .line 358
    invoke-virtual {v2, v7, v14, v7, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 365
    .line 366
    .line 367
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    .line 369
    sget v14, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 370
    .line 371
    const/4 v15, -0x1

    .line 372
    invoke-direct {v7, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 373
    .line 374
    .line 375
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 376
    .line 377
    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 378
    .line 379
    invoke-virtual {v4, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .line 381
    .line 382
    new-instance v7, Lcom/mycompany/app/view/MyPaletteView;

    .line 383
    .line 384
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyPaletteView;-><init>(Landroid/content/Context;)V

    .line 385
    .line 386
    .line 387
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 388
    .line 389
    const/4 v15, -0x2

    .line 390
    invoke-direct {v14, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 391
    .line 392
    .line 393
    const/4 v15, 0x1

    .line 394
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 395
    .line 396
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 397
    .line 398
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 399
    .line 400
    invoke-virtual {v4, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .line 402
    .line 403
    iput-object v4, v1, Lcom/mycompany/app/setting/SettingVideoSub;->U1:Landroid/widget/LinearLayout;

    .line 404
    .line 405
    iput-object v9, v1, Lcom/mycompany/app/setting/SettingVideoSub;->V1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 406
    .line 407
    iput-object v12, v1, Lcom/mycompany/app/setting/SettingVideoSub;->W1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 408
    .line 409
    iput-object v5, v1, Lcom/mycompany/app/setting/SettingVideoSub;->X1:Landroid/widget/SeekBar;

    .line 410
    .line 411
    iput-object v13, v1, Lcom/mycompany/app/setting/SettingVideoSub;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 412
    .line 413
    iput-object v10, v1, Lcom/mycompany/app/setting/SettingVideoSub;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 414
    .line 415
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingVideoSub;->a2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 416
    .line 417
    iput-object v8, v1, Lcom/mycompany/app/setting/SettingVideoSub;->b2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 418
    .line 419
    iput-object v11, v1, Lcom/mycompany/app/setting/SettingVideoSub;->c2:Landroid/widget/SeekBar;

    .line 420
    .line 421
    iput-object v6, v1, Lcom/mycompany/app/setting/SettingVideoSub;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 422
    .line 423
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingVideoSub;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 424
    .line 425
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingVideoSub;->f2:Landroid/widget/LinearLayout;

    .line 426
    .line 427
    iput-object v7, v1, Lcom/mycompany/app/setting/SettingVideoSub;->h2:Lcom/mycompany/app/view/MyPaletteView;

    .line 428
    .line 429
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 430
    .line 431
    if-nez v0, :cond_2

    .line 432
    .line 433
    :goto_0
    return-void

    .line 434
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoSub$3;

    .line 435
    .line 436
    invoke-direct {v2, v1}, Lcom/mycompany/app/setting/SettingVideoSub$3;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    .line 441
    .line 442
    return-void
.end method
