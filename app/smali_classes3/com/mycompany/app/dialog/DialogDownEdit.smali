.class public Lcom/mycompany/app/dialog/DialogDownEdit;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic F0:I


# instance fields
.field public A0:Ljava/util/ArrayList;

.field public B0:Ljava/lang/String;

.field public C0:Lcom/mycompany/app/view/MyPopupMenu;

.field public D0:Ljava/lang/String;

.field public E0:Lcom/mycompany/app/main/MainUri$UriItem;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyLineFrame;

.field public e0:Lcom/mycompany/app/view/MyRoundImage;

.field public f0:Landroidx/appcompat/widget/AppCompatTextView;

.field public g0:Lcom/mycompany/app/view/MyRoundImage;

.field public h0:Lcom/mycompany/app/view/MyLineLinear;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Lcom/mycompany/app/view/MyEditText;

.field public l0:Lcom/mycompany/app/view/MyLineRelative;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Lcom/mycompany/app/view/MyButtonImage;

.field public p0:Landroidx/appcompat/widget/AppCompatTextView;

.field public q0:Landroid/widget/RelativeLayout;

.field public r0:Landroid/graphics/Bitmap;

.field public s0:Ljava/lang/String;

.field public t0:Ljava/lang/String;

.field public u0:Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;

.field public v0:Ljava/lang/String;

.field public w0:Ljava/lang/String;

.field public x0:Z

.field public y0:Lcom/mycompany/app/dialog/DialogPreview;

