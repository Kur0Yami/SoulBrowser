.class public Lcom/mycompany/app/dialog/DialogQuickEdit;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;,
        Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic G0:I


# instance fields
.field public A0:Lcom/mycompany/app/main/MainListLoader;

.field public B0:Lcom/mycompany/app/view/MyPopupMenu;

.field public C0:Landroid/net/Uri;

.field public D0:Ljava/lang/String;

.field public E0:Lcom/mycompany/app/dialog/DialogQuickIcon;

.field public F0:Lcom/mycompany/app/dialog/DialogQuickColor;

.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;

.field public final d0:Z

.field public final e0:Z

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Landroid/graphics/Bitmap;

.field public i0:Z

.field public j0:Landroid/graphics/Bitmap;

.field public k0:Z

.field public final l0:I

.field public m0:I

.field public n0:Ljava/util/List;

.field public o0:Z

.field public p0:Z

.field public q0:Lcom/mycompany/app/view/MyDialogLinear;

.field public r0:Lcom/mycompany/app/view/MyRoundImage;

.field public s0:Lcom/mycompany/app/view/MyLineView;

.field public t0:Landroid/view/View;

.field public u0:Lcom/mycompany/app/view/MyEditText;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Lcom/mycompany/app/view/MyEditText;

.field public x0:Lcom/mycompany/app/view/MyLineText;

.field public y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

