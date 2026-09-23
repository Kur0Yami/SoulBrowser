.class Lcom/mycompany/app/dialog/DialogMenuMain$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$1;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain$1;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    new-instance v3, Lcom/mycompany/app/view/MyDialogMenu;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyDialogMenu;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 17
    .line 18
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 30
    .line 31
    .line 32
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 33
    .line 34
    const/4 v7, -0x1

    .line 35
    invoke-virtual {v3, v4, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 36
    .line 37
    .line 38
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 39
    .line 40
    int-to-float v5, v5

    .line 41
    const/high16 v8, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v5, v8

    .line 44
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v9, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 55
    .line 56
    .line 57
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 58
    .line 59
    invoke-virtual {v4, v9, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 60
    .line 61
    .line 62
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 71
    .line 72
    .line 73
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .line 75
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 76
    .line 77
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 81
    .line 82
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    const/16 v12, 0x10

    .line 89
    .line 90
    const/high16 v13, 0x41600000    # 14.0f

    .line 91
    .line 92
    const/4 v14, 0x0

    .line 93
    const/4 v15, 0x1

    .line 94
    invoke-static {v2, v14, v12, v15, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    const v13, -0xbbcca

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .line 106
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 107
    .line 108
    const/4 v7, -0x2

    .line 109
    invoke-direct {v13, v7, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    .line 111
    .line 112
    const/high16 v14, 0x42a00000    # 80.0f

    .line 113
    .line 114
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    float-to-int v14, v14

    .line 119
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    iget-boolean v13, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->i0:Z

    .line 126
    .line 127
    const/4 v14, 0x2

    .line 128
    const v7, 0x800005

    .line 129
    .line 130
    .line 131
    if-eqz v13, :cond_1

    .line 132
    .line 133
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 142
    .line 143
    .line 144
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    .line 146
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 147
    .line 148
    invoke-direct {v8, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    .line 153
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 154
    .line 155
    mul-int/2addr v6, v14

    .line 156
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_1
    const/4 v13, 0x0

    .line 164
    :goto_0
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 173
    .line 174
    .line 175
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    .line 177
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 178
    .line 179
    invoke-direct {v8, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 180
    .line 181
    .line 182
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    .line 184
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 185
    .line 186
    invoke-virtual {v8, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .line 191
    .line 192
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 193
    .line 194
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 201
    .line 202
    .line 203
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    .line 205
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 206
    .line 207
    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 208
    .line 209
    .line 210
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 211
    .line 212
    invoke-virtual {v4, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    .line 214
    .line 215
    sget v4, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 216
    .line 217
    if-eq v4, v15, :cond_2

    .line 218
    .line 219
    const/4 v5, 0x2

    .line 220
    if-ne v4, v5, :cond_3

    .line 221
    .line 222
    :cond_2
    const/4 v10, 0x0

    .line 223
    goto :goto_1

    .line 224
    :cond_3
    new-instance v4, Lcom/google/android/material/tabs/TabLayout;

    .line 225
    .line 226
    invoke-direct {v4, v2}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v15}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 230
    .line 231
    .line 232
    const/4 v5, 0x0

    .line 233
    invoke-virtual {v4, v5}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 234
    .line 235
    .line 236
    const/16 v5, 0x8

    .line 237
    .line 238
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    const/high16 v5, 0x40000000    # 2.0f

    .line 242
    .line 243
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    float-to-int v5, v5

    .line 248
    const/high16 v7, 0x41a00000    # 20.0f

    .line 249
    .line 250
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    float-to-int v7, v7

    .line 255
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    .line 257
    const/4 v14, -0x1

    .line 258
    invoke-direct {v10, v14, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 262
    .line 263
    iput v5, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 264
    .line 265
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    .line 273
    .line 274
    new-instance v5, Landroid/widget/FrameLayout;

    .line 275
    .line 276
    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    const/high16 v7, 0x43820000    # 260.0f

    .line 280
    .line 281
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    float-to-int v7, v7

    .line 286
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 287
    .line 288
    const/4 v14, -0x1

    .line 289
    invoke-direct {v10, v14, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 290
    .line 291
    .line 292
    const/high16 v7, 0x42480000    # 50.0f

    .line 293
    .line 294
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    float-to-int v7, v7

    .line 299
    iput v7, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 300
    .line 301
    invoke-virtual {v3, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    .line 303
    .line 304
    new-instance v7, Landroidx/viewpager2/widget/ViewPager2;

    .line 305
    .line 306
    invoke-direct {v7, v2}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 307
    .line 308
    .line 309
    const/4 v10, 0x0

    .line 310
    invoke-virtual {v7, v10}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, v7, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 314
    .line 315
    .line 316
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->w0:Landroid/widget/FrameLayout;

    .line 317
    .line 318
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 319
    .line 320
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->C0:Lcom/google/android/material/tabs/TabLayout;

    .line 321
    .line 322
    goto :goto_2

    .line 323
    :goto_1
    new-instance v4, Lcom/mycompany/app/view/MyRecyclerView;

    .line 324
    .line 325
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 326
    .line 327
    .line 328
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 329
    .line 330
    invoke-virtual {v4, v10, v2, v10, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4, v15, v15}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v10}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 340
    .line 341
    .line 342
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 343
    .line 344
    const/4 v5, -0x2

    .line 345
    const/4 v14, -0x1

    .line 346
    invoke-direct {v2, v14, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 347
    .line 348
    .line 349
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 350
    .line 351
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 352
    .line 353
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .line 355
    .line 356
    sget v2, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 357
    .line 358
    if-ne v2, v15, :cond_4

    .line 359
    .line 360
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->s0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_4
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 364
    .line 365
    :goto_2
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->l0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 366
    .line 367
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 368
    .line 369
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 370
    .line 371
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 372
    .line 373
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 374
    .line 375
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 376
    .line 377
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 378
    .line 379
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 380
    .line 381
    const/high16 v4, 0x21000000

    .line 382
    .line 383
    const v5, -0xc0c0c1

    .line 384
    .line 385
    .line 386
    if-eqz v2, :cond_5

    .line 387
    .line 388
    const v2, -0xdededf

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyDialogMenu;->setBackColor(I)V

    .line 392
    .line 393
    .line 394
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 395
    .line 396
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_restart_alt_dark_20:I

    .line 397
    .line 398
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 399
    .line 400
    .line 401
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 402
    .line 403
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_view_agenda_dark_20:I

    .line 404
    .line 405
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 406
    .line 407
    .line 408
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 409
    .line 410
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 411
    .line 412
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 413
    .line 414
    .line 415
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 416
    .line 417
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 418
    .line 419
    .line 420
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 421
    .line 422
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 423
    .line 424
    .line 425
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 426
    .line 427
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 428
    .line 429
    .line 430
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 431
    .line 432
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 433
    .line 434
    .line 435
    goto :goto_3

    .line 436
    :cond_5
    const/4 v14, -0x1

    .line 437
    invoke-virtual {v3, v14}, Lcom/mycompany/app/view/MyDialogMenu;->setBackColor(I)V

    .line 438
    .line 439
    .line 440
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 441
    .line 442
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_restart_alt_black_20:I

    .line 443
    .line 444
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 445
    .line 446
    .line 447
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 448
    .line 449
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_view_agenda_black_20:I

    .line 450
    .line 451
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 452
    .line 453
    .line 454
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 455
    .line 456
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 457
    .line 458
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 459
    .line 460
    .line 461
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 462
    .line 463
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 464
    .line 465
    .line 466
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 467
    .line 468
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 469
    .line 470
    .line 471
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 472
    .line 473
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 474
    .line 475
    .line 476
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 477
    .line 478
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 479
    .line 480
    .line 481
    :goto_3
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 482
    .line 483
    const v3, 0x3f59999a    # 0.85f

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 487
    .line 488
    .line 489
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 490
    .line 491
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 492
    .line 493
    .line 494
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 495
    .line 496
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 497
    .line 498
    .line 499
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 500
    .line 501
    new-instance v6, Lcom/mycompany/app/dialog/DialogMenuMain$2;

    .line 502
    .line 503
    invoke-direct {v6, v1}, Lcom/mycompany/app/dialog/DialogMenuMain$2;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    .line 508
    .line 509
    iget v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->h0:I

    .line 510
    .line 511
    if-lez v2, :cond_6

    .line 512
    .line 513
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 514
    .line 515
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_red_20:I

    .line 516
    .line 517
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 518
    .line 519
    .line 520
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 521
    .line 522
    iget v6, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->h0:I

    .line 523
    .line 524
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    .line 530
    .line 531
    goto :goto_5

    .line 532
    :cond_6
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 533
    .line 534
    if-eqz v2, :cond_7

    .line 535
    .line 536
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 537
    .line 538
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_dark_20:I

    .line 539
    .line 540
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 541
    .line 542
    .line 543
    goto :goto_4

    .line 544
    :cond_7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 545
    .line 546
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_20:I

    .line 547
    .line 548
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 549
    .line 550
    .line 551
    :goto_4
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 552
    .line 553
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 554
    .line 555
    .line 556
    :goto_5
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->o:Z

    .line 557
    .line 558
    if-eqz v2, :cond_8

    .line 559
    .line 560
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 561
    .line 562
    invoke-virtual {v2, v15}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 563
    .line 564
    .line 565
    :cond_8
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 566
    .line 567
    new-instance v6, Lcom/mycompany/app/dialog/DialogMenuMain$3;

    .line 568
    .line 569
    invoke-direct {v6, v1}, Lcom/mycompany/app/dialog/DialogMenuMain$3;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    .line 574
    .line 575
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 576
    .line 577
    if-eqz v2, :cond_a

    .line 578
    .line 579
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 580
    .line 581
    if-eqz v6, :cond_9

    .line 582
    .line 583
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_cafe_dark_20:I

    .line 584
    .line 585
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 586
    .line 587
    .line 588
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 589
    .line 590
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 591
    .line 592
    .line 593
    goto :goto_6

    .line 594
    :cond_9
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_cafe_black_20:I

    .line 595
    .line 596
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 597
    .line 598
    .line 599
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 600
    .line 601
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 602
    .line 603
    .line 604
    :goto_6
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 605
    .line 606
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 607
    .line 608
    .line 609
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 610
    .line 611
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuMain$4;

    .line 612
    .line 613
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuMain$4;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    .line 618
    .line 619
    :cond_a
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 620
    .line 621
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuMain$5;

    .line 622
    .line 623
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuMain$5;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    .line 628
    .line 629
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 630
    .line 631
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuMain$6;

    .line 632
    .line 633
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuMain$6;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    .line 638
    .line 639
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 640
    .line 641
    if-nez v2, :cond_b

    .line 642
    .line 643
    :goto_7
    return-void

    .line 644
    :cond_b
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuMain$7;

    .line 645
    .line 646
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuMain$7;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 650
    .line 651
    .line 652
    return-void
.end method
