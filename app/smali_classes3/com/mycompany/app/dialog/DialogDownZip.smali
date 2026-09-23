.class public Lcom/mycompany/app/dialog/DialogDownZip;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogDownZip$ZipTask;
    }
.end annotation


# static fields
.field public static final synthetic z1:I


# instance fields
.field public A0:Lcom/mycompany/app/view/MyLineText;

.field public B0:Landroid/widget/LinearLayout;

.field public C0:Landroidx/appcompat/widget/AppCompatTextView;

.field public D0:Landroidx/appcompat/widget/AppCompatTextView;

.field public E0:Landroidx/appcompat/widget/AppCompatTextView;

.field public F0:Landroidx/appcompat/widget/AppCompatTextView;

.field public G0:Landroidx/appcompat/widget/AppCompatTextView;

.field public H0:Landroidx/appcompat/widget/AppCompatTextView;

.field public I0:Landroidx/appcompat/widget/AppCompatTextView;

.field public J0:Landroid/widget/LinearLayout;

.field public K0:Landroidx/appcompat/widget/AppCompatTextView;

.field public L0:Landroidx/appcompat/widget/AppCompatTextView;

.field public M0:Landroidx/appcompat/widget/AppCompatTextView;

.field public N0:Lcom/mycompany/app/view/MyProgressBar;

.field public O0:Landroidx/appcompat/widget/AppCompatTextView;

.field public P0:Landroidx/appcompat/widget/AppCompatTextView;

.field public Q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public R0:Lcom/mycompany/app/view/MyLineText;

.field public S0:Ljava/lang/String;

.field public T0:Ljava/lang/String;

.field public U0:Ljava/lang/String;

.field public V0:Ljava/lang/String;

.field public W0:Z

.field public X0:Ljava/lang/String;

.field public Y0:Ljava/lang/String;

.field public Z0:Ljava/util/List;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public a1:Z

.field public b0:Landroid/content/Context;

.field public b1:Ljava/util/ArrayList;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public c1:I

.field public d0:Ljava/lang/String;

.field public d1:I

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e1:I

.field public f0:Lcom/mycompany/app/view/MyLineFrame;

.field public f1:Z

.field public g0:Lcom/mycompany/app/view/MyRoundImage;

.field public g1:Lcom/mycompany/app/dialog/DialogDownZip$ZipTask;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h1:Ljava/util/ArrayList;

.field public i0:Landroidx/core/widget/NestedScrollView;

.field public i1:I

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j1:I

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k1:I

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l1:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m1:Ljava/util/ArrayList;

.field public n0:Lcom/mycompany/app/view/MyEditText;

.field public n1:Ljava/lang/String;

.field public o0:Landroid/widget/FrameLayout;

.field public o1:Lcom/mycompany/app/view/MyPopupMenu;

.field public p0:Landroidx/appcompat/widget/AppCompatTextView;

.field public p1:Ljava/lang/String;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public q1:Ljava/lang/String;

.field public r0:Landroidx/core/widget/NestedScrollView;

.field public r1:Z

.field public s0:Landroid/widget/LinearLayout;

.field public s1:Z

.field public t0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t1:Lcom/mycompany/app/view/GlideRequests;

.field public u0:Landroidx/appcompat/widget/AppCompatTextView;

.field public u1:Ljava/lang/String;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public final v1:Lcom/bumptech/glide/request/RequestListener;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w1:Ljava/lang/String;

.field public x0:Landroidx/appcompat/widget/AppCompatTextView;

.field public final x1:Lcom/bumptech/glide/request/RequestListener;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public final y1:Lcom/mycompany/app/compress/CompressUtil$CompressListener;

