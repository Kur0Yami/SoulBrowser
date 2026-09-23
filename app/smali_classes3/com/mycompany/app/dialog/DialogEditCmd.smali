.class public Lcom/mycompany/app/dialog/DialogEditCmd;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic q0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

.field public d0:J

.field public e0:Ljava/lang/String;

.field public final f0:Z

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyButtonText;

.field public j0:Lcom/mycompany/app/view/MyButtonText;

.field public k0:Lcom/mycompany/app/view/MyButtonText;

.field public l0:Lcom/mycompany/app/view/MyRoundFrame;

.field public m0:Lcom/mycompany/app/view/MyEditPure;

.field public n0:Lcom/mycompany/app/view/MyLineText;

.field public o0:Lcom/mycompany/app/dialog/DialogGuideArea;

.field public p0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;JLjava/lang/String;ZLcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 13
    .line 14
    iput-wide p2, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->d0:J

    .line 15
    .line 16
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->e0:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->f0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditCmd$1;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditCmd$1;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditCmd;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->b0:Landroid/content/Context;

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
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 15
    .line 16
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 25
    .line 26
    .line 27
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 28
    .line 29
    const/4 v6, -0x1

    .line 30
    invoke-virtual {v3, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 39
    .line 40
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 41
    .line 42
    .line 43
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    .line 45
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 46
    .line 47
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 51
    .line 52
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    const/high16 v7, 0x41c00000    # 24.0f

    .line 59
    .line 60
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    float-to-int v7, v7

    .line 65
    new-instance v8, Lcom/mycompany/app/view/MyButtonText;

    .line 66
    .line 67
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    const/16 v9, 0x11

    .line 71
    .line 72
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    .line 74
    .line 75
    const/high16 v10, 0x41900000    # 18.0f

    .line 76
    .line 77
    invoke-virtual {v8, v2, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v2}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v7}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 84
    .line 85
    .line 86
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .line 88
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 89
    .line 90
    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    const v12, 0x800005

    .line 94
    .line 95
    .line 96
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    .line 98
    const/high16 v13, 0x42d00000    # 104.0f

    .line 99
    .line 100
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    float-to-int v13, v13

    .line 105
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    new-instance v11, Lcom/mycompany/app/view/MyButtonText;

    .line 112
    .line 113
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11, v2, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11, v2}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11, v7}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 126
    .line 127
    .line 128
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 129
    .line 130
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 131
    .line 132
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    .line 134
    .line 135
    iput v12, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 136
    .line 137
    sget v14, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 138
    .line 139
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    new-instance v13, Lcom/mycompany/app/view/MyButtonText;

    .line 146
    .line 147
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13, v2, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v13, v2}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13, v7}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 160
    .line 161
    .line 162
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    .line 164
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 165
    .line 166
    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 170
    .line 171
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 172
    .line 173
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v13, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    .line 179
    const/high16 v4, 0x41400000    # 12.0f

    .line 180
    .line 181
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    float-to-int v4, v4

    .line 186
    new-instance v7, Lcom/mycompany/app/view/MyRoundFrame;

    .line 187
    .line 188
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .line 193
    const/4 v12, -0x2

    .line 194
    invoke-direct {v10, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    .line 196
    .line 197
    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 198
    .line 199
    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 200
    .line 201
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 202
    .line 203
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 204
    .line 205
    .line 206
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 207
    .line 208
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .line 213
    .line 214
    new-instance v4, Lcom/mycompany/app/view/MyEditPure;

    .line 215
    .line 216
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 217
    .line 218
    .line 219
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 220
    .line 221
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 222
    .line 223
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 224
    .line 225
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 226
    .line 227
    invoke-virtual {v4, v10, v14, v15, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 228
    .line 229
    .line 230
    const v9, 0x800033

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    .line 235
    .line 236
    const/4 v9, 0x5

    .line 237
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMinLines(I)V

    .line 238
    .line 239
    .line 240
    const/4 v9, 0x3

    .line 241
    invoke-virtual {v4, v9}, Landroid/view/View;->setTextDirection(I)V

    .line 242
    .line 243
    .line 244
    const/high16 v9, 0x41800000    # 16.0f

    .line 245
    .line 246
    invoke-virtual {v4, v2, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 247
    .line 248
    .line 249
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 250
    .line 251
    const/16 v14, 0x1d

    .line 252
    .line 253
    if-lt v10, v14, :cond_1

    .line 254
    .line 255
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 256
    .line 257
    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 258
    .line 259
    .line 260
    :cond_1
    const/high16 v10, 0x10000000

    .line 261
    .line 262
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 263
    .line 264
    .line 265
    const/4 v10, 0x0

    .line 266
    invoke-virtual {v4, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, v4, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 270
    .line 271
    .line 272
    new-instance v10, Lcom/mycompany/app/view/MyLineText;

    .line 273
    .line 274
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 275
    .line 276
    .line 277
    const/16 v1, 0x11

    .line 278
    .line 279
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 283
    .line 284
    .line 285
    sget v1, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 286
    .line 287
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(I)V

    .line 288
    .line 289
    .line 290
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 291
    .line 292
    invoke-virtual {v10, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v10, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 296
    .line 297
    .line 298
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 299
    .line 300
    invoke-virtual {v3, v10, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 301
    .line 302
    .line 303
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 304
    .line 305
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 306
    .line 307
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->i0:Lcom/mycompany/app/view/MyButtonText;

    .line 308
    .line 309
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->j0:Lcom/mycompany/app/view/MyButtonText;

    .line 310
    .line 311
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->k0:Lcom/mycompany/app/view/MyButtonText;

    .line 312
    .line 313
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->l0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 314
    .line 315
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 316
    .line 317
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 318
    .line 319
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 320
    .line 321
    if-nez v1, :cond_2

    .line 322
    .line 323
    :goto_0
    return-void

    .line 324
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditCmd$2;

    .line 325
    .line 326
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$2;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    .line 331
    .line 332
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogEditCmd;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-gez v2, :cond_3

    .line 52
    .line 53
    move v2, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    if-le v2, v0, :cond_4

    .line 56
    .line 57
    move v2, v0

    .line 58
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-gez v3, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    if-le v3, v0, :cond_6

    .line 68
    .line 69
    move v1, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_6
    move v1, v3

    .line 72
    :goto_1
    if-le v1, v2, :cond_7

    .line 73
    .line 74
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0, v2, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_7
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-interface {p0, v2, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    :goto_2
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->o0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogGuideArea;->dismiss()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->o0:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->i0:Lcom/mycompany/app/view/MyButtonText;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->i0:Lcom/mycompany/app/view/MyButtonText;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->j0:Lcom/mycompany/app/view/MyButtonText;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->j0:Lcom/mycompany/app/view/MyButtonText;

    .line 54
    .line 55
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->k0:Lcom/mycompany/app/view/MyButtonText;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->k0:Lcom/mycompany/app/view/MyButtonText;

    .line 63
    .line 64
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->l0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundFrame;->a()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->l0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 72
    .line 73
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 81
    .line 82
    :cond_8
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->b0:Landroid/content/Context;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->c0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->e0:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 91
    .line 92
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 93
    .line 94
    .line 95
    return-void
.end method
