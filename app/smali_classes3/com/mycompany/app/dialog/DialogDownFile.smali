.class public Lcom/mycompany/app/dialog/DialogDownFile;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic T0:I


# instance fields
.field public A0:Ljava/lang/String;

.field public B0:Ljava/lang/String;

.field public C0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

.field public D0:Ljava/lang/String;

.field public E0:Ljava/lang/String;

.field public F0:Z

.field public G0:Z

.field public H0:Lcom/bumptech/glide/load/model/GlideUrl;

.field public I0:Lcom/mycompany/app/view/GlideRequests;

.field public J0:Z

.field public K0:Ljava/util/ArrayList;

.field public L0:Ljava/lang/String;

.field public M0:Lcom/mycompany/app/view/MyPopupMenu;

.field public N0:Ljava/lang/String;

.field public O0:Lcom/mycompany/app/main/MainUri$UriItem;

.field public P0:Z

.field public Q0:Z

.field public final R0:Lcom/bumptech/glide/request/RequestListener;

.field public final S0:Lcom/bumptech/glide/request/RequestListener;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public final c0:Z

.field public d0:Lcom/mycompany/app/view/MyAdFrame;

.field public e0:Lcom/mycompany/app/view/MyAdNative;

.field public f0:I

.field public g0:Z

.field public h0:Lcom/mycompany/app/view/MyDialogLinear;

.field public i0:Lcom/mycompany/app/view/MyLineFrame;

.field public j0:Lcom/mycompany/app/view/MyRoundImage;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Lcom/mycompany/app/view/MyRoundImage;

.field public m0:Lcom/mycompany/app/view/MyLineLinear;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Landroidx/appcompat/widget/AppCompatTextView;

.field public p0:Lcom/mycompany/app/view/MyEditText;

.field public q0:Lcom/mycompany/app/view/MyLineRelative;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t0:Lcom/mycompany/app/view/MyButtonImage;

.field public u0:Lcom/mycompany/app/view/MyRoundImage;

.field public v0:Lcom/mycompany/app/view/MyLineLinear;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public x0:Landroid/widget/RelativeLayout;

