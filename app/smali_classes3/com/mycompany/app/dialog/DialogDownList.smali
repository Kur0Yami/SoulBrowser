.class public Lcom/mycompany/app/dialog/DialogDownList;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogDownList$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic Q0:I


# instance fields
.field public A0:Z

.field public B0:Lcom/mycompany/app/view/GlideRequests;

.field public C0:Ljava/util/ArrayList;

.field public D0:Ljava/lang/String;

.field public E0:Lcom/mycompany/app/view/MyPopupMenu;

.field public F0:Ljava/lang/String;

.field public G0:Ljava/lang/String;

.field public H0:Ljava/util/regex/Pattern;

.field public I0:Ljava/util/regex/Pattern;

.field public J0:Ljava/util/regex/Pattern;

.field public K0:Ljava/util/regex/Pattern;

.field public L0:Ljava/util/regex/Pattern;

.field public M0:Ljava/lang/String;

.field public final N0:Lcom/bumptech/glide/request/RequestListener;

.field public O0:Ljava/lang/String;

.field public final P0:Lcom/bumptech/glide/request/RequestListener;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Ljava/util/List;

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public h0:Lcom/mycompany/app/view/MyRoundImage;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyEditText;

.field public n0:Landroid/widget/FrameLayout;

.field public o0:Lcom/mycompany/app/view/MyButtonText;

.field public p0:Lcom/mycompany/app/view/MyLineFrame;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Lcom/mycompany/app/view/MyEditText;

.field public s0:Landroid/widget/FrameLayout;

.field public t0:Lcom/mycompany/app/view/MyButtonText;

.field public u0:Landroid/widget/FrameLayout;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public x0:Landroidx/appcompat/widget/AppCompatTextView;

