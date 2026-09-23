.class Lcom/mycompany/app/dialog/DialogUrlLink$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$2;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink$2;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v3, Lcom/mycompany/app/view/MyDialogLink;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyDialogLink;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 24
    .line 25
    .line 26
    new-instance v6, Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    const/high16 v7, 0x42900000    # 72.0f

    .line 32
    .line 33
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    float-to-int v8, v8

    .line 38
    iput v8, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->U0:I

    .line 39
    .line 40
    const/4 v9, -0x1

    .line 41
    invoke-virtual {v3, v6, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 42
    .line 43
    .line 44
    new-instance v8, Lcom/mycompany/app/view/MyRoundImage;

    .line 45
    .line 46
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    .line 53
    .line 54
    sget v11, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 55
    .line 56
    int-to-float v11, v11

    .line 57
    const/high16 v12, 0x40000000    # 2.0f

    .line 58
    .line 59
    div-float/2addr v11, v12

    .line 60
    invoke-virtual {v8, v11}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 61
    .line 62
    .line 63
    const/16 v11, 0x8

    .line 64
    .line 65
    invoke-virtual {v8, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    .line 70
    sget v14, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 71
    .line 72
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 76
    .line 77
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 78
    .line 79
    .line 80
    const v14, 0x800013

    .line 81
    .line 82
    .line 83
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    .line 85
    invoke-virtual {v6, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    new-instance v13, Lcom/mycompany/app/view/MyRoundImage;

    .line 89
    .line 90
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    .line 95
    .line 96
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 97
    .line 98
    int-to-float v10, v10

    .line 99
    div-float/2addr v10, v12

    .line 100
    invoke-virtual {v13, v10}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v13, v11}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    .line 108
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 109
    .line 110
    invoke-direct {v10, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    .line 112
    .line 113
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 114
    .line 115
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 116
    .line 117
    .line 118
    iput v14, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    .line 120
    invoke-virtual {v6, v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    const/4 v15, 0x0

    .line 126
    invoke-direct {v10, v2, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    .line 128
    .line 129
    const/4 v12, 0x2

    .line 130
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 131
    .line 132
    .line 133
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 134
    .line 135
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 136
    .line 137
    .line 138
    const/high16 v12, 0x41800000    # 16.0f

    .line 139
    .line 140
    invoke-virtual {v10, v4, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 141
    .line 142
    .line 143
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    .line 145
    const/4 v12, -0x2

    .line 146
    invoke-direct {v15, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    float-to-int v7, v7

    .line 154
    invoke-virtual {v15, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 155
    .line 156
    .line 157
    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 158
    .line 159
    invoke-virtual {v15, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 160
    .line 161
    .line 162
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    .line 164
    invoke-virtual {v6, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    new-instance v7, Lcom/mycompany/app/view/MyButtonImage;

    .line 168
    .line 169
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 173
    .line 174
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    .line 176
    .line 177
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .line 179
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 180
    .line 181
    invoke-direct {v12, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    .line 183
    .line 184
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 185
    .line 186
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 187
    .line 188
    .line 189
    const v14, 0x800015

    .line 190
    .line 191
    .line 192
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 193
    .line 194
    invoke-virtual {v6, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .line 196
    .line 197
    iget-boolean v6, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->k0:Z

    .line 198
    .line 199
    if-eqz v6, :cond_1

    .line 200
    .line 201
    iget-boolean v6, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->l0:Z

    .line 202
    .line 203
    if-eqz v6, :cond_1

    .line 204
    .line 205
    new-instance v6, Lcom/mycompany/app/view/MyLineLinear;

    .line 206
    .line 207
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    .line 215
    .line 216
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 217
    .line 218
    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v4}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 228
    .line 229
    invoke-virtual {v3, v6, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 230
    .line 231
    .line 232
    new-instance v12, Lcom/mycompany/app/view/MyLineText;

    .line 233
    .line 234
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 235
    .line 236
    .line 237
    const/16 v14, 0x11

    .line 238
    .line 239
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    .line 241
    .line 242
    const/high16 v15, 0x41800000    # 16.0f

    .line 243
    .line 244
    invoke-virtual {v12, v4, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 245
    .line 246
    .line 247
    sget v11, Lnet/kaki87/soul2/testing/R$string;->link:I

    .line 248
    .line 249
    invoke-static {v12, v11, v2, v5, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    const/high16 v5, 0x3f800000    # 1.0f

    .line 254
    .line 255
    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 256
    .line 257
    const/4 v5, 0x0

    .line 258
    invoke-static {v6, v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v4, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 266
    .line 267
    .line 268
    sget v11, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 269
    .line 270
    const/4 v14, 0x0

    .line 271
    invoke-static {v5, v11, v14, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    const/high16 v15, 0x3f800000    # 1.0f

    .line 276
    .line 277
    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 278
    .line 279
    invoke-virtual {v6, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    .line 281
    .line 282
    new-instance v11, Lcom/google/android/material/tabs/TabLayout;

    .line 283
    .line 284
    invoke-direct {v11, v2}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v11, v4}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v11, v14}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 291
    .line 292
    .line 293
    const/16 v4, 0x8

    .line 294
    .line 295
    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    const/high16 v4, 0x40000000    # 2.0f

    .line 299
    .line 300
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    float-to-int v2, v2

    .line 305
    iput v2, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->V0:I

    .line 306
    .line 307
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    .line 309
    iget v4, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->V0:I

    .line 310
    .line 311
    invoke-direct {v2, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 312
    .line 313
    .line 314
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 315
    .line 316
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 317
    .line 318
    .line 319
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 320
    .line 321
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->A0:Lcom/mycompany/app/view/MyLineLinear;

    .line 328
    .line 329
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->B0:Lcom/mycompany/app/view/MyLineText;

    .line 330
    .line 331
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 332
    .line 333
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->D0:Lcom/google/android/material/tabs/TabLayout;

    .line 334
    .line 335
    :cond_1
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 336
    .line 337
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 338
    .line 339
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 340
    .line 341
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 342
    .line 343
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogUrlLink;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 344
    .line 345
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 346
    .line 347
    if-nez v2, :cond_2

    .line 348
    .line 349
    :goto_0
    return-void

    .line 350
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogUrlLink$3;

    .line 351
    .line 352
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogUrlLink$3;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    .line 357
    .line 358
    return-void
.end method
