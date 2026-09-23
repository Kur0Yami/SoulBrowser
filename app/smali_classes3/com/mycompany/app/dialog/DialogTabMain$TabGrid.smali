.class Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogTabMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabGrid"
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public final C:Ljava/lang/Runnable;

.field public final synthetic D:Lcom/mycompany/app/dialog/DialogTabMain;

.field public final a:Z

.field public b:Ljava/util/List;

.field public c:Ljava/util/ArrayList;

.field public d:J

.field public e:I

.field public f:I

.field public g:Landroid/widget/FrameLayout;

.field public h:Lcom/mycompany/app/view/MyRecyclerView;

.field public i:Landroid/widget/ImageView;

.field public j:Lcom/mycompany/app/view/MyCoverView;

.field public k:Landroidx/appcompat/widget/AppCompatTextView;

.field public l:Landroid/widget/ImageView;

.field public m:Lcom/mycompany/app/view/MyRoundLinear;

.field public n:Lcom/mycompany/app/view/MyButtonText;

.field public o:Lcom/mycompany/app/web/WebTabAdapter;

.field public p:Lcom/mycompany/app/view/MyManagerGrid;

.field public q:Lcom/mycompany/app/quick/TabDragHelper;

.field public r:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public s:Z

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

.field public x:Z

.field public y:Z