.field public y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownList$17;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownList$17;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->N0:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownList$19;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownList$19;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->P0:Lcom/bumptech/glide/request/RequestListener;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogDownList;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 27
    .line 28
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogDownList;->d0:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownList;->e0:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownList;->f0:Ljava/util/List;

    .line 33
    .line 34
    new-instance p1, Lcom/mycompany/app/dialog/DialogDownList$1;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogDownList$1;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

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
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 107
    .line 108
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

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
    move-result-object v5

    .line 118
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .line 120
    const/4 v15, 0x0

    .line 121
    invoke-direct {v6, v7, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    const/high16 v15, 0x3f800000    # 1.0f

    .line 125
    .line 126
    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    .line 128
    invoke-static {v4, v5, v6, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v5, v6, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 133
    .line 134
    .line 135
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 136
    .line 137
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 141
    .line 142
    invoke-virtual {v5, v15}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 146
    .line 147
    .line 148
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 149
    .line 150
    invoke-virtual {v6, v5, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 151
    .line 152
    .line 153
    const/16 v15, 0x10

    .line 154
    .line 155
    move/from16 v16, v11

    .line 156
    .line 157
    const/high16 v11, 0x41800000    # 16.0f

    .line 158
    .line 159
    invoke-static {v1, v9, v15, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    sget v7, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 164
    .line 165
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(I)V

    .line 166
    .line 167
    .line 168
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    .line 170
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 171
    .line 172
    invoke-direct {v7, v14, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 173
    .line 174
    .line 175
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 176
    .line 177
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    const/4 v3, 0x1

    .line 184
    invoke-static {v1, v9, v15, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 189
    .line 190
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 191
    .line 192
    invoke-direct {v3, v14, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 193
    .line 194
    .line 195
    const v11, 0x800005

    .line 196
    .line 197
    .line 198
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    .line 200
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 201
    .line 202
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    const/high16 v3, 0x41400000    # 12.0f

    .line 209
    .line 210
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    float-to-int v3, v3

    .line 215
    const/high16 v5, 0x42b00000    # 88.0f

    .line 216
    .line 217
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    float-to-int v5, v5

    .line 222
    new-instance v11, Lcom/mycompany/app/view/MyLineFrame;

    .line 223
    .line 224
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 228
    .line 229
    invoke-virtual {v11, v15, v3, v15, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 230
    .line 231
    .line 232
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 233
    .line 234
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 235
    .line 236
    .line 237
    const/4 v15, 0x1

    .line 238
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 239
    .line 240
    .line 241
    const/4 v14, -0x1

    .line 242
    invoke-virtual {v6, v11, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 243
    .line 244
    .line 245
    const/high16 v14, 0x41600000    # 14.0f

    .line 246
    .line 247
    move-object/from16 v18, v7

    .line 248
    .line 249
    invoke-static {v1, v9, v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    const/4 v14, -0x2

    .line 254
    invoke-virtual {v11, v7, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 255
    .line 256
    .line 257
    new-instance v14, Lcom/mycompany/app/view/MyEditText;

    .line 258
    .line 259
    invoke-direct {v14, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    const/4 v9, 0x3

    .line 263
    move-object/from16 v19, v7

    .line 264
    .line 265
    const/16 v7, 0x10

    .line 266
    .line 267
    invoke-static {v14, v7, v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 268
    .line 269
    .line 270
    const/high16 v7, 0x41800000    # 16.0f

    .line 271
    .line 272
    invoke-virtual {v14, v15, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    .line 274
    .line 275
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 276
    .line 277
    const/16 v15, 0x1d

    .line 278
    .line 279
    if-lt v7, v15, :cond_1

    .line 280
    .line 281
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 282
    .line 283
    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 284
    .line 285
    .line 286
    :cond_1
    const v15, -0x7e7e7f

    .line 287
    .line 288
    .line 289
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 290
    .line 291
    .line 292
    const/high16 v15, 0x10000000

    .line 293
    .line 294
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 295
    .line 296
    .line 297
    const/4 v15, 0x0

    .line 298
    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 299
    .line 300
    .line 301
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 302
    .line 303
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 304
    .line 305
    move-object/from16 v22, v10

    .line 306
    .line 307
    const/4 v10, -0x1

    .line 308
    invoke-direct {v15, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 309
    .line 310
    .line 311
    const/16 v9, 0x50

    .line 312
    .line 313
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 314
    .line 315
    const/high16 v10, 0x40c00000    # 6.0f

    .line 316
    .line 317
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    float-to-int v10, v10

    .line 322
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v11, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    .line 327
    .line 328
    new-instance v10, Landroid/widget/FrameLayout;

    .line 329
    .line 330
    invoke-direct {v10, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 331
    .line 332
    .line 333
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 334
    .line 335
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 336
    .line 337
    move-object/from16 v23, v14

    .line 338
    .line 339
    const/4 v14, -0x2

    .line 340
    invoke-direct {v15, v14, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 341
    .line 342
    .line 343
    const/16 v9, 0x55

    .line 344
    .line 345
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    .line 347
    invoke-virtual {v11, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    new-instance v11, Lcom/mycompany/app/view/MyButtonText;

    .line 351
    .line 352
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 356
    .line 357
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 358
    .line 359
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 360
    .line 361
    move-object/from16 v24, v12

    .line 362
    .line 363
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 364
    .line 365
    invoke-virtual {v11, v14, v15, v9, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 366
    .line 367
    .line 368
    const/high16 v9, 0x41600000    # 14.0f

    .line 369
    .line 370
    const/4 v15, 0x1

    .line 371
    invoke-virtual {v11, v15, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 372
    .line 373
    .line 374
    sget v9, Lnet/kaki87/soul2/testing/R$string;->title:I

    .line 375
    .line 376
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 380
    .line 381
    .line 382
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 383
    .line 384
    div-int/lit8 v9, v9, 0x2

    .line 385
    .line 386
    invoke-virtual {v11, v9}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 387
    .line 388
    .line 389
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 390
    .line 391
    const/4 v14, -0x2

    .line 392
    invoke-direct {v9, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 393
    .line 394
    .line 395
    const v12, 0x800013

    .line 396
    .line 397
    .line 398
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 399
    .line 400
    invoke-virtual {v10, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .line 402
    .line 403
    new-instance v9, Lcom/mycompany/app/view/MyLineFrame;

    .line 404
    .line 405
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 406
    .line 407
    .line 408
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 409
    .line 410
    invoke-virtual {v9, v12, v3, v12, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 411
    .line 412
    .line 413
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 414
    .line 415
    invoke-virtual {v9, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 416
    .line 417
    .line 418
    const/4 v15, 0x1

    .line 419
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 420
    .line 421
    .line 422
    const/4 v14, -0x1

    .line 423
    invoke-virtual {v6, v9, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 424
    .line 425
    .line 426
    const/high16 v3, 0x41600000    # 14.0f

    .line 427
    .line 428
    const/4 v5, 0x0

    .line 429
    invoke-static {v1, v5, v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 430
    .line 431
    .line 432
    move-result-object v12

    .line 433
    sget v3, Lnet/kaki87/soul2/testing/R$string;->file_name:I

    .line 434
    .line 435
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(I)V

    .line 436
    .line 437
    .line 438
    const/4 v14, -0x2

    .line 439
    invoke-virtual {v9, v12, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 440
    .line 441
    .line 442
    new-instance v3, Lcom/mycompany/app/view/MyEditText;

    .line 443
    .line 444
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 445
    .line 446
    .line 447
    const/4 v5, 0x3

    .line 448
    const/16 v14, 0x10

    .line 449
    .line 450
    invoke-static {v3, v14, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 451
    .line 452
    .line 453
    const/high16 v5, 0x41800000    # 16.0f

    .line 454
    .line 455
    invoke-virtual {v3, v15, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 456
    .line 457
    .line 458
    const/16 v5, 0x1d

    .line 459
    .line 460
    if-lt v7, v5, :cond_2

    .line 461
    .line 462
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 463
    .line 464
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 465
    .line 466
    .line 467
    :cond_2
    const v5, -0x7e7e7f

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 471
    .line 472
    .line 473
    const/high16 v5, 0x10000000

    .line 474
    .line 475
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 476
    .line 477
    .line 478
    const/4 v15, 0x0

    .line 479
    invoke-virtual {v3, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 480
    .line 481
    .line 482
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 483
    .line 484
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 485
    .line 486
    const/4 v14, -0x1

    .line 487
    invoke-direct {v5, v14, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 488
    .line 489
    .line 490
    const/16 v7, 0x50

    .line 491
    .line 492
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 493
    .line 494
    invoke-virtual {v9, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    .line 496
    .line 497
    new-instance v5, Landroid/widget/FrameLayout;

    .line 498
    .line 499
    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 500
    .line 501
    .line 502
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 503
    .line 504
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 505
    .line 506
    const/4 v15, -0x2

    .line 507
    invoke-direct {v7, v15, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 508
    .line 509
    .line 510
    const/16 v14, 0x55

    .line 511
    .line 512
    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 513
    .line 514
    invoke-virtual {v9, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    .line 516
    .line 517
    new-instance v7, Lcom/mycompany/app/view/MyButtonText;

    .line 518
    .line 519
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 520
    .line 521
    .line 522
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 523
    .line 524
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 525
    .line 526
    move-object/from16 v20, v3

    .line 527
    .line 528
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 529
    .line 530
    move-object/from16 v21, v12

    .line 531
    .line 532
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 533
    .line 534
    invoke-virtual {v7, v14, v15, v3, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 535
    .line 536
    .line 537
    const/high16 v3, 0x41600000    # 14.0f

    .line 538
    .line 539
    const/4 v15, 0x1

    .line 540
    invoke-virtual {v7, v15, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 541
    .line 542
    .line 543
    sget v3, Lnet/kaki87/soul2/testing/R$string;->prefix:I

    .line 544
    .line 545
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v7, v15}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 549
    .line 550
    .line 551
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 552
    .line 553
    div-int/lit8 v3, v3, 0x2

    .line 554
    .line 555
    invoke-virtual {v7, v3}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 556
    .line 557
    .line 558
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 559
    .line 560
    const/4 v14, -0x2

    .line 561
    invoke-direct {v3, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 562
    .line 563
    .line 564
    const v12, 0x800013

    .line 565
    .line 566
    .line 567
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 568
    .line 569
    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    .line 571
    .line 572
    new-instance v3, Landroid/widget/FrameLayout;

    .line 573
    .line 574
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 575
    .line 576
    .line 577
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 578
    .line 579
    invoke-virtual {v3, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 580
    .line 581
    .line 582
    sget v12, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 583
    .line 584
    invoke-virtual {v3, v12}, Landroid/view/View;->setMinimumHeight(I)V

    .line 585
    .line 586
    .line 587
    const/4 v12, -0x1

    .line 588
    invoke-virtual {v6, v3, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 589
    .line 590
    .line 591
    new-instance v6, Landroid/widget/RelativeLayout;

    .line 592
    .line 593
    invoke-direct {v6, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 594
    .line 595
    .line 596
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 597
    .line 598
    invoke-direct {v15, v12, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 599
    .line 600
    .line 601
    const/16 v12, 0x10

    .line 602
    .line 603
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 604
    .line 605
    invoke-virtual {v3, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    .line 607
    .line 608
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 609
    .line 610
    const/4 v15, 0x0

    .line 611
    invoke-direct {v12, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v12, v2}, Landroid/view/View;->setId(I)V

    .line 615
    .line 616
    .line 617
    move-object/from16 v17, v3

    .line 618
    .line 619
    const/4 v3, 0x1

    .line 620
    const/high16 v15, 0x41600000    # 14.0f

    .line 621
    .line 622
    invoke-virtual {v12, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v6, v12, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 626
    .line 627
    .line 628
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 629
    .line 630
    const/4 v3, 0x0

    .line 631
    invoke-direct {v15, v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 632
    .line 633
    .line 634
    move/from16 v3, v16

    .line 635
    .line 636
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 640
    .line 641
    .line 642
    const/high16 v3, 0x41800000    # 16.0f

    .line 643
    .line 644
    const/4 v13, 0x1

    .line 645
    invoke-static {v15, v13, v3, v14, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 646
    .line 647
    .line 648
    move-result-object v14

    .line 649
    const/4 v3, 0x3

    .line 650
    invoke-virtual {v14, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 651
    .line 652
    .line 653
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 654
    .line 655
    iput v2, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 656
    .line 657
    invoke-virtual {v6, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    .line 659
    .line 660
    new-instance v2, Lcom/mycompany/app/view/MyLineLinear;

    .line 661
    .line 662
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 663
    .line 664
    .line 665
    const/4 v3, 0x0

    .line 666
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 670
    .line 671
    .line 672
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 673
    .line 674
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2, v13}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 678
    .line 679
    .line 680
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 681
    .line 682
    const/4 v14, -0x1

    .line 683
    invoke-virtual {v4, v2, v14, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 684
    .line 685
    .line 686
    const/16 v6, 0x11

    .line 687
    .line 688
    const/high16 v3, 0x41800000    # 16.0f

    .line 689
    .line 690
    const/4 v14, 0x0

    .line 691
    invoke-static {v1, v14, v6, v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 696
    .line 697
    const/4 v6, 0x0

    .line 698
    const/4 v14, -0x1

    .line 699
    invoke-direct {v3, v6, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 700
    .line 701
    .line 702
    const/high16 v6, 0x3f800000    # 1.0f

    .line 703
    .line 704
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 705
    .line 706
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    .line 708
    .line 709
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogDownList;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 710
    .line 711
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogDownList;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 712
    .line 713
    move-object/from16 v2, v24

    .line 714
    .line 715
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 716
    .line 717
    move-object/from16 v2, v22

    .line 718
    .line 719
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 720
    .line 721
    move-object/from16 v2, v18

    .line 722
    .line 723
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 724
    .line 725
    move-object/from16 v2, v19

    .line 726
    .line 727
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 728
    .line 729
    move-object/from16 v2, v23

    .line 730
    .line 731
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 732
    .line 733
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogDownList;->n0:Landroid/widget/FrameLayout;

    .line 734
    .line 735
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogDownList;->o0:Lcom/mycompany/app/view/MyButtonText;

    .line 736
    .line 737
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogDownList;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 738
    .line 739
    move-object/from16 v2, v21

    .line 740
    .line 741
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 742
    .line 743
    move-object/from16 v2, v20

    .line 744
    .line 745
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 746
    .line 747
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDownList;->s0:Landroid/widget/FrameLayout;

    .line 748
    .line 749
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogDownList;->t0:Lcom/mycompany/app/view/MyButtonText;

    .line 750
    .line 751
    move-object/from16 v2, v17

    .line 752
    .line 753
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList;->u0:Landroid/widget/FrameLayout;

    .line 754
    .line 755
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogDownList;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 756
    .line 757
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogDownList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 758
    .line 759
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 760
    .line 761
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 762
    .line 763
    if-nez v1, :cond_3

    .line 764
    .line 765
    :goto_0
    return-void

    .line 766
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownList$2;

    .line 767
    .line 768
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownList$2;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 772
    .line 773
    .line 774
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogDownList;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->f0:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz v1, :cond_b

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 34
    .line 35
    sget v0, Lnet/kaki87/soul2/testing/R$string;->select_dir:I

    .line 36
    .line 37
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const v4, -0x252526

    .line 53
    .line 54
    .line 55
    const v5, -0xe19938

    .line 56
    .line 57
    .line 58
    const/16 v6, 0xc8

    .line 59
    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    array-length v3, v3

    .line 69
    if-le v3, v6, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 82
    .line 83
    sget v0, Lnet/kaki87/soul2/testing/R$string;->long_name:I

    .line 84
    .line 85
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogDownList;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :cond_4
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 94
    .line 95
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-nez v7, :cond_6

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    array-length v7, v7

    .line 112
    if-le v7, v6, :cond_5

    .line 113
    .line 114
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 120
    .line 121
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 125
    .line 126
    sget v0, Lnet/kaki87/soul2/testing/R$string;->long_name:I

    .line 127
    .line 128
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_5
    invoke-virtual {p0, v3}, Lcom/mycompany/app/dialog/DialogDownList;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :cond_6
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 137
    .line 138
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 139
    .line 140
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogDownList;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 144
    .line 145
    if-eqz v4, :cond_7

    .line 146
    .line 147
    invoke-interface {v4}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 148
    .line 149
    .line 150
    :cond_7
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0, v4}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 152
    .line 153
    .line 154
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    invoke-virtual {v4, v2}, Landroid/view/View;->setActivated(Z)V

    .line 157
    .line 158
    .line 159
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    sget v5, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 162
    .line 163
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 164
    .line 165
    .line 166
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 169
    .line 170
    if-eqz v5, :cond_8

    .line 171
    .line 172
    const v5, -0x50506

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_8
    const/high16 v5, -0x1000000

    .line 177
    .line 178
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 182
    .line 183
    if-eqz v4, :cond_9

    .line 184
    .line 185
    iput-boolean v2, v4, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 186
    .line 187
    :cond_9
    const/4 v2, 0x0

    .line 188
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 189
    .line 190
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 191
    .line 192
    if-nez v2, :cond_a

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_a
    new-instance v4, Lcom/mycompany/app/dialog/DialogDownList$20;

    .line 196
    .line 197
    invoke-direct {v4, p0, v1, v3, v0}, Lcom/mycompany/app/dialog/DialogDownList$20;-><init>(Lcom/mycompany/app/dialog/DialogDownList;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 201
    .line 202
    .line 203
    :cond_b
    :goto_1
    return-void
.end method


# virtual methods
.method public final D(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

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
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogDownList;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->I0:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    const-string v0, "[\\uD83C-\\uDBFF\\uDC00-\\uDFFF]&&[^()-]+"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->I0:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->I0:Ljava/util/regex/Pattern;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, ""

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList;->J0:Ljava/util/regex/Pattern;

    .line 53
    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    const-string v2, "\\p{InEmoticons}&&[^()-]+"

    .line 57
    .line 58
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList;->J0:Ljava/util/regex/Pattern;

    .line 63
    .line 64
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList;->J0:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList;->K0:Ljava/util/regex/Pattern;

    .line 82
    .line 83
    if-nez v2, :cond_6

    .line 84
    .line 85
    const-string v2, "\\p{So}&&[^()-]+"

    .line 86
    .line 87
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList;->K0:Ljava/util/regex/Pattern;

    .line 92
    .line 93
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList;->K0:Ljava/util/regex/Pattern;

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_7

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->L0:Ljava/util/regex/Pattern;

    .line 111
    .line 112
    if-nez v1, :cond_8

    .line 113
    .line 114
    const-string v1, "\\p{InMiscellaneousSymbolsAndPictographs}&&[^()-]+"

    .line 115
    .line 116
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->L0:Ljava/util/regex/Pattern;

    .line 121
    .line 122
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->L0:Ljava/util/regex/Pattern;

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :goto_0
    const/16 p1, 0xaa

    .line 133
    .line 134
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->e2(ILjava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    :goto_1
    const-string p1, "Image"

    .line 145
    .line 146
    :cond_9
    return-object p1
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

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
    return-object p1

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->H0:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "[\\\\/:*?\"<>|]"

    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->H0:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->H0:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "-"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "UTF-8"

    .line 33
    .line 34
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->Z6(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    return-object p1
.end method

.method public final F(IILandroid/content/Intent;)Z
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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownList$16;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownList$16;-><init>(Lcom/mycompany/app/dialog/DialogDownList;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

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

.method public final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const v2, -0x7f7f80

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const v2, -0x252526

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 50
    .line 51
    :cond_2
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownList;->dismiss()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogDownList;->G()V

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->B0:Lcom/mycompany/app/view/GlideRequests;

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogDownList;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->B0:Lcom/mycompany/app/view/GlideRequests;

    .line 42
    .line 43
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 44
    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 51
    .line 52
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 53
    .line 54
    if-eqz v1, :cond_6

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 60
    .line 61
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 62
    .line 63
    if-eqz v1, :cond_7

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 69
    .line 70
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->o0:Lcom/mycompany/app/view/MyButtonText;

    .line 71
    .line 72
    if-eqz v1, :cond_8

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->o0:Lcom/mycompany/app/view/MyButtonText;

    .line 78
    .line 79
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 80
    .line 81
    if-eqz v1, :cond_9

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 87
    .line 88
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 89
    .line 90
    if-eqz v1, :cond_a

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->r0:Lcom/mycompany/app/view/MyEditText;

    .line 96
    .line 97
    :cond_a
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogDownList;->t0:Lcom/mycompany/app/view/MyButtonText;

    .line 98
    .line 99
    if-eqz v1, :cond_b

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->t0:Lcom/mycompany/app/view/MyButtonText;

    .line 105
    .line 106
    :cond_b
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->d0:Ljava/lang/String;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->e0:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->f0:Ljava/util/List;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->n0:Landroid/widget/FrameLayout;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->s0:Landroid/widget/FrameLayout;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->u0:Landroid/widget/FrameLayout;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->z0:Ljava/lang/String;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->C0:Ljava/util/ArrayList;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->D0:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->F0:Ljava/lang/String;

    .line 145
    .line 146
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->G0:Ljava/lang/String;

    .line 147
    .line 148
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->H0:Ljava/util/regex/Pattern;

    .line 149
    .line 150
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->I0:Ljava/util/regex/Pattern;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->J0:Ljava/util/regex/Pattern;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->K0:Ljava/util/regex/Pattern;

    .line 155
    .line 156
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList;->L0:Ljava/util/regex/Pattern;

    .line 157
    .line 158
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 159
    .line 160
    .line 161
    return-void
.end method
