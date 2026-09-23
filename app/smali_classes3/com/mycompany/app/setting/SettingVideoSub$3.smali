.class Lcom/mycompany/app/setting/SettingVideoSub$3;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$3;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub$3;->c:Lcom/mycompany/app/setting/SettingVideoSub;

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
    iget-object v3, v1, Lcom/mycompany/app/setting/SettingVideoSub;->M1:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 18
    .line 19
    const/high16 v5, 0x41400000    # 12.0f

    .line 20
    .line 21
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    float-to-int v5, v5

    .line 26
    new-instance v6, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    .line 34
    .line 35
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    .line 37
    const/4 v9, -0x1

    .line 38
    const/4 v10, -0x2

    .line 39
    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 43
    .line 44
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 45
    .line 46
    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 50
    .line 51
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 55
    .line 56
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 57
    .line 58
    const/4 v12, 0x0

    .line 59
    invoke-virtual {v3, v8, v12, v11, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 60
    .line 61
    .line 62
    sget v8, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 63
    .line 64
    invoke-virtual {v3, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 65
    .line 66
    .line 67
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 68
    .line 69
    invoke-virtual {v3, v8}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v3, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 73
    .line 74
    .line 75
    new-instance v8, Lcom/mycompany/app/view/MySwitchView;

    .line 76
    .line 77
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 83
    .line 84
    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    .line 86
    .line 87
    const v13, 0x800015

    .line 88
    .line 89
    .line 90
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    .line 92
    invoke-virtual {v3, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    const/4 v13, 0x0

    .line 98
    invoke-direct {v11, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    .line 100
    .line 101
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 102
    .line 103
    invoke-virtual {v11, v12, v14, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    .line 105
    .line 106
    const/high16 v14, 0x41800000    # 16.0f

    .line 107
    .line 108
    invoke-virtual {v11, v7, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 109
    .line 110
    .line 111
    sget v15, Lnet/kaki87/soul2/testing/R$string;->background:I

    .line 112
    .line 113
    invoke-static {v11, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    const/16 v7, 0x10

    .line 118
    .line 119
    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 120
    .line 121
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 122
    .line 123
    invoke-virtual {v15, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    .line 129
    new-instance v7, Landroid/widget/FrameLayout;

    .line 130
    .line 131
    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v12, v5, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v7, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 138
    .line 139
    .line 140
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    invoke-direct {v5, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    .line 144
    .line 145
    const/4 v15, 0x1

    .line 146
    invoke-virtual {v5, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 147
    .line 148
    .line 149
    sget v12, Lnet/kaki87/soul2/testing/R$string;->color_alpha:I

    .line 150
    .line 151
    invoke-static {v5, v12, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 156
    .line 157
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    invoke-direct {v9, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 172
    .line 173
    .line 174
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 175
    .line 176
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 177
    .line 178
    .line 179
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    .line 181
    invoke-direct {v12, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    .line 183
    .line 184
    const v14, 0x800005

    .line 185
    .line 186
    .line 187
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 188
    .line 189
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 190
    .line 191
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .line 196
    .line 197
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 198
    .line 199
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 203
    .line 204
    invoke-virtual {v7, v12}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 205
    .line 206
    .line 207
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 208
    .line 209
    const/4 v15, -0x1

    .line 210
    invoke-virtual {v6, v7, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 211
    .line 212
    .line 213
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 214
    .line 215
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 219
    .line 220
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 221
    .line 222
    .line 223
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 224
    .line 225
    invoke-virtual {v7, v12, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 226
    .line 227
    .line 228
    new-instance v14, Landroid/widget/SeekBar;

    .line 229
    .line 230
    invoke-direct {v14, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 231
    .line 232
    .line 233
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    .line 235
    invoke-direct {v0, v15, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 236
    .line 237
    .line 238
    const v15, 0x800013

    .line 239
    .line 240
    .line 241
    iput v15, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 242
    .line 243
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 244
    .line 245
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 246
    .line 247
    .line 248
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 249
    .line 250
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 257
    .line 258
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 262
    .line 263
    .line 264
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 265
    .line 266
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 267
    .line 268
    invoke-direct {v13, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 269
    .line 270
    .line 271
    const v15, 0x800005

    .line 272
    .line 273
    .line 274
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 275
    .line 276
    invoke-virtual {v7, v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .line 278
    .line 279
    new-instance v7, Landroid/widget/LinearLayout;

    .line 280
    .line 281
    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 282
    .line 283
    .line 284
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 285
    .line 286
    const/4 v15, 0x0

    .line 287
    invoke-virtual {v7, v13, v15, v13, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 294
    .line 295
    .line 296
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 297
    .line 298
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 299
    .line 300
    const/4 v10, -0x1

    .line 301
    invoke-direct {v13, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 302
    .line 303
    .line 304
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 305
    .line 306
    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 307
    .line 308
    invoke-virtual {v6, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .line 310
    .line 311
    new-instance v10, Lcom/mycompany/app/view/MyPaletteView;

    .line 312
    .line 313
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyPaletteView;-><init>(Landroid/content/Context;)V

    .line 314
    .line 315
    .line 316
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 317
    .line 318
    const/4 v15, -0x2

    .line 319
    invoke-direct {v13, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 320
    .line 321
    .line 322
    const/4 v15, 0x1

    .line 323
    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 324
    .line 325
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 326
    .line 327
    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 328
    .line 329
    invoke-virtual {v6, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .line 331
    .line 332
    new-instance v13, Landroid/widget/FrameLayout;

    .line 333
    .line 334
    invoke-direct {v13, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v13, v4}, Landroid/view/View;->setId(I)V

    .line 338
    .line 339
    .line 340
    const/16 v4, 0x8

    .line 341
    .line 342
    invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    .line 347
    move-object/from16 v16, v10

    .line 348
    .line 349
    const/4 v10, -0x2

    .line 350
    const/4 v15, -0x1

    .line 351
    invoke-direct {v4, v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 352
    .line 353
    .line 354
    const/16 v10, 0xc

    .line 355
    .line 356
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    .line 361
    .line 362
    iput-object v6, v1, Lcom/mycompany/app/setting/SettingVideoSub;->i2:Landroid/widget/LinearLayout;

    .line 363
    .line 364
    iput-object v3, v1, Lcom/mycompany/app/setting/SettingVideoSub;->j2:Lcom/mycompany/app/view/MyLineFrame;

    .line 365
    .line 366
    iput-object v11, v1, Lcom/mycompany/app/setting/SettingVideoSub;->k2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 367
    .line 368
    iput-object v8, v1, Lcom/mycompany/app/setting/SettingVideoSub;->l2:Lcom/mycompany/app/view/MySwitchView;

    .line 369
    .line 370
    iput-object v5, v1, Lcom/mycompany/app/setting/SettingVideoSub;->m2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 371
    .line 372
    iput-object v9, v1, Lcom/mycompany/app/setting/SettingVideoSub;->n2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 373
    .line 374
    iput-object v14, v1, Lcom/mycompany/app/setting/SettingVideoSub;->o2:Landroid/widget/SeekBar;

    .line 375
    .line 376
    iput-object v12, v1, Lcom/mycompany/app/setting/SettingVideoSub;->p2:Lcom/mycompany/app/view/MyButtonImage;

    .line 377
    .line 378
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingVideoSub;->q2:Lcom/mycompany/app/view/MyButtonImage;

    .line 379
    .line 380
    iput-object v7, v1, Lcom/mycompany/app/setting/SettingVideoSub;->r2:Landroid/widget/LinearLayout;

    .line 381
    .line 382
    move-object/from16 v0, v16

    .line 383
    .line 384
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingVideoSub;->t2:Lcom/mycompany/app/view/MyPaletteView;

    .line 385
    .line 386
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoSub;->N1:Landroid/widget/FrameLayout;

    .line 387
    .line 388
    const/4 v2, 0x0

    .line 389
    iput-object v2, v1, Lcom/mycompany/app/setting/SettingVideoSub;->N1:Landroid/widget/FrameLayout;

    .line 390
    .line 391
    iget-object v2, v1, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 392
    .line 393
    invoke-virtual {v1, v2, v0, v13}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 394
    .line 395
    .line 396
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 397
    .line 398
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 406
    .line 407
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 408
    .line 409
    .line 410
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 411
    .line 412
    if-nez v0, :cond_2

    .line 413
    .line 414
    :goto_0
    return-void

    .line 415
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoSub$4;

    .line 416
    .line 417
    invoke-direct {v2, v1}, Lcom/mycompany/app/setting/SettingVideoSub$4;-><init>(Lcom/mycompany/app/setting/SettingVideoSub;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    .line 422
    .line 423
    return-void
.end method