.field public z:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 11
    .line 12
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$17;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$17;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V

    .line 15
    .line 16
    .line 17
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->C:Ljava/lang/Runnable;

    .line 18
    .line 19
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->a:Z

    .line 20
    .line 21
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v4, Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-direct {v4, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    const/4 v6, -0x1

    .line 34
    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Lcom/mycompany/app/view/MyRecyclerView;

    .line 41
    .line 42
    invoke-direct {v5, v3}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    sget v7, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-virtual {v5, v7, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v8}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v8}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 58
    .line 59
    .line 60
    new-instance v7, Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-direct {v7, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 66
    .line 67
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    .line 69
    .line 70
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 71
    .line 72
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    const/16 v9, 0x8

    .line 76
    .line 77
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v7, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 81
    .line 82
    .line 83
    new-instance v10, Lcom/mycompany/app/view/MyCoverView;

    .line 84
    .line 85
    invoke-direct {v10, v3}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v9}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v10, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 92
    .line 93
    .line 94
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->g:Landroid/widget/FrameLayout;

    .line 95
    .line 96
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 97
    .line 98
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->i:Landroid/widget/ImageView;

    .line 99
    .line 100
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->j:Lcom/mycompany/app/view/MyCoverView;

    .line 101
    .line 102
    const v5, -0x50506

    .line 103
    .line 104
    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->M:Z

    .line 108
    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 112
    .line 113
    if-nez v1, :cond_1

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyRoundLinear;

    .line 118
    .line 119
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    const/4 v7, 0x1

    .line 123
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v2, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 127
    .line 128
    .line 129
    new-instance v4, Landroid/view/View;

    .line 130
    .line 131
    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .line 136
    invoke-direct {v9, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .line 138
    .line 139
    const/high16 v10, 0x3f800000    # 1.0f

    .line 140
    .line 141
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 142
    .line 143
    invoke-virtual {v2, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .line 145
    .line 146
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    const/4 v9, 0x0

    .line 149
    invoke-direct {v4, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 153
    .line 154
    .line 155
    const/high16 v9, 0x41900000    # 18.0f

    .line 156
    .line 157
    invoke-virtual {v4, v7, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 158
    .line 159
    .line 160
    sget v9, Lnet/kaki87/soul2/testing/R$string;->secret_mode:I

    .line 161
    .line 162
    const/4 v11, -0x2

    .line 163
    invoke-static {v4, v9, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 168
    .line 169
    invoke-virtual {v2, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    new-instance v9, Landroid/view/View;

    .line 173
    .line 174
    invoke-direct {v9, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 175
    .line 176
    .line 177
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 178
    .line 179
    invoke-direct {v12, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    .line 181
    .line 182
    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 183
    .line 184
    invoke-virtual {v2, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    new-instance v9, Landroid/widget/ImageView;

    .line 188
    .line 189
    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    const/high16 v12, 0x42a80000    # 84.0f

    .line 193
    .line 194
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    float-to-int v12, v12

    .line 199
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 200
    .line 201
    invoke-direct {v13, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    .line 203
    .line 204
    iput v7, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 205
    .line 206
    invoke-virtual {v2, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .line 208
    .line 209
    new-instance v12, Landroid/view/View;

    .line 210
    .line 211
    invoke-direct {v12, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 212
    .line 213
    .line 214
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 215
    .line 216
    invoke-direct {v13, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 217
    .line 218
    .line 219
    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 220
    .line 221
    invoke-virtual {v2, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .line 223
    .line 224
    new-instance v12, Lcom/mycompany/app/view/MyButtonText;

    .line 225
    .line 226
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 230
    .line 231
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 232
    .line 233
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 234
    .line 235
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 236
    .line 237
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 238
    .line 239
    .line 240
    sget v3, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 241
    .line 242
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 243
    .line 244
    .line 245
    const/16 v3, 0x11

    .line 246
    .line 247
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 248
    .line 249
    .line 250
    const/high16 v3, 0x41800000    # 16.0f

    .line 251
    .line 252
    invoke-virtual {v12, v7, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 253
    .line 254
    .line 255
    sget v3, Lnet/kaki87/soul2/testing/R$string;->unlock:I

    .line 256
    .line 257
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12, v7}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v12, v7}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 264
    .line 265
    .line 266
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 267
    .line 268
    invoke-virtual {v12, v3}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 269
    .line 270
    .line 271
    const/high16 v3, 0x41c00000    # 24.0f

    .line 272
    .line 273
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    float-to-int v3, v3

    .line 278
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 279
    .line 280
    invoke-direct {v13, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    .line 291
    .line 292
    new-instance v3, Landroid/view/View;

    .line 293
    .line 294
    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 295
    .line 296
    .line 297
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 298
    .line 299
    invoke-direct {v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 300
    .line 301
    .line 302
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 303
    .line 304
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    .line 306
    .line 307
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 308
    .line 309
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->l:Landroid/widget/ImageView;

    .line 310
    .line 311
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->m:Lcom/mycompany/app/view/MyRoundLinear;

    .line 312
    .line 313
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 314
    .line 315
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 316
    .line 317
    const/high16 v2, -0x1000000

    .line 318
    .line 319
    if-eqz v1, :cond_2

    .line 320
    .line 321
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 322
    .line 323
    .line 324
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->l:Landroid/widget/ImageView;

    .line 325
    .line 326
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_dark_84:I

    .line 327
    .line 328
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 329
    .line 330
    .line 331
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 332
    .line 333
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    .line 335
    .line 336
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 337
    .line 338
    const v3, -0xd8d8d9

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 342
    .line 343
    .line 344
    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->l:Landroid/widget/ImageView;

    .line 349
    .line 350
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_black_84:I

    .line 351
    .line 352
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 356
    .line 357
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 361
    .line 362
    const v2, -0x1f1f20

    .line 363
    .line 364
    .line 365
    const v3, -0x2f2f30

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 369
    .line 370
    .line 371
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->m:Lcom/mycompany/app/view/MyRoundLinear;

    .line 372
    .line 373
    invoke-virtual {v1, v7, v7}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 374
    .line 375
    .line 376
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->m:Lcom/mycompany/app/view/MyRoundLinear;

    .line 377
    .line 378
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 379
    .line 380
    if-eqz v2, :cond_3

    .line 381
    .line 382
    const v2, -0xdededf

    .line 383
    .line 384
    .line 385
    goto :goto_1

    .line 386
    :cond_3
    move v2, v5

    .line 387
    :goto_1
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 388
    .line 389
    .line 390
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->m:Lcom/mycompany/app/view/MyRoundLinear;

    .line 391
    .line 392
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$1;

    .line 393
    .line 394
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 401
    .line 402
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$2;

    .line 403
    .line 404
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$2;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    .line 409
    .line 410
    :cond_4
    :goto_2
    sget v1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 411
    .line 412
    if-eqz v1, :cond_5

    .line 413
    .line 414
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 415
    .line 416
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 417
    .line 418
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 419
    .line 420
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 421
    .line 422
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 423
    .line 424
    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 425
    .line 426
    .line 427
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 428
    .line 429
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 430
    .line 431
    if-eqz v2, :cond_6

    .line 432
    .line 433
    const v3, -0xdededf

    .line 434
    .line 435
    .line 436
    goto :goto_3

    .line 437
    :cond_6
    move v3, v5

    .line 438
    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 439
    .line 440
    .line 441
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->v()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->j:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const-wide/16 v2, 0xc8

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/mycompany/app/view/MyCoverView;->n(ZFJ)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$3;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->j:Lcom/mycompany/app/view/MyCoverView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->j:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->m:Lcom/mycompany/app/view/MyRoundLinear;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->m:Lcom/mycompany/app/view/MyRoundLinear;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->P()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->q:Lcom/mycompany/app/quick/TabDragHelper;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/quick/TabDragHelper;->p()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->q:Lcom/mycompany/app/quick/TabDragHelper;

    .line 55
    .line 56
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->b:Ljava/util/List;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->c:Ljava/util/ArrayList;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->g:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->i:Landroid/widget/ImageView;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->l:Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->p:Lcom/mycompany/app/view/MyManagerGrid;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->r:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 71
    .line 72
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->f1:Z

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->f1:Z

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->U()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v2, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->f1:Z

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iput v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->A:I

    .line 28
    .line 29
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$14;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$14;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    const v1, -0xdededf

    .line 4
    .line 5
    .line 6
    const v2, -0x50506

    .line 7
    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 12
    .line 13
    const/high16 v3, -0x1000000

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->l:Landroid/widget/ImageView;

    .line 23
    .line 24
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_dark_20:I

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 35
    .line 36
    const v4, -0xd8d8d9

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->l:Landroid/widget/ImageView;

    .line 49
    .line 50
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_black_20:I

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->n:Lcom/mycompany/app/view/MyButtonText;

    .line 61
    .line 62
    const v3, -0x1f1f20

    .line 63
    .line 64
    .line 65
    const v4, -0x2f2f30

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->m:Lcom/mycompany/app/view/MyRoundLinear;

    .line 72
    .line 73
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 74
    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    move v3, v1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v3, v2

    .line 80
    :goto_1
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundLinear;->setColor(I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move v1, v2

    .line 93
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->p:Lcom/mycompany/app/view/MyManagerGrid;

    .line 11
    .line 12
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 15
    .line 16
    iget v3, v2, Lcom/mycompany/app/dialog/DialogTabMain;->h0:I

    .line 17
    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->x1(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 24
    .line 25
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->z:Z

    .line 26
    .line 27
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget v4, v2, Lcom/mycompany/app/dialog/DialogTabMain;->h0:I

    .line 34
    .line 35
    iget v2, v2, Lcom/mycompany/app/dialog/DialogTabMain;->i0:I

    .line 36
    .line 37
    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/mycompany/app/web/WebTabAdapter;->Z(IIIZ)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->e1:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->e1:Z

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->t:I

    .line 17
    .line 18
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$11;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$11;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
