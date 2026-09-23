.class public Lcom/mycompany/app/dialog/DialogEditUrl;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;,
        Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public final b0:I

.field public c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

.field public d0:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public f0:Lcom/mycompany/app/view/MyRoundImage;

.field public g0:Lcom/mycompany/app/view/MyEditText;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyEditText;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Lcom/mycompany/app/view/MyEditText;

.field public l0:Lcom/mycompany/app/view/MyLineText;

.field public m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

.field public n0:Z

.field public o0:Lcom/mycompany/app/web/WebClean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/mycompany/app/main/MainItem$ChildItem;Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput p2, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->b0:I

    .line 11
    .line 12
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 15
    .line 16
    const/16 p3, 0x17

    .line 17
    .line 18
    if-ne p2, p3, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->v(Landroid/content/Context;Z)Lcom/mycompany/app/web/WebClean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->o0:Lcom/mycompany/app/web/WebClean;

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditUrl$1;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditUrl$1;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditUrl;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->b0:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

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
    const/16 v5, 0x19

    .line 17
    .line 18
    const/high16 v6, 0x10000000

    .line 19
    .line 20
    const v7, -0x7e7e7f

    .line 21
    .line 22
    .line 23
    const/16 v8, 0x1d

    .line 24
    .line 25
    const/4 v9, 0x3

    .line 26
    const/high16 v10, 0x41800000    # 16.0f

    .line 27
    .line 28
    const/16 v11, 0x10

    .line 29
    .line 30
    const/4 v12, -0x1

    .line 31
    if-ne v1, v5, :cond_2

    .line 32
    .line 33
    const/high16 v14, 0x42900000    # 72.0f

    .line 34
    .line 35
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 36
    .line 37
    .line 38
    move-result v14

    .line 39
    float-to-int v14, v14

    .line 40
    new-instance v15, Lcom/mycompany/app/view/MyLineFrame;

    .line 41
    .line 42
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 46
    .line 47
    invoke-virtual {v15, v5}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v15, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Lcom/mycompany/app/view/MyRoundImage;

    .line 54
    .line 55
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 59
    .line 60
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 61
    .line 62
    .line 63
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 64
    .line 65
    int-to-float v12, v12

    .line 66
    const/high16 v16, 0x40000000    # 2.0f

    .line 67
    .line 68
    div-float v12, v12, v16

    .line 69
    .line 70
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 71
    .line 72
    .line 73
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .line 75
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 76
    .line 77
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    const v13, 0x800013

    .line 81
    .line 82
    .line 83
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    .line 85
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 86
    .line 87
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v15, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    new-instance v12, Lcom/mycompany/app/view/MyEditText;

    .line 94
    .line 95
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12, v9}, Landroid/view/View;->setTextDirection(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    .line 109
    .line 110
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .line 112
    if-lt v13, v8, :cond_1

    .line 113
    .line 114
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 115
    .line 116
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 117
    .line 118
    .line 119
    :cond_1
    sget v13, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 120
    .line 121
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setHint(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 128
    .line 129
    .line 130
    const/4 v13, 0x0

    .line 131
    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .line 133
    .line 134
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 135
    .line 136
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 137
    .line 138
    const/4 v7, -0x1

    .line 139
    invoke-direct {v13, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    iput v11, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 143
    .line 144
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 145
    .line 146
    .line 147
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 148
    .line 149
    invoke-virtual {v13, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v15, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_2
    const/4 v5, 0x0

    .line 157
    const/4 v12, 0x0

    .line 158
    :goto_0
    const/4 v6, 0x2

    .line 159
    const/4 v13, 0x0

    .line 160
    invoke-static {v2, v13, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 165
    .line 166
    const/4 v13, 0x0

    .line 167
    const/4 v14, -0x1

    .line 168
    invoke-direct {v7, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    .line 170
    .line 171
    const/high16 v13, 0x3f800000    # 1.0f

    .line 172
    .line 173
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 174
    .line 175
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .line 177
    .line 178
    new-instance v7, Landroid/widget/FrameLayout;

    .line 179
    .line 180
    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    const/4 v13, -0x2

    .line 184
    invoke-virtual {v6, v7, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 185
    .line 186
    .line 187
    const/high16 v6, 0x41400000    # 12.0f

    .line 188
    .line 189
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    float-to-int v6, v6

    .line 194
    const/high16 v15, 0x42b00000    # 88.0f

    .line 195
    .line 196
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    float-to-int v15, v15

    .line 201
    new-instance v8, Landroid/widget/FrameLayout;

    .line 202
    .line 203
    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 204
    .line 205
    .line 206
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 207
    .line 208
    invoke-virtual {v8, v10, v6, v10, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v8, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 212
    .line 213
    .line 214
    const/high16 v10, 0x41600000    # 14.0f

    .line 215
    .line 216
    const/4 v14, 0x0

    .line 217
    invoke-static {v2, v14, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v8, v9, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 222
    .line 223
    .line 224
    new-instance v14, Lcom/mycompany/app/view/MyEditText;

    .line 225
    .line 226
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    const/4 v13, 0x3

    .line 230
    invoke-static {v14, v11, v3, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 231
    .line 232
    .line 233
    const/high16 v13, 0x41800000    # 16.0f

    .line 234
    .line 235
    invoke-virtual {v14, v3, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 236
    .line 237
    .line 238
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 239
    .line 240
    const/16 v3, 0x1d

    .line 241
    .line 242
    if-lt v13, v3, :cond_3

    .line 243
    .line 244
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 245
    .line 246
    invoke-virtual {v14, v3}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 247
    .line 248
    .line 249
    :cond_3
    const v3, -0x7e7e7f

    .line 250
    .line 251
    .line 252
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setInputType(I)V

    .line 256
    .line 257
    .line 258
    const/high16 v3, 0x10000000

    .line 259
    .line 260
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 261
    .line 262
    .line 263
    const/4 v3, 0x0

    .line 264
    invoke-virtual {v14, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    .line 266
    .line 267
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 268
    .line 269
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 270
    .line 271
    const/4 v10, -0x1

    .line 272
    invoke-direct {v3, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 273
    .line 274
    .line 275
    const/16 v10, 0x50

    .line 276
    .line 277
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 278
    .line 279
    invoke-virtual {v8, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    .line 281
    .line 282
    const/16 v3, 0x17

    .line 283
    .line 284
    if-ne v1, v3, :cond_5

    .line 285
    .line 286
    new-instance v8, Lcom/mycompany/app/view/MyLineFrame;

    .line 287
    .line 288
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 289
    .line 290
    .line 291
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 292
    .line 293
    invoke-virtual {v8, v11, v6, v11, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 294
    .line 295
    .line 296
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 297
    .line 298
    invoke-virtual {v8, v6}, Lcom/mycompany/app/view/MyLineFrame;->d(I)V

    .line 299
    .line 300
    .line 301
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 302
    .line 303
    const/4 v11, -0x1

    .line 304
    invoke-direct {v6, v11, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 305
    .line 306
    .line 307
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 308
    .line 309
    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .line 311
    .line 312
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 313
    .line 314
    const/4 v7, 0x0

    .line 315
    invoke-direct {v6, v2, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 316
    .line 317
    .line 318
    const/high16 v7, 0x41600000    # 14.0f

    .line 319
    .line 320
    const/4 v11, 0x1

    .line 321
    invoke-virtual {v6, v11, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 322
    .line 323
    .line 324
    const/4 v7, -0x2

    .line 325
    invoke-virtual {v8, v6, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 326
    .line 327
    .line 328
    new-instance v7, Lcom/mycompany/app/view/MyEditText;

    .line 329
    .line 330
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 331
    .line 332
    .line 333
    const/16 v3, 0x10

    .line 334
    .line 335
    const/4 v15, 0x3

    .line 336
    invoke-static {v7, v3, v11, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 337
    .line 338
    .line 339
    const/high16 v15, 0x41800000    # 16.0f

    .line 340
    .line 341
    invoke-virtual {v7, v11, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    .line 343
    .line 344
    const/16 v11, 0x1d

    .line 345
    .line 346
    if-lt v13, v11, :cond_4

    .line 347
    .line 348
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 349
    .line 350
    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 351
    .line 352
    .line 353
    :cond_4
    const v11, -0x7e7e7f

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 360
    .line 361
    .line 362
    const/high16 v3, 0x10000000

    .line 363
    .line 364
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 365
    .line 366
    .line 367
    const/4 v13, 0x0

    .line 368
    invoke-virtual {v7, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 369
    .line 370
    .line 371
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 372
    .line 373
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 374
    .line 375
    const/4 v13, -0x1

    .line 376
    invoke-direct {v3, v13, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 377
    .line 378
    .line 379
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 380
    .line 381
    invoke-virtual {v8, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    move-object v13, v6

    .line 385
    goto :goto_1

    .line 386
    :cond_5
    const/4 v13, 0x0

    .line 387
    move-object v7, v13

    .line 388
    :goto_1
    const/16 v3, 0x11

    .line 389
    .line 390
    const/4 v11, 0x1

    .line 391
    const/high16 v15, 0x41800000    # 16.0f

    .line 392
    .line 393
    invoke-static {v2, v3, v11, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    sget v3, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 398
    .line 399
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 400
    .line 401
    .line 402
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 403
    .line 404
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 405
    .line 406
    .line 407
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 408
    .line 409
    const/4 v10, -0x1

    .line 410
    invoke-virtual {v4, v2, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 411
    .line 412
    .line 413
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 414
    .line 415
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 416
    .line 417
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 418
    .line 419
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 420
    .line 421
    const/16 v2, 0x17

    .line 422
    .line 423
    if-ne v1, v2, :cond_6

    .line 424
    .line 425
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 426
    .line 427
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 428
    .line 429
    goto :goto_2

    .line 430
    :cond_6
    const/16 v2, 0x19

    .line 431
    .line 432
    if-ne v1, v2, :cond_7

    .line 433
    .line 434
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 435
    .line 436
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 437
    .line 438
    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 439
    .line 440
    if-nez v1, :cond_8

    .line 441
    .line 442
    :goto_3
    return-void

    .line 443
    :cond_8
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUrl$2;

    .line 444
    .line 445
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUrl$2;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    .line 450
    .line 451
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogEditUrl;Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->b0:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_8

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 31
    .line 32
    sget p1, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    move-object v1, v3

    .line 39
    :cond_2
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 40
    .line 41
    invoke-static {v4, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/16 v6, 0x19

    .line 50
    .line 51
    const/16 v7, 0x1b

    .line 52
    .line 53
    if-eqz v5, :cond_5

    .line 54
    .line 55
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    if-eq v0, v6, :cond_4

    .line 61
    .line 62
    if-ne v0, v7, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 66
    .line 67
    sget p1, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 68
    .line 69
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 74
    .line 75
    sget p1, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 76
    .line 77
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_5
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const/16 v5, 0x16

    .line 86
    .line 87
    if-ne v0, v5, :cond_7

    .line 88
    .line 89
    const-string v8, "file:///android_asset/shortcut.html"

    .line 90
    .line 91
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-nez v8, :cond_6

    .line 96
    .line 97
    const-string v8, "about:blank"

    .line 98
    .line 99
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_9

    .line 104
    .line 105
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 111
    .line 112
    sget p1, Lnet/kaki87/soul2/testing/R$string;->not_supported_page:I

    .line 113
    .line 114
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_7
    if-eq v0, v6, :cond_8

    .line 119
    .line 120
    if-ne v0, v7, :cond_9

    .line 121
    .line 122
    :cond_8
    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-nez v8, :cond_9

    .line 127
    .line 128
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 134
    .line 135
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 136
    .line 137
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_9
    iget-object v8, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 142
    .line 143
    if-eqz v8, :cond_b

    .line 144
    .line 145
    invoke-static {v8, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_a

    .line 154
    .line 155
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 161
    .line 162
    sget p1, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 163
    .line 164
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_a
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-nez v8, :cond_b

    .line 173
    .line 174
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 177
    .line 178
    .line 179
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 180
    .line 181
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 182
    .line 183
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eqz v8, :cond_c

    .line 192
    .line 193
    goto/16 :goto_7

    .line 194
    .line 195
    :cond_c
    const/16 v8, 0x13

    .line 196
    .line 197
    const/16 v9, 0x17

    .line 198
    .line 199
    if-ne v0, v8, :cond_d

    .line 200
    .line 201
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 202
    .line 203
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_d
    const/16 v8, 0x14

    .line 212
    .line 213
    if-ne v0, v8, :cond_e

    .line 214
    .line 215
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 216
    .line 217
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_e
    const/16 v8, 0x15

    .line 225
    .line 226
    if-ne v0, v8, :cond_f

    .line 227
    .line 228
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 229
    .line 230
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_f
    if-ne v0, v5, :cond_10

    .line 238
    .line 239
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 240
    .line 241
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_10
    if-ne v0, v9, :cond_11

    .line 249
    .line 250
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 251
    .line 252
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookBlock;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookBlock;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_11
    if-ne v0, v6, :cond_12

    .line 260
    .line 261
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 262
    .line 263
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_12
    if-ne v0, v7, :cond_13

    .line 271
    .line 272
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 273
    .line 274
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookScript;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookScript;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 279
    .line 280
    goto :goto_1

    .line 281
    :cond_13
    const/16 v5, 0x1c

    .line 282
    .line 283
    if-ne v0, v5, :cond_14

    .line 284
    .line 285
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 286
    .line 287
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_14
    const/16 v5, 0x1d

    .line 295
    .line 296
    if-ne v0, v5, :cond_15

    .line 297
    .line 298
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 299
    .line 300
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 305
    .line 306
    goto :goto_1

    .line 307
    :cond_15
    const/16 v5, 0x1e

    .line 308
    .line 309
    if-ne v0, v5, :cond_16

    .line 310
    .line 311
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 312
    .line 313
    invoke-static {v5}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_16
    move-object v5, v3

    .line 321
    :goto_1
    if-eqz v5, :cond_23

    .line 322
    .line 323
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-eqz v8, :cond_17

    .line 328
    .line 329
    goto/16 :goto_7

    .line 330
    .line 331
    :cond_17
    if-ne v0, v9, :cond_1c

    .line 332
    .line 333
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    if-eqz v8, :cond_18

    .line 338
    .line 339
    goto/16 :goto_7

    .line 340
    .line 341
    :cond_18
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    :cond_19
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    if-eqz v8, :cond_23

    .line 350
    .line 351
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    check-cast v8, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 356
    .line 357
    if-nez v8, :cond_1a

    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_1a
    if-eqz p1, :cond_1b

    .line 361
    .line 362
    iget-wide v9, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 363
    .line 364
    iget-wide v11, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 365
    .line 366
    cmp-long v9, v9, v11

    .line 367
    .line 368
    if-nez v9, :cond_1b

    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_1b
    iget-object v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    if-eqz v9, :cond_19

    .line 378
    .line 379
    iget-object v8, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v8

    .line 385
    if-eqz v8, :cond_19

    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_1c
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    :cond_1d
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v8

    .line 396
    if-eqz v8, :cond_23

    .line 397
    .line 398
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v8

    .line 402
    check-cast v8, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 403
    .line 404
    if-nez v8, :cond_1e

    .line 405
    .line 406
    goto :goto_3

    .line 407
    :cond_1e
    if-eqz p1, :cond_1f

    .line 408
    .line 409
    iget-wide v9, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 410
    .line 411
    iget-wide v11, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 412
    .line 413
    cmp-long v9, v9, v11

    .line 414
    .line 415
    if-nez v9, :cond_1f

    .line 416
    .line 417
    goto :goto_3

    .line 418
    :cond_1f
    iget-object v8, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    if-eqz v8, :cond_1d

    .line 425
    .line 426
    :goto_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 427
    .line 428
    if-eqz p1, :cond_20

    .line 429
    .line 430
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 431
    .line 432
    .line 433
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 434
    .line 435
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 436
    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 442
    .line 443
    .line 444
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 445
    .line 446
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 447
    .line 448
    .line 449
    :goto_5
    if-eq v0, v6, :cond_22

    .line 450
    .line 451
    if-ne v0, v7, :cond_21

    .line 452
    .line 453
    goto :goto_6

    .line 454
    :cond_21
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 455
    .line 456
    sget p1, Lnet/kaki87/soul2/testing/R$string;->already_added:I

    .line 457
    .line 458
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 459
    .line 460
    .line 461
    return-void

    .line 462
    :cond_22
    :goto_6
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 463
    .line 464
    sget p1, Lnet/kaki87/soul2/testing/R$string;->exist_url:I

    .line 465
    .line 466
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 467
    .line 468
    .line 469
    return-void

    .line 470
    :cond_23
    :goto_7
    if-ne v0, v7, :cond_25

    .line 471
    .line 472
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 473
    .line 474
    if-eqz p0, :cond_24

    .line 475
    .line 476
    const-wide/16 v0, 0x0

    .line 477
    .line 478
    invoke-interface {p0, v0, v1, v4, v3}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    :cond_24
    :goto_8
    return-void

    .line 482
    :cond_25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

    .line 483
    .line 484
    if-eqz v0, :cond_26

    .line 485
    .line 486
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 487
    .line 488
    :cond_26
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

    .line 489
    .line 490
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

    .line 491
    .line 492
    invoke-direct {v0, p0, p1, v4, v1}, Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

    .line 496
    .line 497
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 498
    .line 499
    invoke-virtual {v0, p0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 500
    .line 501
    .line 502
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditUrl;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditUrl;->D()V

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->m0:Lcom/mycompany/app/dialog/DialogEditUrl$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 63
    .line 64
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    :cond_7
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl;->o0:Lcom/mycompany/app/web/WebClean;

    .line 84
    .line 85
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 86
    .line 87
    .line 88
    return-void
.end method
