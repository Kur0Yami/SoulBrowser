.class public Lcom/mycompany/app/dialog/DialogPassSave;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic z0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/view/MyDialogLinear;

.field public d0:Lcom/mycompany/app/view/MyRoundImage;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Lcom/mycompany/app/view/MyLineLinear;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyEditText;

.field public j0:Lcom/mycompany/app/view/MyLineRelative;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Landroid/widget/RelativeLayout;

.field public o0:Ljava/lang/String;

.field public p0:Ljava/lang/String;

.field public q0:Ljava/lang/String;

.field public r0:Z

.field public s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

.field public t0:Ljava/util/ArrayList;

.field public u0:Z

.field public v0:Z

.field public w0:Ljava/util/ArrayList;

.field public x0:Ljava/lang/String;

.field public y0:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 11
    .line 12
    new-instance p1, Lcom/mycompany/app/dialog/DialogPassSave$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogPassSave$1;-><init>(Lcom/mycompany/app/dialog/DialogPassSave;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogPassSave;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

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
    new-instance v11, Landroid/widget/RelativeLayout;

    .line 155
    .line 156
    invoke-direct {v11, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v11, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 160
    .line 161
    .line 162
    new-instance v7, Lcom/mycompany/app/view/MyLineLinear;

    .line 163
    .line 164
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    .line 169
    .line 170
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 171
    .line 172
    invoke-virtual {v7, v14}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v2}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11, v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 179
    .line 180
    .line 181
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    invoke-direct {v14, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    .line 185
    .line 186
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 187
    .line 188
    invoke-virtual {v14, v15, v9, v15, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    .line 193
    .line 194
    const/high16 v9, 0x41600000    # 14.0f

    .line 195
    .line 196
    invoke-virtual {v14, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 197
    .line 198
    .line 199
    sget v15, Lnet/kaki87/soul2/testing/R$string;->exist_file:I

    .line 200
    .line 201
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 202
    .line 203
    .line 204
    const/16 v15, 0x8

    .line 205
    .line 206
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    const/high16 v15, 0x42000000    # 32.0f

    .line 210
    .line 211
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 212
    .line 213
    .line 214
    move-result v15

    .line 215
    float-to-int v15, v15

    .line 216
    invoke-virtual {v7, v14, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 217
    .line 218
    .line 219
    new-instance v15, Landroid/widget/FrameLayout;

    .line 220
    .line 221
    invoke-direct {v15, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    const/high16 v5, 0x41400000    # 12.0f

    .line 225
    .line 226
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    float-to-int v5, v5

    .line 231
    const/high16 v13, 0x41200000    # 10.0f

    .line 232
    .line 233
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    float-to-int v13, v13

    .line 238
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 239
    .line 240
    invoke-virtual {v15, v10, v5, v13, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 241
    .line 242
    .line 243
    const/high16 v5, 0x42b00000    # 88.0f

    .line 244
    .line 245
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    float-to-int v5, v5

    .line 250
    invoke-virtual {v7, v15, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 251
    .line 252
    .line 253
    invoke-static {v1, v4, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    sget v9, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 258
    .line 259
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 260
    .line 261
    .line 262
    const/4 v9, -0x2

    .line 263
    invoke-virtual {v15, v5, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 264
    .line 265
    .line 266
    new-instance v9, Lcom/mycompany/app/view/MyEditText;

    .line 267
    .line 268
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    const/4 v10, 0x3

    .line 272
    const/16 v13, 0x10

    .line 273
    .line 274
    invoke-static {v9, v13, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 275
    .line 276
    .line 277
    const/high16 v10, 0x41800000    # 16.0f

    .line 278
    .line 279
    invoke-virtual {v9, v2, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 280
    .line 281
    .line 282
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 283
    .line 284
    const/16 v10, 0x1d

    .line 285
    .line 286
    if-lt v2, v10, :cond_1

    .line 287
    .line 288
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 289
    .line 290
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 291
    .line 292
    .line 293
    :cond_1
    const/high16 v2, 0x10000000

    .line 294
    .line 295
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 299
    .line 300
    .line 301
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 302
    .line 303
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 304
    .line 305
    invoke-direct {v2, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 306
    .line 307
    .line 308
    const v4, 0x800053

    .line 309
    .line 310
    .line 311
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 312
    .line 313
    const/high16 v4, 0x40c00000    # 6.0f

    .line 314
    .line 315
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    float-to-int v1, v1

    .line 320
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v15, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    .line 325
    .line 326
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogPassSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 327
    .line 328
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogPassSave;->n0:Landroid/widget/RelativeLayout;

    .line 329
    .line 330
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogPassSave;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 331
    .line 332
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogPassSave;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 333
    .line 334
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogPassSave;->f0:Lcom/mycompany/app/view/MyLineLinear;

    .line 335
    .line 336
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogPassSave;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 337
    .line 338
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogPassSave;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 339
    .line 340
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 341
    .line 342
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 343
    .line 344
    if-nez v1, :cond_2

    .line 345
    .line 346
    :goto_0
    return-void

    .line 347
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassSave$2;

    .line 348
    .line 349
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassSave$2;-><init>(Lcom/mycompany/app/dialog/DialogPassSave;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    .line 354
    .line 355
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogPassSave;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

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
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

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
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

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
    move-result-object v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    array-length v2, v2

    .line 56
    const/16 v3, 0xc8

    .line 57
    .line 58
    if-le v2, v3, :cond_3

    .line 59
    .line 60
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

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
    const-string v2, ".csv"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 84
    .line 85
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 89
    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    iput-boolean v1, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 93
    .line 94
    :cond_4
    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 96
    .line 97
    new-instance v1, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 98
    .line 99
    invoke-direct {v1, p0, v0}, Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogPassSave;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const v1, -0x7f7f80

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const v1, -0x252526

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->v0:Z

    .line 51
    .line 52
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iput-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 57
    .line 58
    :cond_2
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPassSave;->dismiss()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Lcom/mycompany/app/dialog/DialogPassSave$9;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogPassSave$9;-><init>(Lcom/mycompany/app/dialog/DialogPassSave;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final F(Ljava/io/BufferedWriter;Ljava/util/List;)Z
    .locals 5

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_5

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    :try_start_0
    const-string v2, "name,url,username,password\n"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 34
    .line 35
    iget-boolean v4, p0, Lcom/mycompany/app/dialog/DialogPassSave;->v0:Z

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    iget-boolean v4, v4, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v3, v1

    .line 50
    :goto_1
    if-eqz v3, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, "\n"

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    return v3

    .line 101
    :catch_0
    :cond_5
    :goto_2
    return v1
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPassSave;->D()V

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->s0:Lcom/mycompany/app/dialog/DialogPassSave$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 47
    .line 48
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->f0:Lcom/mycompany/app/view/MyLineLinear;

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->f0:Lcom/mycompany/app/view/MyLineLinear;

    .line 56
    .line 57
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 58
    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 65
    .line 66
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPassSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 67
    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 74
    .line 75
    :cond_7
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->o0:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->p0:Ljava/lang/String;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->q0:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->t0:Ljava/util/ArrayList;

    .line 94
    .line 95
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->w0:Ljava/util/ArrayList;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave;->x0:Ljava/lang/String;

    .line 98
    .line 99
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 100
    .line 101
    .line 102
    return-void
.end method
