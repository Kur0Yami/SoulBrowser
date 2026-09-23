.class Lcom/mycompany/app/dialog/DialogSetImgTrans$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetImgTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetImgTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans$1;->c:Lcom/mycompany/app/dialog/DialogSetImgTrans;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans$1;->c:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    const/4 v3, 0x1

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/high16 v5, 0x42f00000    # 120.0f

    .line 17
    .line 18
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    float-to-int v5, v5

    .line 23
    new-instance v6, Lcom/mycompany/app/view/MyLineFrame;

    .line 24
    .line 25
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 34
    .line 35
    .line 36
    const/4 v7, -0x1

    .line 37
    invoke-virtual {v4, v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Lcom/mycompany/app/view/MyRoundLinear;

    .line 41
    .line 42
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v3, v3}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 46
    .line 47
    .line 48
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-virtual {v5, v9, v9, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    .line 59
    .line 60
    const/high16 v8, 0x42a00000    # 80.0f

    .line 61
    .line 62
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    float-to-int v8, v8

    .line 67
    invoke-virtual {v5, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 68
    .line 69
    .line 70
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    .line 72
    const/4 v10, -0x2

    .line 73
    sget v11, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 74
    .line 75
    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    const/16 v10, 0x11

    .line 79
    .line 80
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    .line 82
    invoke-virtual {v6, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    new-instance v6, Lcom/mycompany/app/view/MyButtonText;

    .line 86
    .line 87
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    .line 92
    .line 93
    const/high16 v8, 0x41900000    # 18.0f

    .line 94
    .line 95
    invoke-virtual {v6, v3, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 99
    .line 100
    .line 101
    sget v8, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 102
    .line 103
    int-to-float v8, v8

    .line 104
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 105
    .line 106
    int-to-float v11, v11

    .line 107
    iput v8, v6, Lcom/mycompany/app/view/MyButtonText;->q:F

    .line 108
    .line 109
    iput-boolean v3, v6, Lcom/mycompany/app/view/MyButtonText;->o:Z

    .line 110
    .line 111
    iput v11, v6, Lcom/mycompany/app/view/MyButtonText;->x:F

    .line 112
    .line 113
    iput-boolean v3, v6, Lcom/mycompany/app/view/MyButtonText;->w:Z

    .line 114
    .line 115
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    .line 117
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 118
    .line 119
    invoke-direct {v8, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    .line 121
    .line 122
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 123
    .line 124
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 136
    .line 137
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    .line 139
    .line 140
    sget v12, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 141
    .line 142
    int-to-float v12, v12

    .line 143
    invoke-virtual {v8, v12, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 144
    .line 145
    .line 146
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 147
    .line 148
    int-to-float v12, v12

    .line 149
    invoke-virtual {v8, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 150
    .line 151
    .line 152
    const/16 v12, 0x8

    .line 153
    .line 154
    invoke-virtual {v8, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    .line 159
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 160
    .line 161
    invoke-direct {v12, v13, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    .line 163
    .line 164
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 165
    .line 166
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    sget v13, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 177
    .line 178
    int-to-float v13, v13

    .line 179
    invoke-virtual {v12, v13, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 180
    .line 181
    .line 182
    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 183
    .line 184
    int-to-float v13, v13

    .line 185
    invoke-virtual {v12, v13}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 186
    .line 187
    .line 188
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    .line 190
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 191
    .line 192
    invoke-direct {v13, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    .line 194
    .line 195
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 196
    .line 197
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 208
    .line 209
    int-to-float v14, v14

    .line 210
    invoke-virtual {v13, v14, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 211
    .line 212
    .line 213
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 214
    .line 215
    int-to-float v14, v14

    .line 216
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 217
    .line 218
    .line 219
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    .line 221
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 222
    .line 223
    invoke-direct {v14, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .line 225
    .line 226
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 227
    .line 228
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 239
    .line 240
    int-to-float v15, v15

    .line 241
    invoke-virtual {v14, v15, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 242
    .line 243
    .line 244
    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 245
    .line 246
    int-to-float v15, v15

    .line 247
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 248
    .line 249
    .line 250
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 251
    .line 252
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 253
    .line 254
    invoke-direct {v15, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 255
    .line 256
    .line 257
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 258
    .line 259
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 270
    .line 271
    int-to-float v11, v11

    .line 272
    invoke-virtual {v10, v11, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 273
    .line 274
    .line 275
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 276
    .line 277
    int-to-float v11, v11

    .line 278
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 279
    .line 280
    .line 281
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    .line 283
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 284
    .line 285
    invoke-direct {v11, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 286
    .line 287
    .line 288
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 289
    .line 290
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v2, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 301
    .line 302
    invoke-direct {v15, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 303
    .line 304
    .line 305
    const/high16 v9, 0x3f800000    # 1.0f

    .line 306
    .line 307
    iput v9, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 308
    .line 309
    invoke-virtual {v4, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .line 311
    .line 312
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 313
    .line 314
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    const/16 v2, 0x11

    .line 318
    .line 319
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 320
    .line 321
    .line 322
    const/high16 v2, 0x41800000    # 16.0f

    .line 323
    .line 324
    invoke-virtual {v9, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 325
    .line 326
    .line 327
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 328
    .line 329
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 330
    .line 331
    .line 332
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 333
    .line 334
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v3}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 338
    .line 339
    .line 340
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 341
    .line 342
    invoke-virtual {v4, v9, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 343
    .line 344
    .line 345
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 346
    .line 347
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->d0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 348
    .line 349
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 350
    .line 351
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 352
    .line 353
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 354
    .line 355
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 356
    .line 357
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 358
    .line 359
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 360
    .line 361
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 362
    .line 363
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 364
    .line 365
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 366
    .line 367
    if-nez v2, :cond_1

    .line 368
    .line 369
    :goto_0
    return-void

    .line 370
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetImgTrans$2;

    .line 371
    .line 372
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetImgTrans$2;-><init>(Lcom/mycompany/app/dialog/DialogSetImgTrans;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    .line 377
    .line 378
    return-void
.end method