.field public z0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->r0:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->s0:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->u0:Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;

    .line 17
    .line 18
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownEdit$1;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogDownEdit$1;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogDownEdit;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

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
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x2

    .line 16
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    .line 22
    const/4 v8, -0x1

    .line 23
    const/4 v9, 0x0

    .line 24
    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    const/high16 v10, 0x3f800000    # 1.0f

    .line 28
    .line 29
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 30
    .line 31
    invoke-static {v3, v6, v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/4 v10, -0x2

    .line 36
    invoke-virtual {v6, v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7, v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 45
    .line 46
    .line 47
    new-instance v11, Lcom/mycompany/app/view/MyLineFrame;

    .line 48
    .line 49
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 53
    .line 54
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 55
    .line 56
    .line 57
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .line 59
    invoke-direct {v12, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    const/16 v13, 0x50

    .line 63
    .line 64
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    .line 66
    invoke-virtual {v6, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    new-instance v6, Lcom/mycompany/app/view/MyRoundImage;

    .line 70
    .line 71
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    .line 78
    .line 79
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 80
    .line 81
    int-to-float v12, v12

    .line 82
    const/high16 v13, 0x40000000    # 2.0f

    .line 83
    .line 84
    div-float/2addr v12, v13

    .line 85
    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 86
    .line 87
    .line 88
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    .line 90
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 91
    .line 92
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    const v13, 0x800013

    .line 96
    .line 97
    .line 98
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    .line 100
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 101
    .line 102
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-direct {v12, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    .line 112
    .line 113
    const/16 v13, 0x10

    .line 114
    .line 115
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 119
    .line 120
    .line 121
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 122
    .line 123
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 124
    .line 125
    .line 126
    const/high16 v5, 0x41800000    # 16.0f

    .line 127
    .line 128
    invoke-virtual {v12, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 129
    .line 130
    .line 131
    const/high16 v14, 0x42900000    # 72.0f

    .line 132
    .line 133
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    float-to-int v14, v14

    .line 138
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 139
    .line 140
    invoke-direct {v15, v8, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 144
    .line 145
    .line 146
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 147
    .line 148
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    new-instance v14, Lcom/mycompany/app/view/MyRoundImage;

    .line 155
    .line 156
    invoke-direct {v14, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 160
    .line 161
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 162
    .line 163
    .line 164
    const/16 v15, 0x8

    .line 165
    .line 166
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    const/high16 v5, 0x430c0000    # 140.0f

    .line 170
    .line 171
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    float-to-int v5, v5

    .line 176
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 177
    .line 178
    invoke-direct {v15, v8, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    .line 180
    .line 181
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 182
    .line 183
    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 190
    .line 191
    invoke-direct {v5, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v5, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 195
    .line 196
    .line 197
    new-instance v7, Lcom/mycompany/app/view/MyLineLinear;

    .line 198
    .line 199
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 203
    .line 204
    .line 205
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 206
    .line 207
    invoke-virtual {v7, v15}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7, v2}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 214
    .line 215
    .line 216
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 217
    .line 218
    invoke-direct {v15, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    .line 220
    .line 221
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 222
    .line 223
    invoke-virtual {v15, v10, v9, v10, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 227
    .line 228
    .line 229
    const/high16 v9, 0x41600000    # 14.0f

    .line 230
    .line 231
    invoke-virtual {v15, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 232
    .line 233
    .line 234
    sget v10, Lnet/kaki87/soul2/testing/R$string;->exist_file:I

    .line 235
    .line 236
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(I)V

    .line 237
    .line 238
    .line 239
    const/16 v10, 0x8

    .line 240
    .line 241
    invoke-virtual {v15, v10}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    const/high16 v10, 0x42000000    # 32.0f

    .line 245
    .line 246
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    float-to-int v10, v10

    .line 251
    invoke-virtual {v7, v15, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 252
    .line 253
    .line 254
    new-instance v10, Landroid/widget/FrameLayout;

    .line 255
    .line 256
    invoke-direct {v10, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 257
    .line 258
    .line 259
    const/high16 v13, 0x41400000    # 12.0f

    .line 260
    .line 261
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 262
    .line 263
    .line 264
    move-result v13

    .line 265
    float-to-int v13, v13

    .line 266
    const/high16 v2, 0x41200000    # 10.0f

    .line 267
    .line 268
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    float-to-int v2, v2

    .line 273
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 274
    .line 275
    invoke-virtual {v10, v4, v13, v2, v13}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 276
    .line 277
    .line 278
    const/high16 v2, 0x42b00000    # 88.0f

    .line 279
    .line 280
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    float-to-int v2, v2

    .line 285
    invoke-virtual {v7, v10, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 286
    .line 287
    .line 288
    const/4 v2, 0x0

    .line 289
    const/4 v4, 0x1

    .line 290
    invoke-static {v1, v2, v4, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    sget v2, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 295
    .line 296
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 297
    .line 298
    .line 299
    const/4 v2, -0x2

    .line 300
    invoke-virtual {v10, v9, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 301
    .line 302
    .line 303
    new-instance v2, Lcom/mycompany/app/view/MyEditText;

    .line 304
    .line 305
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 306
    .line 307
    .line 308
    const/4 v13, 0x3

    .line 309
    const/16 v8, 0x10

    .line 310
    .line 311
    invoke-static {v2, v8, v4, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 312
    .line 313
    .line 314
    const/high16 v8, 0x41800000    # 16.0f

    .line 315
    .line 316
    invoke-virtual {v2, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 317
    .line 318
    .line 319
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 320
    .line 321
    const/16 v8, 0x1d

    .line 322
    .line 323
    if-lt v4, v8, :cond_1

    .line 324
    .line 325
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 326
    .line 327
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 328
    .line 329
    .line 330
    :cond_1
    const/high16 v4, 0x10000000

    .line 331
    .line 332
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 333
    .line 334
    .line 335
    const/4 v4, 0x0

    .line 336
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 337
    .line 338
    .line 339
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 340
    .line 341
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 342
    .line 343
    const/4 v13, -0x1

    .line 344
    invoke-direct {v4, v13, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 345
    .line 346
    .line 347
    const v8, 0x800053

    .line 348
    .line 349
    .line 350
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 351
    .line 352
    const/high16 v8, 0x40c00000    # 6.0f

    .line 353
    .line 354
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    float-to-int v1, v1

    .line 359
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    .line 364
    .line 365
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 366
    .line 367
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 368
    .line 369
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->q0:Landroid/widget/RelativeLayout;

    .line 370
    .line 371
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 372
    .line 373
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 374
    .line 375
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 376
    .line 377
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 378
    .line 379
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 380
    .line 381
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 382
    .line 383
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 384
    .line 385
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 386
    .line 387
    if-nez v1, :cond_2

    .line 388
    .line 389
    :goto_0
    return-void

    .line 390
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownEdit$2;

    .line 391
    .line 392
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownEdit$2;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    .line 397
    .line 398
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogDownEdit;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 21
    .line 22
    sget v0, Lnet/kaki87/soul2/testing/R$string;->select_dir:I

    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 42
    .line 43
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 44
    .line 45
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    array-length v1, v1

    .line 56
    const/16 v2, 0xc8

    .line 57
    .line 58
    if-le v1, v2, :cond_3

    .line 59
    .line 60
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 61
    .line 62
    sget v0, Lnet/kaki87/soul2/testing/R$string;->long_name:I

    .line 63
    .line 64
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    const-string v1, ".jpg"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->b4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 81
    .line 82
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 83
    .line 84
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 98
    .line 99
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->D0:Ljava/lang/String;

    .line 103
    .line 104
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownEdit$12;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownEdit$12;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public final D(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p2, p1, :cond_5

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 19
    .line 20
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 37
    .line 38
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 39
    .line 40
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    sget-object p3, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    sput-object p2, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownEdit$10;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownEdit$10;-><init>(Lcom/mycompany/app/dialog/DialogDownEdit;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_1
    return v0

    .line 76
    :cond_6
    const/4 p1, 0x0

    .line 77
    return p1
.end method

.method public final E(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->y0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogPreview;->D(Z)V

    .line 25
    .line 26
    .line 27
    :cond_3
    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->v0:Ljava/lang/String;

    .line 13
    .line 14
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->x0:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->v0:Ljava/lang/String;

    .line 27
    .line 28
    :goto_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->w0:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_selected:I

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    const v1, -0xbbcca

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyLineLinear;->setDrawLine(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->B0:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    const v3, -0x50506

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/high16 v3, -0x1000000

    .line 95
    .line 96
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->w0:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyLineLinear;->setDrawLine(Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    const-string v1, ".jpg"

    .line 124
    .line 125
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->b4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyLineLinear;->setDrawLine(Z)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->w0:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->y0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->dismiss()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->y0:Lcom/mycompany/app/dialog/DialogPreview;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->C0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->C0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->d0:Lcom/mycompany/app/view/MyLineFrame;

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 47
    .line 48
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 56
    .line 57
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->h0:Lcom/mycompany/app/view/MyLineLinear;

    .line 65
    .line 66
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 74
    .line 75
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->l0:Lcom/mycompany/app/view/MyLineRelative;

    .line 76
    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->l0:Lcom/mycompany/app/view/MyLineRelative;

    .line 83
    .line 84
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    if-eqz v0, :cond_9

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    :cond_9
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->b0:Landroid/content/Context;

    .line 96
    .line 97
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->r0:Landroid/graphics/Bitmap;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->s0:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->t0:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->u0:Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;

    .line 112
    .line 113
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->v0:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->w0:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->A0:Ljava/util/ArrayList;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownEdit;->B0:Ljava/lang/String;

    .line 120
    .line 121
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 122
    .line 123
    .line 124
    return-void
.end method
