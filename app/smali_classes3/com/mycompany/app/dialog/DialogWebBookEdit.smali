.class public Lcom/mycompany/app/dialog/DialogWebBookEdit;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;
    }
.end annotation


# static fields
.field public static final synthetic D0:I


# instance fields
.field public A0:Landroid/graphics/Bitmap;

.field public B0:J

.field public C0:Ljava/lang/String;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;

.field public final d0:Z

.field public e0:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public f0:Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h0:Ljava/lang/String;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public final k0:J

.field public l0:Lcom/mycompany/app/view/MyDialogLinear;

.field public m0:Lcom/mycompany/app/view/MyRoundImage;

.field public n0:Lcom/mycompany/app/view/MyEditText;

.field public o0:Landroidx/appcompat/widget/AppCompatTextView;

.field public p0:Lcom/mycompany/app/view/MyEditText;

.field public q0:Lcom/mycompany/app/view/MyLineFrame;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t0:Lcom/mycompany/app/view/MyLineText;

.field public u0:Lcom/mycompany/app/dialog/DialogWebBookList;

.field public v0:Z

.field public w0:Z

.field public final x0:Z

.field public y0:Ljava/lang/String;

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->c0:Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;

    .line 13
    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->d0:Z

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p5, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->N:Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->M:Ljava/lang/String;

    .line 37
    .line 38
    :goto_0
    const/4 p5, 0x1

    .line 39
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->x0:Z

    .line 40
    .line 41
    const/4 p5, 0x0

    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const-string p1, "/"

    .line 51
    .line 52
    :cond_2
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->e0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->f0:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->g0:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->h0:Ljava/lang/String;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 61
    .line 62
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->j0:Ljava/lang/String;

    .line 63
    .line 64
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->k0:J

    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebBookEdit$1;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

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
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 31
    .line 32
    .line 33
    const/4 v7, -0x1

    .line 34
    invoke-virtual {v4, v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    new-instance v8, Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 43
    .line 44
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    .line 46
    .line 47
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 48
    .line 49
    int-to-float v9, v9

    .line 50
    const/high16 v10, 0x40000000    # 2.0f

    .line 51
    .line 52
    div-float/2addr v9, v10

    .line 53
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 54
    .line 55
    .line 56
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .line 58
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 59
    .line 60
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    .line 62
    .line 63
    const v10, 0x800013

    .line 64
    .line 65
    .line 66
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    .line 68
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 69
    .line 70
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    new-instance v9, Lcom/mycompany/app/view/MyEditText;

    .line 77
    .line 78
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    const/16 v11, 0x10

    .line 82
    .line 83
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 87
    .line 88
    .line 89
    const/4 v12, 0x3

    .line 90
    invoke-virtual {v9, v12}, Landroid/view/View;->setTextDirection(I)V

    .line 91
    .line 92
    .line 93
    const/high16 v13, 0x41800000    # 16.0f

    .line 94
    .line 95
    invoke-virtual {v9, v3, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    .line 97
    .line 98
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v15, 0x1d

    .line 101
    .line 102
    if-lt v14, v15, :cond_1

    .line 103
    .line 104
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 105
    .line 106
    invoke-virtual {v9, v15}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 107
    .line 108
    .line 109
    :cond_1
    sget v15, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 110
    .line 111
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setHint(I)V

    .line 112
    .line 113
    .line 114
    const v15, -0x7e7e7f

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 118
    .line 119
    .line 120
    const/high16 v15, 0x10000000

    .line 121
    .line 122
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 123
    .line 124
    .line 125
    const/4 v15, 0x0

    .line 126
    invoke-virtual {v9, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .line 131
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 132
    .line 133
    invoke-direct {v13, v7, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 134
    .line 135
    .line 136
    iput v10, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    .line 138
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 139
    .line 140
    .line 141
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 142
    .line 143
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    .line 148
    .line 149
    const/4 v5, 0x2

    .line 150
    invoke-static {v1, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 155
    .line 156
    const/4 v11, 0x0

    .line 157
    invoke-direct {v10, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .line 159
    .line 160
    const/high16 v11, 0x3f800000    # 1.0f

    .line 161
    .line 162
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 163
    .line 164
    invoke-static {v4, v6, v10, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    const/4 v11, -0x2

    .line 169
    invoke-virtual {v6, v10, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 170
    .line 171
    .line 172
    const/high16 v6, 0x42b00000    # 88.0f

    .line 173
    .line 174
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    float-to-int v6, v6

    .line 179
    const/high16 v13, 0x41400000    # 12.0f

    .line 180
    .line 181
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    float-to-int v13, v13

    .line 186
    new-instance v5, Landroid/widget/FrameLayout;

    .line 187
    .line 188
    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 192
    .line 193
    invoke-virtual {v5, v12, v13, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 197
    .line 198
    .line 199
    const/high16 v6, 0x41600000    # 14.0f

    .line 200
    .line 201
    invoke-static {v1, v15, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    sget v13, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 206
    .line 207
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v12, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 211
    .line 212
    .line 213
    new-instance v13, Lcom/mycompany/app/view/MyEditText;

    .line 214
    .line 215
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    const/4 v6, 0x3

    .line 219
    const/16 v11, 0x10

    .line 220
    .line 221
    invoke-static {v13, v11, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 222
    .line 223
    .line 224
    const/high16 v6, 0x41800000    # 16.0f

    .line 225
    .line 226
    invoke-virtual {v13, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    .line 228
    .line 229
    const/16 v6, 0x1d

    .line 230
    .line 231
    if-lt v14, v6, :cond_2

    .line 232
    .line 233
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 234
    .line 235
    invoke-virtual {v13, v6}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 236
    .line 237
    .line 238
    :cond_2
    const v6, -0x7e7e7f

    .line 239
    .line 240
    .line 241
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setInputType(I)V

    .line 245
    .line 246
    .line 247
    const/high16 v6, 0x10000000

    .line 248
    .line 249
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v13, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 253
    .line 254
    .line 255
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    .line 257
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 258
    .line 259
    invoke-direct {v6, v7, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 260
    .line 261
    .line 262
    const v11, 0x800053

    .line 263
    .line 264
    .line 265
    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 266
    .line 267
    invoke-virtual {v5, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    .line 269
    .line 270
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 271
    .line 272
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 273
    .line 274
    .line 275
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 276
    .line 277
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 278
    .line 279
    .line 280
    sget v6, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 281
    .line 282
    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 283
    .line 284
    .line 285
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 286
    .line 287
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->d(I)V

    .line 288
    .line 289
    .line 290
    const/4 v6, -0x2

    .line 291
    invoke-virtual {v10, v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 292
    .line 293
    .line 294
    new-instance v10, Landroid/widget/RelativeLayout;

    .line 295
    .line 296
    invoke-direct {v10, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 297
    .line 298
    .line 299
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 300
    .line 301
    invoke-direct {v11, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 302
    .line 303
    .line 304
    const/16 v14, 0x10

    .line 305
    .line 306
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 307
    .line 308
    invoke-virtual {v5, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    .line 310
    .line 311
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 312
    .line 313
    invoke-direct {v11, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v11, v2}, Landroid/view/View;->setId(I)V

    .line 317
    .line 318
    .line 319
    const/high16 v14, 0x41600000    # 14.0f

    .line 320
    .line 321
    invoke-virtual {v11, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 322
    .line 323
    .line 324
    sget v14, Lnet/kaki87/soul2/testing/R$string;->save_location:I

    .line 325
    .line 326
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v10, v11, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 330
    .line 331
    .line 332
    const/4 v14, 0x2

    .line 333
    invoke-static {v1, v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 334
    .line 335
    .line 336
    move-result-object v14

    .line 337
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 338
    .line 339
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 340
    .line 341
    .line 342
    const/high16 v15, 0x41800000    # 16.0f

    .line 343
    .line 344
    invoke-virtual {v14, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 345
    .line 346
    .line 347
    const/4 v7, 0x3

    .line 348
    invoke-static {v6, v6, v7, v2}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 353
    .line 354
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 355
    .line 356
    invoke-virtual {v10, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .line 358
    .line 359
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 360
    .line 361
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 362
    .line 363
    .line 364
    const/16 v1, 0x11

    .line 365
    .line 366
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 370
    .line 371
    .line 372
    sget v1, Lnet/kaki87/soul2/testing/R$string;->save:I

    .line 373
    .line 374
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 375
    .line 376
    .line 377
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 378
    .line 379
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 380
    .line 381
    .line 382
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 383
    .line 384
    const/4 v3, -0x1

    .line 385
    invoke-virtual {v4, v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 386
    .line 387
    .line 388
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->l0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 389
    .line 390
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 391
    .line 392
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 393
    .line 394
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 395
    .line 396
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 397
    .line 398
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 399
    .line 400
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 401
    .line 402
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 403
    .line 404
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 405
    .line 406
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 407
    .line 408
    if-nez v1, :cond_3

    .line 409
    .line 410
    :goto_0
    return-void

    .line 411
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookEdit$2;

    .line 412
    .line 413
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$2;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    .line 418
    .line 419
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogWebBookEdit;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 24
    .line 25
    sget p2, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->v0:Z

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 34
    .line 35
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 51
    .line 52
    sget p2, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 53
    .line 54
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->v0:Z

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->y0:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->z0:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->A0:Landroid/graphics/Bitmap;

    .line 66
    .line 67
    iput-wide p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->B0:J

    .line 68
    .line 69
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->C0:Ljava/lang/String;

    .line 70
    .line 71
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->x0:Z

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->E()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    new-instance p1, Lcom/mycompany/app/dialog/DialogWebBookEdit$13;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$13;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->u0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookList;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->u0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->l0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->d0:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->c0:Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;->getIcon()Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->A0:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebBookEdit$14;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$14;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->w0:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->w0:Z

    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    sget p3, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    const v1, -0x70708

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, p3, p2, v0}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    new-instance p2, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput v1, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 53
    .line 54
    iput-object p1, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p1, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 57
    .line 58
    const/4 p1, 0x2

    .line 59
    iput p1, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 60
    .line 61
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 62
    .line 63
    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-boolean v1, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 67
    .line 68
    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 71
    .line 72
    .line 73
    new-instance p3, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 74
    .line 75
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p3, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 79
    .line 80
    new-instance p3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 81
    .line 82
    invoke-direct {p3, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 90
    .line 91
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookEdit$10;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$10;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    const-string v0, "/"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 31
    .line 32
    sget v3, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    sget v0, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 57
    .line 58
    .line 59
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->D()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->l0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->l0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->e0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->f0:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->g0:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->j0:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->h0:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->c0:Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;

    .line 90
    .line 91
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
