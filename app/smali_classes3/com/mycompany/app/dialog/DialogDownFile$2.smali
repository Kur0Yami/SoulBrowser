.class Lcom/mycompany/app/dialog/DialogDownFile$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFile;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile$2;->c:Lcom/mycompany/app/dialog/DialogDownFile;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile$2;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 12
    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownFile;->x0:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_2
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogDownFile;->m0:Lcom/mycompany/app/view/MyLineLinear;

    .line 24
    .line 25
    if-nez v5, :cond_3

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_3
    sget v6, Lnet/kaki87/soul2/testing/R$id;->down_icon_frame:I

    .line 30
    .line 31
    sget v7, Lnet/kaki87/soul2/testing/R$id;->down_path_title:I

    .line 32
    .line 33
    new-instance v8, Lcom/mycompany/app/view/MyLineRelative;

    .line 34
    .line 35
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/high16 v9, 0x40c00000    # 6.0f

    .line 39
    .line 40
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    float-to-int v9, v9

    .line 45
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    invoke-virtual {v8, v10, v11, v9, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 49
    .line 50
    .line 51
    sget v9, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 52
    .line 53
    invoke-virtual {v8, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 54
    .line 55
    .line 56
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 57
    .line 58
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyLineRelative;->c(I)V

    .line 59
    .line 60
    .line 61
    const/4 v9, -0x1

    .line 62
    const/4 v10, -0x2

    .line 63
    invoke-virtual {v5, v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    const/high16 v5, 0x42b00000    # 88.0f

    .line 67
    .line 68
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    float-to-int v5, v5

    .line 73
    new-instance v12, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v12, v6}, Landroid/view/View;->setId(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    .line 86
    .line 87
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    .line 89
    invoke-direct {v13, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    const/16 v14, 0xf

    .line 93
    .line 94
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    .line 96
    .line 97
    const/16 v15, 0x15

    .line 98
    .line 99
    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    .line 101
    .line 102
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 103
    .line 104
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 116
    .line 117
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    .line 119
    .line 120
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 121
    .line 122
    int-to-float v15, v15

    .line 123
    const/4 v14, 0x1

    .line 124
    invoke-virtual {v13, v15, v14}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 125
    .line 126
    .line 127
    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 128
    .line 129
    int-to-float v15, v15

    .line 130
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 131
    .line 132
    .line 133
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 134
    .line 135
    invoke-virtual {v12, v13, v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 136
    .line 137
    .line 138
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    invoke-direct {v5, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 144
    .line 145
    invoke-virtual {v5, v11, v12, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 146
    .line 147
    .line 148
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 149
    .line 150
    invoke-direct {v12, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .line 152
    .line 153
    const/16 v15, 0x10

    .line 154
    .line 155
    invoke-virtual {v12, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    .line 157
    .line 158
    const/16 v6, 0xf

    .line 159
    .line 160
    invoke-virtual {v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    .line 162
    .line 163
    const/high16 v6, 0x41200000    # 10.0f

    .line 164
    .line 165
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    float-to-int v6, v6

    .line 170
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    const/high16 v6, 0x41600000    # 14.0f

    .line 177
    .line 178
    const/4 v12, 0x0

    .line 179
    invoke-static {v2, v12, v7, v14, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    sget v15, Lnet/kaki87/soul2/testing/R$string;->down_location:I

    .line 184
    .line 185
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v6, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 189
    .line 190
    .line 191
    const/4 v15, 0x2

    .line 192
    invoke-static {v2, v12, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 197
    .line 198
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 199
    .line 200
    .line 201
    const/high16 v12, 0x41800000    # 16.0f

    .line 202
    .line 203
    invoke-virtual {v15, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 204
    .line 205
    .line 206
    const/4 v12, 0x3

    .line 207
    invoke-static {v10, v10, v12, v7}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 212
    .line 213
    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 214
    .line 215
    invoke-virtual {v5, v15, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    new-instance v5, Lcom/mycompany/app/view/MyRoundImage;

    .line 219
    .line 220
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 224
    .line 225
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 226
    .line 227
    .line 228
    const/16 v7, 0x8

    .line 229
    .line 230
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    const/high16 v7, 0x430c0000    # 140.0f

    .line 234
    .line 235
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    float-to-int v7, v7

    .line 240
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 241
    .line 242
    invoke-direct {v10, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    .line 244
    .line 245
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 246
    .line 247
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 248
    .line 249
    .line 250
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 251
    .line 252
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .line 257
    .line 258
    new-instance v4, Lcom/mycompany/app/view/MyLineLinear;

    .line 259
    .line 260
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 267
    .line 268
    .line 269
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 270
    .line 271
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v14}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 275
    .line 276
    .line 277
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 278
    .line 279
    invoke-virtual {v3, v4, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 280
    .line 281
    .line 282
    const/16 v3, 0x11

    .line 283
    .line 284
    const/high16 v7, 0x41800000    # 16.0f

    .line 285
    .line 286
    const/4 v10, 0x0

    .line 287
    invoke-static {v2, v10, v3, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    sget v3, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 292
    .line 293
    invoke-static {v2, v3, v11, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    const/high16 v7, 0x3f800000    # 1.0f

    .line 298
    .line 299
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 300
    .line 301
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    .line 303
    .line 304
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogDownFile;->q0:Lcom/mycompany/app/view/MyLineRelative;

    .line 305
    .line 306
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogDownFile;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 307
    .line 308
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogDownFile;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 311
    .line 312
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 313
    .line 314
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownFile;->v0:Lcom/mycompany/app/view/MyLineLinear;

    .line 315
    .line 316
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogDownFile;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 317
    .line 318
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 319
    .line 320
    if-nez v2, :cond_4

    .line 321
    .line 322
    :goto_0
    return-void

    .line 323
    :cond_4
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownFile$3;

    .line 324
    .line 325
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogDownFile$3;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    .line 330
    .line 331
    return-void
.end method
