.class Lcom/mycompany/app/dialog/DialogInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$1;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo$1;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

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
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 17
    .line 18
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 24
    .line 25
    .line 26
    const/16 v6, 0x8

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    const/4 v7, -0x1

    .line 32
    const/4 v8, -0x2

    .line 33
    invoke-virtual {v4, v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 34
    .line 35
    .line 36
    new-instance v9, Lcom/mycompany/app/view/MyRoundImage;

    .line 37
    .line 38
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    .line 45
    .line 46
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 47
    .line 48
    int-to-float v10, v10

    .line 49
    const/high16 v11, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v10, v11

    .line 52
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9, v6}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 59
    .line 60
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 61
    .line 62
    invoke-direct {v10, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    .line 67
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 68
    .line 69
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 70
    .line 71
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 72
    .line 73
    invoke-virtual {v5, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    const/high16 v10, 0x430c0000    # 140.0f

    .line 77
    .line 78
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    float-to-int v10, v10

    .line 83
    const/4 v12, 0x0

    .line 84
    const/4 v13, 0x2

    .line 85
    invoke-static {v2, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    .line 91
    const/4 v14, 0x0

    .line 92
    invoke-direct {v13, v7, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    const/high16 v14, 0x3f800000    # 1.0f

    .line 96
    .line 97
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 98
    .line 99
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    new-instance v13, Landroid/widget/FrameLayout;

    .line 103
    .line 104
    invoke-direct {v13, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v13, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 108
    .line 109
    .line 110
    new-instance v12, Landroid/widget/LinearLayout;

    .line 111
    .line 112
    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    .line 117
    .line 118
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 119
    .line 120
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 121
    .line 122
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 123
    .line 124
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 125
    .line 126
    invoke-virtual {v12, v14, v15, v3, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 127
    .line 128
    .line 129
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .line 131
    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 132
    .line 133
    .line 134
    const/16 v8, 0x10

    .line 135
    .line 136
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    .line 138
    invoke-virtual {v13, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v12}, Lcom/mycompany/app/dialog/DialogInfo;->D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-static {v2, v12}, Lcom/mycompany/app/dialog/DialogInfo;->D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-static {v2, v12}, Lcom/mycompany/app/dialog/DialogInfo;->D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-static {v2, v12}, Lcom/mycompany/app/dialog/DialogInfo;->D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    invoke-static {v2, v12}, Lcom/mycompany/app/dialog/DialogInfo;->D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    invoke-static {v2, v12}, Lcom/mycompany/app/dialog/DialogInfo;->D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-static {v2, v12}, Lcom/mycompany/app/dialog/DialogInfo;->D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-static {v2, v12}, Lcom/mycompany/app/dialog/DialogInfo;->D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v2, v12}, Lcom/mycompany/app/dialog/DialogInfo;->D(Landroid/content/Context;Landroid/widget/LinearLayout;)Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    move-object/from16 v17, v12

    .line 178
    .line 179
    new-instance v12, Lcom/mycompany/app/view/MyRoundImage;

    .line 180
    .line 181
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    move-object/from16 v18, v0

    .line 185
    .line 186
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 187
    .line 188
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    .line 190
    .line 191
    const/16 v0, 0x8

    .line 192
    .line 193
    invoke-virtual {v12, v0}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 197
    .line 198
    move-object/from16 v19, v6

    .line 199
    .line 200
    const/4 v6, -0x1

    .line 201
    invoke-direct {v0, v6, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 202
    .line 203
    .line 204
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 205
    .line 206
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 207
    .line 208
    .line 209
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 210
    .line 211
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .line 216
    .line 217
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 218
    .line 219
    if-eqz v0, :cond_1

    .line 220
    .line 221
    const v0, -0x50506

    .line 222
    .line 223
    .line 224
    :goto_0
    const/high16 v6, 0x40000000    # 2.0f

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_1
    const v0, -0xc6b655

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :goto_1
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    float-to-int v6, v6

    .line 236
    new-instance v10, Lcom/mycompany/app/view/MyCoverView;

    .line 237
    .line 238
    move-object/from16 v16, v7

    .line 239
    .line 240
    sget v7, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 241
    .line 242
    invoke-direct {v10, v2, v0, v6, v7}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 243
    .line 244
    .line 245
    const/4 v0, 0x1

    .line 246
    invoke-virtual {v10, v0}, Lcom/mycompany/app/view/MyCoverView;->setBlockTouch(Z)V

    .line 247
    .line 248
    .line 249
    const/16 v0, 0x8

    .line 250
    .line 251
    invoke-virtual {v10, v0}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 255
    .line 256
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 257
    .line 258
    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    const/16 v2, 0x11

    .line 262
    .line 263
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    .line 265
    invoke-virtual {v13, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 269
    .line 270
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogInfo;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 271
    .line 272
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogInfo;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 273
    .line 274
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogInfo;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 275
    .line 276
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 277
    .line 278
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 279
    .line 280
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->l0:Landroid/widget/LinearLayout;

    .line 281
    .line 282
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    .line 284
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 285
    .line 286
    iget-object v0, v3, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 287
    .line 288
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 289
    .line 290
    iget-object v0, v8, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 291
    .line 292
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->o0:Landroid/widget/LinearLayout;

    .line 293
    .line 294
    iget-object v0, v8, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 295
    .line 296
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 297
    .line 298
    iget-object v0, v8, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 301
    .line 302
    iget-object v0, v11, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 303
    .line 304
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->r0:Landroid/widget/LinearLayout;

    .line 305
    .line 306
    iget-object v0, v11, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 307
    .line 308
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    iget-object v0, v11, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 311
    .line 312
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 313
    .line 314
    iget-object v0, v14, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 315
    .line 316
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->u0:Landroid/widget/LinearLayout;

    .line 317
    .line 318
    iget-object v0, v14, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 319
    .line 320
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 321
    .line 322
    iget-object v0, v14, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 323
    .line 324
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 325
    .line 326
    iget-object v0, v15, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 327
    .line 328
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->x0:Landroid/widget/LinearLayout;

    .line 329
    .line 330
    iget-object v0, v15, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 333
    .line 334
    iget-object v0, v15, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 335
    .line 336
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 337
    .line 338
    move-object/from16 v0, v16

    .line 339
    .line 340
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 341
    .line 342
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->A0:Landroid/widget/LinearLayout;

    .line 343
    .line 344
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 345
    .line 346
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 347
    .line 348
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    .line 350
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 351
    .line 352
    move-object/from16 v0, v19

    .line 353
    .line 354
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 355
    .line 356
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->D0:Landroid/widget/LinearLayout;

    .line 357
    .line 358
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 359
    .line 360
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 361
    .line 362
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 363
    .line 364
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 365
    .line 366
    move-object/from16 v0, v18

    .line 367
    .line 368
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 369
    .line 370
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->G0:Landroid/widget/LinearLayout;

    .line 371
    .line 372
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 373
    .line 374
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 375
    .line 376
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 377
    .line 378
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 379
    .line 380
    move-object/from16 v0, v17

    .line 381
    .line 382
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->a:Landroid/widget/LinearLayout;

    .line 383
    .line 384
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->J0:Landroid/widget/LinearLayout;

    .line 385
    .line 386
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 387
    .line 388
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogInfo;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 389
    .line 390
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo$InfoHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 391
    .line 392
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogInfo;->L0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 393
    .line 394
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 395
    .line 396
    if-nez v0, :cond_2

    .line 397
    .line 398
    :goto_2
    return-void

    .line 399
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogInfo$2;

    .line 400
    .line 401
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogInfo$2;-><init>(Lcom/mycompany/app/dialog/DialogInfo;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    .line 406
    .line 407
    return-void
.end method
