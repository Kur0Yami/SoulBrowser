.class public Lcom/mycompany/app/dialog/DialogPassInfo;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;
    }
.end annotation


# instance fields
.field public A0:Lcom/mycompany/app/view/MyLineText;

.field public B0:Lcom/mycompany/app/main/MainListLoader;

.field public C0:Z

.field public D0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

.field public E0:Landroid/graphics/Bitmap;

.field public F0:Ljava/lang/String;

.field public G0:Ljava/lang/String;

.field public final a0:F

.field public final b0:F

.field public c0:Landroid/content/Context;

.field public d0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

.field public final e0:J

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Ljava/lang/String;

.field public i0:Ljava/lang/String;

.field public j0:Lcom/mycompany/app/view/MyDialogLinear;

.field public k0:Lcom/mycompany/app/view/MyLineRelative;

.field public l0:Lcom/mycompany/app/view/MyRoundImage;

.field public m0:Lcom/mycompany/app/view/MyButtonImage;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Lcom/mycompany/app/view/MyLineText;

.field public p0:Landroidx/appcompat/widget/AppCompatTextView;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Lcom/mycompany/app/view/MyButtonImage;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t0:Lcom/mycompany/app/view/MyEditText;

.field public u0:Lcom/mycompany/app/view/MyButtonImage;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Lcom/mycompany/app/view/MyEditText;

.field public x0:Lcom/mycompany/app/view/MyLineView;

.field public y0:Lcom/mycompany/app/view/MyButtonCheck;

