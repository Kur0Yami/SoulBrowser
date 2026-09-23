.class public Lcom/mycompany/app/dialog/DialogViewIp;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogViewIp$LocalWebViewClient;,
        Lcom/mycompany/app/dialog/DialogViewIp$WebAppInterface;
    }
.end annotation


# static fields
.field public static final synthetic O0:I


# instance fields
.field public A0:Z

.field public B0:Z

.field public C0:I

.field public D0:Z

.field public E0:Ljava/lang/String;

.field public F0:Ljava/lang/String;

.field public G0:Ljava/lang/String;

.field public H0:Ljava/lang/String;

.field public I0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public J0:Z

.field public K0:Ljava/lang/String;

.field public L0:Z

.field public M0:Ljava/lang/String;

.field public N0:I

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e0:Z

.field public f0:Z

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public final h0:Z

.field public i0:Lcom/mycompany/app/view/MyAdFrame;

.field public j0:Lcom/mycompany/app/view/MyAdNative;

.field public k0:Z

.field public l0:Z

.field public m0:Z

.field public n0:Lcom/mycompany/app/view/MyRoundLinear;

.field public o0:Landroid/widget/FrameLayout;

.field public p0:Lcom/mycompany/app/view/MyRoundFrame;

.field public q0:Lcom/mycompany/app/view/MyEditPure;

.field public r0:Lcom/mycompany/app/view/MyButtonImage;

.field public s0:Lcom/mycompany/app/view/MyButtonImage;

