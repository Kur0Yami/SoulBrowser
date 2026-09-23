.class public Lcom/mycompany/app/dialog/DialogExtract;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogExtract$DialogTask;
    }
.end annotation


# instance fields
.field public A0:[Ljava/lang/String;

.field public B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

.field public final C0:I

.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:I

.field public H0:I

.field public I0:I

.field public J0:J

.field public K0:Ljava/lang/String;

.field public L0:Ljava/lang/String;

.field public M0:Ljava/util/ArrayList;

.field public N0:Z

.field public O0:Lcom/mycompany/app/main/MainListLoader;

.field public P0:Z

.field public final Q0:Ljava/lang/Runnable;

.field public R0:Landroid/widget/LinearLayout;

.field public S0:Landroid/view/View;

.field public T0:Landroidx/appcompat/widget/AppCompatTextView;

.field public U0:Landroidx/appcompat/widget/AppCompatTextView;

.field public V0:Landroidx/appcompat/widget/AppCompatTextView;

.field public W0:Landroidx/appcompat/widget/AppCompatTextView;

.field public X0:Landroidx/appcompat/widget/AppCompatTextView;

.field public Y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public Z0:Landroidx/appcompat/widget/AppCompatTextView;

.field public a0:Landroid/content/Context;

.field public a1:Landroidx/appcompat/widget/AppCompatTextView;

.field public final b0:I

.field public final b1:Lcom/mycompany/app/compress/CompressUtil$CompressListener;

.field public c0:Ljava/util/List;

.field public d0:I

.field public e0:I

.field public f0:Ljava/lang/String;

.field public g0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public h0:Lcom/mycompany/app/view/MyDialogLinear;

.field public i0:Landroid/widget/LinearLayout;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:[Lcom/mycompany/app/view/MyRoundImage;

.field public l0:[Landroid/widget/TextView;

.field public m0:[Landroid/view/View;

.field public n0:[Lcom/mycompany/app/view/MyEditText;

.field public o0:[Landroid/view/View;

.field public p0:[Landroid/widget/TextView;

.field public q0:[Lcom/mycompany/app/view/MyProgressBar;

.field public r0:[Landroid/widget/TextView;

.field public s0:[Lcom/mycompany/app/view/MyProgressBar;

.field public t0:[Landroid/widget/TextView;

.field public u0:[Landroid/widget/TextView;

.field public v0:[Landroid/widget/EditText;

.field public w0:[Landroid/view/View;

.field public x0:[Landroid/widget/TextView;

.field public y0:[Landroid/widget/TextView;

.field public z0:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListAlbum;ILjava/util/List;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/dialog/DialogExtract$8;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogExtract$8;-><init>(Lcom/mycompany/app/dialog/DialogExtract;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract;->Q0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/dialog/DialogExtract$11;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogExtract$11;-><init>(Lcom/mycompany/app/dialog/DialogExtract;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract;->b1:Lcom/mycompany/app/compress/CompressUtil$CompressListener;

    .line 17
    .line 18
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz p3, :cond_3

    .line 26
    .line 27
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 39
    .line 40
    iput p2, p0, Lcom/mycompany/app/dialog/DialogExtract;->b0:I

    .line 41
    .line 42
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogExtract;->c0:Ljava/util/List;

    .line 43
    .line 44
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogExtract;->f0:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogExtract;->g0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 47
    .line 48
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lcom/mycompany/app/dialog/DialogExtract;->C0:I

    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogExtract$1;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogExtract$1;-><init>(Lcom/mycompany/app/dialog/DialogExtract;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogExtract;I)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->item_frame_view:I

    .line 9
    .line 10
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_title_view:I

    .line 11
    .line 12
    new-instance v4, Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    .line 20
    .line 21
    const/4 v6, -0x1

    .line 22
    const/4 v7, 0x0

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    new-instance v8, Landroid/view/View;

    .line 26
    .line 27
    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 31
    .line 32
    invoke-virtual {v4, v8, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v8, v7

    .line 37
    :goto_0
    const/high16 v9, 0x42900000    # 72.0f

    .line 38
    .line 39
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    float-to-int v9, v9

    .line 44
    new-instance v10, Lcom/mycompany/app/view/MyLineFrame;

    .line 45
    .line 46
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 50
    .line 51
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v10, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    new-instance v11, Lcom/mycompany/app/view/MyRoundImage;

    .line 58
    .line 59
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 63
    .line 64
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    .line 66
    .line 67
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 68
    .line 69
    int-to-float v12, v12

    .line 70
    const/high16 v13, 0x40000000    # 2.0f

    .line 71
    .line 72
    div-float/2addr v12, v13

    .line 73
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 74
    .line 75
    .line 76
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    .line 78
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 79
    .line 80
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    const v13, 0x800013

    .line 84
    .line 85
    .line 86
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 87
    .line 88
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 89
    .line 90
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    const/4 v12, 0x2

    .line 97
    invoke-static {v1, v7, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 102
    .line 103
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 104
    .line 105
    .line 106
    const/high16 v14, 0x41800000    # 16.0f

    .line 107
    .line 108
    invoke-virtual {v12, v5, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 109
    .line 110
    .line 111
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    .line 113
    const/4 v14, -0x2

    .line 114
    invoke-direct {v15, v6, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 115
    .line 116
    .line 117
    iput v13, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 118
    .line 119
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 120
    .line 121
    .line 122
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 123
    .line 124
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    const/high16 v9, 0x41400000    # 12.0f

    .line 131
    .line 132
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    float-to-int v9, v9

    .line 137
    const/high16 v10, 0x42b00000    # 88.0f

    .line 138
    .line 139
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    float-to-int v10, v10

    .line 144
    new-instance v13, Landroid/widget/FrameLayout;

    .line 145
    .line 146
    invoke-direct {v13, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 150
    .line 151
    invoke-virtual {v13, v15, v9, v15, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v13, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 155
    .line 156
    .line 157
    const/high16 v10, 0x41600000    # 14.0f

    .line 158
    .line 159
    invoke-static {v1, v7, v5, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    sget v15, Lnet/kaki87/soul2/testing/R$string;->sub_dir:I

    .line 164
    .line 165
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v13, v10, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 169
    .line 170
    .line 171
    new-instance v15, Lcom/mycompany/app/view/MyEditText;

    .line 172
    .line 173
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    const/16 v14, 0x10

    .line 177
    .line 178
    const/4 v6, 0x3

    .line 179
    invoke-static {v15, v14, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 180
    .line 181
    .line 182
    const/high16 v14, 0x41800000    # 16.0f

    .line 183
    .line 184
    invoke-virtual {v15, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 185
    .line 186
    .line 187
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 188
    .line 189
    const/16 v6, 0x1d

    .line 190
    .line 191
    if-lt v14, v6, :cond_2

    .line 192
    .line 193
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 194
    .line 195
    invoke-virtual {v15, v6}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 196
    .line 197
    .line 198
    :cond_2
    const/high16 v6, 0x10000000

    .line 199
    .line 200
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    .line 205
    .line 206
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    .line 208
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 209
    .line 210
    const/4 v5, -0x1

    .line 211
    invoke-direct {v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 212
    .line 213
    .line 214
    const v7, 0x800053

    .line 215
    .line 216
    .line 217
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 218
    .line 219
    invoke-virtual {v13, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    new-instance v6, Landroid/widget/RelativeLayout;

    .line 223
    .line 224
    invoke-direct {v6, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    const/16 v7, 0x8

    .line 228
    .line 229
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 233
    .line 234
    move-object/from16 v21, v11

    .line 235
    .line 236
    const/4 v11, 0x0

    .line 237
    invoke-direct {v7, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .line 239
    .line 240
    const/high16 v5, 0x3f800000    # 1.0f

    .line 241
    .line 242
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 243
    .line 244
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .line 246
    .line 247
    new-instance v7, Landroid/widget/LinearLayout;

    .line 248
    .line 249
    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v2}, Landroid/view/View;->setId(I)V

    .line 253
    .line 254
    .line 255
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 256
    .line 257
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 258
    .line 259
    move-object/from16 v22, v12

    .line 260
    .line 261
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 262
    .line 263
    move-object/from16 v23, v13

    .line 264
    .line 265
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 266
    .line 267
    invoke-virtual {v7, v5, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 268
    .line 269
    .line 270
    const/4 v5, 0x1

    .line 271
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 272
    .line 273
    .line 274
    const/4 v11, -0x1

    .line 275
    const/4 v12, -0x2

    .line 276
    invoke-virtual {v6, v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 277
    .line 278
    .line 279
    new-instance v13, Landroid/widget/RelativeLayout;

    .line 280
    .line 281
    invoke-direct {v13, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 282
    .line 283
    .line 284
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 285
    .line 286
    move-object/from16 v24, v15

    .line 287
    .line 288
    const/4 v15, 0x0

    .line 289
    invoke-virtual {v13, v15, v5, v15, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v13, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 293
    .line 294
    .line 295
    const/high16 v5, 0x41800000    # 16.0f

    .line 296
    .line 297
    const/4 v11, 0x1

    .line 298
    const/4 v15, 0x0

    .line 299
    invoke-static {v1, v15, v3, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    sget v5, Lnet/kaki87/soul2/testing/R$string;->current:I

    .line 304
    .line 305
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(I)V

    .line 306
    .line 307
    .line 308
    const/4 v5, -0x2

    .line 309
    invoke-virtual {v13, v12, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 310
    .line 311
    .line 312
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 313
    .line 314
    invoke-direct {v5, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 315
    .line 316
    .line 317
    const v15, 0x800005

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 324
    .line 325
    .line 326
    move-object/from16 v27, v8

    .line 327
    .line 328
    move-object/from16 v26, v10

    .line 329
    .line 330
    move-object/from16 v25, v12

    .line 331
    .line 332
    const/4 v10, -0x2

    .line 333
    const/4 v12, -0x1

    .line 334
    const/high16 v15, 0x41800000    # 16.0f

    .line 335
    .line 336
    invoke-static {v5, v11, v15, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    const/16 v10, 0x11

    .line 341
    .line 342
    invoke-virtual {v8, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 343
    .line 344
    .line 345
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 346
    .line 347
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v13, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    .line 352
    .line 353
    new-instance v3, Lcom/mycompany/app/view/MyProgressBar;

    .line 354
    .line 355
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v7, v3, v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 359
    .line 360
    .line 361
    new-instance v8, Landroid/widget/FrameLayout;

    .line 362
    .line 363
    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 364
    .line 365
    .line 366
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 367
    .line 368
    const/4 v15, 0x0

    .line 369
    invoke-virtual {v8, v15, v10, v15, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 370
    .line 371
    .line 372
    const/4 v10, -0x2

    .line 373
    invoke-virtual {v7, v8, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 374
    .line 375
    .line 376
    const/4 v11, 0x0

    .line 377
    const/4 v12, 0x1

    .line 378
    const/high16 v15, 0x41800000    # 16.0f

    .line 379
    .line 380
    invoke-static {v1, v11, v12, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 381
    .line 382
    .line 383
    move-result-object v13

    .line 384
    sget v12, Lnet/kaki87/soul2/testing/R$string;->total:I

    .line 385
    .line 386
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8, v13, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 390
    .line 391
    .line 392
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 393
    .line 394
    invoke-direct {v12, v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 395
    .line 396
    .line 397
    const/4 v11, 0x3

    .line 398
    invoke-virtual {v12, v11}, Landroid/view/View;->setTextDirection(I)V

    .line 399
    .line 400
    .line 401
    const/4 v11, 0x1

    .line 402
    invoke-virtual {v12, v11, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 403
    .line 404
    .line 405
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 406
    .line 407
    invoke-direct {v11, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 408
    .line 409
    .line 410
    const v15, 0x800005

    .line 411
    .line 412
    .line 413
    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 414
    .line 415
    invoke-virtual {v8, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    .line 417
    .line 418
    new-instance v8, Lcom/mycompany/app/view/MyProgressBar;

    .line 419
    .line 420
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 421
    .line 422
    .line 423
    const/4 v11, -0x1

    .line 424
    invoke-virtual {v7, v8, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 425
    .line 426
    .line 427
    new-instance v9, Landroid/widget/FrameLayout;

    .line 428
    .line 429
    invoke-direct {v9, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 430
    .line 431
    .line 432
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 433
    .line 434
    move-object/from16 v28, v3

    .line 435
    .line 436
    const/4 v3, 0x0

    .line 437
    invoke-virtual {v9, v3, v15, v3, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v7, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 441
    .line 442
    .line 443
    const/4 v3, 0x1

    .line 444
    const/4 v11, 0x0

    .line 445
    const/high16 v15, 0x41800000    # 16.0f

    .line 446
    .line 447
    invoke-static {v1, v11, v3, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 448
    .line 449
    .line 450
    move-result-object v10

    .line 451
    sget v3, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 452
    .line 453
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    .line 454
    .line 455
    .line 456
    const/4 v3, -0x2

    .line 457
    invoke-virtual {v9, v10, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 458
    .line 459
    .line 460
    move-object/from16 v29, v5

    .line 461
    .line 462
    const/4 v3, 0x1

    .line 463
    invoke-static {v1, v11, v3, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 468
    .line 469
    const/4 v11, -0x2

    .line 470
    invoke-direct {v3, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 471
    .line 472
    .line 473
    const v15, 0x800005

    .line 474
    .line 475
    .line 476
    iput v15, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 477
    .line 478
    invoke-virtual {v9, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    .line 480
    .line 481
    new-instance v3, Landroid/widget/FrameLayout;

    .line 482
    .line 483
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 484
    .line 485
    .line 486
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 487
    .line 488
    const/4 v15, 0x0

    .line 489
    invoke-virtual {v3, v15, v9, v15, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 490
    .line 491
    .line 492
    const/4 v9, -0x1

    .line 493
    invoke-virtual {v7, v3, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 494
    .line 495
    .line 496
    const/4 v7, 0x0

    .line 497
    const/4 v9, 0x1

    .line 498
    const/high16 v15, 0x41800000    # 16.0f

    .line 499
    .line 500
    invoke-static {v1, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 501
    .line 502
    .line 503
    move-result-object v11

    .line 504
    sget v7, Lnet/kaki87/soul2/testing/R$string;->estimated:I

    .line 505
    .line 506
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(I)V

    .line 507
    .line 508
    .line 509
    const/4 v7, -0x2

    .line 510
    invoke-virtual {v3, v11, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 511
    .line 512
    .line 513
    move-object/from16 v30, v5

    .line 514
    .line 515
    const/4 v7, 0x0

    .line 516
    invoke-static {v1, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 521
    .line 522
    const/4 v15, -0x2

    .line 523
    invoke-direct {v9, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 524
    .line 525
    .line 526
    const v15, 0x800005

    .line 527
    .line 528
    .line 529
    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 530
    .line 531
    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    .line 533
    .line 534
    new-instance v3, Lcom/mycompany/app/view/MyEditPure;

    .line 535
    .line 536
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 537
    .line 538
    .line 539
    const/4 v9, 0x3

    .line 540
    invoke-virtual {v3, v9}, Landroid/view/View;->setTextDirection(I)V

    .line 541
    .line 542
    .line 543
    const/16 v9, 0x1d

    .line 544
    .line 545
    if-lt v14, v9, :cond_3

    .line 546
    .line 547
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    .line 549
    .line 550
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 551
    .line 552
    .line 553
    const/4 v15, 0x0

    .line 554
    invoke-virtual {v3, v15}, Landroid/view/View;->setEnabled(Z)V

    .line 555
    .line 556
    .line 557
    const/16 v7, 0x8

    .line 558
    .line 559
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 560
    .line 561
    .line 562
    const/4 v9, 0x6

    .line 563
    const/4 v14, -0x1

    .line 564
    const/4 v15, -0x2

    .line 565
    invoke-static {v14, v15, v9, v2}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 566
    .line 567
    .line 568
    move-result-object v9

    .line 569
    invoke-virtual {v9, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v6, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    .line 574
    .line 575
    new-instance v2, Landroid/widget/RelativeLayout;

    .line 576
    .line 577
    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 581
    .line 582
    .line 583
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 584
    .line 585
    const/4 v15, 0x0

    .line 586
    invoke-direct {v7, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 587
    .line 588
    .line 589
    const/high16 v9, 0x3f800000    # 1.0f

    .line 590
    .line 591
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 592
    .line 593
    invoke-virtual {v4, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    .line 595
    .line 596
    new-instance v7, Landroid/widget/LinearLayout;

    .line 597
    .line 598
    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 599
    .line 600
    .line 601
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 602
    .line 603
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 604
    .line 605
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 606
    .line 607
    move-object/from16 v17, v3

    .line 608
    .line 609
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 610
    .line 611
    invoke-virtual {v7, v9, v15, v14, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 612
    .line 613
    .line 614
    const/4 v3, 0x1

    .line 615
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 616
    .line 617
    .line 618
    const/4 v14, -0x1

    .line 619
    const/4 v15, -0x2

    .line 620
    invoke-virtual {v2, v7, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 621
    .line 622
    .line 623
    new-instance v9, Landroid/widget/FrameLayout;

    .line 624
    .line 625
    invoke-direct {v9, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 626
    .line 627
    .line 628
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 629
    .line 630
    move-object/from16 v16, v2

    .line 631
    .line 632
    const/4 v2, 0x0

    .line 633
    invoke-virtual {v9, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v7, v9, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 637
    .line 638
    .line 639
    const/4 v2, 0x0

    .line 640
    const/4 v3, 0x1

    .line 641
    const/high16 v14, 0x41800000    # 16.0f

    .line 642
    .line 643
    invoke-static {v1, v2, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 644
    .line 645
    .line 646
    move-result-object v15

    .line 647
    sget v2, Lnet/kaki87/soul2/testing/R$string;->total:I

    .line 648
    .line 649
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(I)V

    .line 650
    .line 651
    .line 652
    const/4 v2, -0x2

    .line 653
    invoke-virtual {v9, v15, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 654
    .line 655
    .line 656
    move-object/from16 v18, v5

    .line 657
    .line 658
    const/4 v2, 0x0

    .line 659
    invoke-static {v1, v2, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 664
    .line 665
    const/4 v3, -0x2

    .line 666
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 667
    .line 668
    .line 669
    const v14, 0x800005

    .line 670
    .line 671
    .line 672
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 673
    .line 674
    invoke-virtual {v9, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    .line 676
    .line 677
    new-instance v2, Landroid/widget/FrameLayout;

    .line 678
    .line 679
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 680
    .line 681
    .line 682
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 683
    .line 684
    const/4 v14, 0x0

    .line 685
    invoke-virtual {v2, v14, v9, v14, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 686
    .line 687
    .line 688
    const/4 v14, -0x1

    .line 689
    invoke-virtual {v7, v2, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 690
    .line 691
    .line 692
    move-object/from16 v19, v5

    .line 693
    .line 694
    const/4 v3, 0x1

    .line 695
    const/4 v9, 0x0

    .line 696
    const/high16 v14, 0x41800000    # 16.0f

    .line 697
    .line 698
    invoke-static {v1, v9, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    sget v3, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 703
    .line 704
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 705
    .line 706
    .line 707
    const/4 v3, -0x2

    .line 708
    invoke-virtual {v2, v5, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 709
    .line 710
    .line 711
    move-object/from16 v20, v6

    .line 712
    .line 713
    const/4 v3, 0x1

    .line 714
    invoke-static {v1, v9, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 719
    .line 720
    const/4 v9, -0x2

    .line 721
    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 722
    .line 723
    .line 724
    const v14, 0x800005

    .line 725
    .line 726
    .line 727
    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 728
    .line 729
    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    .line 731
    .line 732
    new-instance v2, Landroid/widget/FrameLayout;

    .line 733
    .line 734
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 735
    .line 736
    .line 737
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 738
    .line 739
    const/4 v14, 0x0

    .line 740
    invoke-virtual {v2, v14, v3, v14, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 741
    .line 742
    .line 743
    const/4 v14, -0x1

    .line 744
    invoke-virtual {v7, v2, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 745
    .line 746
    .line 747
    const/4 v3, 0x1

    .line 748
    const/4 v7, 0x0

    .line 749
    const/high16 v14, 0x41800000    # 16.0f

    .line 750
    .line 751
    invoke-static {v1, v7, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 752
    .line 753
    .line 754
    move-result-object v9

    .line 755
    sget v3, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 756
    .line 757
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(I)V

    .line 758
    .line 759
    .line 760
    const/4 v3, -0x2

    .line 761
    invoke-virtual {v2, v9, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 762
    .line 763
    .line 764
    const/4 v3, 0x1

    .line 765
    invoke-static {v1, v7, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 770
    .line 771
    const/4 v7, -0x2

    .line 772
    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 773
    .line 774
    .line 775
    const v14, 0x800005

    .line 776
    .line 777
    .line 778
    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 779
    .line 780
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    .line 782
    .line 783
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 784
    .line 785
    aput-object v21, v2, p1

    .line 786
    .line 787
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 788
    .line 789
    aput-object v22, v2, p1

    .line 790
    .line 791
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->m0:[Landroid/view/View;

    .line 792
    .line 793
    aput-object v23, v2, p1

    .line 794
    .line 795
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 796
    .line 797
    aput-object v24, v2, p1

    .line 798
    .line 799
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->o0:[Landroid/view/View;

    .line 800
    .line 801
    aput-object v20, v2, p1

    .line 802
    .line 803
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->p0:[Landroid/widget/TextView;

    .line 804
    .line 805
    aput-object v29, v2, p1

    .line 806
    .line 807
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 808
    .line 809
    aput-object v28, v2, p1

    .line 810
    .line 811
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->r0:[Landroid/widget/TextView;

    .line 812
    .line 813
    aput-object v12, v2, p1

    .line 814
    .line 815
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 816
    .line 817
    aput-object v8, v2, p1

    .line 818
    .line 819
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->t0:[Landroid/widget/TextView;

    .line 820
    .line 821
    aput-object v30, v2, p1

    .line 822
    .line 823
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->u0:[Landroid/widget/TextView;

    .line 824
    .line 825
    aput-object v18, v2, p1

    .line 826
    .line 827
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->v0:[Landroid/widget/EditText;

    .line 828
    .line 829
    aput-object v17, v2, p1

    .line 830
    .line 831
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->w0:[Landroid/view/View;

    .line 832
    .line 833
    aput-object v16, v2, p1

    .line 834
    .line 835
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->x0:[Landroid/widget/TextView;

    .line 836
    .line 837
    aput-object v19, v2, p1

    .line 838
    .line 839
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 840
    .line 841
    aput-object v6, v2, p1

    .line 842
    .line 843
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->z0:[Landroid/widget/TextView;

    .line 844
    .line 845
    aput-object v1, v2, p1

    .line 846
    .line 847
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogExtract;->R0:Landroid/widget/LinearLayout;

    .line 848
    .line 849
    move-object/from16 v7, v27

    .line 850
    .line 851
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogExtract;->S0:Landroid/view/View;

    .line 852
    .line 853
    move-object/from16 v1, v26

    .line 854
    .line 855
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->T0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 856
    .line 857
    move-object/from16 v1, v25

    .line 858
    .line 859
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->U0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 860
    .line 861
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogExtract;->V0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 862
    .line 863
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogExtract;->W0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 864
    .line 865
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogExtract;->X0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 866
    .line 867
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogExtract;->Y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 868
    .line 869
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogExtract;->Z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 870
    .line 871
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogExtract;->a1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 872
    .line 873
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogExtract;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    const/4 v3, 0x1

    .line 11
    if-ge v2, v0, :cond_3

    .line 12
    .line 13
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 14
    .line 15
    aget-object v4, v4, v2

    .line 16
    .line 17
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogExtract;->A0:[Ljava/lang/String;

    .line 22
    .line 23
    aput-object v4, v5, v2

    .line 24
    .line 25
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    if-le v0, v3, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 34
    .line 35
    aget-object v0, v0, v2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 41
    .line 42
    aget-object v0, v0, v2

    .line 43
    .line 44
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 48
    .line 49
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 50
    .line 51
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->g0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-interface {v2}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 66
    .line 67
    .line 68
    :cond_4
    move v2, v1

    .line 69
    :goto_1
    if-ge v2, v0, :cond_5

    .line 70
    .line 71
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 72
    .line 73
    aget-object v4, v4, v2

    .line 74
    .line 75
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyEditText;->setDrawEline(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 79
    .line 80
    aget-object v4, v4, v2

    .line 81
    .line 82
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    iput v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogExtract;->E(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 101
    .line 102
    if-eqz v2, :cond_6

    .line 103
    .line 104
    iput-boolean v3, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 105
    .line 106
    :cond_6
    const/4 v2, 0x0

    .line 107
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 110
    .line 111
    if-nez v2, :cond_7

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_7
    new-instance v3, Lcom/mycompany/app/dialog/DialogExtract$7;

    .line 115
    .line 116
    invoke-direct {v3, p0, v1, v0}, Lcom/mycompany/app/dialog/DialogExtract$7;-><init>(Lcom/mycompany/app/dialog/DialogExtract;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    :cond_8
    :goto_2
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogExtract;ILjava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->r0:[Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    if-eqz p3, :cond_1

    .line 8
    .line 9
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 10
    .line 11
    aget-object p3, p3, p1

    .line 12
    .line 13
    invoke-virtual {p0, p3, p1}, Lcom/mycompany/app/dialog/DialogExtract;->G(Lcom/mycompany/app/view/MyRoundImage;I)V

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 17
    .line 18
    aget-object p3, p3, p1

    .line 19
    .line 20
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract;->p0:[Landroid/widget/TextView;

    .line 24
    .line 25
    aget-object p2, p2, p1

    .line 26
    .line 27
    const-string p3, "100.00%"

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 33
    .line 34
    aget-object p2, p2, p1

    .line 35
    .line 36
    const/high16 p3, 0x42c80000    # 100.0f

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract;->v0:[Landroid/widget/EditText;

    .line 43
    .line 44
    iget p3, p0, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 45
    .line 46
    aget-object p2, p2, p3

    .line 47
    .line 48
    const/16 p3, 0x8

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget p3, p0, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p3, " / "

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget p3, p0, Lcom/mycompany/app/dialog/DialogExtract;->E0:I

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogExtract;->r0:[Landroid/widget/TextView;

    .line 74
    .line 75
    aget-object p3, p3, p1

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 85
    .line 86
    aget-object p2, p2, p1

    .line 87
    .line 88
    iget p3, p0, Lcom/mycompany/app/dialog/DialogExtract;->E0:I

    .line 89
    .line 90
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 94
    .line 95
    aget-object p2, p2, p1

    .line 96
    .line 97
    iget p3, p0, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 98
    .line 99
    int-to-float p3, p3

    .line 100
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 104
    .line 105
    aget-object p2, p2, p1

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/mycompany/app/view/MyProgressBar;->getProgress()F

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    const/4 p3, 0x0

    .line 112
    cmpl-float p3, p2, p3

    .line 113
    .line 114
    if-lez p3, :cond_3

    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->J0:J

    .line 121
    .line 122
    sub-long/2addr v0, v2

    .line 123
    long-to-float p3, v0

    .line 124
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 125
    .line 126
    aget-object v0, v0, p1

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->getMax()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    int-to-float v0, v0

    .line 133
    sub-float/2addr v0, p2

    .line 134
    mul-float/2addr v0, p3

    .line 135
    div-float/2addr v0, p2

    .line 136
    float-to-long p2, v0

    .line 137
    const-wide/16 v0, 0x0

    .line 138
    .line 139
    cmp-long v0, p2, v0

    .line 140
    .line 141
    if-lez v0, :cond_2

    .line 142
    .line 143
    const-wide/16 v0, 0x3e8

    .line 144
    .line 145
    cmp-long v2, p2, v0

    .line 146
    .line 147
    if-gez v2, :cond_2

    .line 148
    .line 149
    move-wide p2, v0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->u0:[Landroid/widget/TextView;

    .line 151
    .line 152
    aget-object v0, v0, p1

    .line 153
    .line 154
    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainUtil;->s2(J)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract;->t0:[Landroid/widget/TextView;

    .line 162
    .line 163
    aget-object p2, p2, p1

    .line 164
    .line 165
    new-instance p3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v0, ""

    .line 168
    .line 169
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 173
    .line 174
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    iget p2, p0, Lcom/mycompany/app/dialog/DialogExtract;->G0:I

    .line 185
    .line 186
    if-lez p2, :cond_4

    .line 187
    .line 188
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogExtract;->t0:[Landroid/widget/TextView;

    .line 189
    .line 190
    aget-object p0, p0, p1

    .line 191
    .line 192
    const p1, -0xbbcca

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    .line 197
    .line 198
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final E(I)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->c0:Ljava/util/List;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lt p1, v2, :cond_2

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 22
    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    return-object p1

    .line 35
    :cond_4
    :goto_0
    return-object v0
.end method

.method public final F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogExtract;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final G(Lcom/mycompany/app/view/MyRoundImage;I)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->c0:Ljava/util/List;

    .line 6
    .line 7
    const v1, -0x70708

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    if-ltz p2, :cond_9

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lt p2, v0, :cond_1

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->c0:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_library_black_24:I

    .line 33
    .line 34
    invoke-virtual {p1, v1, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iget v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    const/16 v3, 0xb

    .line 42
    .line 43
    const/4 v4, 0x4

    .line 44
    if-eq v0, v2, :cond_3

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    if-eq v0, v2, :cond_3

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    if-eq v0, v2, :cond_3

    .line 51
    .line 52
    if-eq v0, v4, :cond_3

    .line 53
    .line 54
    const/4 v2, 0x5

    .line 55
    if-eq v0, v2, :cond_3

    .line 56
    .line 57
    const/4 v2, 0x6

    .line 58
    if-eq v0, v2, :cond_3

    .line 59
    .line 60
    if-eq v0, v3, :cond_3

    .line 61
    .line 62
    iget v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 63
    .line 64
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 65
    .line 66
    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    if-ne v0, v3, :cond_4

    .line 76
    .line 77
    iget v3, p0, Lcom/mycompany/app/dialog/DialogExtract;->b0:I

    .line 78
    .line 79
    iput v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 80
    .line 81
    iput v0, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 82
    .line 83
    iget-object v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v0, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v0, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 88
    .line 89
    iget-wide v5, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 90
    .line 91
    iput-wide v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 92
    .line 93
    iget v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 94
    .line 95
    iput v0, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 96
    .line 97
    iget v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 98
    .line 99
    iput v0, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 100
    .line 101
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 102
    .line 103
    iput p2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 104
    .line 105
    move-object p2, v2

    .line 106
    :cond_4
    iget-object v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iget v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 115
    .line 116
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 117
    .line 118
    invoke-virtual {p1, v0, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_5
    invoke-static {p2}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    iget p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 133
    .line 134
    if-ne p2, v4, :cond_6

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 137
    .line 138
    .line 139
    :cond_6
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->O0:Lcom/mycompany/app/main/MainListLoader;

    .line 144
    .line 145
    if-nez v0, :cond_8

    .line 146
    .line 147
    :goto_0
    return-void

    .line 148
    :cond_8
    iget v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 149
    .line 150
    iget v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 153
    .line 154
    .line 155
    iget v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 156
    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract;->O0:Lcom/mycompany/app/main/MainListLoader;

    .line 165
    .line 166
    invoke-virtual {v0, p2, p1}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_9
    :goto_1
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_library_black_24:I

    .line 171
    .line 172
    invoke-virtual {p1, v1, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogExtract;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->B0:Lcom/mycompany/app/dialog/DialogExtract$DialogTask;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->O0:Lcom/mycompany/app/main/MainListLoader;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->O0:Lcom/mycompany/app/main/MainListLoader;

    .line 27
    .line 28
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 36
    .line 37
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 47
    .line 48
    if-eqz v2, :cond_7

    .line 49
    .line 50
    array-length v2, v2

    .line 51
    move v3, v0

    .line 52
    :goto_0
    if-ge v3, v2, :cond_6

    .line 53
    .line 54
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 55
    .line 56
    aget-object v4, v4, v3

    .line 57
    .line 58
    if-eqz v4, :cond_5

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 64
    .line 65
    aput-object v1, v4, v3

    .line 66
    .line 67
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 71
    .line 72
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 73
    .line 74
    if-eqz v2, :cond_a

    .line 75
    .line 76
    array-length v2, v2

    .line 77
    move v3, v0

    .line 78
    :goto_1
    if-ge v3, v2, :cond_9

    .line 79
    .line 80
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 81
    .line 82
    aget-object v4, v4, v3

    .line 83
    .line 84
    if-eqz v4, :cond_8

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 90
    .line 91
    aput-object v1, v4, v3

    .line 92
    .line 93
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_9
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 97
    .line 98
    :cond_a
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 99
    .line 100
    if-eqz v2, :cond_d

    .line 101
    .line 102
    array-length v2, v2

    .line 103
    move v3, v0

    .line 104
    :goto_2
    if-ge v3, v2, :cond_c

    .line 105
    .line 106
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 107
    .line 108
    aget-object v4, v4, v3

    .line 109
    .line 110
    if-eqz v4, :cond_b

    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 113
    .line 114
    .line 115
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 116
    .line 117
    aput-object v1, v4, v3

    .line 118
    .line 119
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_c
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 123
    .line 124
    :cond_d
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 125
    .line 126
    if-eqz v2, :cond_10

    .line 127
    .line 128
    array-length v2, v2

    .line 129
    :goto_3
    if-ge v0, v2, :cond_f

    .line 130
    .line 131
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 132
    .line 133
    aget-object v3, v3, v0

    .line 134
    .line 135
    if-eqz v3, :cond_e

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 141
    .line 142
    aput-object v1, v3, v0

    .line 143
    .line 144
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_f
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 148
    .line 149
    :cond_10
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 150
    .line 151
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->c0:Ljava/util/List;

    .line 152
    .line 153
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->f0:Ljava/lang/String;

    .line 154
    .line 155
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->g0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 156
    .line 157
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->i0:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->m0:[Landroid/view/View;

    .line 162
    .line 163
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->o0:[Landroid/view/View;

    .line 164
    .line 165
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->p0:[Landroid/widget/TextView;

    .line 166
    .line 167
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->r0:[Landroid/widget/TextView;

    .line 168
    .line 169
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->t0:[Landroid/widget/TextView;

    .line 170
    .line 171
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->u0:[Landroid/widget/TextView;

    .line 172
    .line 173
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->v0:[Landroid/widget/EditText;

    .line 174
    .line 175
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->w0:[Landroid/view/View;

    .line 176
    .line 177
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->x0:[Landroid/widget/TextView;

    .line 178
    .line 179
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 180
    .line 181
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->z0:[Landroid/widget/TextView;

    .line 182
    .line 183
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->A0:[Ljava/lang/String;

    .line 184
    .line 185
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->K0:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->L0:Ljava/lang/String;

    .line 188
    .line 189
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 192
    .line 193
    .line 194
    return-void
.end method
