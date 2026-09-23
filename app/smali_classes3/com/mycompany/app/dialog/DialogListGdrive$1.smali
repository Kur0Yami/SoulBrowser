.class Lcom/mycompany/app/dialog/DialogListGdrive$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogListGdrive;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$1;->c:Lcom/mycompany/app/dialog/DialogListGdrive;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive$1;->c:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v3, Lcom/mycompany/app/view/MyMainRelative;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    const/4 v5, -0x1

    .line 19
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lcom/mycompany/app/view/MyRecyclerView;

    .line 26
    .line 27
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-virtual {v4, v6, v6}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 32
    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-virtual {v4, v7}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 42
    .line 43
    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 47
    .line 48
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 49
    .line 50
    invoke-virtual {v3, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    new-instance v7, Lcom/mycompany/app/view/MyScrollBar;

    .line 54
    .line 55
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 59
    .line 60
    sget v9, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 61
    .line 62
    iput v8, v7, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 63
    .line 64
    iput v9, v7, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 65
    .line 66
    const/4 v8, 0x4

    .line 67
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    .line 72
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 73
    .line 74
    invoke-direct {v8, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    const/16 v9, 0x15

    .line 78
    .line 79
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    new-instance v8, Lcom/mycompany/app/view/MyFadeImage;

    .line 86
    .line 87
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 91
    .line 92
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    .line 94
    .line 95
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 96
    .line 97
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    .line 99
    .line 100
    const/16 v11, 0x8

    .line 101
    .line 102
    invoke-virtual {v8, v11}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    .line 107
    invoke-direct {v12, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .line 109
    .line 110
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 111
    .line 112
    iput v13, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 113
    .line 114
    invoke-virtual {v3, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    new-instance v12, Lcom/mycompany/app/view/MyCoverView;

    .line 118
    .line 119
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12, v11}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 126
    .line 127
    invoke-direct {v11, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    .line 129
    .line 130
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 131
    .line 132
    iput v13, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 133
    .line 134
    invoke-virtual {v3, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .line 136
    .line 137
    new-instance v11, Lcom/mycompany/app/view/MyHeaderView;

    .line 138
    .line 139
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 143
    .line 144
    invoke-virtual {v3, v11, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 145
    .line 146
    .line 147
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 153
    .line 154
    .line 155
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    .line 157
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 158
    .line 159
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 160
    .line 161
    invoke-direct {v14, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    .line 163
    .line 164
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 165
    .line 166
    invoke-virtual {v14, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    const/4 v14, 0x0

    .line 175
    invoke-direct {v9, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    .line 177
    .line 178
    const/16 v14, 0x10

    .line 179
    .line 180
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 184
    .line 185
    .line 186
    const/high16 v14, 0x41900000    # 18.0f

    .line 187
    .line 188
    invoke-virtual {v9, v6, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 189
    .line 190
    .line 191
    const-string v6, "Google Drive"

    .line 192
    .line 193
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    .line 198
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 199
    .line 200
    invoke-direct {v6, v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .line 202
    .line 203
    sget v5, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 204
    .line 205
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 206
    .line 207
    .line 208
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 209
    .line 210
    mul-int/lit8 v5, v5, 0x2

    .line 211
    .line 212
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v11, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    const/high16 v5, 0x41600000    # 14.0f

    .line 219
    .line 220
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    float-to-int v5, v5

    .line 225
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 226
    .line 227
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 234
    .line 235
    .line 236
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    .line 238
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 239
    .line 240
    sget v0, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 241
    .line 242
    invoke-direct {v14, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    .line 244
    .line 245
    const/16 v0, 0x15

    .line 246
    .line 247
    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    .line 249
    .line 250
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 251
    .line 252
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v11, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 259
    .line 260
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 270
    .line 271
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 272
    .line 273
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 274
    .line 275
    invoke-direct {v2, v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 276
    .line 277
    .line 278
    const/16 v5, 0x15

    .line 279
    .line 280
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    .line 285
    .line 286
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->B:Lcom/mycompany/app/view/MyMainRelative;

    .line 287
    .line 288
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 289
    .line 290
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 291
    .line 292
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->E:Lcom/mycompany/app/view/MyButtonImage;

    .line 293
    .line 294
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 295
    .line 296
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 297
    .line 298
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->L:Lcom/mycompany/app/view/MyScrollBar;

    .line 299
    .line 300
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->M:Lcom/mycompany/app/view/MyFadeImage;

    .line 301
    .line 302
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogListGdrive;->N:Lcom/mycompany/app/view/MyCoverView;

    .line 303
    .line 304
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 305
    .line 306
    if-nez v0, :cond_1

    .line 307
    .line 308
    :goto_0
    return-void

    .line 309
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$2;

    .line 310
    .line 311
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogListGdrive$2;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    .line 316
    .line 317
    return-void
.end method
