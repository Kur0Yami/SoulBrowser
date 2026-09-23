.class public Lcom/mycompany/app/main/image/MainImageWallpaper;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# static fields
.field public static final synthetic u1:I


# instance fields
.field public f1:Landroid/content/Context;

.field public g1:Ljava/lang/String;

.field public h1:Ljava/lang/String;

.field public i1:Ljava/lang/String;

.field public j1:Lcom/mycompany/app/view/MySizeFrame;

.field public k1:Lcom/mycompany/app/main/image/MainImageView;

.field public l1:Lcom/mycompany/app/view/MyFadeFrame;

.field public m1:Lcom/mycompany/app/view/MyAreaView;

.field public n1:Landroidx/appcompat/widget/AppCompatTextView;

.field public o1:Lcom/mycompany/app/view/MyLineText;

.field public p1:Lcom/mycompany/app/view/MyCoverView;

.field public q1:Lcom/mycompany/app/view/MyFadeFrame;

.field public r1:Z

.field public s1:Landroid/graphics/Bitmap;

.field public t1:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->r1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->r1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageWallpaper;->finish()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/image/MainImageWallpaper;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->f1:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "EXTRA_PATH"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->g1:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageWallpaper;->finish()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "EXTRA_REFERER"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->h1:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "EXTRA_TYPE"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->i1:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v1, Lcom/mycompany/app/main/image/MainImageWallpaper$11;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/view/MySizeFrame;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    const/4 v3, -0x1

    .line 81
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Lcom/mycompany/app/main/image/MainImageView;

    .line 88
    .line 89
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageView;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    .line 96
    .line 97
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    .line 99
    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    .line 101
    .line 102
    const/16 v5, 0x11

    .line 103
    .line 104
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    .line 106
    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    new-instance v4, Lcom/mycompany/app/view/MyFadeFrame;

    .line 110
    .line 111
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyFadeFrame;->setTouchable(Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 119
    .line 120
    .line 121
    const/16 v7, 0x8

    .line 122
    .line 123
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    .line 128
    invoke-direct {v8, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 132
    .line 133
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 134
    .line 135
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    new-instance v8, Lcom/mycompany/app/view/MyAreaView;

    .line 142
    .line 143
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyAreaView;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    const/high16 v9, 0x43200000    # 160.0f

    .line 147
    .line 148
    invoke-static {v0, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    float-to-int v9, v9

    .line 153
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    .line 155
    invoke-direct {v10, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    .line 157
    .line 158
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 159
    .line 160
    iput v9, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 161
    .line 162
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    new-instance v9, Landroid/widget/LinearLayout;

    .line 169
    .line 170
    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    const/4 v10, 0x0

    .line 174
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    .line 179
    .line 180
    const/high16 v11, -0x5f000000

    .line 181
    .line 182
    invoke-virtual {v9, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 183
    .line 184
    .line 185
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    .line 187
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 188
    .line 189
    invoke-direct {v12, v3, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 190
    .line 191
    .line 192
    const v13, 0x800053

    .line 193
    .line 194
    .line 195
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 196
    .line 197
    invoke-virtual {v1, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    new-instance v12, Lcom/mycompany/app/view/MyLineText;

    .line 201
    .line 202
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 206
    .line 207
    .line 208
    const/high16 v13, 0x41800000    # 16.0f

    .line 209
    .line 210
    invoke-virtual {v12, v6, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    .line 215
    .line 216
    sget v14, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 217
    .line 218
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 219
    .line 220
    .line 221
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 222
    .line 223
    invoke-virtual {v12, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v12, v0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 230
    .line 231
    invoke-direct {v14, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    .line 233
    .line 234
    const/high16 v15, 0x3f800000    # 1.0f

    .line 235
    .line 236
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 237
    .line 238
    invoke-virtual {v9, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .line 240
    .line 241
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    .line 243
    const/4 v7, 0x0

    .line 244
    invoke-direct {v14, v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v14, v6, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 257
    .line 258
    invoke-virtual {v14, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 259
    .line 260
    .line 261
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 262
    .line 263
    invoke-direct {v5, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 264
    .line 265
    .line 266
    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 267
    .line 268
    invoke-virtual {v9, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    .line 270
    .line 271
    new-instance v5, Lcom/mycompany/app/view/MyCoverView;

    .line 272
    .line 273
    sget v7, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 274
    .line 275
    sget v9, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 276
    .line 277
    invoke-direct {v5, v0, v3, v7, v9}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 281
    .line 282
    .line 283
    const/16 v7, 0x8

    .line 284
    .line 285
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v5, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 289
    .line 290
    .line 291
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->j1:Lcom/mycompany/app/view/MySizeFrame;

    .line 292
    .line 293
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->k1:Lcom/mycompany/app/main/image/MainImageView;

    .line 294
    .line 295
    iput-object v4, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->l1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 296
    .line 297
    iput-object v8, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->m1:Lcom/mycompany/app/view/MyAreaView;

    .line 298
    .line 299
    iput-object v14, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 300
    .line 301
    iput-object v12, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->o1:Lcom/mycompany/app/view/MyLineText;

    .line 302
    .line 303
    iput-object v5, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->p1:Lcom/mycompany/app/view/MyCoverView;

    .line 304
    .line 305
    invoke-virtual {v2, v4, v8}, Lcom/mycompany/app/main/image/MainImageView;->o(Lcom/mycompany/app/view/MyFadeFrame;Lcom/mycompany/app/view/MyAreaView;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->k1:Lcom/mycompany/app/main/image/MainImageView;

    .line 309
    .line 310
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->g1:Ljava/lang/String;

    .line 311
    .line 312
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->h1:Ljava/lang/String;

    .line 313
    .line 314
    iget-object v4, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->i1:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    new-instance v5, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 320
    .line 321
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 322
    .line 323
    .line 324
    iput-object v2, v5, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 325
    .line 326
    iput-object v3, v5, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->c:Ljava/lang/String;

    .line 327
    .line 328
    iput-object v4, v5, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->d:Ljava/lang/String;

    .line 329
    .line 330
    iput-object v5, v1, Lcom/mycompany/app/main/image/MainImageView;->x:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 331
    .line 332
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->k1:Lcom/mycompany/app/main/image/MainImageView;

    .line 333
    .line 334
    new-instance v2, Lcom/mycompany/app/main/image/MainImageWallpaper$2;

    .line 335
    .line 336
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageWallpaper$2;-><init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v0, v6, v10, v2}, Lcom/mycompany/app/main/image/MainImageView;->q(Lcom/mycompany/app/main/MainActivity;ZILcom/mycompany/app/main/image/MainImageView$MainImageListener;)V

    .line 340
    .line 341
    .line 342
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 343
    .line 344
    if-nez v1, :cond_1

    .line 345
    .line 346
    goto :goto_0

    .line 347
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/image/MainImageWallpaper$3;

    .line 348
    .line 349
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageWallpaper$3;-><init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    .line 354
    .line 355
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->j1:Lcom/mycompany/app/view/MySizeFrame;

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper;->j1:Lcom/mycompany/app/view/MySizeFrame;

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 363
    .line 364
    .line 365
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->w7(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->j1:Lcom/mycompany/app/view/MySizeFrame;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-object v1, v0, Lcom/mycompany/app/view/MySizeFrame;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->j1:Lcom/mycompany/app/view/MySizeFrame;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->k1:Lcom/mycompany/app/main/image/MainImageView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageView;->l()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->k1:Lcom/mycompany/app/main/image/MainImageView;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->l1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->l1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->m1:Lcom/mycompany/app/view/MyAreaView;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->c()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->m1:Lcom/mycompany/app/view/MyAreaView;

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->o1:Lcom/mycompany/app/view/MyLineText;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->o1:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->p1:Lcom/mycompany/app/view/MyCoverView;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->p1:Lcom/mycompany/app/view/MyCoverView;

    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->q1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->q1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 69
    .line 70
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->f1:Landroid/content/Context;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->g1:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->h1:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->i1:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper;->n1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/image/MainImageWallpaper$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageWallpaper$1;-><init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
