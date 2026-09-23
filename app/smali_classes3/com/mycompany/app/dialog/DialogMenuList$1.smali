.class Lcom/mycompany/app/dialog/DialogMenuList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuList$1;->c:Lcom/mycompany/app/dialog/DialogMenuList;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuList$1;->c:Lcom/mycompany/app/dialog/DialogMenuList;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->b:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    new-instance v3, Lcom/mycompany/app/view/MyRoundLinear;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    .line 19
    .line 20
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 21
    .line 22
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const/high16 v6, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    float-to-int v7, v7

    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-virtual {v5, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 37
    .line 38
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 39
    .line 40
    .line 41
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 42
    .line 43
    const/4 v9, -0x1

    .line 44
    invoke-virtual {v3, v5, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 45
    .line 46
    .line 47
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 48
    .line 49
    int-to-float v7, v7

    .line 50
    div-float/2addr v7, v6

    .line 51
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 57
    .line 58
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 62
    .line 63
    .line 64
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 65
    .line 66
    invoke-virtual {v5, v6, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 67
    .line 68
    .line 69
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 78
    .line 79
    .line 80
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 83
    .line 84
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    .line 86
    .line 87
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 88
    .line 89
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    const/16 v12, 0x10

    .line 96
    .line 97
    const/high16 v13, 0x41600000    # 14.0f

    .line 98
    .line 99
    const/4 v14, 0x0

    .line 100
    invoke-static {v2, v14, v12, v4, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    const v13, -0xbbcca

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    .line 112
    const/4 v15, -0x2

    .line 113
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 114
    .line 115
    invoke-direct {v13, v15, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    .line 117
    .line 118
    const/high16 v14, 0x42a00000    # 80.0f

    .line 119
    .line 120
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    float-to-int v14, v14

    .line 125
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    iget-boolean v13, v1, Lcom/mycompany/app/dialog/DialogMenuList;->l:Z

    .line 132
    .line 133
    const v14, 0x800005

    .line 134
    .line 135
    .line 136
    if-eqz v13, :cond_1

    .line 137
    .line 138
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v13, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 147
    .line 148
    .line 149
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    .line 151
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 152
    .line 153
    invoke-direct {v15, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    .line 155
    .line 156
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 157
    .line 158
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 159
    .line 160
    mul-int/lit8 v9, v9, 0x2

    .line 161
    .line 162
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_1
    const/4 v13, 0x0

    .line 170
    :goto_0
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 171
    .line 172
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 179
    .line 180
    .line 181
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    .line 183
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 184
    .line 185
    invoke-direct {v15, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 189
    .line 190
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 191
    .line 192
    invoke-virtual {v15, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 199
    .line 200
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 207
    .line 208
    .line 209
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 210
    .line 211
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 212
    .line 213
    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    .line 215
    .line 216
    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    .line 218
    invoke-virtual {v5, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .line 220
    .line 221
    new-instance v5, Lcom/mycompany/app/view/MyRecyclerView;

    .line 222
    .line 223
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v4, v4}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 230
    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    invoke-virtual {v5, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 234
    .line 235
    .line 236
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    .line 238
    const/4 v10, -0x1

    .line 239
    invoke-direct {v7, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    .line 241
    .line 242
    const/high16 v2, 0x3f800000    # 1.0f

    .line 243
    .line 244
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 245
    .line 246
    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .line 248
    .line 249
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->o:Lcom/mycompany/app/view/MyRoundLinear;

    .line 250
    .line 251
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogMenuList;->v:Lcom/mycompany/app/view/MyRecyclerView;

    .line 252
    .line 253
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogMenuList;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 254
    .line 255
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 256
    .line 257
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogMenuList;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 258
    .line 259
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogMenuList;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 260
    .line 261
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogMenuList;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 262
    .line 263
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogMenuList;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyRoundLinear;->b()V

    .line 266
    .line 267
    .line 268
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->o:Lcom/mycompany/app/view/MyRoundLinear;

    .line 269
    .line 270
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuList$2;

    .line 271
    .line 272
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 279
    .line 280
    const/high16 v3, 0x21000000

    .line 281
    .line 282
    const v5, -0xc0c0c1

    .line 283
    .line 284
    .line 285
    if-eqz v2, :cond_2

    .line 286
    .line 287
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 288
    .line 289
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_restart_alt_dark_20:I

    .line 290
    .line 291
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 292
    .line 293
    .line 294
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 295
    .line 296
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_view_agenda_dark_20:I

    .line 297
    .line 298
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 299
    .line 300
    .line 301
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 302
    .line 303
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 304
    .line 305
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 306
    .line 307
    .line 308
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 309
    .line 310
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 311
    .line 312
    .line 313
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 314
    .line 315
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 319
    .line 320
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 321
    .line 322
    .line 323
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 324
    .line 325
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 326
    .line 327
    .line 328
    goto :goto_1

    .line 329
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 330
    .line 331
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_restart_alt_black_20:I

    .line 332
    .line 333
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 334
    .line 335
    .line 336
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 337
    .line 338
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_view_agenda_black_20:I

    .line 339
    .line 340
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 341
    .line 342
    .line 343
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 344
    .line 345
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 346
    .line 347
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 348
    .line 349
    .line 350
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 351
    .line 352
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 353
    .line 354
    .line 355
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 356
    .line 357
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 358
    .line 359
    .line 360
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 361
    .line 362
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 363
    .line 364
    .line 365
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 366
    .line 367
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 368
    .line 369
    .line 370
    :goto_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 371
    .line 372
    const v6, 0x3f59999a    # 0.85f

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 376
    .line 377
    .line 378
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 379
    .line 380
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 381
    .line 382
    .line 383
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 384
    .line 385
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 386
    .line 387
    .line 388
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 389
    .line 390
    new-instance v7, Lcom/mycompany/app/dialog/DialogMenuList$3;

    .line 391
    .line 392
    invoke-direct {v7, v1}, Lcom/mycompany/app/dialog/DialogMenuList$3;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v7}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    .line 397
    .line 398
    iget v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->k:I

    .line 399
    .line 400
    if-lez v2, :cond_3

    .line 401
    .line 402
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 403
    .line 404
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_red_20:I

    .line 405
    .line 406
    invoke-virtual {v2, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 407
    .line 408
    .line 409
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 410
    .line 411
    iget v7, v1, Lcom/mycompany/app/dialog/DialogMenuList;->k:I

    .line 412
    .line 413
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    .line 419
    .line 420
    goto :goto_3

    .line 421
    :cond_3
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 422
    .line 423
    if-eqz v2, :cond_4

    .line 424
    .line 425
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 426
    .line 427
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_dark_20:I

    .line 428
    .line 429
    invoke-virtual {v2, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 430
    .line 431
    .line 432
    goto :goto_2

    .line 433
    :cond_4
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 434
    .line 435
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_20:I

    .line 436
    .line 437
    invoke-virtual {v2, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 438
    .line 439
    .line 440
    :goto_2
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 441
    .line 442
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 443
    .line 444
    .line 445
    :goto_3
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->o:Z

    .line 446
    .line 447
    if-eqz v2, :cond_5

    .line 448
    .line 449
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 450
    .line 451
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 452
    .line 453
    .line 454
    :cond_5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->q:Lcom/mycompany/app/view/MyButtonImage;

    .line 455
    .line 456
    new-instance v7, Lcom/mycompany/app/dialog/DialogMenuList$4;

    .line 457
    .line 458
    invoke-direct {v7, v1}, Lcom/mycompany/app/dialog/DialogMenuList$4;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v7}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    .line 463
    .line 464
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 465
    .line 466
    if-eqz v2, :cond_7

    .line 467
    .line 468
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 469
    .line 470
    if-eqz v7, :cond_6

    .line 471
    .line 472
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_cafe_dark_20:I

    .line 473
    .line 474
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 475
    .line 476
    .line 477
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 478
    .line 479
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 480
    .line 481
    .line 482
    goto :goto_4

    .line 483
    :cond_6
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_cafe_black_20:I

    .line 484
    .line 485
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 486
    .line 487
    .line 488
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 489
    .line 490
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 491
    .line 492
    .line 493
    :goto_4
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 494
    .line 495
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setMaxAlpha(F)V

    .line 496
    .line 497
    .line 498
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 499
    .line 500
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuList$5;

    .line 501
    .line 502
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuList$5;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    .line 507
    .line 508
    :cond_7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 509
    .line 510
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuList$6;

    .line 511
    .line 512
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuList$6;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    .line 517
    .line 518
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 519
    .line 520
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuList$7;

    .line 521
    .line 522
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuList$7;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    .line 528
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->v:Lcom/mycompany/app/view/MyRecyclerView;

    .line 529
    .line 530
    if-nez v2, :cond_8

    .line 531
    .line 532
    goto :goto_6

    .line 533
    :cond_8
    new-instance v2, Lcom/mycompany/app/main/MenuListAdapter;

    .line 534
    .line 535
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->f:[I

    .line 536
    .line 537
    new-instance v5, Lcom/mycompany/app/dialog/DialogMenuList$11;

    .line 538
    .line 539
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogMenuList$11;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 540
    .line 541
    .line 542
    invoke-direct {v2, v3, v5}, Lcom/mycompany/app/main/MenuListAdapter;-><init>([ILcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V

    .line 543
    .line 544
    .line 545
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->w:Lcom/mycompany/app/main/MenuListAdapter;

    .line 546
    .line 547
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->v:Lcom/mycompany/app/view/MyRecyclerView;

    .line 548
    .line 549
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 550
    .line 551
    if-eqz v3, :cond_9

    .line 552
    .line 553
    const/high16 v3, -0x1000000

    .line 554
    .line 555
    goto :goto_5

    .line 556
    :cond_9
    const v3, -0x70708

    .line 557
    .line 558
    .line 559
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 560
    .line 561
    .line 562
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->v:Lcom/mycompany/app/view/MyRecyclerView;

    .line 563
    .line 564
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 565
    .line 566
    .line 567
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->v:Lcom/mycompany/app/view/MyRecyclerView;

    .line 568
    .line 569
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuList;->w:Lcom/mycompany/app/main/MenuListAdapter;

    .line 570
    .line 571
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 572
    .line 573
    .line 574
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->v:Lcom/mycompany/app/view/MyRecyclerView;

    .line 575
    .line 576
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuList$12;

    .line 577
    .line 578
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuList$12;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 582
    .line 583
    .line 584
    :goto_6
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuList;->d:Lcom/mycompany/app/view/MyWebBody;

    .line 585
    .line 586
    if-nez v2, :cond_a

    .line 587
    .line 588
    :goto_7
    return-void

    .line 589
    :cond_a
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuList$8;

    .line 590
    .line 591
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogMenuList$8;-><init>(Lcom/mycompany/app/dialog/DialogMenuList;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 595
    .line 596
    .line 597
    return-void
.end method
