.class Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView$27$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView$27;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->j1:Z

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_3
    new-instance v5, Lcom/mycompany/app/view/MyTextFast;

    .line 38
    .line 39
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyTextFast;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->n7(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 46
    .line 47
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 48
    .line 49
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 50
    .line 51
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 52
    .line 53
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x3

    .line 57
    invoke-virtual {v5, v6}, Landroid/view/View;->setTextDirection(I)V

    .line 58
    .line 59
    .line 60
    const/high16 v6, 0x41800000    # 16.0f

    .line 61
    .line 62
    invoke-virtual {v5, v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 63
    .line 64
    .line 65
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    .line 67
    const/4 v7, -0x2

    .line 68
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    const v7, 0x800055

    .line 72
    .line 73
    .line 74
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    .line 76
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 77
    .line 78
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 79
    .line 80
    mul-int/lit8 v9, v9, 0x2

    .line 81
    .line 82
    add-int/2addr v9, v8

    .line 83
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 84
    .line 85
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 86
    .line 87
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 88
    .line 89
    .line 90
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 91
    .line 92
    invoke-virtual {v8, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 101
    .line 102
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    .line 104
    .line 105
    sget v9, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 106
    .line 107
    int-to-float v9, v9

    .line 108
    invoke-virtual {v6, v9, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 109
    .line 110
    .line 111
    sget v9, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 112
    .line 113
    int-to-float v9, v9

    .line 114
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 115
    .line 116
    .line 117
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .line 119
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 120
    .line 121
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    .line 126
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 127
    .line 128
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 129
    .line 130
    add-int/2addr v10, v11

    .line 131
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 132
    .line 133
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 134
    .line 135
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 136
    .line 137
    .line 138
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 139
    .line 140
    invoke-virtual {v10, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 144
    .line 145
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    .line 150
    .line 151
    sget v2, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 152
    .line 153
    int-to-float v2, v2

    .line 154
    invoke-virtual {v9, v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 155
    .line 156
    .line 157
    sget v2, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 158
    .line 159
    int-to-float v2, v2

    .line 160
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 164
    .line 165
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 166
    .line 167
    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 168
    .line 169
    .line 170
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 171
    .line 172
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 173
    .line 174
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 175
    .line 176
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 177
    .line 178
    .line 179
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 180
    .line 181
    invoke-virtual {v7, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogWebView;->s1:Lcom/mycompany/app/view/MyTextFast;

    .line 185
    .line 186
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 187
    .line 188
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 189
    .line 190
    invoke-virtual {v1, v4}, Lcom/mycompany/app/dialog/DialogWebView;->g0(Z)V

    .line 191
    .line 192
    .line 193
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->s1:Lcom/mycompany/app/view/MyTextFast;

    .line 194
    .line 195
    if-nez v2, :cond_4

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_4
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 200
    .line 201
    const/high16 v6, -0x1000000

    .line 202
    .line 203
    if-eqz v5, :cond_5

    .line 204
    .line 205
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 206
    .line 207
    .line 208
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->s1:Lcom/mycompany/app/view/MyTextFast;

    .line 209
    .line 210
    const v5, -0x50506

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 214
    .line 215
    .line 216
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 217
    .line 218
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_up_dark_24:I

    .line 219
    .line 220
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 221
    .line 222
    .line 223
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 224
    .line 225
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_down_dark_24:I

    .line 226
    .line 227
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 228
    .line 229
    .line 230
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 231
    .line 232
    const v5, -0xc0c0c1

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 236
    .line 237
    .line 238
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 239
    .line 240
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 241
    .line 242
    .line 243
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 244
    .line 245
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 246
    .line 247
    .line 248
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 249
    .line 250
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 251
    .line 252
    .line 253
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 254
    .line 255
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 256
    .line 257
    const v6, -0x4f4f50

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v6, v5}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 264
    .line 265
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 266
    .line 267
    invoke-virtual {v2, v6, v5}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_5
    const v5, -0x70708

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 275
    .line 276
    .line 277
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->s1:Lcom/mycompany/app/view/MyTextFast;

    .line 278
    .line 279
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyTextFast;->setTextColor(I)V

    .line 280
    .line 281
    .line 282
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 283
    .line 284
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_up_black_24:I

    .line 285
    .line 286
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 287
    .line 288
    .line 289
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 290
    .line 291
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_down_black_24:I

    .line 292
    .line 293
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 294
    .line 295
    .line 296
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 297
    .line 298
    const v5, -0x1f1f20

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 302
    .line 303
    .line 304
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 305
    .line 306
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 307
    .line 308
    .line 309
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 310
    .line 311
    const/4 v5, -0x1

    .line 312
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 313
    .line 314
    .line 315
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 316
    .line 317
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 318
    .line 319
    .line 320
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 321
    .line 322
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 323
    .line 324
    invoke-virtual {v2, v6, v5}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 328
    .line 329
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 330
    .line 331
    invoke-virtual {v2, v6, v5}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 332
    .line 333
    .line 334
    :goto_0
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 335
    .line 336
    new-instance v5, Lcom/mycompany/app/dialog/DialogWebView$22;

    .line 337
    .line 338
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogWebView$22;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 345
    .line 346
    new-instance v5, Lcom/mycompany/app/dialog/DialogWebView$23;

    .line 347
    .line 348
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogWebView$23;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    .line 353
    .line 354
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 355
    .line 356
    new-instance v5, Lcom/mycompany/app/dialog/DialogWebView$24;

    .line 357
    .line 358
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogWebView$24;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 362
    .line 363
    .line 364
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1;

    .line 365
    .line 366
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView$27$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27;

    .line 367
    .line 368
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView$27;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 369
    .line 370
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->J0:Lcom/mycompany/app/web/WebNestView;

    .line 371
    .line 372
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogWebView;->i0:Ljava/lang/String;

    .line 373
    .line 374
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView;->k0:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v2, v5, v1}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1;

    .line 380
    .line 381
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView$27$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27;

    .line 382
    .line 383
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView$27;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 384
    .line 385
    invoke-virtual {v1, v4}, Lcom/mycompany/app/dialog/DialogWebView;->f0(I)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1;

    .line 389
    .line 390
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView$27$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27;

    .line 391
    .line 392
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebView$27;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 393
    .line 394
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->t0:Z

    .line 395
    .line 396
    if-nez v2, :cond_6

    .line 397
    .line 398
    iput-boolean v3, v1, Lcom/mycompany/app/dialog/DialogWebView;->t0:Z

    .line 399
    .line 400
    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogWebView;->H(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 401
    .line 402
    .line 403
    :cond_6
    sget v1, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 404
    .line 405
    if-nez v1, :cond_7

    .line 406
    .line 407
    goto :goto_2

    .line 408
    :cond_7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27$1;

    .line 409
    .line 410
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$27$1;->c:Lcom/mycompany/app/dialog/DialogWebView$27;

    .line 411
    .line 412
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$27;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 413
    .line 414
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 415
    .line 416
    if-nez v0, :cond_8

    .line 417
    .line 418
    :goto_2
    return-void

    .line 419
    :cond_8
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1$1$1;

    .line 420
    .line 421
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogWebView$27$1$1$1$1;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    .line 426
    .line 427
    return-void
.end method
