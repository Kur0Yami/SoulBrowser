.class public Lcom/mycompany/app/dialog/DialogTransLang;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;,
        Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;,
        Lcom/mycompany/app/dialog/DialogTransLang$LocalWebViewClient;,
        Lcom/mycompany/app/dialog/DialogTransLang$WebAppInterface;,
        Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic J0:I


# instance fields
.field public A0:Lcom/mycompany/app/view/MyManagerLinear;

.field public B0:Z

.field public C0:Z

.field public D0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public E0:Z

.field public F0:Z

.field public G0:Ljava/lang/String;

.field public H0:Ljava/lang/String;

.field public I0:Ljava/lang/String;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;

.field public d0:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

.field public final e0:Z

.field public final f0:I

.field public g0:Ljava/lang/String;

.field public h0:I

.field public i0:I

.field public final j0:Z

.field public k0:Lcom/mycompany/app/view/MyDialogRelative;

.field public l0:Lcom/mycompany/app/view/MyEditPure;

.field public m0:Lcom/mycompany/app/view/MyButtonImage;

.field public n0:Lcom/mycompany/app/view/MyRoundView;

.field public o0:Lcom/mycompany/app/view/MyButtonImage;

.field public p0:Lcom/mycompany/app/view/MyRecyclerView;

.field public q0:Lcom/mycompany/app/view/MyLineText;

.field public r0:Lcom/mycompany/app/view/MyWebSafe;

.field public s0:Z

.field public t0:Z

.field public u0:Z

.field public v0:Ljava/lang/String;

.field public w0:Ljava/lang/String;

.field public x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

.field public y0:Ljava/util/ArrayList;

