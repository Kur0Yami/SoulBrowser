.class public Lcom/mycompany/app/dialog/DialogWebBookMove;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;,
        Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

.field public c0:Ljava/lang/String;

.field public d0:Ljava/util/List;

.field public final e0:I

.field public f0:Lcom/mycompany/app/view/MyDialogLinear;

.field public g0:Lcom/mycompany/app/view/MyRoundImage;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyEditText;

.field public j0:Landroid/widget/LinearLayout;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyProgressBar;

.field public n0:Lcom/mycompany/app/view/MyLineText;

.field public o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

.field public p0:Lcom/mycompany/app/main/MainListLoader;

.field public q0:Z

.field public r0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->c0:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 15
    .line 16
    iput p4, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->e0:I

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebBookMove$1;

    .line 24
    .line 25
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebBookMove$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookMove;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogWebBookMove;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/high16 v4, 0x42900000    # 72.0f

    .line 15
    .line 16
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    float-to-int v4, v4

    .line 21
    iget v5, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->e0:I

    .line 22
    .line 23
    const/16 v6, 0x10

    .line 24
    .line 25
    const/4 v7, 0x2

    .line 26
    const/high16 v8, 0x41800000    # 16.0f

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, -0x2

    .line 30
    const/4 v11, -0x1

    .line 31
    if-eq v5, v7, :cond_2

    .line 32
    .line 33
    const/4 v12, 0x4

    .line 34
    if-ne v5, v12, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v12, v9

    .line 38
    move-object v13, v12

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 41
    .line 42
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 46
    .line 47
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v5, v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 51
    .line 52
    .line 53
    new-instance v12, Lcom/mycompany/app/view/MyRoundImage;

    .line 54
    .line 55
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 59
    .line 60
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    .line 62
    .line 63
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 64
    .line 65
    int-to-float v13, v13

    .line 66
    const/high16 v14, 0x40000000    # 2.0f

    .line 67
    .line 68
    div-float/2addr v13, v14

    .line 69
    invoke-virtual {v12, v13}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 70
    .line 71
    .line 72
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .line 74
    sget v14, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 75
    .line 76
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    const v14, 0x800013

    .line 80
    .line 81
    .line 82
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    .line 84
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 85
    .line 86
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 97
    .line 98
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v13, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 102
    .line 103
    .line 104
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .line 106
    invoke-direct {v14, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    .line 108
    .line 109
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    .line 111
    invoke-virtual {v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 112
    .line 113
    .line 114
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 115
    .line 116
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    invoke-static {v1, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    .line 128
    const/4 v14, 0x0

    .line 129
    invoke-direct {v7, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .line 131
    .line 132
    const/high16 v15, 0x3f800000    # 1.0f

    .line 133
    .line 134
    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 135
    .line 136
    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    new-instance v7, Landroid/widget/FrameLayout;

    .line 140
    .line 141
    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v7, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 145
    .line 146
    .line 147
    new-instance v5, Lcom/mycompany/app/view/MyEditText;

    .line 148
    .line 149
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    const/4 v15, 0x3

    .line 153
    invoke-static {v5, v6, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    .line 158
    .line 159
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 160
    .line 161
    const/16 v15, 0x1d

    .line 162
    .line 163
    if-lt v6, v15, :cond_3

    .line 164
    .line 165
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 166
    .line 167
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 168
    .line 169
    .line 170
    :cond_3
    const v6, -0x7e7e7f

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 174
    .line 175
    .line 176
    const/high16 v6, 0x10000000

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 182
    .line 183
    .line 184
    const/16 v6, 0x8

    .line 185
    .line 186
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    .line 191
    invoke-direct {v15, v11, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 192
    .line 193
    .line 194
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 195
    .line 196
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 197
    .line 198
    .line 199
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 200
    .line 201
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    .line 206
    .line 207
    new-instance v4, Landroid/widget/LinearLayout;

    .line 208
    .line 209
    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 213
    .line 214
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 215
    .line 216
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 217
    .line 218
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 219
    .line 220
    invoke-virtual {v4, v15, v8, v9, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v4, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 230
    .line 231
    .line 232
    new-instance v6, Landroid/widget/FrameLayout;

    .line 233
    .line 234
    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 235
    .line 236
    .line 237
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 238
    .line 239
    const/4 v8, 0x0

    .line 240
    invoke-virtual {v6, v8, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v6, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 244
    .line 245
    .line 246
    const/high16 v7, 0x41800000    # 16.0f

    .line 247
    .line 248
    const/4 v8, 0x0

    .line 249
    invoke-static {v1, v8, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    sget v14, Lnet/kaki87/soul2/testing/R$string;->total:I

    .line 254
    .line 255
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, v9, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 259
    .line 260
    .line 261
    invoke-static {v1, v8, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    .line 267
    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 268
    .line 269
    .line 270
    const v10, 0x800005

    .line 271
    .line 272
    .line 273
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 274
    .line 275
    invoke-virtual {v6, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .line 277
    .line 278
    new-instance v6, Lcom/mycompany/app/view/MyProgressBar;

    .line 279
    .line 280
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 281
    .line 282
    .line 283
    const/high16 v7, 0x41400000    # 12.0f

    .line 284
    .line 285
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    float-to-int v7, v7

    .line 290
    invoke-virtual {v4, v6, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 291
    .line 292
    .line 293
    new-instance v7, Lcom/mycompany/app/view/MyLineText;

    .line 294
    .line 295
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 296
    .line 297
    .line 298
    const/16 v1, 0x11

    .line 299
    .line 300
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 301
    .line 302
    .line 303
    const/high16 v1, 0x41800000    # 16.0f

    .line 304
    .line 305
    invoke-virtual {v7, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 306
    .line 307
    .line 308
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 309
    .line 310
    invoke-virtual {v7, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 311
    .line 312
    .line 313
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 314
    .line 315
    invoke-virtual {v3, v7, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 316
    .line 317
    .line 318
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 319
    .line 320
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 321
    .line 322
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 323
    .line 324
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 325
    .line 326
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->j0:Landroid/widget/LinearLayout;

    .line 327
    .line 328
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 329
    .line 330
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 333
    .line 334
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 335
    .line 336
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 337
    .line 338
    if-nez v1, :cond_4

    .line 339
    .line 340
    :goto_2
    return-void

    .line 341
    :cond_4
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookMove$2;

    .line 342
    .line 343
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookMove$2;-><init>(Lcom/mycompany/app/dialog/DialogWebBookMove;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    .line 348
    .line 349
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const v1, -0x7f7f80

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v1, -0x252526

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 53
    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookMove;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final D(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 10

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v5, p0

    .line 14
    goto/16 :goto_9

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;->a()V

    .line 21
    .line 22
    .line 23
    :cond_2
    const/4 v0, 0x3

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    const-string v4, "/"

    .line 28
    .line 29
    if-ne p1, v0, :cond_7

    .line 30
    .line 31
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    check-cast p3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 36
    .line 37
    iget-object p3, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    :goto_0
    move-object p3, v4

    .line 58
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :goto_2
    move-object v8, p2

    .line 76
    move-object v7, p3

    .line 77
    goto/16 :goto_7

    .line 78
    .line 79
    :cond_6
    :goto_3
    move-object v7, p3

    .line 80
    move-object v8, v4

    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :cond_7
    const/4 v0, 0x4

    .line 84
    if-ne p1, v0, :cond_f

    .line 85
    .line 86
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 87
    .line 88
    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 99
    .line 100
    sget p2, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 101
    .line 102
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_8
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-eqz p3, :cond_9

    .line 111
    .line 112
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 113
    .line 114
    sget p2, Lnet/kaki87/soul2/testing/R$string;->same_name:I

    .line 115
    .line 116
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_9
    const-string p3, ""

    .line 121
    .line 122
    invoke-virtual {p2, v4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-eqz p3, :cond_a

    .line 131
    .line 132
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 133
    .line 134
    sget p2, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 135
    .line 136
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_a
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    check-cast p3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 145
    .line 146
    iget-object p3, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 147
    .line 148
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-nez v5, :cond_c

    .line 161
    .line 162
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_b

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_b
    invoke-virtual {p3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    goto :goto_5

    .line 174
    :cond_c
    :goto_4
    move-object p3, v4

    .line 175
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-nez v5, :cond_e

    .line 180
    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_d

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_e
    :goto_6
    invoke-static {v4, p2, v4}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :cond_f
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 218
    .line 219
    invoke-virtual {p3, v2}, Lcom/mycompany/app/view/MyLineText;->setDrawLine(Z)V

    .line 220
    .line 221
    .line 222
    move-object v8, p2

    .line 223
    move-object v7, v1

    .line 224
    :goto_7
    invoke-virtual {p0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 225
    .line 226
    .line 227
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 228
    .line 229
    const/16 p3, 0x8

    .line 230
    .line 231
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->j0:Landroid/widget/LinearLayout;

    .line 235
    .line 236
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 240
    .line 241
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    .line 242
    .line 243
    .line 244
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 245
    .line 246
    sget p3, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 247
    .line 248
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 249
    .line 250
    .line 251
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 252
    .line 253
    sget-boolean p3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 254
    .line 255
    if-eqz p3, :cond_10

    .line 256
    .line 257
    const p3, -0x50506

    .line 258
    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_10
    const/high16 p3, -0x1000000

    .line 262
    .line 263
    :goto_8
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    .line 265
    .line 266
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 267
    .line 268
    if-eqz p2, :cond_11

    .line 269
    .line 270
    iput-boolean v2, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 271
    .line 272
    :cond_11
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 273
    .line 274
    new-instance v4, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 275
    .line 276
    move-object v5, p0

    .line 277
    move v9, p1

    .line 278
    move-object v6, p4

    .line 279
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogWebBookMove;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    .line 281
    .line 282
    iput-object v4, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 283
    .line 284
    iget-object p1, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {v4, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    :goto_9
    return-void
.end method

.method public final E(Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 23
    .line 24
    const v0, -0x70708

    .line 25
    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_2
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 45
    .line 46
    const/16 v3, 0xb

    .line 47
    .line 48
    if-eq v2, v3, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 51
    .line 52
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 53
    .line 54
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 55
    .line 56
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    new-instance v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    const/16 v4, 0x11

    .line 66
    .line 67
    iput v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 68
    .line 69
    iput v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 70
    .line 71
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v2, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 76
    .line 77
    iget-wide v4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 78
    .line 79
    iput-wide v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 80
    .line 81
    iget v4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 82
    .line 83
    iput v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 84
    .line 85
    iget v4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 86
    .line 87
    iput v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 88
    .line 89
    iget v4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 90
    .line 91
    iput v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 92
    .line 93
    iget-object v4, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 104
    .line 105
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 106
    .line 107
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 108
    .line 109
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    invoke-static {v3}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_5
    new-instance p1, Lcom/mycompany/app/main/MainListLoader;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 140
    .line 141
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookMove$7;

    .line 142
    .line 143
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogWebBookMove$7;-><init>(Lcom/mycompany/app/dialog/DialogWebBookMove;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, v1, v0, v2}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 147
    .line 148
    .line 149
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->p0:Lcom/mycompany/app/main/MainListLoader;

    .line 150
    .line 151
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 152
    .line 153
    iget v0, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->p0:Lcom/mycompany/app/main/MainListLoader;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 165
    .line 166
    invoke-virtual {p1, v3, v0}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookMove;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->p0:Lcom/mycompany/app/main/MainListLoader;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->p0:Lcom/mycompany/app/main/MainListLoader;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 63
    .line 64
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    :cond_7
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->c0:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->j0:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove;->r0:Ljava/lang/String;

    .line 90
    .line 91
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
