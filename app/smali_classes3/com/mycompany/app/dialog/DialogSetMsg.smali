.class public Lcom/mycompany/app/dialog/DialogSetMsg;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public c0:Lcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;

.field public final d0:Z

.field public final e0:I

.field public f0:Ljava/lang/String;

.field public final g0:I

.field public final h0:I

.field public i0:Lcom/mycompany/app/view/MyDialogLinear;

.field public j0:Lcom/mycompany/app/view/MyButtonImage;

.field public k0:Lcom/mycompany/app/view/MyLineText;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyLineText;

.field public n0:Lcom/mycompany/app/view/MyLineText;

.field public o0:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->a0:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 4
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->e0:I

    .line 5
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->g0:I

    .line 6
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetMsg$1;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetMsg$1;-><init>(Lcom/mycompany/app/dialog/DialogSetMsg;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->a0:Landroid/content/Context;

    .line 10
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 11
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->f0:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->g0:I

    .line 13
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetMsg$2;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetMsg$2;-><init>(Lcom/mycompany/app/dialog/DialogSetMsg;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZIIILcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->a0:Landroid/content/Context;

    .line 17
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->c0:Lcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;

    .line 18
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->d0:Z

    .line 19
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->e0:I

    .line 20
    iput p4, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->g0:I

    .line 21
    iput p5, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->h0:I

    .line 22
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetMsg$3;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetMsg$3;-><init>(Lcom/mycompany/app/dialog/DialogSetMsg;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSetMsg;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->e0:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->h0:I

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->g0:I

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->a0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :cond_0
    const/4 v5, 0x1

    .line 16
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->d0:Z

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, -0x1

    .line 24
    if-eqz v7, :cond_1

    .line 25
    .line 26
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 27
    .line 28
    invoke-direct {v7, v4}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 32
    .line 33
    invoke-virtual {v7, v10}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v5}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 37
    .line 38
    .line 39
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 40
    .line 41
    invoke-virtual {v6, v7, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 42
    .line 43
    .line 44
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    invoke-direct {v10, v4}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    .line 53
    .line 54
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    .line 56
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 57
    .line 58
    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    const v12, 0x800005

    .line 62
    .line 63
    .line 64
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    .line 66
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 67
    .line 68
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move-object v10, v8

    .line 76
    :goto_0
    const/4 v7, 0x2

    .line 77
    invoke-static {v4, v8, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    invoke-direct {v11, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .line 86
    .line 87
    const/high16 v13, 0x3f800000    # 1.0f

    .line 88
    .line 89
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 90
    .line 91
    invoke-virtual {v6, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    const/high16 v11, 0x41800000    # 16.0f

    .line 95
    .line 96
    const/16 v14, 0x11

    .line 97
    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    iget-object v15, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->f0:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    if-nez v15, :cond_2

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    move-object v15, v8

    .line 110
    goto :goto_4

    .line 111
    :cond_3
    :goto_1
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    invoke-direct {v15, v4, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    .line 115
    .line 116
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 117
    .line 118
    invoke-virtual {v15, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 122
    .line 123
    .line 124
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 125
    .line 126
    int-to-float v8, v8

    .line 127
    invoke-virtual {v15, v8, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v15, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 131
    .line 132
    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->f0:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->c0:Lcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;

    .line 145
    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    const/16 v1, 0x58

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    const/16 v1, 0x48

    .line 152
    .line 153
    :goto_3
    int-to-float v1, v1

    .line 154
    invoke-static {v4, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    float-to-int v1, v1

    .line 159
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 160
    .line 161
    .line 162
    const/4 v1, -0x2

    .line 163
    invoke-virtual {v7, v15, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 164
    .line 165
    .line 166
    :goto_4
    if-eqz v2, :cond_8

    .line 167
    .line 168
    new-instance v1, Lcom/mycompany/app/view/MyLineLinear;

    .line 169
    .line 170
    invoke-direct {v1, v4}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 177
    .line 178
    .line 179
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 180
    .line 181
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 185
    .line 186
    .line 187
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 188
    .line 189
    invoke-virtual {v6, v1, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 190
    .line 191
    .line 192
    if-eqz v2, :cond_6

    .line 193
    .line 194
    new-instance v7, Lcom/mycompany/app/view/MyLineText;

    .line 195
    .line 196
    invoke-direct {v7, v4}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v4}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 212
    .line 213
    invoke-direct {v2, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    .line 215
    .line 216
    iput v13, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 217
    .line 218
    invoke-virtual {v1, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_6
    const/4 v7, 0x0

    .line 223
    :goto_5
    if-eqz v3, :cond_7

    .line 224
    .line 225
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 226
    .line 227
    invoke-direct {v2, v4}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 237
    .line 238
    .line 239
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 240
    .line 241
    invoke-direct {v3, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 242
    .line 243
    .line 244
    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 245
    .line 246
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_7
    const/4 v2, 0x0

    .line 251
    goto :goto_7

    .line 252
    :cond_8
    if-eqz v3, :cond_9

    .line 253
    .line 254
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 255
    .line 256
    invoke-direct {v2, v4}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 266
    .line 267
    .line 268
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 269
    .line 270
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 274
    .line 275
    .line 276
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 277
    .line 278
    invoke-virtual {v6, v2, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 279
    .line 280
    .line 281
    :goto_6
    const/4 v7, 0x0

    .line 282
    goto :goto_7

    .line 283
    :cond_9
    const/4 v2, 0x0

    .line 284
    goto :goto_6

    .line 285
    :goto_7
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 286
    .line 287
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 288
    .line 289
    const/4 v1, 0x0

    .line 290
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 291
    .line 292
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 293
    .line 294
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 295
    .line 296
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogSetMsg;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 297
    .line 298
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 299
    .line 300
    if-nez v1, :cond_a

    .line 301
    .line 302
    :goto_8
    return-void

    .line 303
    :cond_a
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetMsg$4;

    .line 304
    .line 305
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetMsg$4;-><init>(Lcom/mycompany/app/dialog/DialogSetMsg;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    .line 310
    .line 311
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v0, v0, v2, v0}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 24
    .line 25
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const v1, -0x7f7f80

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const v1, -0x252526

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->a0:Landroid/content/Context;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->c0:Lcom/mycompany/app/dialog/DialogSetMsg$DialogMsgListener;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->f0:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetMsg;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method