.field public z0:Lcom/mycompany/app/view/MyButtonImage;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p8, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->d0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 11
    .line 12
    iput-wide p2, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->e0:J

    .line 13
    .line 14
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->f0:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->g0:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->h0:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p7, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->i0:Ljava/lang/String;

    .line 21
    .line 22
    const/high16 p2, 0x40000000    # 2.0f

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->a0:F

    .line 29
    .line 30
    div-float/2addr p1, p2

    .line 31
    iput p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->b0:F

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogPassInfo$1;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogPassInfo$1;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogPassInfo;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->pass_icon_edit:I

    .line 10
    .line 11
    sget v3, Lnet/kaki87/soul2/testing/R$id;->pass_host_copy:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->pass_host_name:I

    .line 14
    .line 15
    sget v5, Lnet/kaki87/soul2/testing/R$id;->pass_user_copy:I

    .line 16
    .line 17
    sget v6, Lnet/kaki87/soul2/testing/R$id;->pass_user_name:I

    .line 18
    .line 19
    sget v7, Lnet/kaki87/soul2/testing/R$id;->pass_pass_frame:I

    .line 20
    .line 21
    sget v8, Lnet/kaki87/soul2/testing/R$id;->pass_pass_name:I

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    const/high16 v11, 0x42900000    # 72.0f

    .line 29
    .line 30
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    float-to-int v11, v11

    .line 35
    new-instance v12, Lcom/mycompany/app/view/MyLineRelative;

    .line 36
    .line 37
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 41
    .line 42
    invoke-virtual {v12, v13}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 43
    .line 44
    .line 45
    const/16 v13, 0x8

    .line 46
    .line 47
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    const/4 v14, -0x1

    .line 51
    invoke-virtual {v10, v12, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 52
    .line 53
    .line 54
    new-instance v15, Lcom/mycompany/app/view/MyRoundImage;

    .line 55
    .line 56
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 60
    .line 61
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    .line 63
    .line 64
    sget v14, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 65
    .line 66
    int-to-float v14, v14

    .line 67
    const/high16 v16, 0x40000000    # 2.0f

    .line 68
    .line 69
    div-float v14, v14, v16

    .line 70
    .line 71
    invoke-virtual {v15, v14}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 72
    .line 73
    .line 74
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .line 76
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 77
    .line 78
    invoke-direct {v14, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    const/16 v9, 0xf

    .line 82
    .line 83
    invoke-virtual {v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    .line 85
    .line 86
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 87
    .line 88
    invoke-virtual {v14, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 95
    .line 96
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v2}, Landroid/view/View;->setId(I)V

    .line 100
    .line 101
    .line 102
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 103
    .line 104
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9, v13}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 111
    .line 112
    move-object/from16 v17, v15

    .line 113
    .line 114
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 115
    .line 116
    invoke-direct {v13, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .line 118
    .line 119
    const/16 v15, 0x15

    .line 120
    .line 121
    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    .line 123
    .line 124
    const/16 v15, 0xf

    .line 125
    .line 126
    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    .line 128
    .line 129
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 130
    .line 131
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v12, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    const/4 v13, 0x0

    .line 138
    const/4 v15, 0x2

    .line 139
    move-object/from16 v18, v9

    .line 140
    .line 141
    invoke-static {v1, v13, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 146
    .line 147
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    .line 149
    .line 150
    const/high16 v13, 0x41800000    # 16.0f

    .line 151
    .line 152
    const/4 v15, 0x1

    .line 153
    invoke-virtual {v9, v15, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 154
    .line 155
    .line 156
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 157
    .line 158
    const/4 v13, -0x2

    .line 159
    const/4 v0, -0x1

    .line 160
    invoke-direct {v15, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    const/16 v0, 0x10

    .line 164
    .line 165
    invoke-virtual {v15, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    .line 167
    .line 168
    const/16 v2, 0xf

    .line 169
    .line 170
    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v12, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    .line 179
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 180
    .line 181
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 185
    .line 186
    invoke-virtual {v2, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 187
    .line 188
    .line 189
    const/16 v11, 0x11

    .line 190
    .line 191
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    .line 193
    .line 194
    const/4 v11, 0x1

    .line 195
    const/high16 v15, 0x41800000    # 16.0f

    .line 196
    .line 197
    invoke-virtual {v2, v11, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 198
    .line 199
    .line 200
    sget v11, Lnet/kaki87/soul2/testing/R$string;->password_confirm:I

    .line 201
    .line 202
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(I)V

    .line 203
    .line 204
    .line 205
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 206
    .line 207
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyLineText;->q(I)V

    .line 208
    .line 209
    .line 210
    const/16 v11, 0x8

    .line 211
    .line 212
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    const/4 v11, -0x1

    .line 216
    invoke-virtual {v10, v2, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 217
    .line 218
    .line 219
    const/4 v0, 0x0

    .line 220
    const/4 v15, 0x2

    .line 221
    invoke-static {v1, v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 226
    .line 227
    const/4 v13, 0x0

    .line 228
    invoke-direct {v0, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 229
    .line 230
    .line 231
    const/high16 v13, 0x3f800000    # 1.0f

    .line 232
    .line 233
    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 234
    .line 235
    invoke-virtual {v10, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    new-instance v0, Landroid/widget/LinearLayout;

    .line 239
    .line 240
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 244
    .line 245
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 246
    .line 247
    invoke-virtual {v0, v13, v11, v11, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 248
    .line 249
    .line 250
    const/4 v11, 0x1

    .line 251
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 252
    .line 253
    .line 254
    const/4 v11, -0x2

    .line 255
    const/4 v13, -0x1

    .line 256
    invoke-virtual {v15, v0, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 257
    .line 258
    .line 259
    new-instance v15, Landroid/widget/RelativeLayout;

    .line 260
    .line 261
    invoke-direct {v15, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    move-object/from16 v19, v2

    .line 265
    .line 266
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 267
    .line 268
    move-object/from16 v20, v9

    .line 269
    .line 270
    const/4 v9, 0x0

    .line 271
    invoke-virtual {v15, v9, v2, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v15, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 275
    .line 276
    .line 277
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 278
    .line 279
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 286
    .line 287
    .line 288
    const/16 v11, 0x8

    .line 289
    .line 290
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 294
    .line 295
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 296
    .line 297
    invoke-direct {v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 298
    .line 299
    .line 300
    const/16 v11, 0x15

    .line 301
    .line 302
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    .line 304
    .line 305
    const/16 v11, 0xf

    .line 306
    .line 307
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v15, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    .line 312
    .line 313
    const/high16 v9, 0x41600000    # 14.0f

    .line 314
    .line 315
    move-object/from16 v21, v2

    .line 316
    .line 317
    const/4 v11, 0x0

    .line 318
    const/4 v13, 0x1

    .line 319
    invoke-static {v1, v11, v4, v13, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    sget v9, Lnet/kaki87/soul2/testing/R$string;->site:I

    .line 324
    .line 325
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 326
    .line 327
    .line 328
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 329
    .line 330
    const/4 v11, -0x1

    .line 331
    const/4 v13, -0x2

    .line 332
    invoke-direct {v9, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 333
    .line 334
    .line 335
    const/16 v13, 0x10

    .line 336
    .line 337
    invoke-virtual {v9, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v15, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    .line 342
    .line 343
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 344
    .line 345
    const/4 v11, 0x0

    .line 346
    invoke-direct {v9, v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 350
    .line 351
    .line 352
    const/high16 v11, 0x41800000    # 16.0f

    .line 353
    .line 354
    const/4 v13, 0x1

    .line 355
    invoke-virtual {v9, v13, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 356
    .line 357
    .line 358
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 359
    .line 360
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 361
    .line 362
    move-object/from16 v22, v2

    .line 363
    .line 364
    const/4 v2, -0x1

    .line 365
    invoke-direct {v11, v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 366
    .line 367
    .line 368
    const/4 v13, 0x3

    .line 369
    invoke-virtual {v11, v13, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 370
    .line 371
    .line 372
    const/16 v4, 0x10

    .line 373
    .line 374
    invoke-virtual {v11, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v15, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    .line 379
    .line 380
    new-instance v3, Landroid/widget/RelativeLayout;

    .line 381
    .line 382
    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 383
    .line 384
    .line 385
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 386
    .line 387
    const/4 v11, 0x0

    .line 388
    invoke-virtual {v3, v11, v4, v11, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 389
    .line 390
    .line 391
    const/4 v11, -0x2

    .line 392
    invoke-virtual {v0, v3, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 393
    .line 394
    .line 395
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 396
    .line 397
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 404
    .line 405
    .line 406
    const/16 v11, 0x8

    .line 407
    .line 408
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 412
    .line 413
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 414
    .line 415
    invoke-direct {v4, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 416
    .line 417
    .line 418
    const/16 v11, 0x15

    .line 419
    .line 420
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 421
    .line 422
    .line 423
    const/16 v15, 0xf

    .line 424
    .line 425
    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    .line 430
    .line 431
    const/high16 v4, 0x41600000    # 14.0f

    .line 432
    .line 433
    const/4 v11, 0x0

    .line 434
    const/4 v15, 0x1

    .line 435
    invoke-static {v1, v11, v6, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 436
    .line 437
    .line 438
    move-result-object v13

    .line 439
    sget v4, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 440
    .line 441
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(I)V

    .line 442
    .line 443
    .line 444
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    .line 446
    const/4 v11, -0x2

    .line 447
    const/4 v15, -0x1

    .line 448
    invoke-direct {v4, v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 449
    .line 450
    .line 451
    const/16 v11, 0x10

    .line 452
    .line 453
    invoke-virtual {v4, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v3, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    .line 458
    .line 459
    new-instance v4, Lcom/mycompany/app/view/MyEditText;

    .line 460
    .line 461
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 465
    .line 466
    .line 467
    const/4 v15, 0x1

    .line 468
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 469
    .line 470
    .line 471
    const/4 v11, 0x3

    .line 472
    invoke-virtual {v4, v11}, Landroid/view/View;->setTextDirection(I)V

    .line 473
    .line 474
    .line 475
    const/high16 v11, 0x41800000    # 16.0f

    .line 476
    .line 477
    invoke-virtual {v4, v15, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 478
    .line 479
    .line 480
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 481
    .line 482
    const/16 v15, 0x1d

    .line 483
    .line 484
    if-lt v11, v15, :cond_1

    .line 485
    .line 486
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 487
    .line 488
    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 489
    .line 490
    .line 491
    :cond_1
    const/high16 v15, 0x10000000

    .line 492
    .line 493
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 494
    .line 495
    .line 496
    const/4 v15, 0x0

    .line 497
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 498
    .line 499
    .line 500
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 501
    .line 502
    move-object/from16 v23, v2

    .line 503
    .line 504
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 505
    .line 506
    move-object/from16 v24, v13

    .line 507
    .line 508
    const/4 v13, -0x1

    .line 509
    invoke-direct {v15, v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 510
    .line 511
    .line 512
    const/4 v2, 0x3

    .line 513
    invoke-virtual {v15, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 514
    .line 515
    .line 516
    const/16 v2, 0x10

    .line 517
    .line 518
    invoke-virtual {v15, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 519
    .line 520
    .line 521
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 522
    .line 523
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v3, v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    .line 528
    .line 529
    new-instance v2, Landroid/widget/RelativeLayout;

    .line 530
    .line 531
    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 532
    .line 533
    .line 534
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 535
    .line 536
    const/4 v5, 0x0

    .line 537
    invoke-virtual {v2, v5, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 538
    .line 539
    .line 540
    const/4 v3, -0x2

    .line 541
    invoke-virtual {v0, v2, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 542
    .line 543
    .line 544
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 545
    .line 546
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 550
    .line 551
    .line 552
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 553
    .line 554
    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 555
    .line 556
    .line 557
    const/16 v3, 0x15

    .line 558
    .line 559
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 560
    .line 561
    .line 562
    const/16 v15, 0xf

    .line 563
    .line 564
    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    .line 569
    .line 570
    new-instance v3, Lcom/mycompany/app/view/MyButtonCheck;

    .line 571
    .line 572
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 573
    .line 574
    .line 575
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 576
    .line 577
    invoke-virtual {v0, v3, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 578
    .line 579
    .line 580
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 581
    .line 582
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 586
    .line 587
    .line 588
    const/16 v6, 0x8

    .line 589
    .line 590
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 591
    .line 592
    .line 593
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 594
    .line 595
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 596
    .line 597
    invoke-direct {v6, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 598
    .line 599
    .line 600
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 601
    .line 602
    invoke-virtual {v6, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    .line 607
    .line 608
    const/high16 v0, 0x41600000    # 14.0f

    .line 609
    .line 610
    const/4 v13, 0x1

    .line 611
    const/4 v15, 0x0

    .line 612
    invoke-static {v1, v15, v8, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    sget v6, Lnet/kaki87/soul2/testing/R$string;->password:I

    .line 617
    .line 618
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 619
    .line 620
    .line 621
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 622
    .line 623
    const/4 v14, -0x2

    .line 624
    const/4 v15, -0x1

    .line 625
    invoke-direct {v6, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 626
    .line 627
    .line 628
    const/16 v14, 0x10

    .line 629
    .line 630
    invoke-virtual {v6, v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v2, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    .line 635
    .line 636
    new-instance v6, Lcom/mycompany/app/view/MyEditText;

    .line 637
    .line 638
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 645
    .line 646
    .line 647
    const/4 v14, 0x3

    .line 648
    invoke-virtual {v6, v14}, Landroid/view/View;->setTextDirection(I)V

    .line 649
    .line 650
    .line 651
    const/high16 v15, 0x41800000    # 16.0f

    .line 652
    .line 653
    invoke-virtual {v6, v13, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 654
    .line 655
    .line 656
    const/16 v13, 0x1d

    .line 657
    .line 658
    if-lt v11, v13, :cond_2

    .line 659
    .line 660
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 661
    .line 662
    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 663
    .line 664
    .line 665
    :cond_2
    const/high16 v11, 0x10000000

    .line 666
    .line 667
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 668
    .line 669
    .line 670
    const/4 v11, 0x0

    .line 671
    invoke-virtual {v6, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 672
    .line 673
    .line 674
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 675
    .line 676
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 677
    .line 678
    const/4 v15, -0x1

    .line 679
    invoke-direct {v11, v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 680
    .line 681
    .line 682
    const/4 v14, 0x3

    .line 683
    invoke-virtual {v11, v14, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 684
    .line 685
    .line 686
    const/16 v13, 0x10

    .line 687
    .line 688
    invoke-virtual {v11, v13, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 689
    .line 690
    .line 691
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 692
    .line 693
    invoke-virtual {v11, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v2, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    .line 698
    .line 699
    new-instance v7, Lcom/mycompany/app/view/MyLineView;

    .line 700
    .line 701
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 702
    .line 703
    .line 704
    const/16 v11, 0x8

    .line 705
    .line 706
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 707
    .line 708
    .line 709
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 710
    .line 711
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 712
    .line 713
    invoke-direct {v11, v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v11, v14, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 717
    .line 718
    .line 719
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 720
    .line 721
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v2, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    .line 726
    .line 727
    const/16 v2, 0x11

    .line 728
    .line 729
    const/4 v13, 0x1

    .line 730
    const/high16 v15, 0x41800000    # 16.0f

    .line 731
    .line 732
    invoke-static {v1, v2, v13, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save:I

    .line 737
    .line 738
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 739
    .line 740
    .line 741
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 742
    .line 743
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 744
    .line 745
    .line 746
    const/16 v11, 0x8

    .line 747
    .line 748
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 749
    .line 750
    .line 751
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 752
    .line 753
    const/4 v15, -0x1

    .line 754
    invoke-virtual {v10, v1, v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 755
    .line 756
    .line 757
    move-object/from16 v2, p0

    .line 758
    .line 759
    iput-object v10, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->j0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 760
    .line 761
    iput-object v12, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 762
    .line 763
    move-object/from16 v8, v17

    .line 764
    .line 765
    iput-object v8, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 766
    .line 767
    move-object/from16 v8, v18

    .line 768
    .line 769
    iput-object v8, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 770
    .line 771
    move-object/from16 v8, v20

    .line 772
    .line 773
    iput-object v8, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 774
    .line 775
    move-object/from16 v8, v19

    .line 776
    .line 777
    iput-object v8, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 778
    .line 779
    move-object/from16 v8, v22

    .line 780
    .line 781
    iput-object v8, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 782
    .line 783
    iput-object v9, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 784
    .line 785
    move-object/from16 v8, v21

    .line 786
    .line 787
    iput-object v8, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 788
    .line 789
    move-object/from16 v8, v24

    .line 790
    .line 791
    iput-object v8, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 792
    .line 793
    iput-object v4, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 794
    .line 795
    move-object/from16 v4, v23

    .line 796
    .line 797
    iput-object v4, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 798
    .line 799
    iput-object v0, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 800
    .line 801
    iput-object v6, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 802
    .line 803
    iput-object v7, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->x0:Lcom/mycompany/app/view/MyLineView;

    .line 804
    .line 805
    iput-object v3, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 806
    .line 807
    iput-object v5, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 808
    .line 809
    iput-object v1, v2, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 810
    .line 811
    iget-object v0, v2, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 812
    .line 813
    if-nez v0, :cond_3

    .line 814
    .line 815
    :goto_0
    return-void

    .line 816
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogPassInfo$2;

    .line 817
    .line 818
    invoke-direct {v1, v2}, Lcom/mycompany/app/dialog/DialogPassInfo$2;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 822
    .line 823
    .line 824
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogPassInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->d0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-wide v3, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->e0:J

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    cmp-long v3, v3, v5

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->d0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 29
    .line 30
    invoke-interface {v3}, Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;->getIcon()Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const-string v5, ""

    .line 40
    .line 41
    const-string v6, ","

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    move-object v0, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    move-object v2, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_1
    move-object v3, v4

    .line 64
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/4 v6, 0x0

    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 77
    .line 78
    sget v1, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 81
    .line 82
    .line 83
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->C0:Z

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_5

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 98
    .line 99
    sget v1, Lnet/kaki87/soul2/testing/R$string;->input_password:I

    .line 100
    .line 101
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 102
    .line 103
    .line 104
    iput-boolean v6, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->C0:Z

    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->d0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 108
    .line 109
    iput-object v5, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->D0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 110
    .line 111
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->E0:Landroid/graphics/Bitmap;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->F0:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->G0:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v4, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->d0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->j0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 120
    .line 121
    invoke-virtual {v0, v6, v6, v1, v6}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/mycompany/app/dialog/DialogPassInfo$15;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPassInfo$15;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->d0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->f0:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v2}, Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->d0:Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->B0:Lcom/mycompany/app/main/MainListLoader;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->B0:Lcom/mycompany/app/main/MainListLoader;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->j0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->j0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 47
    .line 48
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 56
    .line 57
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 85
    .line 86
    if-eqz v0, :cond_9

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->t0:Lcom/mycompany/app/view/MyEditText;

    .line 92
    .line 93
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    if-eqz v0, :cond_a

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 103
    .line 104
    if-eqz v0, :cond_b

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 110
    .line 111
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->x0:Lcom/mycompany/app/view/MyLineView;

    .line 112
    .line 113
    if-eqz v0, :cond_c

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineView;->b()V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->x0:Lcom/mycompany/app/view/MyLineView;

    .line 119
    .line 120
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 121
    .line 122
    if-eqz v0, :cond_d

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->y0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 128
    .line 129
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    if-eqz v0, :cond_e

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 137
    .line 138
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 139
    .line 140
    if-eqz v0, :cond_f

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 143
    .line 144
    .line 145
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 146
    .line 147
    :cond_f
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 148
    .line 149
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->f0:Ljava/lang/String;

    .line 150
    .line 151
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->g0:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->h0:Ljava/lang/String;

    .line 154
    .line 155
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->i0:Ljava/lang/String;

    .line 156
    .line 157
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPassInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 168
    .line 169
    .line 170
    return-void
.end method