.field public z0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IZLjava/util/List;Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p9, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->c0:Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;

    .line 13
    .line 14
    iput-boolean p7, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->d0:Z

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->e0:Z

    .line 17
    .line 18
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->f0:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->g0:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->h0:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    iput p6, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->l0:I

    .line 25
    .line 26
    iput-object p8, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->n0:Ljava/util/List;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogQuickEdit$1;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogQuickEdit$1;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogQuickEdit;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

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
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 22
    .line 23
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 29
    .line 30
    .line 31
    const/4 v6, -0x1

    .line 32
    invoke-virtual {v3, v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 41
    .line 42
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    .line 44
    .line 45
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 46
    .line 47
    int-to-float v8, v8

    .line 48
    const/high16 v9, 0x40000000    # 2.0f

    .line 49
    .line 50
    div-float/2addr v8, v9

    .line 51
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 52
    .line 53
    .line 54
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    .line 56
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 57
    .line 58
    invoke-direct {v8, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    const v10, 0x800013

    .line 62
    .line 63
    .line 64
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    .line 66
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 67
    .line 68
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    new-instance v8, Lcom/mycompany/app/view/MyLineView;

    .line 75
    .line 76
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    float-to-int v9, v9

    .line 84
    int-to-float v9, v9

    .line 85
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyLineView;->a(F)V

    .line 86
    .line 87
    .line 88
    const/16 v9, 0x8

    .line 89
    .line 90
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    .line 95
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 96
    .line 97
    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    .line 102
    const/high16 v10, 0x41400000    # 12.0f

    .line 103
    .line 104
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    float-to-int v12, v12

    .line 109
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    sget-boolean v11, Lcom/mycompany/app/pref/PrefAlbum;->m:Z

    .line 116
    .line 117
    const/4 v12, 0x0

    .line 118
    if-eqz v11, :cond_1

    .line 119
    .line 120
    new-instance v11, Landroid/view/View;

    .line 121
    .line 122
    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->noti_dot_red:I

    .line 126
    .line 127
    invoke-virtual {v11, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    .line 132
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 133
    .line 134
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    .line 136
    .line 137
    const/high16 v14, 0x41100000    # 9.0f

    .line 138
    .line 139
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    float-to-int v14, v14

    .line 144
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    .line 146
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_1
    move-object v11, v12

    .line 154
    :goto_0
    new-instance v13, Lcom/mycompany/app/view/MyEditText;

    .line 155
    .line 156
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    const/16 v14, 0x10

    .line 160
    .line 161
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 165
    .line 166
    .line 167
    const/4 v15, 0x3

    .line 168
    invoke-virtual {v13, v15}, Landroid/view/View;->setTextDirection(I)V

    .line 169
    .line 170
    .line 171
    const/high16 v9, 0x41800000    # 16.0f

    .line 172
    .line 173
    invoke-virtual {v13, v2, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    .line 175
    .line 176
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    .line 178
    const/16 v15, 0x1d

    .line 179
    .line 180
    if-lt v9, v15, :cond_2

    .line 181
    .line 182
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 183
    .line 184
    invoke-virtual {v13, v15}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 185
    .line 186
    .line 187
    :cond_2
    sget v15, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 188
    .line 189
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setHint(I)V

    .line 190
    .line 191
    .line 192
    const v15, -0x7e7e7f

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 196
    .line 197
    .line 198
    const/high16 v15, 0x10000000

    .line 199
    .line 200
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v13, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    .line 205
    .line 206
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    .line 208
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 209
    .line 210
    invoke-direct {v15, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 211
    .line 212
    .line 213
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 214
    .line 215
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 216
    .line 217
    .line 218
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 219
    .line 220
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .line 225
    .line 226
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->e0:Z

    .line 227
    .line 228
    if-nez v2, :cond_5

    .line 229
    .line 230
    const/4 v2, 0x2

    .line 231
    invoke-static {v1, v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .line 240
    .line 241
    const/high16 v5, 0x3f800000    # 1.0f

    .line 242
    .line 243
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 244
    .line 245
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    new-instance v4, Landroid/widget/FrameLayout;

    .line 249
    .line 250
    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    const/4 v5, -0x2

    .line 254
    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 255
    .line 256
    .line 257
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    float-to-int v2, v2

    .line 262
    const/high16 v10, 0x42b00000    # 88.0f

    .line 263
    .line 264
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    float-to-int v10, v10

    .line 269
    new-instance v15, Landroid/widget/FrameLayout;

    .line 270
    .line 271
    invoke-direct {v15, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 272
    .line 273
    .line 274
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 275
    .line 276
    invoke-virtual {v15, v14, v2, v14, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v15, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 280
    .line 281
    .line 282
    const/high16 v14, 0x41600000    # 14.0f

    .line 283
    .line 284
    move-object/from16 v16, v13

    .line 285
    .line 286
    const/4 v6, 0x1

    .line 287
    invoke-static {v1, v12, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    invoke-virtual {v15, v13, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 292
    .line 293
    .line 294
    new-instance v5, Lcom/mycompany/app/view/MyEditText;

    .line 295
    .line 296
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 297
    .line 298
    .line 299
    const/16 v12, 0x10

    .line 300
    .line 301
    const/4 v14, 0x3

    .line 302
    invoke-static {v5, v12, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 303
    .line 304
    .line 305
    const/high16 v14, 0x41800000    # 16.0f

    .line 306
    .line 307
    invoke-virtual {v5, v6, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 308
    .line 309
    .line 310
    const/16 v6, 0x1d

    .line 311
    .line 312
    if-lt v9, v6, :cond_3

    .line 313
    .line 314
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 315
    .line 316
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 317
    .line 318
    .line 319
    :cond_3
    const v6, -0x7e7e7f

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setInputType(I)V

    .line 326
    .line 327
    .line 328
    const/high16 v6, 0x10000000

    .line 329
    .line 330
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 331
    .line 332
    .line 333
    const/4 v6, 0x0

    .line 334
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    .line 336
    .line 337
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 338
    .line 339
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 340
    .line 341
    const/4 v14, -0x1

    .line 342
    invoke-direct {v6, v14, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 343
    .line 344
    .line 345
    const/16 v12, 0x50

    .line 346
    .line 347
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 348
    .line 349
    invoke-virtual {v15, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    .line 351
    .line 352
    new-instance v6, Lcom/mycompany/app/view/MyLineFrame;

    .line 353
    .line 354
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 355
    .line 356
    .line 357
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 358
    .line 359
    invoke-virtual {v6, v14, v2, v14, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 360
    .line 361
    .line 362
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 363
    .line 364
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyLineFrame;->d(I)V

    .line 365
    .line 366
    .line 367
    const/16 v2, 0x8

    .line 368
    .line 369
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 373
    .line 374
    const/4 v14, -0x1

    .line 375
    invoke-direct {v2, v14, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 376
    .line 377
    .line 378
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 379
    .line 380
    invoke-virtual {v4, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    .line 382
    .line 383
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 384
    .line 385
    const/4 v4, 0x0

    .line 386
    invoke-direct {v2, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 387
    .line 388
    .line 389
    const/high16 v4, 0x41600000    # 14.0f

    .line 390
    .line 391
    const/4 v10, 0x1

    .line 392
    invoke-virtual {v2, v10, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 393
    .line 394
    .line 395
    const/4 v4, -0x2

    .line 396
    invoke-virtual {v6, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 397
    .line 398
    .line 399
    new-instance v2, Lcom/mycompany/app/view/MyEditText;

    .line 400
    .line 401
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 402
    .line 403
    .line 404
    const/16 v4, 0x10

    .line 405
    .line 406
    const/4 v14, 0x3

    .line 407
    invoke-static {v2, v4, v10, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 408
    .line 409
    .line 410
    const/high16 v14, 0x41800000    # 16.0f

    .line 411
    .line 412
    invoke-virtual {v2, v10, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 413
    .line 414
    .line 415
    const/16 v10, 0x1d

    .line 416
    .line 417
    if-lt v9, v10, :cond_4

    .line 418
    .line 419
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 420
    .line 421
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 422
    .line 423
    .line 424
    :cond_4
    const v9, -0x7e7e7f

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 431
    .line 432
    .line 433
    const/high16 v4, 0x10000000

    .line 434
    .line 435
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 436
    .line 437
    .line 438
    const/4 v4, 0x0

    .line 439
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 440
    .line 441
    .line 442
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 443
    .line 444
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 445
    .line 446
    const/4 v14, -0x1

    .line 447
    invoke-direct {v4, v14, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 448
    .line 449
    .line 450
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 451
    .line 452
    invoke-virtual {v6, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    .line 454
    .line 455
    move-object v4, v5

    .line 456
    move-object v12, v13

    .line 457
    goto :goto_1

    .line 458
    :cond_5
    move-object v4, v12

    .line 459
    move-object/from16 v16, v13

    .line 460
    .line 461
    :goto_1
    const/16 v2, 0x11

    .line 462
    .line 463
    const/4 v6, 0x1

    .line 464
    const/high16 v14, 0x41800000    # 16.0f

    .line 465
    .line 466
    invoke-static {v1, v2, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 471
    .line 472
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 473
    .line 474
    .line 475
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 476
    .line 477
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 478
    .line 479
    .line 480
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 481
    .line 482
    const/4 v14, -0x1

    .line 483
    invoke-virtual {v3, v1, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 484
    .line 485
    .line 486
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 487
    .line 488
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 489
    .line 490
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->s0:Lcom/mycompany/app/view/MyLineView;

    .line 491
    .line 492
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->t0:Landroid/view/View;

    .line 493
    .line 494
    move-object/from16 v2, v16

    .line 495
    .line 496
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 497
    .line 498
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 499
    .line 500
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 501
    .line 502
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 503
    .line 504
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 505
    .line 506
    if-nez v1, :cond_6

    .line 507
    .line 508
    :goto_2
    return-void

    .line 509
    :cond_6
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickEdit$2;

    .line 510
    .line 511
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$2;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    .line 516
    .line 517
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogQuickEdit;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->l0:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->e0:Z

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_3

    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->k0:Z

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    iget v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 23
    .line 24
    if-ne v3, v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 27
    .line 28
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->o0:Z

    .line 29
    .line 30
    if-ne v0, v3, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->g0:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogQuickEdit;->dismiss()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->f0:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iput-boolean v2, v3, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 51
    .line 52
    :cond_2
    iput-object v4, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 53
    .line 54
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 55
    .line 56
    invoke-direct {v2, p0, v0, v0, v1}, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v2, p0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 79
    .line 80
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 81
    .line 82
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 87
    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :cond_5
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 107
    .line 108
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 109
    .line 110
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_6
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->d0:Z

    .line 115
    .line 116
    if-eqz v5, :cond_7

    .line 117
    .line 118
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->f0:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_7

    .line 125
    .line 126
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->k0:Z

    .line 127
    .line 128
    if-nez v5, :cond_8

    .line 129
    .line 130
    iget v5, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 131
    .line 132
    if-ne v5, v0, :cond_8

    .line 133
    .line 134
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 135
    .line 136
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->o0:Z

    .line 137
    .line 138
    if-ne v0, v5, :cond_8

    .line 139
    .line 140
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->g0:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogQuickEdit;->dismiss()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v0, v3}, Lcom/mycompany/app/db/book/DbBookQuick;->o(Landroid/content/Context;Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_8

    .line 159
    .line 160
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 171
    .line 172
    sget v0, Lnet/kaki87/soul2/testing/R$string;->already_added:I

    .line 173
    .line 174
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->f0:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 181
    .line 182
    if-eqz v5, :cond_9

    .line 183
    .line 184
    iput-boolean v2, v5, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 185
    .line 186
    :cond_9
    iput-object v4, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 187
    .line 188
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 189
    .line 190
    invoke-direct {v2, p0, v0, v3, v1}, Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 194
    .line 195
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {v2, p0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->F0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogQuickColor;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->F0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogQuickEdit;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->e0:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/high16 p1, -0x10000

    .line 16
    .line 17
    iput p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 18
    .line 19
    :cond_1
    iget p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 20
    .line 21
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookQuick;->f(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, v2, p1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 40
    .line 41
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 42
    .line 43
    invoke-virtual {p1, v2, v0}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iget v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookQuick;->m()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 58
    .line 59
    iget v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, p1, v2}, Lcom/mycompany/app/view/MyRoundImage;->t(ILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->i0:Z

    .line 17
    .line 18
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/mycompany/app/dialog/DialogQuickEdit;->F(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->i0:Z

    .line 32
    .line 33
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    iput v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    const p3, -0x70708

    .line 49
    .line 50
    .line 51
    if-eqz p4, :cond_3

    .line 52
    .line 53
    if-eq p4, p3, :cond_3

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->i0:Z

    .line 56
    .line 57
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 58
    .line 59
    iput p4, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Lcom/mycompany/app/dialog/DialogQuickEdit;->F(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    new-instance p4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 66
    .line 67
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iput p5, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 71
    .line 72
    iput-object p1, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 73
    .line 74
    iput-object p1, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 75
    .line 76
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 77
    .line 78
    iput-boolean v1, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 79
    .line 80
    if-nez p5, :cond_4

    .line 81
    .line 82
    iput v3, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    const/16 v4, 0xb

    .line 86
    .line 87
    iput v4, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 88
    .line 89
    :goto_0
    const/16 v4, 0x21

    .line 90
    .line 91
    if-ne p5, v4, :cond_5

    .line 92
    .line 93
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainListLoader;->c(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    invoke-static {p4}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 103
    .line 104
    .line 105
    move-result p5

    .line 106
    if-eqz p5, :cond_6

    .line 107
    .line 108
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->i0:Z

    .line 109
    .line 110
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 111
    .line 112
    iput v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 113
    .line 114
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 115
    .line 116
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_6
    new-instance p1, Lcom/mycompany/app/main/MainListLoader;

    .line 126
    .line 127
    iget-object p5, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 128
    .line 129
    new-instance v1, Lcom/mycompany/app/dialog/DialogQuickEdit$11;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogQuickEdit$11;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, p5, v0, v1}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->A0:Lcom/mycompany/app/main/MainListLoader;

    .line 138
    .line 139
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->e0:Z

    .line 140
    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 144
    .line 145
    const/high16 p2, -0x10000

    .line 146
    .line 147
    invoke-static {p2}, Lcom/mycompany/app/db/book/DbBookQuick;->f(I)I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 156
    .line 157
    sget-boolean p5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 158
    .line 159
    if-eqz p5, :cond_8

    .line 160
    .line 161
    const p3, -0xafafb0

    .line 162
    .line 163
    .line 164
    :cond_8
    invoke-virtual {p1, p3, p2, v2}, Lcom/mycompany/app/view/MyRoundImage;->t(ILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->A0:Lcom/mycompany/app/main/MainListLoader;

    .line 177
    .line 178
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 179
    .line 180
    invoke-virtual {p1, p4, p2}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogQuickEdit;->E()V

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->y0:Lcom/mycompany/app/dialog/DialogQuickEdit$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->E0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogQuickIcon;->dismiss()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->E0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogQuickEdit;->D()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->B0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->B0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 41
    .line 42
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->A0:Lcom/mycompany/app/main/MainListLoader;

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->A0:Lcom/mycompany/app/main/MainListLoader;

    .line 50
    .line 51
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 59
    .line 60
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 61
    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 68
    .line 69
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->s0:Lcom/mycompany/app/view/MyLineView;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineView;->b()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->s0:Lcom/mycompany/app/view/MyLineView;

    .line 77
    .line 78
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 86
    .line 87
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 88
    .line 89
    if-eqz v1, :cond_9

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 95
    .line 96
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 97
    .line 98
    if-eqz v1, :cond_a

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 104
    .line 105
    :cond_a
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->c0:Lcom/mycompany/app/dialog/DialogQuickEdit$QuickEditListener;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->f0:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->g0:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->n0:Ljava/util/List;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->t0:Landroid/view/View;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->C0:Landroid/net/Uri;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit;->D0:Ljava/lang/String;

    .line 126
    .line 127
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 128
    .line 129
    .line 130
    return-void
.end method
