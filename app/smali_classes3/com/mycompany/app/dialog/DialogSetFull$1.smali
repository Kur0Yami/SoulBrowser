.class Lcom/mycompany/app/dialog/DialogSetFull$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFull$1;->c:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFull$1;->c:Lcom/mycompany/app/dialog/DialogSetFull;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetFull;->c0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_frame_view:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const/high16 v6, 0x41c00000    # 24.0f

    .line 19
    .line 20
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    float-to-int v6, v6

    .line 25
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 26
    .line 27
    invoke-direct {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    invoke-virtual {v7, v8, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    .line 36
    .line 37
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 38
    .line 39
    const/4 v9, -0x1

    .line 40
    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    const/high16 v10, 0x3f800000    # 1.0f

    .line 44
    .line 45
    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 46
    .line 47
    invoke-virtual {v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    const/high16 v6, 0x43200000    # 160.0f

    .line 51
    .line 52
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    float-to-int v6, v6

    .line 57
    new-instance v11, Lcom/mycompany/app/view/MyButtonRelative;

    .line 58
    .line 59
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 63
    .line 64
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 65
    .line 66
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 67
    .line 68
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 69
    .line 70
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    .line 72
    .line 73
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 74
    .line 75
    invoke-virtual {v11, v12, v8}, Lcom/mycompany/app/view/MyButtonRelative;->e(IZ)V

    .line 76
    .line 77
    .line 78
    new-instance v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 79
    .line 80
    invoke-direct {v12, v6, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    iput v3, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 84
    .line 85
    iput v3, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 86
    .line 87
    iput-boolean v4, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 88
    .line 89
    const/high16 v3, 0x43960000    # 300.0f

    .line 90
    .line 91
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    float-to-int v3, v3

    .line 96
    iput v3, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 97
    .line 98
    invoke-virtual {v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 102
    .line 103
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyLineFrame;->f(F)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v3, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Landroid/widget/ImageView;

    .line 113
    .line 114
    invoke-direct {v6, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 118
    .line 119
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v6, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 123
    .line 124
    .line 125
    const/high16 v10, 0x41a00000    # 20.0f

    .line 126
    .line 127
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    float-to-int v10, v10

    .line 132
    new-instance v12, Lcom/mycompany/app/view/MyLineImage;

    .line 133
    .line 134
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyLineImage;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 138
    .line 139
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12}, Lcom/mycompany/app/view/MyLineImage;->a()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v12, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 146
    .line 147
    .line 148
    new-instance v14, Lcom/mycompany/app/view/MyLineImage;

    .line 149
    .line 150
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyLineImage;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v14}, Lcom/mycompany/app/view/MyLineImage;->a()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v14, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 160
    .line 161
    .line 162
    new-instance v15, Lcom/mycompany/app/view/MyLineImage;

    .line 163
    .line 164
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyLineImage;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15}, Lcom/mycompany/app/view/MyLineImage;->b()V

    .line 171
    .line 172
    .line 173
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .line 175
    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 176
    .line 177
    .line 178
    const/16 v4, 0x50

    .line 179
    .line 180
    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    .line 182
    invoke-virtual {v3, v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    .line 184
    .line 185
    new-instance v8, Lcom/mycompany/app/view/MyLineImage;

    .line 186
    .line 187
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineImage;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Lcom/mycompany/app/view/MyLineImage;->b()V

    .line 194
    .line 195
    .line 196
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 197
    .line 198
    invoke-direct {v13, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 199
    .line 200
    .line 201
    iput v4, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 202
    .line 203
    invoke-virtual {v3, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    .line 205
    .line 206
    new-instance v3, Landroid/view/View;

    .line 207
    .line 208
    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    const/4 v4, 0x1

    .line 212
    invoke-virtual {v5, v3, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 213
    .line 214
    .line 215
    new-instance v10, Lcom/mycompany/app/view/MyRecyclerView;

    .line 216
    .line 217
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v10, v4}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 221
    .line 222
    .line 223
    const/4 v13, 0x0

    .line 224
    invoke-virtual {v10, v13}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 225
    .line 226
    .line 227
    const/4 v13, -0x2

    .line 228
    invoke-virtual {v5, v10, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 229
    .line 230
    .line 231
    new-instance v13, Lcom/mycompany/app/view/MyLineText;

    .line 232
    .line 233
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 234
    .line 235
    .line 236
    const/16 v2, 0x11

    .line 237
    .line 238
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 239
    .line 240
    .line 241
    const/high16 v2, 0x41800000    # 16.0f

    .line 242
    .line 243
    invoke-virtual {v13, v4, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 244
    .line 245
    .line 246
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 247
    .line 248
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    .line 250
    .line 251
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 252
    .line 253
    invoke-virtual {v13, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v13, v4}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 257
    .line 258
    .line 259
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 260
    .line 261
    invoke-virtual {v5, v13, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 262
    .line 263
    .line 264
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetFull;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 265
    .line 266
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogSetFull;->f0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 267
    .line 268
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSetFull;->g0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 269
    .line 270
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetFull;->h0:Landroid/widget/ImageView;

    .line 271
    .line 272
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogSetFull;->i0:Lcom/mycompany/app/view/MyLineImage;

    .line 273
    .line 274
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSetFull;->j0:Lcom/mycompany/app/view/MyLineImage;

    .line 275
    .line 276
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogSetFull;->k0:Lcom/mycompany/app/view/MyLineImage;

    .line 277
    .line 278
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogSetFull;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 279
    .line 280
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFull;->m0:Landroid/view/View;

    .line 281
    .line 282
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSetFull;->n0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 283
    .line 284
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSetFull;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 285
    .line 286
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 287
    .line 288
    if-nez v2, :cond_1

    .line 289
    .line 290
    :goto_0
    return-void

    .line 291
    :cond_1
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetFull$2;

    .line 292
    .line 293
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetFull$2;-><init>(Lcom/mycompany/app/dialog/DialogSetFull;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    .line 298
    .line 299
    return-void
.end method
