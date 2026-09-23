.class public Lcom/mycompany/app/dialog/DialogTabEdit;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic r0:I


# instance fields
.field public a0:Landroid/app/Activity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public d0:Ljava/util/List;

.field public e0:Ljava/util/List;

.field public f0:Ljava/lang/String;

.field public g0:I

.field public final h0:I

.field public i0:Lcom/mycompany/app/view/MyDialogLinear;

.field public j0:Lcom/mycompany/app/view/MyRoundImage;

.field public k0:Lcom/mycompany/app/view/MyLineView;

.field public l0:Landroid/view/View;

.field public m0:Lcom/mycompany/app/view/MyEditText;

.field public n0:Lcom/mycompany/app/view/MyLineText;

.field public o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

.field public p0:Z

.field public q0:Lcom/mycompany/app/dialog/DialogQuickColor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->a0:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->d0:Ljava/util/List;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->e0:Ljava/util/List;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->f0:Ljava/lang/String;

    .line 19
    .line 20
    iput p5, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->g0:I

    .line 21
    .line 22
    iput p5, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->h0:I

    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogTabEdit$1;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogTabEdit$1;-><init>(Lcom/mycompany/app/dialog/DialogTabEdit;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogTabEdit;)V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->b0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/high16 v3, 0x42900000    # 72.0f

    .line 13
    .line 14
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    float-to-int v3, v3

    .line 19
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 20
    .line 21
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 27
    .line 28
    .line 29
    const/4 v5, -0x1

    .line 30
    invoke-virtual {v2, v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Lcom/mycompany/app/view/MyRoundImage;

    .line 34
    .line 35
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 41
    .line 42
    .line 43
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 44
    .line 45
    int-to-float v7, v7

    .line 46
    const/high16 v8, 0x40000000    # 2.0f

    .line 47
    .line 48
    div-float/2addr v7, v8

    .line 49
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 50
    .line 51
    .line 52
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    .line 54
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 55
    .line 56
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    const v9, 0x800013

    .line 60
    .line 61
    .line 62
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    .line 64
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 65
    .line 66
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    new-instance v7, Lcom/mycompany/app/view/MyLineView;

    .line 73
    .line 74
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    float-to-int v8, v8

    .line 82
    int-to-float v8, v8

    .line 83
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyLineView;->a(F)V

    .line 84
    .line 85
    .line 86
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .line 88
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 89
    .line 90
    invoke-direct {v8, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    .line 95
    const/high16 v9, 0x41400000    # 12.0f

    .line 96
    .line 97
    invoke-static {v0, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    float-to-int v9, v9

    .line 102
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    sget-boolean v8, Lcom/mycompany/app/pref/PrefAlbum;->m:Z

    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    if-eqz v8, :cond_1

    .line 112
    .line 113
    new-instance v8, Landroid/view/View;

    .line 114
    .line 115
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->noti_dot_red:I

    .line 119
    .line 120
    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    .line 122
    .line 123
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    .line 125
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 126
    .line 127
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    .line 129
    .line 130
    const/high16 v11, 0x41100000    # 9.0f

    .line 131
    .line 132
    invoke-static {v0, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    float-to-int v11, v11

    .line 137
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 138
    .line 139
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    move-object v8, v9

    .line 147
    :goto_0
    new-instance v10, Lcom/mycompany/app/view/MyEditText;

    .line 148
    .line 149
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    const/16 v11, 0x10

    .line 153
    .line 154
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 158
    .line 159
    .line 160
    const/4 v12, 0x3

    .line 161
    invoke-virtual {v10, v12}, Landroid/view/View;->setTextDirection(I)V

    .line 162
    .line 163
    .line 164
    const/high16 v12, 0x41800000    # 16.0f

    .line 165
    .line 166
    invoke-virtual {v10, v1, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 167
    .line 168
    .line 169
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 170
    .line 171
    const/16 v14, 0x1d

    .line 172
    .line 173
    if-lt v13, v14, :cond_2

    .line 174
    .line 175
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 176
    .line 177
    invoke-virtual {v10, v13}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 178
    .line 179
    .line 180
    :cond_2
    sget v13, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 181
    .line 182
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setHint(I)V

    .line 183
    .line 184
    .line 185
    const v13, -0x7e7e7f

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 189
    .line 190
    .line 191
    const/high16 v13, 0x10000000

    .line 192
    .line 193
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    .line 198
    .line 199
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .line 201
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 202
    .line 203
    invoke-direct {v9, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    .line 205
    .line 206
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 207
    .line 208
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 209
    .line 210
    .line 211
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 212
    .line 213
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .line 218
    .line 219
    const/16 v3, 0x11

    .line 220
    .line 221
    invoke-static {v0, v3, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    sget v1, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    .line 229
    .line 230
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 233
    .line 234
    .line 235
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 236
    .line 237
    invoke-virtual {v2, v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 238
    .line 239
    .line 240
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 241
    .line 242
    iput-object v6, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 243
    .line 244
    iput-object v7, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->k0:Lcom/mycompany/app/view/MyLineView;

    .line 245
    .line 246
    iput-object v8, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->l0:Landroid/view/View;

    .line 247
    .line 248
    iput-object v10, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 249
    .line 250
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 251
    .line 252
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 253
    .line 254
    if-nez v0, :cond_3

    .line 255
    .line 256
    :goto_1
    return-void

    .line 257
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabEdit$2;

    .line 258
    .line 259
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabEdit$2;-><init>(Lcom/mycompany/app/dialog/DialogTabEdit;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    .line 264
    .line 265
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->q0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogQuickColor;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->q0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabEdit;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabEdit;->D()V

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->o0:Lcom/mycompany/app/dialog/DialogTabEdit$DialogTask;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogTabEdit;->C()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 30
    .line 31
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 39
    .line 40
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->k0:Lcom/mycompany/app/view/MyLineView;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineView;->b()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->k0:Lcom/mycompany/app/view/MyLineView;

    .line 48
    .line 49
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 50
    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 57
    .line 58
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    :cond_6
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->a0:Landroid/app/Activity;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->b0:Landroid/content/Context;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->d0:Ljava/util/List;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->e0:Ljava/util/List;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->f0:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTabEdit;->l0:Landroid/view/View;

    .line 80
    .line 81
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 82
    .line 83
    .line 84
    return-void
.end method
