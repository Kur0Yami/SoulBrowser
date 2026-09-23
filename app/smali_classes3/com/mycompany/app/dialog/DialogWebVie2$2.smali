.class Lcom/mycompany/app/dialog/DialogWebVie2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebVie2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$2;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$2;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->e0:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->g0:Z

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->q0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 8
    .line 9
    if-eqz v3, :cond_b

    .line 10
    .line 11
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    const/4 v4, -0x1

    .line 18
    const v5, -0xdededf

    .line 19
    .line 20
    .line 21
    const/high16 v6, -0x1000000

    .line 22
    .line 23
    const v7, -0x1f1f20

    .line 24
    .line 25
    .line 26
    const v8, -0xc0c0c1

    .line 27
    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->r0:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    const v9, -0x50506

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_24:I

    .line 50
    .line 51
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    .line 57
    .line 58
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    invoke-virtual {v3, v8}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    invoke-virtual {v3, v8}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->r1:Lcom/mycompany/app/view/MyButtonImage;

    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->r1:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v3, v8}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 72
    .line 73
    const v9, -0x37000001

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v9, v6}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->r0:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    const v9, -0x70708

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_black_24:I

    .line 99
    .line 100
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 106
    .line 107
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->r1:Lcom/mycompany/app/view/MyButtonImage;

    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->r1:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 121
    .line 122
    const v6, -0xc6b655

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v6, v9}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 126
    .line 127
    .line 128
    :goto_0
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->h0:Z

    .line 129
    .line 130
    if-eqz v3, :cond_2

    .line 131
    .line 132
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->x0:Landroid/widget/FrameLayout;

    .line 133
    .line 134
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->x0:Landroid/widget/FrameLayout;

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    .line 142
    .line 143
    :goto_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 144
    .line 145
    const/4 v4, 0x1

    .line 146
    invoke-virtual {v3, v1, v4}, Lcom/mycompany/app/view/MyScrollNavi;->d(ZZ)V

    .line 147
    .line 148
    .line 149
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    invoke-virtual {v3, v1, v5}, Lcom/mycompany/app/view/MyScrollNavi;->d(ZZ)V

    .line 153
    .line 154
    .line 155
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->j0:I

    .line 156
    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 162
    .line 163
    .line 164
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebVie2$3;

    .line 167
    .line 168
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$3;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 175
    .line 176
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebVie2$4;

    .line 177
    .line 178
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$4;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->r1:Lcom/mycompany/app/view/MyButtonImage;

    new-instance v3, Lcom/mycompany/app/dialog/DialogWebVie2$31;

    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$31;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 185
    .line 186
    if-eqz v1, :cond_5

    .line 187
    .line 188
    if-eqz v2, :cond_4

    .line 189
    .line 190
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_dark_24:I

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 196
    .line 197
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_black_24:I

    .line 202
    .line 203
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 207
    .line 208
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 209
    .line 210
    .line 211
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 212
    .line 213
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebVie2$5;

    .line 214
    .line 215
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$5;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 222
    .line 223
    if-eqz v1, :cond_7

    .line 224
    .line 225
    if-eqz v2, :cond_6

    .line 226
    .line 227
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_dark_24:I

    .line 228
    .line 229
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 233
    .line 234
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_6
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_black_24:I

    .line 239
    .line 240
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 244
    .line 245
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 246
    .line 247
    .line 248
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 249
    .line 250
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebVie2$6;

    .line 251
    .line 252
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$6;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    :cond_7
    sget v1, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 259
    .line 260
    if-eqz v1, :cond_a

    .line 261
    .line 262
    if-ne v1, v4, :cond_8

    .line 263
    .line 264
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 265
    .line 266
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 271
    .line 272
    if-eqz v1, :cond_8

    .line 273
    .line 274
    const/16 v3, 0xb

    .line 275
    .line 276
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 277
    .line 278
    .line 279
    const/16 v3, 0x9

    .line 280
    .line 281
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 285
    .line 286
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyScrollBar;->setPosLeft(Z)V

    .line 287
    .line 288
    .line 289
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 290
    .line 291
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebVie2$7;

    .line 292
    .line 293
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$7;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 297
    .line 298
    .line 299
    if-eqz v2, :cond_9

    .line 300
    .line 301
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 302
    .line 303
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 308
    .line 309
    const v2, -0x252526

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 313
    .line 314
    .line 315
    :cond_a
    :goto_4
    new-instance v1, Landroid/view/GestureDetector;

    .line 316
    .line 317
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 318
    .line 319
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebVie2$8;

    .line 320
    .line 321
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$8;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 325
    .line 326
    .line 327
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->E0:Landroid/view/GestureDetector;

    .line 328
    .line 329
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->q0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 330
    .line 331
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebVie2$9;

    .line 332
    .line 333
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$9;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 337
    .line 338
    .line 339
    :cond_b
    :goto_5
    return-void
.end method
