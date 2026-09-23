.class public Lcom/mycompany/app/dialog/DialogEditSearch;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic z0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

.field public final d0:J

.field public e0:Ljava/lang/String;

.field public f0:Ljava/lang/String;

.field public final g0:I

.field public h0:I

.field public i0:Landroid/graphics/Bitmap;

.field public j0:Z

.field public k0:Lcom/mycompany/app/view/MyDialogLinear;

.field public l0:Lcom/mycompany/app/view/MyRoundImage;

.field public m0:Lcom/mycompany/app/view/MyLineView;

.field public n0:Lcom/mycompany/app/view/MyEditText;

.field public o0:Lcom/mycompany/app/view/MyRoundFrame;

.field public p0:Lcom/mycompany/app/view/MyEditPure;

.field public q0:Lcom/mycompany/app/view/MyLineText;

.field public r0:Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;

.field public s0:Z

.field public t0:Lcom/mycompany/app/main/MainListLoader;

.field public u0:Lcom/mycompany/app/view/MyPopupMenu;

.field public v0:Landroid/net/Uri;

.field public w0:Ljava/lang/String;

.field public x0:Lcom/mycompany/app/dialog/DialogQuickIcon;

.field public y0:Lcom/mycompany/app/dialog/DialogQuickColor;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;JLjava/lang/String;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 13
    .line 14
    iput-wide p2, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->d0:J

    .line 15
    .line 16
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->e0:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->f0:Ljava/lang/String;

    .line 19
    .line 20
    iput p6, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->g0:I

    .line 21
    .line 22
    iput p6, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 23
    .line 24
    if-nez p6, :cond_0

    .line 25
    .line 26
    const/high16 p1, -0x10000

    .line 27
    .line 28
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditSearch$1;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditSearch$1;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditSearch;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

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
    const/high16 v4, 0x41400000    # 12.0f

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
    new-instance v5, Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-virtual {v5, v6, v6, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v8, -0x1

    .line 36
    invoke-direct {v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    const/high16 v6, 0x3f800000    # 1.0f

    .line 40
    .line 41
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 42
    .line 43
    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    const/high16 v6, 0x42900000    # 72.0f

    .line 47
    .line 48
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    float-to-int v6, v6

    .line 53
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 54
    .line 55
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 59
    .line 60
    invoke-virtual {v7, v9}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    new-instance v9, Lcom/mycompany/app/view/MyRoundImage;

    .line 67
    .line 68
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 72
    .line 73
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    .line 75
    .line 76
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 77
    .line 78
    int-to-float v10, v10

    .line 79
    const/high16 v11, 0x40000000    # 2.0f

    .line 80
    .line 81
    div-float/2addr v10, v11

    .line 82
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 83
    .line 84
    .line 85
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .line 87
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 88
    .line 89
    invoke-direct {v10, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    const v12, 0x800013

    .line 93
    .line 94
    .line 95
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    .line 97
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 98
    .line 99
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    new-instance v10, Lcom/mycompany/app/view/MyLineView;

    .line 106
    .line 107
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyLineView;->a(F)V

    .line 115
    .line 116
    .line 117
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .line 119
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 120
    .line 121
    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    .line 126
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 127
    .line 128
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 129
    .line 130
    add-int/2addr v13, v14

    .line 131
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    new-instance v11, Lcom/mycompany/app/view/MyEditText;

    .line 138
    .line 139
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    const/16 v13, 0x10

    .line 143
    .line 144
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 148
    .line 149
    .line 150
    const/4 v13, 0x3

    .line 151
    invoke-virtual {v11, v13}, Landroid/view/View;->setTextDirection(I)V

    .line 152
    .line 153
    .line 154
    const/high16 v14, 0x41800000    # 16.0f

    .line 155
    .line 156
    invoke-virtual {v11, v2, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    .line 158
    .line 159
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 160
    .line 161
    const/16 v2, 0x1d

    .line 162
    .line 163
    if-lt v15, v2, :cond_1

    .line 164
    .line 165
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 166
    .line 167
    invoke-virtual {v11, v2}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 168
    .line 169
    .line 170
    :cond_1
    sget v2, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 171
    .line 172
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 173
    .line 174
    .line 175
    const v2, -0x7e7e7f

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 179
    .line 180
    .line 181
    const/high16 v2, 0x10000000

    .line 182
    .line 183
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 184
    .line 185
    .line 186
    const/4 v2, 0x0

    .line 187
    invoke-virtual {v11, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 191
    .line 192
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 193
    .line 194
    invoke-direct {v2, v8, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 195
    .line 196
    .line 197
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 198
    .line 199
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 200
    .line 201
    .line 202
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 203
    .line 204
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Lcom/mycompany/app/view/MyRoundFrame;

    .line 211
    .line 212
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    .line 217
    const/4 v7, -0x2

    .line 218
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .line 220
    .line 221
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 222
    .line 223
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 224
    .line 225
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 226
    .line 227
    .line 228
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 229
    .line 230
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .line 235
    .line 236
    new-instance v4, Lcom/mycompany/app/view/MyEditPure;

    .line 237
    .line 238
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 239
    .line 240
    .line 241
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 242
    .line 243
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 244
    .line 245
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 246
    .line 247
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 248
    .line 249
    invoke-virtual {v4, v5, v6, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 250
    .line 251
    .line 252
    const v5, 0x800033

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 256
    .line 257
    .line 258
    const/4 v5, 0x5

    .line 259
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinLines(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v13}, Landroid/view/View;->setTextDirection(I)V

    .line 263
    .line 264
    .line 265
    const/high16 v5, 0x41800000    # 16.0f

    .line 266
    .line 267
    const/4 v6, 0x1

    .line 268
    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 269
    .line 270
    .line 271
    const/16 v5, 0x1d

    .line 272
    .line 273
    if-lt v15, v5, :cond_2

    .line 274
    .line 275
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 276
    .line 277
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 278
    .line 279
    .line 280
    :cond_2
    const/high16 v5, 0x10000000

    .line 281
    .line 282
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 283
    .line 284
    .line 285
    const/4 v5, 0x0

    .line 286
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v4, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 290
    .line 291
    .line 292
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 293
    .line 294
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 295
    .line 296
    .line 297
    const/16 v1, 0x11

    .line 298
    .line 299
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 300
    .line 301
    .line 302
    const/high16 v1, 0x41800000    # 16.0f

    .line 303
    .line 304
    const/4 v6, 0x1

    .line 305
    invoke-virtual {v5, v6, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 306
    .line 307
    .line 308
    sget v1, Lnet/kaki87/soul2/testing/R$string;->save:I

    .line 309
    .line 310
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 311
    .line 312
    .line 313
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 314
    .line 315
    invoke-virtual {v5, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 316
    .line 317
    .line 318
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 319
    .line 320
    invoke-virtual {v3, v5, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 321
    .line 322
    .line 323
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 324
    .line 325
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 326
    .line 327
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->m0:Lcom/mycompany/app/view/MyLineView;

    .line 328
    .line 329
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 330
    .line 331
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 332
    .line 333
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 334
    .line 335
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 336
    .line 337
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 338
    .line 339
    if-nez v1, :cond_3

    .line 340
    .line 341
    :goto_0
    return-void

    .line 342
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditSearch$2;

    .line 343
    .line 344
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditSearch$2;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    .line 349
    .line 350
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->y0:Lcom/mycompany/app/dialog/DialogQuickColor;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->y0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    const/high16 v1, -0x10000

    .line 11
    .line 12
    iput v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 13
    .line 14
    :cond_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 15
    .line 16
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_white_24:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final E(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->i0:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditSearch;->D()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const v0, -0x70708

    .line 22
    .line 23
    .line 24
    if-eq p1, v0, :cond_2

    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->i0:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditSearch;->D()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    new-instance p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 40
    .line 41
    iput-object p3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 44
    .line 45
    if-nez p2, :cond_3

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/16 p2, 0xb

    .line 52
    .line 53
    iput p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 54
    .line 55
    :goto_0
    invoke-static {p3}, Lcom/mycompany/app/db/book/DbBookSearch;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    const/4 v0, 0x0

    .line 64
    if-eqz p3, :cond_4

    .line 65
    .line 66
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->i0:Landroid/graphics/Bitmap;

    .line 67
    .line 68
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    new-instance p2, Lcom/mycompany/app/main/MainListLoader;

    .line 82
    .line 83
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 84
    .line 85
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditSearch$9;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditSearch$9;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p2, p3, v0, v1}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->t0:Lcom/mycompany/app/main/MainListLoader;

    .line 94
    .line 95
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 96
    .line 97
    iget p3, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 98
    .line 99
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_white_24:I

    .line 100
    .line 101
    invoke-virtual {p2, p3, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->t0:Lcom/mycompany/app/main/MainListLoader;

    .line 114
    .line 115
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 116
    .line 117
    invoke-virtual {p2, p1, p3}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->r0:Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->r0:Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->x0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogQuickIcon;->dismiss()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->x0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditSearch;->C()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->u0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->u0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 41
    .line 42
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->t0:Lcom/mycompany/app/main/MainListLoader;

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->t0:Lcom/mycompany/app/main/MainListLoader;

    .line 50
    .line 51
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 59
    .line 60
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 61
    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 68
    .line 69
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->m0:Lcom/mycompany/app/view/MyLineView;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineView;->b()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->m0:Lcom/mycompany/app/view/MyLineView;

    .line 77
    .line 78
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 86
    .line 87
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 88
    .line 89
    if-eqz v1, :cond_9

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundFrame;->a()V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 95
    .line 96
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 97
    .line 98
    if-eqz v1, :cond_a

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 104
    .line 105
    :cond_a
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 110
    .line 111
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->e0:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->f0:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->v0:Landroid/net/Uri;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch;->w0:Ljava/lang/String;

    .line 120
    .line 121
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 122
    .line 123
    .line 124
    return-void
.end method