.field public z0:Lcom/mycompany/app/main/MainLangAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogTransLang$TransLangListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogTransLang;->c0:Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogTransLang;->e0:Z

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/mycompany/app/pref/PrefZtwo;->P:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 22
    .line 23
    :goto_0
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->g0:Ljava/lang/String;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->h0:I

    .line 27
    .line 28
    iput p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->i0:I

    .line 29
    .line 30
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->j0:Z

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->f0:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 p1, 0x2

    .line 43
    iput p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->f0:I

    .line 44
    .line 45
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogTransLang$1;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTransLang$1;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogTransLang;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

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
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->u0:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->u0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogTransLang$13;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogTransLang$13;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

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
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->u0:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->u0:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/dialog/DialogTransLang$14;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogTransLang$14;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->item_frame_view:I

    .line 10
    .line 11
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_trans_view:I

    .line 12
    .line 13
    new-instance v4, Lcom/mycompany/app/view/MyDialogRelative;

    .line 14
    .line 15
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 19
    .line 20
    invoke-direct {v5, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sget v6, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 24
    .line 25
    const/4 v7, -0x1

    .line 26
    invoke-virtual {v4, v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 27
    .line 28
    .line 29
    new-instance v6, Lcom/mycompany/app/view/MyRoundView;

    .line 30
    .line 31
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyRoundView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 35
    .line 36
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    .line 38
    .line 39
    new-instance v8, Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    invoke-direct {v8, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v2}, Landroid/view/View;->setId(I)V

    .line 45
    .line 46
    .line 47
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 48
    .line 49
    invoke-virtual {v8, v9}, Landroid/view/View;->setMinimumWidth(I)V

    .line 50
    .line 51
    .line 52
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .line 54
    const/4 v10, -0x2

    .line 55
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 56
    .line 57
    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    const/16 v10, 0x15

    .line 61
    .line 62
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    .line 64
    .line 65
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 66
    .line 67
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v3}, Landroid/view/View;->setId(I)V

    .line 79
    .line 80
    .line 81
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 82
    .line 83
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 92
    .line 93
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 94
    .line 95
    invoke-virtual {v8, v9, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 96
    .line 97
    .line 98
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 99
    .line 100
    if-eqz v9, :cond_1

    .line 101
    .line 102
    const v9, -0x50506

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const v9, -0xc6b655

    .line 107
    .line 108
    .line 109
    :goto_0
    const/high16 v13, 0x40000000    # 2.0f

    .line 110
    .line 111
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    float-to-int v13, v13

    .line 116
    new-instance v14, Lcom/mycompany/app/view/MyCoverView;

    .line 117
    .line 118
    sget v15, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 119
    .line 120
    invoke-direct {v14, v1, v9, v13, v15}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v12}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 127
    .line 128
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 129
    .line 130
    invoke-virtual {v8, v14, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 131
    .line 132
    .line 133
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    .line 146
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 147
    .line 148
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 149
    .line 150
    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .line 152
    .line 153
    const/16 v14, 0x11

    .line 154
    .line 155
    invoke-virtual {v13, v14, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 162
    .line 163
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 173
    .line 174
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 175
    .line 176
    invoke-virtual {v8, v3, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 177
    .line 178
    .line 179
    new-instance v8, Lcom/mycompany/app/view/MyEditPure;

    .line 180
    .line 181
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    const/16 v11, 0x10

    .line 185
    .line 186
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    .line 188
    .line 189
    const/4 v13, 0x1

    .line 190
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 191
    .line 192
    .line 193
    const/4 v15, 0x3

    .line 194
    invoke-virtual {v8, v15}, Landroid/view/View;->setTextDirection(I)V

    .line 195
    .line 196
    .line 197
    const/high16 v15, 0x41800000    # 16.0f

    .line 198
    .line 199
    invoke-virtual {v8, v13, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 200
    .line 201
    .line 202
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .line 204
    const/16 v14, 0x1d

    .line 205
    .line 206
    if-lt v15, v14, :cond_2

    .line 207
    .line 208
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 209
    .line 210
    invoke-virtual {v8, v14}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 211
    .line 212
    .line 213
    :cond_2
    sget v14, Lnet/kaki87/soul2/testing/R$string;->search_url:I

    .line 214
    .line 215
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setHint(I)V

    .line 216
    .line 217
    .line 218
    const v14, -0x7e7e7f

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 222
    .line 223
    .line 224
    const v14, 0x10000003

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 231
    .line 232
    .line 233
    const/4 v14, 0x0

    .line 234
    invoke-virtual {v8, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    .line 236
    .line 237
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 238
    .line 239
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 240
    .line 241
    invoke-direct {v14, v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v14, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 245
    .line 246
    .line 247
    const/high16 v2, 0x41a00000    # 20.0f

    .line 248
    .line 249
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    float-to-int v2, v2

    .line 254
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .line 259
    .line 260
    const/4 v2, 0x0

    .line 261
    invoke-static {v1, v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 266
    .line 267
    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 268
    .line 269
    .line 270
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 271
    .line 272
    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 273
    .line 274
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 275
    .line 276
    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 277
    .line 278
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    .line 280
    .line 281
    new-instance v5, Landroid/view/View;

    .line 282
    .line 283
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    const/high16 v11, 0x43020000    # 130.0f

    .line 290
    .line 291
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    float-to-int v11, v11

    .line 296
    const/high16 v12, 0x41c00000    # 24.0f

    .line 297
    .line 298
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    float-to-int v12, v12

    .line 303
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    .line 305
    invoke-direct {v14, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 309
    .line 310
    .line 311
    const/16 v10, 0xc

    .line 312
    .line 313
    invoke-virtual {v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    .line 315
    .line 316
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 317
    .line 318
    iput v11, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 319
    .line 320
    invoke-virtual {v4, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .line 322
    .line 323
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 324
    .line 325
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 326
    .line 327
    .line 328
    const/16 v1, 0x11

    .line 329
    .line 330
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 331
    .line 332
    .line 333
    const/high16 v1, 0x41800000    # 16.0f

    .line 334
    .line 335
    invoke-virtual {v5, v13, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 336
    .line 337
    .line 338
    sget v1, Lnet/kaki87/soul2/testing/R$string;->close:I

    .line 339
    .line 340
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    .line 342
    .line 343
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 344
    .line 345
    invoke-virtual {v5, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 346
    .line 347
    .line 348
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 349
    .line 350
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 351
    .line 352
    invoke-direct {v1, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    .line 360
    .line 361
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 362
    .line 363
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogTransLang;->l0:Lcom/mycompany/app/view/MyEditPure;

    .line 364
    .line 365
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 366
    .line 367
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogTransLang;->n0:Lcom/mycompany/app/view/MyRoundView;

    .line 368
    .line 369
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 370
    .line 371
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 372
    .line 373
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogTransLang;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 374
    .line 375
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 376
    .line 377
    if-nez v1, :cond_3

    .line 378
    .line 379
    :goto_1
    return-void

    .line 380
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransLang$2;

    .line 381
    .line 382
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransLang$2;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    .line 387
    .line 388
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogTransLang;->s0:Z

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogTransLang;->s0:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->l0:Lcom/mycompany/app/view/MyEditPure;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogRelative;->e(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogTransLang;->E(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 56
    .line 57
    sget v0, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 58
    .line 59
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->D0:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->D0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final G(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->B0:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->z0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget v3, p1, Lcom/mycompany/app/main/MainLangAdapter;->e:I

    .line 31
    .line 32
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbRecentLang;->e(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    iget-object v0, p1, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 39
    .line 40
    :cond_2
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTransLang;->F()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 30
    .line 31
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogTransLang;->n0:Lcom/mycompany/app/view/MyRoundView;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyRoundView;->a()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->n0:Lcom/mycompany/app/view/MyRoundView;

    .line 48
    .line 49
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    if-eqz v2, :cond_5

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 59
    .line 60
    if-eqz v2, :cond_6

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 66
    .line 67
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogTransLang;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 68
    .line 69
    if-eqz v2, :cond_7

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 75
    .line 76
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 77
    .line 78
    if-eqz v2, :cond_9

    .line 79
    .line 80
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogTransLang;->s0:Z

    .line 81
    .line 82
    if-eqz v3, :cond_8

    .line 83
    .line 84
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->s0:Z

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V

    .line 87
    .line 88
    .line 89
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->r0:Lcom/mycompany/app/view/MyWebSafe;

    .line 95
    .line 96
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang;->z0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 97
    .line 98
    if-eqz v0, :cond_a

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainLangAdapter;->d()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iput v2, v0, Lcom/mycompany/app/main/MainLangAdapter;->q:I

    .line 105
    .line 106
    iput-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter;->d:Landroid/content/Context;

    .line 107
    .line 108
    iput-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 109
    .line 110
    iput-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 111
    .line 112
    iput-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter;->i:Ljava/lang/String;

    .line 113
    .line 114
    iput-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter;->j:Lcom/mycompany/app/main/MainLangAdapter$MainLangListener;

    .line 115
    .line 116
    iget-object v2, v0, Lcom/mycompany/app/main/MainLangAdapter;->n:Landroid/os/Handler;

    .line 117
    .line 118
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 119
    .line 120
    .line 121
    iput-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter;->n:Landroid/os/Handler;

    .line 122
    .line 123
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->z0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 124
    .line 125
    :cond_a
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 128
    .line 129
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->c0:Lcom/mycompany/app/dialog/DialogTransLang$TransLangListener;

    .line 130
    .line 131
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->d0:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 132
    .line 133
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->g0:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->l0:Lcom/mycompany/app/view/MyEditPure;

    .line 136
    .line 137
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->v0:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->w0:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->y0:Ljava/util/ArrayList;

    .line 142
    .line 143
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogTransLang;->A0:Lcom/mycompany/app/view/MyManagerLinear;

    .line 144
    .line 145
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 146
    .line 147
    .line 148
    return-void
.end method