.field public z0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownZip$12;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownZip$12;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->v1:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownZip$14;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownZip$14;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->x1:Lcom/bumptech/glide/request/RequestListener;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownZip$21;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownZip$21;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->y1:Lcom/mycompany/app/compress/CompressUtil$CompressListener;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogDownZip;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogDownZip;->d0:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownZip;->X0:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Z0:Ljava/util/List;

    .line 40
    .line 41
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownZip$1;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogDownZip$1;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogDownZip;)V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->item_title_view:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/high16 v5, 0x42900000    # 72.0f

    .line 17
    .line 18
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    float-to-int v5, v5

    .line 23
    new-instance v6, Lcom/mycompany/app/view/MyLineFrame;

    .line 24
    .line 25
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 34
    .line 35
    .line 36
    const/4 v7, -0x1

    .line 37
    invoke-virtual {v4, v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Lcom/mycompany/app/view/MyRoundImage;

    .line 41
    .line 42
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 46
    .line 47
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    .line 49
    .line 50
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 51
    .line 52
    int-to-float v9, v9

    .line 53
    const/high16 v10, 0x40000000    # 2.0f

    .line 54
    .line 55
    div-float/2addr v9, v10

    .line 56
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 57
    .line 58
    .line 59
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 62
    .line 63
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    const v10, 0x800013

    .line 67
    .line 68
    .line 69
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 70
    .line 71
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 72
    .line 73
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    const/4 v11, 0x2

    .line 81
    invoke-static {v1, v9, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 86
    .line 87
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 88
    .line 89
    .line 90
    const/high16 v14, 0x41800000    # 16.0f

    .line 91
    .line 92
    invoke-virtual {v12, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 93
    .line 94
    .line 95
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .line 97
    const/4 v14, -0x2

    .line 98
    invoke-direct {v15, v7, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    .line 100
    .line 101
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    .line 103
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 104
    .line 105
    .line 106
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 107
    .line 108
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v9, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .line 120
    const/4 v11, 0x0

    .line 121
    invoke-direct {v15, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    const/high16 v11, 0x3f800000    # 1.0f

    .line 125
    .line 126
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    .line 128
    invoke-static {v4, v10, v15, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    invoke-virtual {v10, v15, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 133
    .line 134
    .line 135
    const/high16 v11, 0x42000000    # 32.0f

    .line 136
    .line 137
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    float-to-int v11, v11

    .line 142
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 143
    .line 144
    invoke-direct {v14, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    .line 146
    .line 147
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    invoke-virtual {v14, v9, v7, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 151
    .line 152
    .line 153
    const/16 v7, 0x10

    .line 154
    .line 155
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    .line 157
    .line 158
    const/high16 v9, 0x41600000    # 14.0f

    .line 159
    .line 160
    invoke-virtual {v14, v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 161
    .line 162
    .line 163
    sget v9, Lnet/kaki87/soul2/testing/R$string;->exist_file:I

    .line 164
    .line 165
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(I)V

    .line 166
    .line 167
    .line 168
    const/16 v9, 0x8

    .line 169
    .line 170
    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .line 175
    const/4 v7, -0x1

    .line 176
    invoke-direct {v9, v7, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 180
    .line 181
    .line 182
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 183
    .line 184
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v15, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 191
    .line 192
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 196
    .line 197
    invoke-virtual {v5, v9}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 201
    .line 202
    .line 203
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 204
    .line 205
    invoke-virtual {v15, v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 206
    .line 207
    .line 208
    move-object/from16 v21, v10

    .line 209
    .line 210
    move-object/from16 v20, v14

    .line 211
    .line 212
    const/16 v7, 0x10

    .line 213
    .line 214
    const/high16 v9, 0x41800000    # 16.0f

    .line 215
    .line 216
    const/4 v14, 0x0

    .line 217
    invoke-static {v1, v14, v7, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    sget v3, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 222
    .line 223
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    .line 224
    .line 225
    .line 226
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    .line 228
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 229
    .line 230
    const/4 v9, -0x2

    .line 231
    invoke-direct {v3, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 232
    .line 233
    .line 234
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 235
    .line 236
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    .line 241
    .line 242
    move-object/from16 v23, v10

    .line 243
    .line 244
    const/high16 v3, 0x41800000    # 16.0f

    .line 245
    .line 246
    const/16 v7, 0x10

    .line 247
    .line 248
    const/4 v9, 0x1

    .line 249
    invoke-static {v1, v14, v7, v9, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 254
    .line 255
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 256
    .line 257
    const/4 v9, -0x2

    .line 258
    invoke-direct {v3, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    const v7, 0x800005

    .line 262
    .line 263
    .line 264
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 265
    .line 266
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 267
    .line 268
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    .line 273
    .line 274
    const/high16 v3, 0x41400000    # 12.0f

    .line 275
    .line 276
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    float-to-int v3, v3

    .line 281
    const/high16 v5, 0x42b00000    # 88.0f

    .line 282
    .line 283
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    float-to-int v5, v5

    .line 288
    new-instance v9, Lcom/mycompany/app/view/MyLineFrame;

    .line 289
    .line 290
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 291
    .line 292
    .line 293
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 294
    .line 295
    invoke-virtual {v9, v14, v3, v14, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 296
    .line 297
    .line 298
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 299
    .line 300
    invoke-virtual {v9, v14}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 301
    .line 302
    .line 303
    const/4 v14, 0x1

    .line 304
    invoke-virtual {v9, v14}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 305
    .line 306
    .line 307
    const/4 v7, -0x1

    .line 308
    invoke-virtual {v15, v9, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 309
    .line 310
    .line 311
    move-object/from16 v24, v10

    .line 312
    .line 313
    const/high16 v5, 0x41600000    # 14.0f

    .line 314
    .line 315
    const/4 v7, 0x0

    .line 316
    invoke-static {v1, v7, v14, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    const/4 v5, -0x2

    .line 321
    invoke-virtual {v9, v10, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 322
    .line 323
    .line 324
    new-instance v5, Lcom/mycompany/app/view/MyEditText;

    .line 325
    .line 326
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 327
    .line 328
    .line 329
    const/4 v7, 0x3

    .line 330
    move-object/from16 v25, v10

    .line 331
    .line 332
    const/16 v10, 0x10

    .line 333
    .line 334
    invoke-static {v5, v10, v14, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 335
    .line 336
    .line 337
    const/high16 v10, 0x41800000    # 16.0f

    .line 338
    .line 339
    invoke-virtual {v5, v14, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    .line 341
    .line 342
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 343
    .line 344
    const/16 v14, 0x1d

    .line 345
    .line 346
    if-lt v10, v14, :cond_1

    .line 347
    .line 348
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 349
    .line 350
    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 351
    .line 352
    .line 353
    :cond_1
    const v10, -0x7e7e7f

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 357
    .line 358
    .line 359
    const/high16 v10, 0x10000000

    .line 360
    .line 361
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 362
    .line 363
    .line 364
    const/4 v14, 0x0

    .line 365
    invoke-virtual {v5, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    .line 367
    .line 368
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .line 370
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 371
    .line 372
    const/4 v7, -0x1

    .line 373
    invoke-direct {v10, v7, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 374
    .line 375
    .line 376
    const/16 v7, 0x50

    .line 377
    .line 378
    iput v7, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 379
    .line 380
    const/high16 v7, 0x40c00000    # 6.0f

    .line 381
    .line 382
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    float-to-int v7, v7

    .line 387
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .line 392
    .line 393
    new-instance v7, Landroid/widget/FrameLayout;

    .line 394
    .line 395
    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 396
    .line 397
    .line 398
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 399
    .line 400
    invoke-virtual {v7, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 401
    .line 402
    .line 403
    sget v9, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 404
    .line 405
    invoke-virtual {v7, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 406
    .line 407
    .line 408
    const/4 v9, -0x1

    .line 409
    const/4 v10, -0x2

    .line 410
    invoke-virtual {v15, v7, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 411
    .line 412
    .line 413
    new-instance v14, Landroid/widget/RelativeLayout;

    .line 414
    .line 415
    invoke-direct {v14, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 416
    .line 417
    .line 418
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 419
    .line 420
    invoke-direct {v15, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 421
    .line 422
    .line 423
    const/16 v9, 0x10

    .line 424
    .line 425
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 426
    .line 427
    invoke-virtual {v7, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    .line 429
    .line 430
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 431
    .line 432
    const/4 v15, 0x0

    .line 433
    invoke-direct {v9, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v9, v2}, Landroid/view/View;->setId(I)V

    .line 437
    .line 438
    .line 439
    move-object/from16 v27, v7

    .line 440
    .line 441
    const/4 v7, 0x1

    .line 442
    const/high16 v15, 0x41600000    # 14.0f

    .line 443
    .line 444
    invoke-virtual {v9, v7, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v14, v9, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 448
    .line 449
    .line 450
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 451
    .line 452
    const/4 v7, 0x0

    .line 453
    invoke-direct {v15, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 454
    .line 455
    .line 456
    const/4 v7, 0x2

    .line 457
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 461
    .line 462
    .line 463
    move-object/from16 v28, v9

    .line 464
    .line 465
    const/4 v7, 0x1

    .line 466
    const/high16 v13, 0x41800000    # 16.0f

    .line 467
    .line 468
    invoke-static {v15, v7, v13, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    const/4 v7, 0x3

    .line 473
    invoke-virtual {v9, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    .line 475
    .line 476
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 477
    .line 478
    iput v2, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 479
    .line 480
    invoke-virtual {v14, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    .line 482
    .line 483
    new-instance v2, Landroidx/core/widget/NestedScrollView;

    .line 484
    .line 485
    const/4 v7, 0x0

    .line 486
    invoke-direct {v2, v1, v7}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 487
    .line 488
    .line 489
    const/4 v7, 0x2

    .line 490
    invoke-virtual {v2, v7}, Landroid/view/View;->setOverScrollMode(I)V

    .line 491
    .line 492
    .line 493
    const/16 v7, 0x8

    .line 494
    .line 495
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 496
    .line 497
    .line 498
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 499
    .line 500
    const/4 v9, 0x0

    .line 501
    const/4 v10, -0x1

    .line 502
    invoke-direct {v7, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 503
    .line 504
    .line 505
    const/high16 v13, 0x3f800000    # 1.0f

    .line 506
    .line 507
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 508
    .line 509
    const/4 v14, 0x1

    .line 510
    invoke-static {v4, v2, v7, v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 511
    .line 512
    .line 513
    move-result-object v7

    .line 514
    const/4 v13, -0x2

    .line 515
    invoke-virtual {v2, v7, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 516
    .line 517
    .line 518
    new-instance v9, Landroid/widget/LinearLayout;

    .line 519
    .line 520
    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v7, v9, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 527
    .line 528
    .line 529
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 530
    .line 531
    const/4 v10, 0x0

    .line 532
    invoke-direct {v13, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 533
    .line 534
    .line 535
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 536
    .line 537
    const/4 v14, 0x0

    .line 538
    invoke-virtual {v13, v10, v14, v14, v14}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 539
    .line 540
    .line 541
    const/16 v10, 0x10

    .line 542
    .line 543
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 544
    .line 545
    .line 546
    const/high16 v10, 0x41600000    # 14.0f

    .line 547
    .line 548
    const/4 v14, 0x1

    .line 549
    invoke-virtual {v13, v14, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 550
    .line 551
    .line 552
    sget v10, Lnet/kaki87/soul2/testing/R$string;->verify_image:I

    .line 553
    .line 554
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(I)V

    .line 555
    .line 556
    .line 557
    const/4 v10, -0x1

    .line 558
    invoke-virtual {v9, v13, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 559
    .line 560
    .line 561
    new-instance v14, Landroid/widget/FrameLayout;

    .line 562
    .line 563
    invoke-direct {v14, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 564
    .line 565
    .line 566
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 567
    .line 568
    move-object/from16 v16, v13

    .line 569
    .line 570
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 571
    .line 572
    move-object/from16 v29, v2

    .line 573
    .line 574
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 575
    .line 576
    move-object/from16 v30, v15

    .line 577
    .line 578
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 579
    .line 580
    invoke-virtual {v14, v10, v13, v2, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 581
    .line 582
    .line 583
    const/4 v10, -0x1

    .line 584
    const/4 v13, -0x2

    .line 585
    invoke-virtual {v9, v14, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 586
    .line 587
    .line 588
    const/4 v2, 0x1

    .line 589
    const/high16 v10, 0x41800000    # 16.0f

    .line 590
    .line 591
    const/4 v15, 0x0

    .line 592
    invoke-static {v1, v15, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 593
    .line 594
    .line 595
    move-result-object v13

    .line 596
    sget v2, Lnet/kaki87/soul2/testing/R$string;->total:I

    .line 597
    .line 598
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

    .line 599
    .line 600
    .line 601
    const/4 v2, -0x2

    .line 602
    invoke-virtual {v14, v13, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 603
    .line 604
    .line 605
    move-object/from16 v31, v13

    .line 606
    .line 607
    const/4 v2, 0x1

    .line 608
    invoke-static {v1, v15, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 609
    .line 610
    .line 611
    move-result-object v13

    .line 612
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 613
    .line 614
    const/4 v10, -0x2

    .line 615
    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 616
    .line 617
    .line 618
    const v15, 0x800005

    .line 619
    .line 620
    .line 621
    iput v15, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 622
    .line 623
    invoke-virtual {v14, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    .line 625
    .line 626
    new-instance v2, Landroid/widget/FrameLayout;

    .line 627
    .line 628
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 629
    .line 630
    .line 631
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 632
    .line 633
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 634
    .line 635
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 636
    .line 637
    move-object/from16 v32, v13

    .line 638
    .line 639
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 640
    .line 641
    invoke-virtual {v2, v14, v15, v10, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 642
    .line 643
    .line 644
    const/4 v10, -0x1

    .line 645
    const/4 v13, -0x2

    .line 646
    invoke-virtual {v9, v2, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 647
    .line 648
    .line 649
    const/high16 v10, 0x41800000    # 16.0f

    .line 650
    .line 651
    const/4 v14, 0x1

    .line 652
    const/4 v15, 0x0

    .line 653
    invoke-static {v1, v15, v14, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 654
    .line 655
    .line 656
    move-result-object v13

    .line 657
    sget v10, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 658
    .line 659
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(I)V

    .line 660
    .line 661
    .line 662
    const/4 v10, -0x2

    .line 663
    invoke-virtual {v2, v13, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 664
    .line 665
    .line 666
    move-object/from16 v33, v13

    .line 667
    .line 668
    const/high16 v10, 0x41800000    # 16.0f

    .line 669
    .line 670
    invoke-static {v1, v15, v14, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 671
    .line 672
    .line 673
    move-result-object v13

    .line 674
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 675
    .line 676
    const/4 v14, -0x2

    .line 677
    invoke-direct {v10, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 678
    .line 679
    .line 680
    const v15, 0x800005

    .line 681
    .line 682
    .line 683
    iput v15, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 684
    .line 685
    invoke-virtual {v2, v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    .line 687
    .line 688
    new-instance v2, Landroid/widget/FrameLayout;

    .line 689
    .line 690
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 691
    .line 692
    .line 693
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 694
    .line 695
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 696
    .line 697
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 698
    .line 699
    move-object/from16 v34, v13

    .line 700
    .line 701
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 702
    .line 703
    invoke-virtual {v2, v10, v15, v14, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 704
    .line 705
    .line 706
    const/4 v10, -0x1

    .line 707
    const/4 v13, -0x2

    .line 708
    invoke-virtual {v9, v2, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 709
    .line 710
    .line 711
    const/high16 v10, 0x41800000    # 16.0f

    .line 712
    .line 713
    const/4 v14, 0x1

    .line 714
    const/4 v15, 0x0

    .line 715
    invoke-static {v1, v15, v14, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 716
    .line 717
    .line 718
    move-result-object v13

    .line 719
    sget v10, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 720
    .line 721
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(I)V

    .line 722
    .line 723
    .line 724
    const/4 v10, -0x2

    .line 725
    invoke-virtual {v2, v13, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 726
    .line 727
    .line 728
    move-object/from16 v35, v13

    .line 729
    .line 730
    const/high16 v10, 0x41800000    # 16.0f

    .line 731
    .line 732
    invoke-static {v1, v15, v14, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 733
    .line 734
    .line 735
    move-result-object v13

    .line 736
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 737
    .line 738
    const/4 v10, -0x2

    .line 739
    invoke-direct {v15, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 740
    .line 741
    .line 742
    const v10, 0x800005

    .line 743
    .line 744
    .line 745
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 746
    .line 747
    invoke-virtual {v2, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    .line 749
    .line 750
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 751
    .line 752
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 753
    .line 754
    .line 755
    const/16 v10, 0x11

    .line 756
    .line 757
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 758
    .line 759
    .line 760
    const/high16 v15, 0x41800000    # 16.0f

    .line 761
    .line 762
    invoke-virtual {v2, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 763
    .line 764
    .line 765
    sget v15, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 766
    .line 767
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(I)V

    .line 768
    .line 769
    .line 770
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 771
    .line 772
    invoke-virtual {v2, v15}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v2, v14}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 776
    .line 777
    .line 778
    const/16 v15, 0x8

    .line 779
    .line 780
    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 781
    .line 782
    .line 783
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 784
    .line 785
    const/4 v15, -0x1

    .line 786
    invoke-virtual {v7, v2, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 787
    .line 788
    .line 789
    new-instance v10, Landroid/widget/LinearLayout;

    .line 790
    .line 791
    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 795
    .line 796
    .line 797
    const/16 v14, 0x8

    .line 798
    .line 799
    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 800
    .line 801
    .line 802
    const/4 v14, -0x2

    .line 803
    invoke-virtual {v7, v10, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 804
    .line 805
    .line 806
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 807
    .line 808
    const/4 v15, 0x0

    .line 809
    invoke-direct {v14, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 810
    .line 811
    .line 812
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 813
    .line 814
    move-object/from16 v36, v2

    .line 815
    .line 816
    const/4 v2, 0x0

    .line 817
    invoke-virtual {v14, v15, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 818
    .line 819
    .line 820
    const/16 v2, 0x10

    .line 821
    .line 822
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 823
    .line 824
    .line 825
    const/4 v2, 0x1

    .line 826
    const/high16 v15, 0x41600000    # 14.0f

    .line 827
    .line 828
    invoke-virtual {v14, v2, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 829
    .line 830
    .line 831
    const/4 v15, -0x1

    .line 832
    invoke-virtual {v10, v14, v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 833
    .line 834
    .line 835
    new-instance v2, Landroid/widget/FrameLayout;

    .line 836
    .line 837
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 838
    .line 839
    .line 840
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 841
    .line 842
    move-object/from16 v37, v14

    .line 843
    .line 844
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 845
    .line 846
    move-object/from16 v38, v13

    .line 847
    .line 848
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 849
    .line 850
    move-object/from16 v39, v9

    .line 851
    .line 852
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 853
    .line 854
    invoke-virtual {v2, v15, v14, v13, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 855
    .line 856
    .line 857
    const/4 v13, -0x2

    .line 858
    const/4 v15, -0x1

    .line 859
    invoke-virtual {v10, v2, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 860
    .line 861
    .line 862
    const/4 v9, 0x1

    .line 863
    const/4 v14, 0x0

    .line 864
    const/high16 v15, 0x41800000    # 16.0f

    .line 865
    .line 866
    invoke-static {v1, v14, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 867
    .line 868
    .line 869
    move-result-object v13

    .line 870
    sget v9, Lnet/kaki87/soul2/testing/R$string;->total:I

    .line 871
    .line 872
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(I)V

    .line 873
    .line 874
    .line 875
    const/4 v9, -0x2

    .line 876
    invoke-virtual {v2, v13, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 877
    .line 878
    .line 879
    move-object/from16 v40, v13

    .line 880
    .line 881
    const/4 v9, 0x1

    .line 882
    invoke-static {v1, v14, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 883
    .line 884
    .line 885
    move-result-object v13

    .line 886
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 887
    .line 888
    const/4 v14, -0x2

    .line 889
    invoke-direct {v9, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 890
    .line 891
    .line 892
    const v15, 0x800005

    .line 893
    .line 894
    .line 895
    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 896
    .line 897
    invoke-virtual {v2, v13, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    .line 899
    .line 900
    new-instance v2, Landroid/widget/FrameLayout;

    .line 901
    .line 902
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 903
    .line 904
    .line 905
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 906
    .line 907
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 908
    .line 909
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 910
    .line 911
    move-object/from16 v41, v13

    .line 912
    .line 913
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 914
    .line 915
    invoke-virtual {v2, v9, v15, v14, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 916
    .line 917
    .line 918
    const/4 v13, -0x2

    .line 919
    const/4 v15, -0x1

    .line 920
    invoke-virtual {v10, v2, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 921
    .line 922
    .line 923
    const/4 v9, 0x1

    .line 924
    const/4 v14, 0x0

    .line 925
    const/high16 v15, 0x41800000    # 16.0f

    .line 926
    .line 927
    invoke-static {v1, v14, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 928
    .line 929
    .line 930
    move-result-object v13

    .line 931
    sget v9, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 932
    .line 933
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(I)V

    .line 934
    .line 935
    .line 936
    const/4 v9, -0x2

    .line 937
    invoke-virtual {v2, v13, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 938
    .line 939
    .line 940
    move-object/from16 v42, v13

    .line 941
    .line 942
    const/4 v9, 0x1

    .line 943
    invoke-static {v1, v14, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 944
    .line 945
    .line 946
    move-result-object v13

    .line 947
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 948
    .line 949
    const/4 v14, -0x2

    .line 950
    invoke-direct {v9, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 951
    .line 952
    .line 953
    const v15, 0x800005

    .line 954
    .line 955
    .line 956
    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 957
    .line 958
    invoke-virtual {v2, v13, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    .line 960
    .line 961
    new-instance v2, Landroid/widget/FrameLayout;

    .line 962
    .line 963
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 964
    .line 965
    .line 966
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 967
    .line 968
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 969
    .line 970
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 971
    .line 972
    move-object/from16 v43, v13

    .line 973
    .line 974
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 975
    .line 976
    invoke-virtual {v2, v9, v15, v14, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 977
    .line 978
    .line 979
    const/4 v13, -0x2

    .line 980
    const/4 v15, -0x1

    .line 981
    invoke-virtual {v10, v2, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 982
    .line 983
    .line 984
    const/4 v9, 0x1

    .line 985
    const/4 v14, 0x0

    .line 986
    const/high16 v15, 0x41800000    # 16.0f

    .line 987
    .line 988
    invoke-static {v1, v14, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 989
    .line 990
    .line 991
    move-result-object v13

    .line 992
    sget v9, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 993
    .line 994
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(I)V

    .line 995
    .line 996
    .line 997
    const/4 v9, -0x2

    .line 998
    invoke-virtual {v2, v13, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 999
    .line 1000
    .line 1001
    move-object/from16 v44, v13

    .line 1002
    .line 1003
    const/4 v9, 0x1

    .line 1004
    invoke-static {v1, v14, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v13

    .line 1008
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 1009
    .line 1010
    const/4 v14, -0x2

    .line 1011
    invoke-direct {v15, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1012
    .line 1013
    .line 1014
    const v14, 0x800005

    .line 1015
    .line 1016
    .line 1017
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1018
    .line 1019
    invoke-virtual {v2, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    .line 1021
    .line 1022
    new-instance v2, Landroid/widget/LinearLayout;

    .line 1023
    .line 1024
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1028
    .line 1029
    .line 1030
    const/16 v15, 0x8

    .line 1031
    .line 1032
    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    .line 1034
    .line 1035
    const/4 v14, -0x2

    .line 1036
    const/4 v15, -0x1

    .line 1037
    invoke-virtual {v7, v2, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1038
    .line 1039
    .line 1040
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1041
    .line 1042
    const/4 v14, 0x0

    .line 1043
    invoke-direct {v7, v1, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1044
    .line 1045
    .line 1046
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1047
    .line 1048
    const/4 v15, 0x0

    .line 1049
    invoke-virtual {v7, v14, v15, v15, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1050
    .line 1051
    .line 1052
    const/16 v14, 0x10

    .line 1053
    .line 1054
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 1055
    .line 1056
    .line 1057
    const/high16 v15, 0x41600000    # 14.0f

    .line 1058
    .line 1059
    invoke-virtual {v7, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1060
    .line 1061
    .line 1062
    const/4 v15, -0x1

    .line 1063
    invoke-virtual {v2, v7, v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1064
    .line 1065
    .line 1066
    new-instance v11, Landroid/widget/FrameLayout;

    .line 1067
    .line 1068
    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1069
    .line 1070
    .line 1071
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1072
    .line 1073
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1074
    .line 1075
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1076
    .line 1077
    move-object/from16 v18, v7

    .line 1078
    .line 1079
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1080
    .line 1081
    invoke-virtual {v11, v14, v9, v15, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1082
    .line 1083
    .line 1084
    const/4 v14, -0x2

    .line 1085
    const/4 v15, -0x1

    .line 1086
    invoke-virtual {v2, v11, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1087
    .line 1088
    .line 1089
    const/4 v7, 0x0

    .line 1090
    const/4 v9, 0x1

    .line 1091
    const/high16 v15, 0x41800000    # 16.0f

    .line 1092
    .line 1093
    invoke-static {v1, v7, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v14

    .line 1097
    sget v9, Lnet/kaki87/soul2/testing/R$string;->total:I

    .line 1098
    .line 1099
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(I)V

    .line 1100
    .line 1101
    .line 1102
    const/4 v9, -0x2

    .line 1103
    invoke-virtual {v11, v14, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1107
    .line 1108
    invoke-direct {v9, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1109
    .line 1110
    .line 1111
    const/4 v7, 0x3

    .line 1112
    invoke-virtual {v9, v7}, Landroid/view/View;->setTextDirection(I)V

    .line 1113
    .line 1114
    .line 1115
    const/4 v7, 0x1

    .line 1116
    invoke-virtual {v9, v7, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1117
    .line 1118
    .line 1119
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1120
    .line 1121
    const/4 v15, -0x2

    .line 1122
    invoke-direct {v7, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1123
    .line 1124
    .line 1125
    const v15, 0x800005

    .line 1126
    .line 1127
    .line 1128
    iput v15, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1129
    .line 1130
    invoke-virtual {v11, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    .line 1132
    .line 1133
    new-instance v7, Lcom/mycompany/app/view/MyProgressBar;

    .line 1134
    .line 1135
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 1136
    .line 1137
    .line 1138
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1139
    .line 1140
    const/4 v15, -0x1

    .line 1141
    invoke-direct {v11, v15, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1142
    .line 1143
    .line 1144
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1145
    .line 1146
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1147
    .line 1148
    .line 1149
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1150
    .line 1151
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v2, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    .line 1156
    .line 1157
    new-instance v3, Landroid/widget/FrameLayout;

    .line 1158
    .line 1159
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1160
    .line 1161
    .line 1162
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1163
    .line 1164
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1165
    .line 1166
    move-object/from16 v19, v7

    .line 1167
    .line 1168
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1169
    .line 1170
    move-object/from16 v26, v9

    .line 1171
    .line 1172
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1173
    .line 1174
    invoke-virtual {v3, v11, v15, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1175
    .line 1176
    .line 1177
    const/4 v9, -0x2

    .line 1178
    const/4 v15, -0x1

    .line 1179
    invoke-virtual {v2, v3, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1180
    .line 1181
    .line 1182
    const/4 v7, 0x0

    .line 1183
    const/4 v11, 0x1

    .line 1184
    const/high16 v15, 0x41800000    # 16.0f

    .line 1185
    .line 1186
    invoke-static {v1, v7, v11, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v9

    .line 1190
    sget v7, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 1191
    .line 1192
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1193
    .line 1194
    .line 1195
    const/4 v7, -0x2

    .line 1196
    invoke-virtual {v3, v9, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1197
    .line 1198
    .line 1199
    move-object/from16 v22, v9

    .line 1200
    .line 1201
    const/4 v7, 0x0

    .line 1202
    invoke-static {v1, v7, v11, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v9

    .line 1206
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1207
    .line 1208
    const/4 v15, -0x2

    .line 1209
    invoke-direct {v7, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1210
    .line 1211
    .line 1212
    const v15, 0x800005

    .line 1213
    .line 1214
    .line 1215
    iput v15, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1216
    .line 1217
    invoke-virtual {v3, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    .line 1219
    .line 1220
    new-instance v3, Lcom/mycompany/app/view/MyLineLinear;

    .line 1221
    .line 1222
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 1223
    .line 1224
    .line 1225
    const/4 v15, 0x0

    .line 1226
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1230
    .line 1231
    .line 1232
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1233
    .line 1234
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 1238
    .line 1239
    .line 1240
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1241
    .line 1242
    const/4 v15, -0x1

    .line 1243
    invoke-static {v4, v3, v15, v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v7

    .line 1247
    const/16 v15, 0x11

    .line 1248
    .line 1249
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 1250
    .line 1251
    .line 1252
    const/high16 v15, 0x41800000    # 16.0f

    .line 1253
    .line 1254
    invoke-virtual {v7, v11, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1255
    .line 1256
    .line 1257
    sget v11, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 1258
    .line 1259
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v7, v1}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 1263
    .line 1264
    .line 1265
    const/16 v11, 0x8

    .line 1266
    .line 1267
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    .line 1269
    .line 1270
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1271
    .line 1272
    move-object/from16 v17, v9

    .line 1273
    .line 1274
    const/4 v9, -0x1

    .line 1275
    const/4 v15, 0x0

    .line 1276
    invoke-direct {v11, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1277
    .line 1278
    .line 1279
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1280
    .line 1281
    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1282
    .line 1283
    const/4 v9, 0x0

    .line 1284
    invoke-static {v3, v7, v11, v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v1

    .line 1288
    const/16 v9, 0x11

    .line 1289
    .line 1290
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1291
    .line 1292
    .line 1293
    const/high16 v9, 0x41800000    # 16.0f

    .line 1294
    .line 1295
    const/4 v11, 0x1

    .line 1296
    invoke-virtual {v1, v11, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1297
    .line 1298
    .line 1299
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1300
    .line 1301
    const/4 v11, -0x1

    .line 1302
    invoke-direct {v9, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1303
    .line 1304
    .line 1305
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1306
    .line 1307
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1308
    .line 1309
    invoke-virtual {v3, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1310
    .line 1311
    .line 1312
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogDownZip;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 1313
    .line 1314
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogDownZip;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 1315
    .line 1316
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogDownZip;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 1317
    .line 1318
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogDownZip;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1319
    .line 1320
    move-object/from16 v3, v21

    .line 1321
    .line 1322
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->i0:Landroidx/core/widget/NestedScrollView;

    .line 1323
    .line 1324
    move-object/from16 v3, v20

    .line 1325
    .line 1326
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1327
    .line 1328
    move-object/from16 v3, v23

    .line 1329
    .line 1330
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1331
    .line 1332
    move-object/from16 v3, v24

    .line 1333
    .line 1334
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1335
    .line 1336
    move-object/from16 v3, v25

    .line 1337
    .line 1338
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1339
    .line 1340
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 1341
    .line 1342
    move-object/from16 v3, v27

    .line 1343
    .line 1344
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->o0:Landroid/widget/FrameLayout;

    .line 1345
    .line 1346
    move-object/from16 v3, v28

    .line 1347
    .line 1348
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1349
    .line 1350
    move-object/from16 v3, v30

    .line 1351
    .line 1352
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1353
    .line 1354
    move-object/from16 v3, v29

    .line 1355
    .line 1356
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->r0:Landroidx/core/widget/NestedScrollView;

    .line 1357
    .line 1358
    move-object/from16 v3, v39

    .line 1359
    .line 1360
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->s0:Landroid/widget/LinearLayout;

    .line 1361
    .line 1362
    move-object/from16 v3, v16

    .line 1363
    .line 1364
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1365
    .line 1366
    move-object/from16 v3, v31

    .line 1367
    .line 1368
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1369
    .line 1370
    move-object/from16 v3, v32

    .line 1371
    .line 1372
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1373
    .line 1374
    move-object/from16 v3, v33

    .line 1375
    .line 1376
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1377
    .line 1378
    move-object/from16 v3, v34

    .line 1379
    .line 1380
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1381
    .line 1382
    move-object/from16 v3, v35

    .line 1383
    .line 1384
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1385
    .line 1386
    move-object/from16 v3, v38

    .line 1387
    .line 1388
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1389
    .line 1390
    move-object/from16 v3, v36

    .line 1391
    .line 1392
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 1393
    .line 1394
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogDownZip;->B0:Landroid/widget/LinearLayout;

    .line 1395
    .line 1396
    move-object/from16 v3, v37

    .line 1397
    .line 1398
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1399
    .line 1400
    move-object/from16 v3, v40

    .line 1401
    .line 1402
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1403
    .line 1404
    move-object/from16 v3, v41

    .line 1405
    .line 1406
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1407
    .line 1408
    move-object/from16 v3, v42

    .line 1409
    .line 1410
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1411
    .line 1412
    move-object/from16 v3, v43

    .line 1413
    .line 1414
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->G0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1415
    .line 1416
    move-object/from16 v3, v44

    .line 1417
    .line 1418
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1419
    .line 1420
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogDownZip;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1421
    .line 1422
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->J0:Landroid/widget/LinearLayout;

    .line 1423
    .line 1424
    move-object/from16 v2, v18

    .line 1425
    .line 1426
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1427
    .line 1428
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogDownZip;->L0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1429
    .line 1430
    move-object/from16 v2, v26

    .line 1431
    .line 1432
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1433
    .line 1434
    move-object/from16 v2, v19

    .line 1435
    .line 1436
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->N0:Lcom/mycompany/app/view/MyProgressBar;

    .line 1437
    .line 1438
    move-object/from16 v2, v22

    .line 1439
    .line 1440
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1441
    .line 1442
    move-object/from16 v2, v17

    .line 1443
    .line 1444
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->P0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1445
    .line 1446
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1447
    .line 1448
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogDownZip;->R0:Lcom/mycompany/app/view/MyLineText;

    .line 1449
    .line 1450
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 1451
    .line 1452
    if-nez v1, :cond_2

    .line 1453
    .line 1454
    :goto_0
    return-void

    .line 1455
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownZip$2;

    .line 1456
    .line 1457
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownZip$2;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1461
    .line 1462
    .line 1463
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogDownZip;Ljava/util/ArrayList;Z)V
    .locals 10

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_4

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v2, 0xa

    .line 20
    .line 21
    :goto_0
    if-le v2, v0, :cond_2

    .line 22
    .line 23
    move v8, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v8, v2

    .line 26
    :goto_1
    div-int v2, v0, v8

    .line 27
    .line 28
    rem-int/2addr v0, v8

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    :cond_3
    move v6, v2

    .line 34
    new-instance v9, Lcom/mycompany/app/dialog/DialogDownZip$18;

    .line 35
    .line 36
    invoke-direct {v9, p0}, Lcom/mycompany/app/dialog/DialogDownZip$18;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p2, :cond_7

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    move v2, v0

    .line 47
    :cond_4
    :goto_2
    if-ge v2, p2, :cond_7

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 56
    .line 57
    iget-boolean v4, p0, Lcom/mycompany/app/dialog/DialogDownZip;->a1:Z

    .line 58
    .line 59
    if-nez v4, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    if-nez v3, :cond_6

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_6
    iget v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 66
    .line 67
    const/4 v5, 0x3

    .line 68
    if-eq v4, v5, :cond_4

    .line 69
    .line 70
    iput v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_7
    move v7, v0

    .line 74
    :goto_3
    if-ge v7, v8, :cond_9

    .line 75
    .line 76
    iget-boolean p2, p0, Lcom/mycompany/app/dialog/DialogDownZip;->a1:Z

    .line 77
    .line 78
    if-nez p2, :cond_8

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_8
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownZip$19;

    .line 82
    .line 83
    move-object v4, p0

    .line 84
    move-object v5, p1

    .line 85
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/dialog/DialogDownZip$19;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;Ljava/util/List;IIILcom/mycompany/app/main/MainDownSvc$DownZipListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v3}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->l1:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->g1:Lcom/mycompany/app/dialog/DialogDownZip$ZipTask;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 13
    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->g1:Lcom/mycompany/app/dialog/DialogDownZip$ZipTask;

    .line 16
    .line 17
    return-void
.end method

.method public final E(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p2, p1, :cond_5

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 19
    .line 20
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 37
    .line 38
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 39
    .line 40
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    sget-object p3, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    sput-object p2, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownZip$15;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownZip$15;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_1
    return v0

    .line 76
    :cond_6
    const/4 p1, 0x0

    .line 77
    return p1
.end method

.method public final F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownZip;->dismiss()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->a1:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownZip;->g1:Lcom/mycompany/app/dialog/DialogDownZip$ZipTask;

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const v1, -0x7f7f80

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const v1, -0x252526

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownZip;->D()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownZip;->dismiss()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineFrame;->setDrawLine(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->i0:Landroidx/core/widget/NestedScrollView;

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->r0:Landroidx/core/widget/NestedScrollView;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->s0:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->B0:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->J0:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->R0:Lcom/mycompany/app/view/MyLineText;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const v1, -0x50506

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/high16 v1, -0x1000000

    .line 71
    .line 72
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->S0:Ljava/lang/String;

    .line 13
    .line 14
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->W0:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->S0:Ljava/lang/String;

    .line 27
    .line 28
    :goto_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->V0:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    sget v1, Lnet/kaki87/soul2/testing/R$string;->not_selected:I

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    const v1, -0xbbcca

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyLineFrame;->setDrawLine(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n1:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    const v3, -0x50506

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/high16 v3, -0x1000000

    .line 95
    .line 96
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->V0:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyLineFrame;->setDrawLine(Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    const-string v1, ".zip"

    .line 124
    .line 125
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->b4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyLineFrame;->setDrawLine(Z)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->V0:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 22
    .line 23
    sget v1, Lnet/kaki87/soul2/testing/R$string;->select_dir:I

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 43
    .line 44
    sget v1, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    array-length v1, v1

    .line 57
    const/16 v2, 0xc8

    .line 58
    .line 59
    if-le v1, v2, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 62
    .line 63
    sget v1, Lnet/kaki87/soul2/testing/R$string;->long_name:I

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    const-string v1, ".zip"

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->b4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 82
    .line 83
    sget v1, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 99
    .line 100
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->T0:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    if-nez v0, :cond_5

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownZip$17;

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-direct {v1, p0, v2}, Lcom/mycompany/app/dialog/DialogDownZip$17;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_1
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownZip;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->a1:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownZip;->D()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->o1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->o1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->p1:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->p1:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownZip$10;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownZip$10;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->t1:Lcom/mycompany/app/view/GlideRequests;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownZip;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->t1:Lcom/mycompany/app/view/GlideRequests;

    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 65
    .line 66
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 74
    .line 75
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 76
    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 83
    .line 84
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 85
    .line 86
    if-eqz v0, :cond_8

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 92
    .line 93
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 94
    .line 95
    if-eqz v0, :cond_9

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->A0:Lcom/mycompany/app/view/MyLineText;

    .line 101
    .line 102
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->N0:Lcom/mycompany/app/view/MyProgressBar;

    .line 103
    .line 104
    if-eqz v0, :cond_a

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->N0:Lcom/mycompany/app/view/MyProgressBar;

    .line 110
    .line 111
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip;->R0:Lcom/mycompany/app/view/MyLineText;

    .line 112
    .line 113
    if-eqz v0, :cond_b

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->R0:Lcom/mycompany/app/view/MyLineText;

    .line 119
    .line 120
    :cond_b
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 121
    .line 122
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 123
    .line 124
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 125
    .line 126
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->d0:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->i0:Landroidx/core/widget/NestedScrollView;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->o0:Landroid/widget/FrameLayout;

    .line 141
    .line 142
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->r0:Landroidx/core/widget/NestedScrollView;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->s0:Landroid/widget/LinearLayout;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 153
    .line 154
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->B0:Landroid/widget/LinearLayout;

    .line 165
    .line 166
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->G0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 179
    .line 180
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->J0:Landroid/widget/LinearLayout;

    .line 181
    .line 182
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 183
    .line 184
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->L0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 185
    .line 186
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->P0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 191
    .line 192
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->S0:Ljava/lang/String;

    .line 195
    .line 196
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->T0:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->U0:Ljava/lang/String;

    .line 199
    .line 200
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->V0:Ljava/lang/String;

    .line 201
    .line 202
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->X0:Ljava/lang/String;

    .line 203
    .line 204
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Y0:Ljava/lang/String;

    .line 205
    .line 206
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->Z0:Ljava/util/List;

    .line 207
    .line 208
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->b1:Ljava/util/ArrayList;

    .line 209
    .line 210
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->h1:Ljava/util/ArrayList;

    .line 211
    .line 212
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->l1:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 213
    .line 214
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->m1:Ljava/util/ArrayList;

    .line 215
    .line 216
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->n1:Ljava/lang/String;

    .line 217
    .line 218
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownZip;->q1:Ljava/lang/String;

    .line 219
    .line 220
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 221
    .line 222
    .line 223
    return-void
.end method
