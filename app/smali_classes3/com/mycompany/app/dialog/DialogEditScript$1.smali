.class Lcom/mycompany/app/dialog/DialogEditScript$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditScript;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$1;->c:Lcom/mycompany/app/dialog/DialogEditScript;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript$1;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_icon_save:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->item_cast_icon:I

    .line 14
    .line 15
    sget v5, Lnet/kaki87/soul2/testing/R$id;->item_cast_ctrl:I

    .line 16
    .line 17
    new-instance v6, Lcom/mycompany/app/view/MyMainRelative;

    .line 18
    .line 19
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    const/4 v8, -0x1

    .line 25
    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    new-instance v7, Lcom/mycompany/app/view/MyHeaderView;

    .line 32
    .line 33
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 37
    .line 38
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 47
    .line 48
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    .line 50
    .line 51
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    .line 53
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 54
    .line 55
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 56
    .line 57
    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 61
    .line 62
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    const/4 v12, 0x0

    .line 71
    invoke-direct {v11, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    .line 73
    .line 74
    const/16 v12, 0x10

    .line 75
    .line 76
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    .line 78
    .line 79
    const/4 v13, 0x1

    .line 80
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 81
    .line 82
    .line 83
    const/high16 v14, 0x41900000    # 18.0f

    .line 84
    .line 85
    invoke-virtual {v11, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 86
    .line 87
    .line 88
    sget v14, Lnet/kaki87/soul2/testing/R$string;->user_script_title:I

    .line 89
    .line 90
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    .line 91
    .line 92
    .line 93
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .line 95
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 96
    .line 97
    invoke-direct {v14, v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v14, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    .line 102
    .line 103
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 104
    .line 105
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    const/high16 v14, 0x41600000    # 14.0f

    .line 112
    .line 113
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    float-to-int v14, v14

    .line 118
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v15, v3}, Landroid/view/View;->setId(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v15, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    .line 131
    .line 132
    const/16 v3, 0x8

    .line 133
    .line 134
    invoke-virtual {v15, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    .line 139
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 140
    .line 141
    invoke-direct {v10, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 145
    .line 146
    .line 147
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 148
    .line 149
    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 150
    .line 151
    invoke-virtual {v7, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    new-instance v10, Landroid/widget/FrameLayout;

    .line 155
    .line 156
    invoke-direct {v10, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    .line 160
    .line 161
    .line 162
    const/4 v4, 0x4

    .line 163
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    .line 168
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 169
    .line 170
    const/4 v13, -0x2

    .line 171
    invoke-direct {v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    .line 173
    .line 174
    const/16 v14, 0x15

    .line 175
    .line 176
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    new-instance v7, Landroid/widget/RelativeLayout;

    .line 183
    .line 184
    invoke-direct {v7, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    const/4 v12, 0x2

    .line 188
    invoke-static {v8, v8, v12, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 193
    .line 194
    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 195
    .line 196
    invoke-virtual {v6, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .line 198
    .line 199
    new-instance v12, Landroid/widget/FrameLayout;

    .line 200
    .line 201
    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v12, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 205
    .line 206
    .line 207
    new-instance v14, Landroid/view/View;

    .line 208
    .line 209
    invoke-direct {v14, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->shadow_list_up:I

    .line 213
    .line 214
    invoke-virtual {v14, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    sget v13, Lcom/mycompany/app/main/MainApp;->e1:I

    .line 221
    .line 222
    invoke-virtual {v7, v14, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 223
    .line 224
    .line 225
    new-instance v13, Lcom/mycompany/app/view/MyScrollBar;

    .line 226
    .line 227
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13}, Lcom/mycompany/app/view/MyScrollBar;->n()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v13, v4}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    const/high16 v4, 0x42000000    # 32.0f

    .line 237
    .line 238
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    float-to-int v4, v4

    .line 243
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 244
    .line 245
    invoke-direct {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    .line 247
    .line 248
    sget v4, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 249
    .line 250
    const/4 v8, 0x1

    .line 251
    if-ne v4, v8, :cond_1

    .line 252
    .line 253
    const/16 v4, 0x9

    .line 254
    .line 255
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v13, v8}, Lcom/mycompany/app/view/MyScrollBar;->setPosLeft(Z)V

    .line 259
    .line 260
    .line 261
    goto :goto_0

    .line 262
    :cond_1
    const/16 v4, 0xb

    .line 263
    .line 264
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    .line 266
    .line 267
    :goto_0
    invoke-virtual {v7, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    .line 269
    .line 270
    new-instance v3, Lcom/mycompany/app/view/MyCoverView;

    .line 271
    .line 272
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 273
    .line 274
    .line 275
    const/16 v4, 0x8

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    const/4 v8, -0x1

    .line 281
    invoke-virtual {v7, v3, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 282
    .line 283
    .line 284
    new-instance v8, Landroid/widget/FrameLayout;

    .line 285
    .line 286
    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8, v5}, Landroid/view/View;->setId(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 296
    .line 297
    const/4 v4, -0x2

    .line 298
    const/4 v5, -0x1

    .line 299
    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 300
    .line 301
    .line 302
    const/16 v4, 0xc

    .line 303
    .line 304
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    .line 309
    .line 310
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogEditScript;->L:Lcom/mycompany/app/view/MyMainRelative;

    .line 311
    .line 312
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 313
    .line 314
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogEditScript;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 315
    .line 316
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 317
    .line 318
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogEditScript;->P:Landroid/widget/RelativeLayout;

    .line 319
    .line 320
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogEditScript;->Q:Landroid/widget/FrameLayout;

    .line 321
    .line 322
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogEditScript;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 323
    .line 324
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogEditScript;->U:Landroid/view/View;

    .line 325
    .line 326
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogEditScript;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 327
    .line 328
    invoke-virtual {v1, v6, v10, v8}, Lcom/mycompany/app/dialog/DialogCast;->p(Lcom/mycompany/app/view/MyMainRelative;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 329
    .line 330
    .line 331
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 332
    .line 333
    if-nez v2, :cond_2

    .line 334
    .line 335
    :goto_1
    return-void

    .line 336
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditScript$3;

    .line 337
    .line 338
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogEditScript$3;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    .line 343
    .line 344
    return-void
.end method