.field public y0:Ljava/lang/String;

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownFile$18;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownFile$18;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->R0:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownFile$20;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownFile$20;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->S0:Lcom/bumptech/glide/request/RequestListener;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownFile;->y0:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownFile;->z0:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogDownFile;->A0:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogDownFile;->C0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 33
    .line 34
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogDownFile;->c0:Z

    .line 35
    .line 36
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownFile$1;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogDownFile$1;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogDownFile;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

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
    iget-boolean v11, v0, Lcom/mycompany/app/dialog/DialogDownFile;->c0:Z

    .line 48
    .line 49
    const/16 v12, 0x50

    .line 50
    .line 51
    const/16 v13, 0x8

    .line 52
    .line 53
    if-eqz v11, :cond_1

    .line 54
    .line 55
    new-instance v11, Lcom/mycompany/app/view/MyAdFrame;

    .line 56
    .line 57
    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    const/high16 v14, 0x43aa0000    # 340.0f

    .line 61
    .line 62
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    float-to-int v14, v14

    .line 67
    invoke-virtual {v11, v14}, Landroid/view/View;->setMinimumHeight(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .line 75
    invoke-direct {v14, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    .line 80
    invoke-virtual {v6, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move-object v11, v4

    .line 85
    :goto_0
    new-instance v14, Lcom/mycompany/app/view/MyLineFrame;

    .line 86
    .line 87
    invoke-direct {v14, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 91
    .line 92
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 93
    .line 94
    .line 95
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .line 97
    invoke-direct {v15, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    .line 102
    invoke-virtual {v6, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    new-instance v6, Lcom/mycompany/app/view/MyRoundImage;

    .line 106
    .line 107
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 111
    .line 112
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    .line 114
    .line 115
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 116
    .line 117
    int-to-float v12, v12

    .line 118
    const/high16 v15, 0x40000000    # 2.0f

    .line 119
    .line 120
    div-float/2addr v12, v15

    .line 121
    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 122
    .line 123
    .line 124
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    .line 126
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 127
    .line 128
    invoke-direct {v12, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    const v15, 0x800013

    .line 132
    .line 133
    .line 134
    iput v15, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 135
    .line 136
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 137
    .line 138
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v14, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-direct {v12, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    .line 148
    .line 149
    const/16 v15, 0x10

    .line 150
    .line 151
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 155
    .line 156
    .line 157
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 158
    .line 159
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 160
    .line 161
    .line 162
    const/high16 v5, 0x41800000    # 16.0f

    .line 163
    .line 164
    invoke-virtual {v12, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 165
    .line 166
    .line 167
    const/high16 v5, 0x42900000    # 72.0f

    .line 168
    .line 169
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    float-to-int v5, v5

    .line 174
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .line 176
    invoke-direct {v13, v8, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 180
    .line 181
    .line 182
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 183
    .line 184
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 191
    .line 192
    invoke-direct {v5, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v5, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 196
    .line 197
    .line 198
    new-instance v7, Lcom/mycompany/app/view/MyLineLinear;

    .line 199
    .line 200
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 204
    .line 205
    .line 206
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 207
    .line 208
    invoke-virtual {v7, v13}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v2}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 215
    .line 216
    .line 217
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 218
    .line 219
    invoke-direct {v13, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    .line 221
    .line 222
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 223
    .line 224
    invoke-virtual {v13, v10, v9, v10, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    .line 229
    .line 230
    const/high16 v9, 0x41600000    # 14.0f

    .line 231
    .line 232
    invoke-virtual {v13, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 233
    .line 234
    .line 235
    sget v10, Lnet/kaki87/soul2/testing/R$string;->exist_file:I

    .line 236
    .line 237
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(I)V

    .line 238
    .line 239
    .line 240
    const/16 v10, 0x8

    .line 241
    .line 242
    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    const/high16 v10, 0x42000000    # 32.0f

    .line 246
    .line 247
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    float-to-int v10, v10

    .line 252
    invoke-virtual {v7, v13, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 253
    .line 254
    .line 255
    new-instance v10, Landroid/widget/FrameLayout;

    .line 256
    .line 257
    invoke-direct {v10, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 258
    .line 259
    .line 260
    const/high16 v15, 0x41400000    # 12.0f

    .line 261
    .line 262
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 263
    .line 264
    .line 265
    move-result v15

    .line 266
    float-to-int v15, v15

    .line 267
    const/high16 v2, 0x41200000    # 10.0f

    .line 268
    .line 269
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    float-to-int v2, v2

    .line 274
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 275
    .line 276
    invoke-virtual {v10, v4, v15, v2, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 277
    .line 278
    .line 279
    const/high16 v2, 0x42b00000    # 88.0f

    .line 280
    .line 281
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    float-to-int v2, v2

    .line 286
    invoke-virtual {v7, v10, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 287
    .line 288
    .line 289
    const/4 v2, 0x0

    .line 290
    const/4 v4, 0x1

    .line 291
    invoke-static {v1, v2, v4, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    sget v2, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 296
    .line 297
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 298
    .line 299
    .line 300
    const/4 v2, -0x2

    .line 301
    invoke-virtual {v10, v9, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 302
    .line 303
    .line 304
    new-instance v2, Lcom/mycompany/app/view/MyEditText;

    .line 305
    .line 306
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 307
    .line 308
    .line 309
    const/4 v15, 0x3

    .line 310
    const/16 v8, 0x10

    .line 311
    .line 312
    invoke-static {v2, v8, v4, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 313
    .line 314
    .line 315
    const/high16 v8, 0x41800000    # 16.0f

    .line 316
    .line 317
    invoke-virtual {v2, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 318
    .line 319
    .line 320
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 321
    .line 322
    const/16 v8, 0x1d

    .line 323
    .line 324
    if-lt v4, v8, :cond_2

    .line 325
    .line 326
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 327
    .line 328
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 329
    .line 330
    .line 331
    :cond_2
    const/high16 v4, 0x10000000

    .line 332
    .line 333
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 334
    .line 335
    .line 336
    const/4 v4, 0x0

    .line 337
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    .line 339
    .line 340
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 341
    .line 342
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 343
    .line 344
    const/4 v15, -0x1

    .line 345
    invoke-direct {v4, v15, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 346
    .line 347
    .line 348
    const v8, 0x800053

    .line 349
    .line 350
    .line 351
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 352
    .line 353
    const/high16 v8, 0x40c00000    # 6.0f

    .line 354
    .line 355
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    float-to-int v1, v1

    .line 360
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v10, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .line 365
    .line 366
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 367
    .line 368
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 369
    .line 370
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 371
    .line 372
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDownFile;->x0:Landroid/widget/RelativeLayout;

    .line 373
    .line 374
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogDownFile;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 375
    .line 376
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogDownFile;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 377
    .line 378
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogDownFile;->m0:Lcom/mycompany/app/view/MyLineLinear;

    .line 379
    .line 380
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogDownFile;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 381
    .line 382
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogDownFile;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 383
    .line 384
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 385
    .line 386
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 387
    .line 388
    if-nez v1, :cond_3

    .line 389
    .line 390
    :goto_1
    return-void

    .line 391
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFile$2;

    .line 392
    .line 393
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFile$2;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    .line 398
    .line 399
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogDownFile;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, -0x70708

    .line 7
    .line 8
    .line 9
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->y0:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v2, v2, v1}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownFile;->J()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->y0:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->z0:Ljava/lang/String;

    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->J0:Z

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-object v2, v0

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->y0:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->H0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogDownFile;->H0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 68
    .line 69
    :goto_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownFile$17;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownFile$17;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogDownFile;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lez v0, :cond_5

    .line 24
    .line 25
    if-gtz p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 35
    .line 36
    mul-int/lit8 v2, v2, 0x2

    .line 37
    .line 38
    sub-int/2addr v1, v2

    .line 39
    if-gtz v1, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    int-to-float v0, v0

    .line 43
    int-to-float p1, p1

    .line 44
    div-float/2addr v0, p1

    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 46
    .line 47
    const/high16 v2, 0x430c0000    # 140.0f

    .line 48
    .line 49
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    float-to-int p1, p1

    .line 54
    int-to-float v2, p1

    .line 55
    mul-float/2addr v2, v0

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-le v0, v1, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move v1, v0

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 73
    .line 74
    invoke-direct {v2, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    .line 80
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 81
    .line 82
    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 86
    .line 87
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->l0:Lcom/mycompany/app/view/MyRoundImage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method public static E(Lcom/mycompany/app/dialog/DialogDownFile;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

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
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

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
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

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
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

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
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 78
    .line 79
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->N0:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownFile$22;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownFile$22;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->M0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->M0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->I0:Lcom/mycompany/app/view/GlideRequests;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownFile;->I0:Lcom/mycompany/app/view/GlideRequests;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->I0:Lcom/mycompany/app/view/GlideRequests;

    .line 42
    .line 43
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 51
    .line 52
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 60
    .line 61
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 69
    .line 70
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 71
    .line 72
    if-eqz v0, :cond_8

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->l0:Lcom/mycompany/app/view/MyRoundImage;

    .line 78
    .line 79
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->m0:Lcom/mycompany/app/view/MyLineLinear;

    .line 80
    .line 81
    if-eqz v0, :cond_9

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->m0:Lcom/mycompany/app/view/MyLineLinear;

    .line 87
    .line 88
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 89
    .line 90
    if-eqz v0, :cond_a

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 96
    .line 97
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->q0:Lcom/mycompany/app/view/MyLineRelative;

    .line 98
    .line 99
    if-eqz v0, :cond_b

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->q0:Lcom/mycompany/app/view/MyLineRelative;

    .line 105
    .line 106
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 107
    .line 108
    if-eqz v0, :cond_c

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 111
    .line 112
    .line 113
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 116
    .line 117
    if-eqz v0, :cond_d

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 123
    .line 124
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->v0:Lcom/mycompany/app/view/MyLineLinear;

    .line 125
    .line 126
    if-eqz v0, :cond_e

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->v0:Lcom/mycompany/app/view/MyLineLinear;

    .line 132
    .line 133
    :cond_e
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 134
    .line 135
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 136
    .line 137
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->y0:Ljava/lang/String;

    .line 146
    .line 147
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->z0:Ljava/lang/String;

    .line 148
    .line 149
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->A0:Ljava/lang/String;

    .line 150
    .line 151
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->B0:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->C0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 154
    .line 155
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->D0:Ljava/lang/String;

    .line 156
    .line 157
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->E0:Ljava/lang/String;

    .line 158
    .line 159
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->H0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->K0:Ljava/util/ArrayList;

    .line 162
    .line 163
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->L0:Ljava/lang/String;

    .line 164
    .line 165
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final G(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_1
    const/4 v0, -0x1

    .line 18
    const v1, -0xdededf

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_5

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    move v0, v1

    .line 44
    :cond_3
    invoke-virtual {p1, v0, v2}, Lcom/mycompany/app/view/MyDialogLinear;->d(II)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 59
    .line 60
    if-eqz p1, :cond_9

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_9

    .line 67
    .line 68
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 76
    .line 77
    if-eqz p1, :cond_8

    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 80
    .line 81
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 82
    .line 83
    if-eqz v4, :cond_7

    .line 84
    .line 85
    move v0, v1

    .line 86
    :cond_7
    invoke-virtual {p1, v0, v2}, Lcom/mycompany/app/view/MyDialogLinear;->d(II)V

    .line 87
    .line 88
    .line 89
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_9
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 96
    .line 97
    if-eqz p1, :cond_a

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 103
    .line 104
    if-eqz p1, :cond_c

    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 107
    .line 108
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 109
    .line 110
    if-eqz v3, :cond_b

    .line 111
    .line 112
    move v0, v1

    .line 113
    :cond_b
    iget v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->f0:I

    .line 114
    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyDialogLinear;->d(II)V

    .line 116
    .line 117
    .line 118
    :cond_c
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 124
    .line 125
    if-eqz p1, :cond_d

    .line 126
    .line 127
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :cond_d
    :goto_1
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogDownFile;->G(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyAdNative;->setDarkMode(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogDownFile;->G(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->D0:Ljava/lang/String;

    .line 14
    .line 15
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->F0:Z

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->D0:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->E0:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_selected:I

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    const v1, -0xbbcca

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->m0:Lcom/mycompany/app/view/MyLineLinear;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyLineLinear;->setDrawLine(Z)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogDownFile;->L0:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    const v3, -0x50506

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/high16 v3, -0x1000000

    .line 100
    .line 101
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_6

    .line 109
    .line 110
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->E0:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 113
    .line 114
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 118
    .line 119
    if-nez p1, :cond_5

    .line 120
    .line 121
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->m0:Lcom/mycompany/app/view/MyLineLinear;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyLineLinear;->setDrawLine(Z)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_2
    return-void

    .line 132
    :cond_6
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 136
    .line 137
    if-nez v1, :cond_7

    .line 138
    .line 139
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->m0:Lcom/mycompany/app/view/MyLineLinear;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyLineLinear;->setDrawLine(Z)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :cond_7
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->E0:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->u0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->y0:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->z0:Ljava/lang/String;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogDownFile;->J0:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v0

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownFile;->y0:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->H0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownFile;->H0:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 38
    .line 39
    :goto_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownFile$19;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownFile$19;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final K(Ljava/lang/String;)V
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
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownFile$21;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogDownFile$21;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->P0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->P0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownFile;->F()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownFile$16;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownFile$16;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
