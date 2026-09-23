.class public Lcom/mycompany/app/dialog/DialogEditMemo;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

.field public final c0:I

.field public d0:J

.field public e0:Ljava/lang/String;

.field public f0:Ljava/lang/String;

.field public final g0:Z

.field public final h0:Z

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Lcom/mycompany/app/view/MyDialogLinear;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyRoundFrame;

.field public n0:Lcom/mycompany/app/view/MyEditPure;

.field public o0:Lcom/mycompany/app/view/MyRoundFrame;

.field public p0:Lcom/mycompany/app/view/MyEditPure;

.field public q0:Lcom/mycompany/app/view/MyLineText;

.field public r0:Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;

.field public s0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->a0:Landroid/content/Context;

    .line 3
    iput-object p7, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->b0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 4
    iput p2, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->c0:I

    .line 5
    iput-wide p3, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 6
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->e0:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->f0:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditMemo$1;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditMemo$1;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->a0:Landroid/content/Context;

    .line 12
    iput-object p8, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->b0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    const/16 p1, 0x18

    .line 13
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->c0:I

    .line 14
    iput-wide p2, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 15
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->h0:Z

    .line 16
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->i0:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->j0:Ljava/lang/String;

    .line 18
    iput-object p7, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->f0:Ljava/lang/String;

    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->g0:Z

    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditMemo$2;

    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditMemo$2;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 22
    :cond_1
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditMemo$3;

    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogEditMemo$3;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditMemo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->a0:Landroid/content/Context;

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
    const/high16 v4, 0x41400000    # 12.0f

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
    new-instance v5, Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    invoke-virtual {v5, v6, v7, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 33
    .line 34
    .line 35
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    .line 37
    const/4 v8, -0x1

    .line 38
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    const/high16 v7, 0x3f800000    # 1.0f

    .line 42
    .line 43
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 44
    .line 45
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    iget v6, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->c0:I

    .line 49
    .line 50
    const/16 v7, 0x18

    .line 51
    .line 52
    const/high16 v9, 0x10000000

    .line 53
    .line 54
    const/16 v10, 0x1d

    .line 55
    .line 56
    const/4 v11, 0x3

    .line 57
    const/4 v12, -0x2

    .line 58
    const/high16 v13, 0x41800000    # 16.0f

    .line 59
    .line 60
    const/4 v14, 0x0

    .line 61
    if-ne v6, v7, :cond_1

    .line 62
    .line 63
    const/16 v6, 0x10

    .line 64
    .line 65
    invoke-static {v1, v14, v6, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    .line 71
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 72
    .line 73
    invoke-direct {v7, v8, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 77
    .line 78
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    move v7, v12

    .line 82
    move v12, v8

    .line 83
    move v8, v7

    .line 84
    move-object v7, v14

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/16 v7, 0x1a

    .line 87
    .line 88
    if-eq v6, v7, :cond_3

    .line 89
    .line 90
    const/16 v7, 0x25

    .line 91
    .line 92
    if-eq v6, v7, :cond_3

    .line 93
    .line 94
    new-instance v6, Lcom/mycompany/app/view/MyRoundFrame;

    .line 95
    .line 96
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .line 101
    invoke-direct {v7, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    .line 103
    .line 104
    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    .line 106
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    new-instance v7, Lcom/mycompany/app/view/MyEditPure;

    .line 110
    .line 111
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 115
    .line 116
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 117
    .line 118
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 119
    .line 120
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 121
    .line 122
    invoke-virtual {v7, v15, v8, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v11}, Landroid/view/View;->setTextDirection(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v2, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    .line 133
    .line 134
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    if-lt v8, v10, :cond_2

    .line 137
    .line 138
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 139
    .line 140
    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 141
    .line 142
    .line 143
    :cond_2
    sget v8, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 144
    .line 145
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setHint(I)V

    .line 146
    .line 147
    .line 148
    const v8, -0x7e7e7f

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 155
    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    .line 160
    .line 161
    const/4 v8, -0x2

    .line 162
    const/4 v12, -0x1

    .line 163
    invoke-virtual {v6, v7, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 164
    .line 165
    .line 166
    move-object v14, v6

    .line 167
    const/4 v6, 0x0

    .line 168
    goto :goto_0

    .line 169
    :cond_3
    move/from16 v16, v12

    .line 170
    .line 171
    move v12, v8

    .line 172
    move/from16 v8, v16

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v7, 0x0

    .line 176
    const/4 v14, 0x0

    .line 177
    :goto_0
    new-instance v15, Lcom/mycompany/app/view/MyRoundFrame;

    .line 178
    .line 179
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    .line 184
    invoke-direct {v9, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    .line 186
    .line 187
    iput v4, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 188
    .line 189
    invoke-virtual {v5, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .line 191
    .line 192
    new-instance v4, Lcom/mycompany/app/view/MyEditPure;

    .line 193
    .line 194
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 198
    .line 199
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 200
    .line 201
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 202
    .line 203
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 204
    .line 205
    invoke-virtual {v4, v5, v8, v9, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 206
    .line 207
    .line 208
    const v5, 0x800033

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    .line 213
    .line 214
    const/4 v5, 0x5

    .line 215
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinLines(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v11}, Landroid/view/View;->setTextDirection(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v2, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    .line 223
    .line 224
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 225
    .line 226
    if-lt v5, v10, :cond_4

    .line 227
    .line 228
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 229
    .line 230
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 231
    .line 232
    .line 233
    :cond_4
    const/high16 v5, 0x10000000

    .line 234
    .line 235
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 236
    .line 237
    .line 238
    const/4 v8, 0x0

    .line 239
    invoke-virtual {v4, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    .line 241
    .line 242
    const/4 v8, -0x2

    .line 243
    const/4 v12, -0x1

    .line 244
    invoke-virtual {v15, v4, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 245
    .line 246
    .line 247
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 248
    .line 249
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 250
    .line 251
    .line 252
    const/16 v1, 0x11

    .line 253
    .line 254
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 258
    .line 259
    .line 260
    sget v1, Lnet/kaki87/soul2/testing/R$string;->save:I

    .line 261
    .line 262
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    .line 264
    .line 265
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 266
    .line 267
    invoke-virtual {v5, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 268
    .line 269
    .line 270
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 271
    .line 272
    invoke-virtual {v3, v5, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 273
    .line 274
    .line 275
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 276
    .line 277
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 278
    .line 279
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->m0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 280
    .line 281
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->n0:Lcom/mycompany/app/view/MyEditPure;

    .line 282
    .line 283
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 284
    .line 285
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 286
    .line 287
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 288
    .line 289
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 290
    .line 291
    if-nez v1, :cond_5

    .line 292
    .line 293
    :goto_1
    return-void

    .line 294
    :cond_5
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditMemo$4;

    .line 295
    .line 296
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditMemo$4;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    .line 301
    .line 302
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->r0:Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->r0:Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->m0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundFrame;->a()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->m0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundFrame;->a()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->a0:Landroid/content/Context;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->b0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->e0:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->f0:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->i0:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->j0:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->n0:Lcom/mycompany/app/view/MyEditPure;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 72
    .line 73
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
