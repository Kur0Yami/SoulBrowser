.class public Lcom/mycompany/app/dialog/DialogFileDelete;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;,
        Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;,
        Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;,
        Lcom/mycompany/app/dialog/DialogFileDelete$CopyInfo;
    }
.end annotation


# instance fields
.field public A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

.field public B0:Lcom/mycompany/app/dialog/DialogFileDelete$EventHandler;

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:J

.field public G0:J

.field public H0:Ljava/lang/String;

.field public I0:Ljava/lang/String;

.field public J0:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public K0:Z

.field public L0:Z

.field public a0:Landroid/content/Context;

.field public final b0:I

.field public c0:Ljava/util/List;

.field public final d0:I

.field public final e0:I

.field public f0:Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public h0:Lcom/mycompany/app/view/MyRoundImage;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Lcom/mycompany/app/view/MyEditText;

.field public k0:Lcom/mycompany/app/view/MyLineFrame;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyProgressBar;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Landroidx/appcompat/widget/AppCompatTextView;

.field public p0:Lcom/mycompany/app/view/MyLineFrame;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t0:Landroidx/appcompat/widget/AppCompatTextView;

.field public u0:Landroidx/appcompat/widget/AppCompatTextView;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public x0:Landroidx/appcompat/widget/AppCompatTextView;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:Lcom/mycompany/app/view/MyLineText;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_5

    .line 5
    .line 6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

    .line 18
    .line 19
    iput p2, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->b0:I

    .line 20
    .line 21
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->c0:Ljava/util/List;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->f0:Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    const p3, -0x70708

    .line 27
    .line 28
    .line 29
    if-ne p2, p1, :cond_1

    .line 30
    .line 31
    iput p3, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->d0:I

    .line 32
    .line 33
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_library_black_24:I

    .line 34
    .line 35
    iput p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->e0:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x2

    .line 39
    if-ne p2, p1, :cond_2

    .line 40
    .line 41
    iput p3, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->d0:I

    .line 42
    .line 43
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_as_pdf_black_24:I

    .line 44
    .line 45
    iput p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->e0:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p1, 0x3

    .line 49
    if-ne p2, p1, :cond_3

    .line 50
    .line 51
    iput p3, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->d0:I

    .line 52
    .line 53
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_zip_black_24:I

    .line 54
    .line 55
    iput p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->e0:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iput p3, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->d0:I

    .line 59
    .line 60
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_black_24:I

    .line 61
    .line 62
    iput p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->e0:I

    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 65
    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogFileDelete$1;

    .line 70
    .line 71
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogFileDelete$1;-><init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_1
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogFileDelete;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

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
    const/high16 v4, 0x42900000    # 72.0f

    .line 15
    .line 16
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    float-to-int v4, v4

    .line 21
    new-instance v5, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const/4 v6, -0x1

    .line 27
    invoke-virtual {v3, v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 31
    .line 32
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    .line 39
    .line 40
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 41
    .line 42
    int-to-float v8, v8

    .line 43
    const/high16 v9, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr v8, v9

    .line 46
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 47
    .line 48
    .line 49
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    .line 51
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 52
    .line 53
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    const v9, 0x800013

    .line 57
    .line 58
    .line 59
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    .line 61
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 62
    .line 63
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x2

    .line 71
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 76
    .line 77
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78
    .line 79
    .line 80
    const/high16 v11, 0x41800000    # 16.0f

    .line 81
    .line 82
    invoke-virtual {v10, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 83
    .line 84
    .line 85
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .line 87
    const/4 v13, -0x2

    .line 88
    invoke-direct {v12, v6, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .line 90
    .line 91
    const/16 v14, 0x10

    .line 92
    .line 93
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    .line 95
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 96
    .line 97
    .line 98
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 99
    .line 100
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    new-instance v5, Lcom/mycompany/app/view/MyEditText;

    .line 107
    .line 108
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 115
    .line 116
    .line 117
    const/4 v12, 0x3

    .line 118
    invoke-virtual {v5, v12}, Landroid/view/View;->setTextDirection(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v2, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 122
    .line 123
    .line 124
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    const/16 v15, 0x1d

    .line 127
    .line 128
    if-lt v14, v15, :cond_1

    .line 129
    .line 130
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 131
    .line 132
    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 133
    .line 134
    .line 135
    :cond_1
    const/high16 v14, 0x10000000

    .line 136
    .line 137
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    .line 142
    .line 143
    const/4 v14, 0x0

    .line 144
    invoke-virtual {v5, v14}, Lcom/mycompany/app/view/MyEditText;->b(I)V

    .line 145
    .line 146
    .line 147
    const/16 v15, 0x8

    .line 148
    .line 149
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    .line 154
    invoke-direct {v12, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    .line 156
    .line 157
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 158
    .line 159
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 160
    .line 161
    .line 162
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 163
    .line 164
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .line 169
    .line 170
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 171
    .line 172
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 176
    .line 177
    invoke-virtual {v4, v12}, Lcom/mycompany/app/view/MyLineFrame;->d(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .line 185
    invoke-direct {v12, v6, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    const/high16 v15, 0x3f800000    # 1.0f

    .line 189
    .line 190
    iput v15, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 191
    .line 192
    invoke-virtual {v3, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    .line 194
    .line 195
    new-instance v12, Landroidx/core/widget/NestedScrollView;

    .line 196
    .line 197
    invoke-direct {v12, v1, v8}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12, v9}, Landroid/view/View;->setOverScrollMode(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v12, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 204
    .line 205
    .line 206
    new-instance v9, Landroid/widget/LinearLayout;

    .line 207
    .line 208
    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 212
    .line 213
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 214
    .line 215
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 216
    .line 217
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 218
    .line 219
    invoke-virtual {v9, v15, v8, v11, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v12, v9, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 226
    .line 227
    .line 228
    new-instance v8, Landroid/widget/FrameLayout;

    .line 229
    .line 230
    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 231
    .line 232
    .line 233
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 234
    .line 235
    const/4 v12, 0x0

    .line 236
    invoke-virtual {v8, v12, v11, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9, v8, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 240
    .line 241
    .line 242
    const/high16 v11, 0x41800000    # 16.0f

    .line 243
    .line 244
    const/4 v12, 0x0

    .line 245
    invoke-static {v1, v12, v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    sget v15, Lnet/kaki87/soul2/testing/R$string;->total:I

    .line 250
    .line 251
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8, v14, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 255
    .line 256
    .line 257
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 258
    .line 259
    invoke-direct {v15, v1, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    .line 261
    .line 262
    const/4 v12, 0x3

    .line 263
    invoke-virtual {v15, v12}, Landroid/view/View;->setTextDirection(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v15, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 267
    .line 268
    .line 269
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 270
    .line 271
    invoke-direct {v11, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    .line 273
    .line 274
    const v12, 0x800005

    .line 275
    .line 276
    .line 277
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 278
    .line 279
    invoke-virtual {v8, v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    .line 281
    .line 282
    new-instance v8, Lcom/mycompany/app/view/MyProgressBar;

    .line 283
    .line 284
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 285
    .line 286
    .line 287
    const/high16 v11, 0x41400000    # 12.0f

    .line 288
    .line 289
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    float-to-int v11, v11

    .line 294
    invoke-virtual {v9, v8, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 295
    .line 296
    .line 297
    new-instance v11, Landroid/widget/FrameLayout;

    .line 298
    .line 299
    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 300
    .line 301
    .line 302
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    invoke-virtual {v11, v2, v12, v2, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v9, v11, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 309
    .line 310
    .line 311
    const/high16 v2, 0x41800000    # 16.0f

    .line 312
    .line 313
    const/4 v6, 0x1

    .line 314
    const/4 v12, 0x0

    .line 315
    invoke-static {v1, v12, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 316
    .line 317
    .line 318
    move-result-object v13

    .line 319
    sget v2, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 320
    .line 321
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

    .line 322
    .line 323
    .line 324
    const/4 v2, -0x2

    .line 325
    invoke-virtual {v11, v13, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 326
    .line 327
    .line 328
    move-object/from16 v22, v13

    .line 329
    .line 330
    const/high16 v2, 0x41800000    # 16.0f

    .line 331
    .line 332
    invoke-static {v1, v12, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 333
    .line 334
    .line 335
    move-result-object v13

    .line 336
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 337
    .line 338
    const/4 v6, -0x2

    .line 339
    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 340
    .line 341
    .line 342
    const v12, 0x800005

    .line 343
    .line 344
    .line 345
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 346
    .line 347
    invoke-virtual {v11, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    new-instance v2, Landroid/widget/FrameLayout;

    .line 351
    .line 352
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 356
    .line 357
    const/4 v12, 0x0

    .line 358
    invoke-virtual {v2, v12, v11, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 359
    .line 360
    .line 361
    const/4 v11, -0x1

    .line 362
    invoke-virtual {v9, v2, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 363
    .line 364
    .line 365
    const/4 v9, 0x1

    .line 366
    const/high16 v11, 0x41800000    # 16.0f

    .line 367
    .line 368
    const/4 v12, 0x0

    .line 369
    invoke-static {v1, v12, v9, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    sget v9, Lnet/kaki87/soul2/testing/R$string;->estimated:I

    .line 374
    .line 375
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 376
    .line 377
    .line 378
    const/4 v9, -0x2

    .line 379
    invoke-virtual {v2, v6, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 380
    .line 381
    .line 382
    move-object/from16 v23, v6

    .line 383
    .line 384
    const/4 v9, 0x1

    .line 385
    invoke-static {v1, v12, v9, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 390
    .line 391
    const/4 v11, -0x2

    .line 392
    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 393
    .line 394
    .line 395
    const v12, 0x800005

    .line 396
    .line 397
    .line 398
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 399
    .line 400
    invoke-virtual {v2, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .line 402
    .line 403
    new-instance v2, Lcom/mycompany/app/view/MyLineFrame;

    .line 404
    .line 405
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 406
    .line 407
    .line 408
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 409
    .line 410
    invoke-virtual {v2, v9}, Lcom/mycompany/app/view/MyLineFrame;->d(I)V

    .line 411
    .line 412
    .line 413
    const/16 v9, 0x8

    .line 414
    .line 415
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 416
    .line 417
    .line 418
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 419
    .line 420
    const/4 v11, -0x1

    .line 421
    const/4 v12, 0x0

    .line 422
    invoke-direct {v9, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 423
    .line 424
    .line 425
    const/high16 v12, 0x3f800000    # 1.0f

    .line 426
    .line 427
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 428
    .line 429
    invoke-virtual {v3, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    .line 431
    .line 432
    new-instance v9, Landroidx/core/widget/NestedScrollView;

    .line 433
    .line 434
    const/4 v12, 0x0

    .line 435
    invoke-direct {v9, v1, v12}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 436
    .line 437
    .line 438
    const/4 v12, 0x2

    .line 439
    invoke-virtual {v9, v12}, Landroid/view/View;->setOverScrollMode(I)V

    .line 440
    .line 441
    .line 442
    const/4 v12, -0x2

    .line 443
    invoke-virtual {v2, v9, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 444
    .line 445
    .line 446
    new-instance v11, Landroid/widget/LinearLayout;

    .line 447
    .line 448
    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 449
    .line 450
    .line 451
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 452
    .line 453
    move-object/from16 v16, v14

    .line 454
    .line 455
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 456
    .line 457
    move-object/from16 v17, v2

    .line 458
    .line 459
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 460
    .line 461
    move-object/from16 v18, v6

    .line 462
    .line 463
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 464
    .line 465
    invoke-virtual {v11, v12, v14, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 466
    .line 467
    .line 468
    const/4 v6, 0x1

    .line 469
    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 470
    .line 471
    .line 472
    const/4 v2, -0x1

    .line 473
    const/4 v12, -0x2

    .line 474
    invoke-virtual {v9, v11, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 475
    .line 476
    .line 477
    new-instance v9, Landroid/widget/FrameLayout;

    .line 478
    .line 479
    invoke-direct {v9, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 480
    .line 481
    .line 482
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 483
    .line 484
    const/4 v6, 0x0

    .line 485
    invoke-virtual {v9, v6, v14, v6, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v11, v9, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 489
    .line 490
    .line 491
    const/high16 v2, 0x41800000    # 16.0f

    .line 492
    .line 493
    const/4 v6, 0x0

    .line 494
    const/4 v14, 0x1

    .line 495
    invoke-static {v1, v6, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 496
    .line 497
    .line 498
    move-result-object v12

    .line 499
    sget v2, Lnet/kaki87/soul2/testing/R$string;->total:I

    .line 500
    .line 501
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    .line 502
    .line 503
    .line 504
    const/4 v2, -0x2

    .line 505
    invoke-virtual {v9, v12, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 506
    .line 507
    .line 508
    move-object/from16 v19, v12

    .line 509
    .line 510
    const/high16 v2, 0x41800000    # 16.0f

    .line 511
    .line 512
    invoke-static {v1, v6, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 513
    .line 514
    .line 515
    move-result-object v12

    .line 516
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 517
    .line 518
    const/4 v6, -0x2

    .line 519
    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 520
    .line 521
    .line 522
    const v14, 0x800005

    .line 523
    .line 524
    .line 525
    iput v14, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 526
    .line 527
    invoke-virtual {v9, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    .line 529
    .line 530
    new-instance v2, Landroid/widget/FrameLayout;

    .line 531
    .line 532
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 533
    .line 534
    .line 535
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 536
    .line 537
    const/4 v14, 0x0

    .line 538
    invoke-virtual {v2, v14, v9, v14, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 539
    .line 540
    .line 541
    const/4 v9, -0x1

    .line 542
    invoke-virtual {v11, v2, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 543
    .line 544
    .line 545
    move-object/from16 v20, v12

    .line 546
    .line 547
    const/4 v6, 0x1

    .line 548
    const/high16 v9, 0x41800000    # 16.0f

    .line 549
    .line 550
    const/4 v14, 0x0

    .line 551
    invoke-static {v1, v14, v6, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 552
    .line 553
    .line 554
    move-result-object v12

    .line 555
    sget v6, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 556
    .line 557
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(I)V

    .line 558
    .line 559
    .line 560
    const/4 v6, -0x2

    .line 561
    invoke-virtual {v2, v12, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 562
    .line 563
    .line 564
    move-object/from16 v21, v12

    .line 565
    .line 566
    const/4 v6, 0x1

    .line 567
    invoke-static {v1, v14, v6, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 568
    .line 569
    .line 570
    move-result-object v12

    .line 571
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 572
    .line 573
    const/4 v9, -0x2

    .line 574
    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 575
    .line 576
    .line 577
    const v14, 0x800005

    .line 578
    .line 579
    .line 580
    iput v14, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 581
    .line 582
    invoke-virtual {v2, v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    .line 584
    .line 585
    new-instance v2, Landroid/widget/FrameLayout;

    .line 586
    .line 587
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 588
    .line 589
    .line 590
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 591
    .line 592
    const/4 v14, 0x0

    .line 593
    invoke-virtual {v2, v14, v6, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 594
    .line 595
    .line 596
    const/4 v6, -0x1

    .line 597
    invoke-virtual {v11, v2, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 598
    .line 599
    .line 600
    const/4 v6, 0x0

    .line 601
    const/high16 v11, 0x41800000    # 16.0f

    .line 602
    .line 603
    const/4 v14, 0x1

    .line 604
    invoke-static {v1, v6, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 605
    .line 606
    .line 607
    move-result-object v9

    .line 608
    sget v6, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 609
    .line 610
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(I)V

    .line 611
    .line 612
    .line 613
    const/4 v6, -0x2

    .line 614
    invoke-virtual {v2, v9, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 615
    .line 616
    .line 617
    const/4 v6, 0x0

    .line 618
    invoke-static {v1, v6, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 619
    .line 620
    .line 621
    move-result-object v6

    .line 622
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 623
    .line 624
    const/4 v14, -0x2

    .line 625
    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 626
    .line 627
    .line 628
    const v14, 0x800005

    .line 629
    .line 630
    .line 631
    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 632
    .line 633
    invoke-virtual {v2, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    .line 635
    .line 636
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 637
    .line 638
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 639
    .line 640
    .line 641
    const/16 v1, 0x11

    .line 642
    .line 643
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 644
    .line 645
    .line 646
    const/high16 v11, 0x41800000    # 16.0f

    .line 647
    .line 648
    const/4 v14, 0x1

    .line 649
    invoke-virtual {v2, v14, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 650
    .line 651
    .line 652
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 653
    .line 654
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 655
    .line 656
    .line 657
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 658
    .line 659
    const/4 v11, -0x1

    .line 660
    invoke-virtual {v3, v2, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 661
    .line 662
    .line 663
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 664
    .line 665
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 666
    .line 667
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 668
    .line 669
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 670
    .line 671
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 672
    .line 673
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 674
    .line 675
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 676
    .line 677
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 678
    .line 679
    move-object/from16 v1, v18

    .line 680
    .line 681
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 682
    .line 683
    move-object/from16 v1, v17

    .line 684
    .line 685
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 686
    .line 687
    move-object/from16 v1, v20

    .line 688
    .line 689
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 690
    .line 691
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 692
    .line 693
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 694
    .line 695
    move-object/from16 v1, v16

    .line 696
    .line 697
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 698
    .line 699
    move-object/from16 v1, v22

    .line 700
    .line 701
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 702
    .line 703
    move-object/from16 v1, v23

    .line 704
    .line 705
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 706
    .line 707
    move-object/from16 v1, v19

    .line 708
    .line 709
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 710
    .line 711
    move-object/from16 v1, v21

    .line 712
    .line 713
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 714
    .line 715
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 716
    .line 717
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 718
    .line 719
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 720
    .line 721
    if-nez v1, :cond_2

    .line 722
    .line 723
    :goto_0
    return-void

    .line 724
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogFileDelete$2;

    .line 725
    .line 726
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogFileDelete$2;-><init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 730
    .line 731
    .line 732
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogFileDelete;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final D(Ljava/util/List;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->K0:Z

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->J0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    if-nez p1, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    const/4 v0, 0x0

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->J0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->J0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->J0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 46
    .line 47
    iget v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 48
    .line 49
    iput v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 50
    .line 51
    iget-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 54
    .line 55
    iget-wide v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 56
    .line 57
    iput-wide v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 58
    .line 59
    iget-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 62
    .line 63
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 64
    .line 65
    if-ne v2, v1, :cond_4

    .line 66
    .line 67
    iget v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 68
    .line 69
    iput v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 70
    .line 71
    iget v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 72
    .line 73
    iput v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 74
    .line 75
    iget-object v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->d0:I

    .line 81
    .line 82
    iput v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 83
    .line 84
    iget v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->e0:I

    .line 85
    .line 86
    iput v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->J0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 94
    .line 95
    iget v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

    .line 101
    .line 102
    sget v3, Lnet/kaki87/soul2/testing/R$string;->items:I

    .line 103
    .line 104
    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 109
    .line 110
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->J0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 111
    .line 112
    :goto_1
    if-nez v0, :cond_5

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 116
    .line 117
    iget v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 118
    .line 119
    iget v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 120
    .line 121
    invoke-virtual {p1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    iget-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget p1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 132
    .line 133
    if-ne p1, v1, :cond_7

    .line 134
    .line 135
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->K0:Z

    .line 136
    .line 137
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 138
    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    iget-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->H0:Ljava/lang/String;

    .line 144
    .line 145
    iget v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 146
    .line 147
    const/4 v4, 0x2

    .line 148
    if-eq v3, v1, :cond_6

    .line 149
    .line 150
    if-eq v3, v4, :cond_6

    .line 151
    .line 152
    const/4 v5, 0x3

    .line 153
    if-eq v3, v5, :cond_6

    .line 154
    .line 155
    const/4 v5, 0x4

    .line 156
    if-eq v3, v5, :cond_6

    .line 157
    .line 158
    const/4 v5, 0x5

    .line 159
    if-eq v3, v5, :cond_6

    .line 160
    .line 161
    const/4 v5, 0x6

    .line 162
    if-eq v3, v5, :cond_6

    .line 163
    .line 164
    const/16 v5, 0xb

    .line 165
    .line 166
    if-eq v3, v5, :cond_6

    .line 167
    .line 168
    iget v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 169
    .line 170
    iget v0, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 171
    .line 172
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_6
    new-instance p1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 177
    .line 178
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    iput v3, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 182
    .line 183
    iput-object v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 188
    .line 189
    iput v4, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 190
    .line 191
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 192
    .line 193
    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-boolean v1, v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 197
    .line 198
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 201
    .line 202
    .line 203
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 204
    .line 205
    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 213
    .line 214
    new-instance v4, Lcom/mycompany/app/dialog/DialogFileDelete$6;

    .line 215
    .line 216
    invoke-direct {v4, p0, v0, p1}, Lcom/mycompany/app/dialog/DialogFileDelete$6;-><init>(Lcom/mycompany/app/dialog/DialogFileDelete;Lcom/mycompany/app/main/MainItem$ChildItem;Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 220
    .line 221
    .line 222
    :cond_7
    :goto_2
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogFileDelete;->C()V

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->A0:Lcom/mycompany/app/dialog/DialogFileDelete$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->k0:Lcom/mycompany/app/view/MyLineFrame;

    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 63
    .line 64
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 72
    .line 73
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 81
    .line 82
    :cond_8
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->c0:Ljava/util/List;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->f0:Lcom/mycompany/app/dialog/DialogFileDelete$FileDeleteListener;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->H0:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->I0:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete;->J0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 119
    .line 120
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 121
    .line 122
    .line 123
    return-void
.end method
