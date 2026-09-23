.class Lcom/mycompany/app/dialog/DialogAdNative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogAdNative;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogAdNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAdNative$1;->c:Lcom/mycompany/app/dialog/DialogAdNative;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAdNative$1;->c:Lcom/mycompany/app/dialog/DialogAdNative;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogAdNative;->o0:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogAdNative;->b0:Landroid/content/Context;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    sget v3, Lnet/kaki87/soul2/testing/R$id;->ads_load_text:I

    .line 16
    .line 17
    new-instance v4, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Lcom/mycompany/app/view/MyDialogRelative;

    .line 23
    .line 24
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    .line 29
    const/4 v7, -0x1

    .line 30
    const/4 v8, -0x2

    .line 31
    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    const/16 v9, 0x10

    .line 35
    .line 36
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 37
    .line 38
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/mycompany/app/view/MyAdFrame;

    .line 42
    .line 43
    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    invoke-virtual {v6, v10, v10, v10, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    .line 51
    .line 52
    const v9, 0x439f8000    # 319.0f

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    float-to-int v9, v9

    .line 60
    invoke-virtual {v6, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    new-instance v9, Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    invoke-direct {v9, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 72
    .line 73
    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    .line 75
    .line 76
    const/16 v10, 0x8

    .line 77
    .line 78
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    const v11, 0x43a38000    # 327.0f

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    float-to-int v11, v11

    .line 89
    invoke-virtual {v5, v9, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 90
    .line 91
    .line 92
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    invoke-direct {v11, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v11, v3}, Landroid/view/View;->setId(I)V

    .line 99
    .line 100
    .line 101
    const/4 v12, 0x1

    .line 102
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    .line 104
    .line 105
    const/high16 v13, 0x41800000    # 16.0f

    .line 106
    .line 107
    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    .line 115
    invoke-direct {v12, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .line 117
    .line 118
    const/16 v8, 0xc

    .line 119
    .line 120
    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    new-instance v8, Landroid/widget/ImageView;

    .line 127
    .line 128
    invoke-direct {v8, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 132
    .line 133
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 140
    .line 141
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 142
    .line 143
    invoke-direct {v12, v13, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 144
    .line 145
    .line 146
    const/4 v13, 0x2

    .line 147
    invoke-virtual {v12, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    .line 149
    .line 150
    const/16 v14, 0xe

    .line 151
    .line 152
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    sget-boolean v12, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 159
    .line 160
    if-eqz v12, :cond_2

    .line 161
    .line 162
    const v12, -0x50506

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    const v12, -0xc6b655

    .line 167
    .line 168
    .line 169
    :goto_1
    const/high16 v15, 0x40000000    # 2.0f

    .line 170
    .line 171
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    float-to-int v14, v14

    .line 176
    new-instance v15, Lcom/mycompany/app/view/MyCoverView;

    .line 177
    .line 178
    sget v13, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 179
    .line 180
    invoke-direct {v15, v2, v12, v14, v13}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v15, v10}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 187
    .line 188
    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    .line 190
    .line 191
    const/4 v7, 0x2

    .line 192
    invoke-virtual {v2, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9, v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogAdNative;->e0:Landroid/widget/FrameLayout;

    .line 199
    .line 200
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogAdNative;->f0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 201
    .line 202
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogAdNative;->g0:Lcom/mycompany/app/view/MyAdFrame;

    .line 203
    .line 204
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogAdNative;->j0:Landroid/widget/RelativeLayout;

    .line 205
    .line 206
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogAdNative;->k0:Landroid/widget/ImageView;

    .line 207
    .line 208
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogAdNative;->l0:Lcom/mycompany/app/view/MyCoverView;

    .line 209
    .line 210
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogAdNative;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 213
    .line 214
    const/high16 v3, -0x1000000

    .line 215
    .line 216
    if-eqz v2, :cond_3

    .line 217
    .line 218
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 219
    .line 220
    .line 221
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogAdNative;->f0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 222
    .line 223
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogAdNative;->b0:Landroid/content/Context;

    .line 224
    .line 225
    const/high16 v4, 0x40000000    # 2.0f

    .line 226
    .line 227
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    const v4, -0x4f4f50

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v4, v3}, Lcom/mycompany/app/view/MyDialogRelative;->d(II)V

    .line 239
    .line 240
    .line 241
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogAdNative;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    .line 243
    const v3, -0x50506

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_3
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    .line 252
    .line 253
    :goto_2
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogAdNative;->e0:Landroid/widget/FrameLayout;

    .line 254
    .line 255
    new-instance v3, Lcom/mycompany/app/dialog/DialogAdNative$2;

    .line 256
    .line 257
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogAdNative$2;-><init>(Lcom/mycompany/app/dialog/DialogAdNative;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogAdNative;->f0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 264
    .line 265
    new-instance v3, Lcom/mycompany/app/dialog/DialogAdNative$3;

    .line 266
    .line 267
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    .line 272
    .line 273
    new-instance v2, Lcom/mycompany/app/dialog/DialogAdNative$5;

    .line 274
    .line 275
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogAdNative$5;-><init>(Lcom/mycompany/app/dialog/DialogAdNative;)V

    .line 276
    .line 277
    .line 278
    iput-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

    .line 279
    .line 280
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogAdNative;->e0:Landroid/widget/FrameLayout;

    .line 281
    .line 282
    new-instance v3, Lcom/mycompany/app/dialog/DialogAdNative$4;

    .line 283
    .line 284
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogAdNative$4;-><init>(Lcom/mycompany/app/dialog/DialogAdNative;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 288
    .line 289
    .line 290
    return-void
.end method