.field public t0:[Lcom/mycompany/app/view/MyButtonText;

.field public u0:[Landroid/widget/LinearLayout;

.field public v0:[Landroid/widget/TextView;

.field public w0:[Landroid/widget/TextView;

.field public x0:Lcom/mycompany/app/view/MyCoverView;

.field public y0:Lcom/mycompany/app/view/MyWebSafe;

.field public z0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogViewIp;->h0:Z

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->c0:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewIp;->H()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->d0:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewIp$1;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogViewIp$1;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogViewIp;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->y0:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->A0:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->A0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->y0:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewIp$21;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewIp$21;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->A0:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->A0:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->y0:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewIp$22;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewIp$22;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogViewIp;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    const/high16 v2, 0x43c80000    # 400.0f

    .line 10
    .line 11
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    float-to-int v2, v2

    .line 16
    iput v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->C0:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogViewIp;->h0:Z

    .line 24
    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, -0x2

    .line 29
    const/4 v8, -0x1

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    new-instance v4, Lcom/mycompany/app/view/MyAdFrame;

    .line 33
    .line 34
    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    const/high16 v9, 0x43aa0000    # 340.0f

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
    invoke-virtual {v4, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v4, v6

    .line 55
    :goto_0
    new-instance v9, Lcom/mycompany/app/view/MyRoundLinear;

    .line 56
    .line 57
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v9, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    const/4 v10, 0x2

    .line 67
    invoke-static {v1, v6, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    invoke-direct {v12, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    const/high16 v14, 0x3f800000    # 1.0f

    .line 78
    .line 79
    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 80
    .line 81
    invoke-virtual {v9, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    new-instance v12, Landroid/widget/FrameLayout;

    .line 85
    .line 86
    invoke-direct {v12, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iget v15, v0, Lcom/mycompany/app/dialog/DialogViewIp;->C0:I

    .line 90
    .line 91
    invoke-virtual {v12, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v11, v12, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 95
    .line 96
    .line 97
    new-instance v11, Landroid/widget/LinearLayout;

    .line 98
    .line 99
    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    .line 104
    .line 105
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 106
    .line 107
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 108
    .line 109
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 110
    .line 111
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 112
    .line 113
    invoke-virtual {v11, v15, v5, v14, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v12, v11, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 117
    .line 118
    .line 119
    new-instance v5, Lcom/mycompany/app/view/MyRoundFrame;

    .line 120
    .line 121
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    .line 126
    invoke-direct {v13, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .line 128
    .line 129
    const/high16 v14, 0x41400000    # 12.0f

    .line 130
    .line 131
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    float-to-int v14, v14

    .line 136
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 137
    .line 138
    invoke-virtual {v11, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    new-instance v13, Lcom/mycompany/app/view/MyEditPure;

    .line 142
    .line 143
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    const/16 v14, 0x10

    .line 147
    .line 148
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 152
    .line 153
    .line 154
    const/4 v14, 0x3

    .line 155
    invoke-virtual {v13, v14}, Landroid/view/View;->setTextDirection(I)V

    .line 156
    .line 157
    .line 158
    const/high16 v14, 0x41800000    # 16.0f

    .line 159
    .line 160
    invoke-virtual {v13, v2, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    .line 162
    .line 163
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 164
    .line 165
    const/16 v14, 0x1d

    .line 166
    .line 167
    if-lt v15, v14, :cond_2

    .line 168
    .line 169
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 170
    .line 171
    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 172
    .line 173
    .line 174
    :cond_2
    const v14, -0x7e7e7f

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setInputType(I)V

    .line 181
    .line 182
    .line 183
    const-string v10, "0123456789."

    .line 184
    .line 185
    invoke-static {v10}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    invoke-virtual {v13, v10}, Landroidx/appcompat/widget/AppCompatEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 190
    .line 191
    .line 192
    const/high16 v10, 0x10000000

    .line 193
    .line 194
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v13, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    .line 199
    .line 200
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    .line 202
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 203
    .line 204
    invoke-direct {v10, v8, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 205
    .line 206
    .line 207
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 208
    .line 209
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 210
    .line 211
    .line 212
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 213
    .line 214
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 215
    .line 216
    add-int/2addr v14, v15

    .line 217
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 224
    .line 225
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 229
    .line 230
    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 231
    .line 232
    .line 233
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 234
    .line 235
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 236
    .line 237
    invoke-direct {v15, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 238
    .line 239
    .line 240
    const v6, 0x800005

    .line 241
    .line 242
    .line 243
    iput v6, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 244
    .line 245
    sget v17, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 246
    .line 247
    sget v18, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 248
    .line 249
    add-int v2, v17, v18

    .line 250
    .line 251
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    const/high16 v2, 0x41600000    # 14.0f

    .line 258
    .line 259
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    float-to-int v15, v15

    .line 264
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 265
    .line 266
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 273
    .line 274
    .line 275
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 276
    .line 277
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 278
    .line 279
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 280
    .line 281
    .line 282
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 283
    .line 284
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 285
    .line 286
    invoke-virtual {v14, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    .line 291
    .line 292
    new-instance v6, Landroid/widget/LinearLayout;

    .line 293
    .line 294
    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 295
    .line 296
    .line 297
    const/4 v14, 0x0

    .line 298
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    .line 300
    .line 301
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 302
    .line 303
    invoke-virtual {v6, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v11, v6, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 307
    .line 308
    .line 309
    const/4 v14, 0x5

    .line 310
    new-array v15, v14, [Lcom/mycompany/app/view/MyButtonText;

    .line 311
    .line 312
    const/4 v7, 0x0

    .line 313
    :goto_1
    if-ge v7, v14, :cond_4

    .line 314
    .line 315
    if-eqz v7, :cond_3

    .line 316
    .line 317
    new-instance v14, Landroid/view/View;

    .line 318
    .line 319
    invoke-direct {v14, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 320
    .line 321
    .line 322
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 323
    .line 324
    move/from16 v20, v7

    .line 325
    .line 326
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 327
    .line 328
    invoke-virtual {v6, v14, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 329
    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_3
    move/from16 v20, v7

    .line 333
    .line 334
    :goto_2
    new-instance v7, Lcom/mycompany/app/view/MyButtonText;

    .line 335
    .line 336
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 337
    .line 338
    .line 339
    const/16 v8, 0x11

    .line 340
    .line 341
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 342
    .line 343
    .line 344
    const/high16 v8, 0x41600000    # 14.0f

    .line 345
    .line 346
    const/4 v14, 0x1

    .line 347
    invoke-virtual {v7, v14, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v14}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7, v14}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 354
    .line 355
    .line 356
    sget v8, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 357
    .line 358
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 359
    .line 360
    .line 361
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 362
    .line 363
    sget v14, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 364
    .line 365
    move-object/from16 v21, v15

    .line 366
    .line 367
    const/4 v15, 0x0

    .line 368
    invoke-direct {v8, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 369
    .line 370
    .line 371
    const/high16 v14, 0x3f800000    # 1.0f

    .line 372
    .line 373
    iput v14, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 374
    .line 375
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    aput-object v7, v21, v20

    .line 379
    .line 380
    add-int/lit8 v7, v20, 0x1

    .line 381
    .line 382
    move-object/from16 v15, v21

    .line 383
    .line 384
    const/4 v14, 0x5

    .line 385
    goto :goto_1

    .line 386
    :cond_4
    move-object/from16 v21, v15

    .line 387
    .line 388
    const/4 v6, 0x4

    .line 389
    new-array v7, v6, [Landroid/widget/LinearLayout;

    .line 390
    .line 391
    new-array v8, v6, [Landroid/widget/TextView;

    .line 392
    .line 393
    new-array v14, v6, [Landroid/widget/TextView;

    .line 394
    .line 395
    const/4 v15, 0x0

    .line 396
    :goto_3
    if-ge v15, v6, :cond_5

    .line 397
    .line 398
    new-instance v6, Landroid/widget/LinearLayout;

    .line 399
    .line 400
    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 401
    .line 402
    .line 403
    move/from16 v19, v15

    .line 404
    .line 405
    const/4 v15, 0x1

    .line 406
    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 407
    .line 408
    .line 409
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 410
    .line 411
    move-object/from16 v20, v14

    .line 412
    .line 413
    const/4 v14, 0x0

    .line 414
    invoke-virtual {v6, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 415
    .line 416
    .line 417
    const/16 v15, 0x8

    .line 418
    .line 419
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 420
    .line 421
    .line 422
    const/4 v14, -0x1

    .line 423
    const/4 v15, -0x2

    .line 424
    invoke-virtual {v11, v6, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 425
    .line 426
    .line 427
    move-object/from16 v18, v7

    .line 428
    .line 429
    move-object/from16 v17, v8

    .line 430
    .line 431
    move-object/from16 v16, v11

    .line 432
    .line 433
    const/4 v8, 0x1

    .line 434
    const/4 v11, 0x0

    .line 435
    const/high16 v14, 0x41600000    # 14.0f

    .line 436
    .line 437
    invoke-static {v1, v11, v8, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    invoke-virtual {v6, v7, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 442
    .line 443
    .line 444
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 445
    .line 446
    invoke-direct {v14, v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 447
    .line 448
    .line 449
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 450
    .line 451
    const/4 v15, 0x0

    .line 452
    invoke-virtual {v14, v15, v11, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 453
    .line 454
    .line 455
    const/high16 v11, 0x41800000    # 16.0f

    .line 456
    .line 457
    invoke-virtual {v14, v8, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 458
    .line 459
    .line 460
    const/4 v8, -0x2

    .line 461
    invoke-virtual {v6, v14, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 462
    .line 463
    .line 464
    aput-object v6, v18, v19

    .line 465
    .line 466
    aput-object v7, v17, v19

    .line 467
    .line 468
    aput-object v14, v20, v19

    .line 469
    .line 470
    add-int/lit8 v6, v19, 0x1

    .line 471
    .line 472
    move v15, v6

    .line 473
    move-object/from16 v11, v16

    .line 474
    .line 475
    move-object/from16 v8, v17

    .line 476
    .line 477
    move-object/from16 v7, v18

    .line 478
    .line 479
    move-object/from16 v14, v20

    .line 480
    .line 481
    const/4 v6, 0x4

    .line 482
    goto :goto_3

    .line 483
    :cond_5
    move-object/from16 v18, v7

    .line 484
    .line 485
    move-object/from16 v17, v8

    .line 486
    .line 487
    move-object/from16 v20, v14

    .line 488
    .line 489
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 490
    .line 491
    if-eqz v6, :cond_6

    .line 492
    .line 493
    const v6, -0x50506

    .line 494
    .line 495
    .line 496
    goto :goto_4

    .line 497
    :cond_6
    const v6, -0xc6b655

    .line 498
    .line 499
    .line 500
    :goto_4
    const/high16 v7, 0x40000000    # 2.0f

    .line 501
    .line 502
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    float-to-int v7, v7

    .line 507
    new-instance v8, Lcom/mycompany/app/view/MyCoverView;

    .line 508
    .line 509
    sget v11, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 510
    .line 511
    invoke-direct {v8, v1, v6, v7, v11}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 512
    .line 513
    .line 514
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 515
    .line 516
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 517
    .line 518
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 519
    .line 520
    .line 521
    const/16 v7, 0x11

    .line 522
    .line 523
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 524
    .line 525
    const/high16 v7, 0x42600000    # 56.0f

    .line 526
    .line 527
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    float-to-int v1, v1

    .line 532
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 533
    .line 534
    invoke-virtual {v12, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    .line 536
    .line 537
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogViewIp;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 538
    .line 539
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogViewIp;->n0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 540
    .line 541
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 542
    .line 543
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogViewIp;->o0:Landroid/widget/FrameLayout;

    .line 544
    .line 545
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogViewIp;->p0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 546
    .line 547
    iput-object v13, v0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 548
    .line 549
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 550
    .line 551
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 552
    .line 553
    move-object/from16 v1, v21

    .line 554
    .line 555
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 556
    .line 557
    move-object/from16 v1, v18

    .line 558
    .line 559
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->u0:[Landroid/widget/LinearLayout;

    .line 560
    .line 561
    move-object/from16 v1, v17

    .line 562
    .line 563
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->v0:[Landroid/widget/TextView;

    .line 564
    .line 565
    move-object/from16 v1, v20

    .line 566
    .line 567
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 568
    .line 569
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogViewIp;->x0:Lcom/mycompany/app/view/MyCoverView;

    .line 570
    .line 571
    const/4 v15, 0x1

    .line 572
    invoke-virtual {v0, v15}, Lcom/mycompany/app/dialog/DialogViewIp;->N(Z)V

    .line 573
    .line 574
    .line 575
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 576
    .line 577
    if-nez v1, :cond_7

    .line 578
    .line 579
    :goto_5
    return-void

    .line 580
    :cond_7
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewIp$2;

    .line 581
    .line 582
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewIp$2;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    .line 587
    .line 588
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogViewIp;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->k0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->l0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->m0:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->m0:Z

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewIp$15;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewIp$15;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public static E(Lcom/mycompany/app/dialog/DialogViewIp;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->x0:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 20
    .line 21
    sget v0, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->i6(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 34
    .line 35
    sget v0, Lnet/kaki87/soul2/testing/R$string;->noti_invalid:I

    .line 36
    .line 37
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogViewIp;->N(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogViewIp;->O(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static F(Lcom/mycompany/app/dialog/DialogViewIp;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->B0:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->B0:Z

    .line 13
    .line 14
    iput p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->N0:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewIp$24;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewIp$24;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static I(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/dialog/DialogViewIp;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string v0, "Korea Telecom"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string p0, "KT"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    const-string v0, "Lg"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const-string v0, "Lgtelecom"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    const-string p0, "LG Telecom"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_4
    const-string v0, " "

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    :goto_0
    return-object p0

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "LG "

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "\"<"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, ">\""

    .line 11
    .line 12
    add-int/lit8 v2, v0, -0x1

    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-gtz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "amp;"

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object p0

    .line 43
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method


# virtual methods
.method public final G()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewIp;->K()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->y0:Lcom/mycompany/app/view/MyWebSafe;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogViewIp;->z0:Z

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->z0:Z

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->y0:Lcom/mycompany/app/view/MyWebSafe;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->y0:Lcom/mycompany/app/view/MyWebSafe;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->n0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->n0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->p0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundFrame;->a()V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->p0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->x0:Lcom/mycompany/app/view/MyCoverView;

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 83
    .line 84
    .line 85
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->x0:Lcom/mycompany/app/view/MyCoverView;

    .line 86
    .line 87
    :cond_8
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 88
    .line 89
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->c0:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->d0:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->o0:Landroid/widget/FrameLayout;

    .line 96
    .line 97
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 98
    .line 99
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 100
    .line 101
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->u0:[Landroid/widget/LinearLayout;

    .line 102
    .line 103
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->v0:[Landroid/widget/TextView;

    .line 104
    .line 105
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 106
    .line 107
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->E0:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->F0:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->G0:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->H0:Ljava/lang/String;

    .line 114
    .line 115
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final H()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->c0:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/pref/PrefZone;->u0:I

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, ".0.0"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    const-string v1, ".64.64"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x2

    .line 31
    if-ne v1, v2, :cond_2

    .line 32
    .line 33
    const-string v1, ".128.128"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v2, 0x3

    .line 40
    if-ne v1, v2, :cond_3

    .line 41
    .line 42
    const-string v1, ".192.192"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const-string v1, ".255.255"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public final K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->I0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->I0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final L(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :cond_1
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p1, :cond_5

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyAdNative;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

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
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogViewIp;->L(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 25
    .line 26
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const v1, -0xdededf

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, -0x1

    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->j0:Lcom/mycompany/app/view/MyAdNative;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyAdNative;->setDarkMode(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogViewIp;->L(Z)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method

.method public final N(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x5

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    move p1, v1

    .line 11
    :goto_0
    if-ge p1, v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 14
    .line 15
    aget-object v2, v2, p1

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonText;->setClickable(Z)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->x0:Lcom/mycompany/app/view/MyCoverView;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 45
    if-ge v1, v0, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 48
    .line 49
    aget-object v2, v2, v1

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyButtonText;->setClickable(Z)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setClickable(Z)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->x0:Lcom/mycompany/app/view/MyCoverView;

    .line 73
    .line 74
    const/16 v0, 0x8

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->y0:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp;->d0:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->f0:Z

    .line 10
    .line 11
    const-string v0, "(function(){var ele=document.querySelector(\"input[type=\'text\']\");if(ele){ele.value=\'"

    .line 12
    .line 13
    const-string v1, "\';var el2=document.querySelector(\"button[type=\'submit\']\");if(el2){el2.onclick=\'\';el2.click();}}})();"

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->y0:Lcom/mycompany/app/view/MyWebSafe;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewIp$23;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewIp$23;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v1, 0x3e8

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final P()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_4

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x5

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    :goto_0
    if-ge v3, v2, :cond_4

    .line 15
    .line 16
    sget v0, Lcom/mycompany/app/pref/PrefZone;->u0:I

    .line 17
    .line 18
    if-ne v3, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 21
    .line 22
    aget-object v0, v0, v3

    .line 23
    .line 24
    const v5, -0x50506

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 31
    .line 32
    aget-object v0, v0, v3

    .line 33
    .line 34
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 35
    .line 36
    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 45
    .line 46
    aget-object v0, v0, v3

    .line 47
    .line 48
    const v5, -0x3e3e3f

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 55
    .line 56
    aget-object v0, v0, v3

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_2
    if-ge v3, v2, :cond_4

    .line 65
    .line 66
    sget v0, Lcom/mycompany/app/pref/PrefZone;->u0:I

    .line 67
    .line 68
    if-ne v3, v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 71
    .line 72
    aget-object v0, v0, v3

    .line 73
    .line 74
    const/high16 v5, -0x1000000

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 80
    .line 81
    aget-object v0, v0, v3

    .line 82
    .line 83
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 84
    .line 85
    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 94
    .line 95
    aget-object v0, v0, v3

    .line 96
    .line 97
    const v5, -0x9e9e9f

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 104
    .line 105
    aget-object v0, v0, v3

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    .line 109
    .line 110
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    :goto_4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->J0:Z

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
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->J0:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewIp;->G()V

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
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewIp$17;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewIp$17;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
