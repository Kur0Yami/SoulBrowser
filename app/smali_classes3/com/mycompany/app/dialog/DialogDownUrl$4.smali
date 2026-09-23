.class Lcom/mycompany/app/dialog/DialogDownUrl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$4;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$4;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->p1:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->f2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->g2:I

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->h2:Z

    .line 10
    .line 11
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->i2:Z

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->f2:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    if-eqz v6, :cond_22

    .line 19
    .line 20
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 21
    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_0
    iget v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 27
    .line 28
    const/4 v7, 0x3

    .line 29
    const/16 v8, 0xd

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    const/4 v10, 0x0

    .line 33
    if-eq v6, v9, :cond_2

    .line 34
    .line 35
    if-eq v6, v7, :cond_2

    .line 36
    .line 37
    const/4 v11, 0x5

    .line 38
    if-eq v6, v11, :cond_2

    .line 39
    .line 40
    const/4 v11, 0x7

    .line 41
    if-eq v6, v11, :cond_2

    .line 42
    .line 43
    const/16 v11, 0x9

    .line 44
    .line 45
    if-eq v6, v11, :cond_2

    .line 46
    .line 47
    if-eq v6, v8, :cond_2

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F1:Ljava/util/List;

    .line 52
    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    :cond_1
    iget v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H1:I

    .line 62
    .line 63
    if-eqz v6, :cond_6

    .line 64
    .line 65
    :cond_2
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F1:Ljava/util/List;

    .line 66
    .line 67
    if-eqz v6, :cond_5

    .line 68
    .line 69
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_5

    .line 74
    .line 75
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 76
    .line 77
    if-nez v6, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    .line 86
    if-nez v6, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 90
    .line 91
    const/high16 v12, 0x42c00000    # 96.0f

    .line 92
    .line 93
    invoke-static {v11, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    :catch_0
    :cond_5
    :goto_0
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 104
    .line 105
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->p0:Lcom/mycompany/app/view/MyLineLinear;

    .line 109
    .line 110
    const/16 v11, 0x8

    .line 111
    .line 112
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->L0:Lcom/mycompany/app/view/MyLineLinear;

    .line 116
    .line 117
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 121
    .line 122
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 126
    .line 127
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s1:Lcom/mycompany/app/view/MyDialogLinear;

    .line 128
    .line 129
    :cond_6
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 135
    .line 136
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->P0:Lcom/mycompany/app/view/MyButtonImage;

    .line 147
    .line 148
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->D0:Lcom/mycompany/app/view/MyButtonImage;

    .line 149
    .line 150
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    :cond_7
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->d1:Z

    .line 154
    .line 155
    if-nez v5, :cond_9

    .line 156
    .line 157
    iget v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->q1:I

    .line 158
    .line 159
    if-eq v5, v7, :cond_9

    .line 160
    .line 161
    iget v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 162
    .line 163
    if-eq v6, v8, :cond_9

    .line 164
    .line 165
    if-ne v5, v9, :cond_8

    .line 166
    .line 167
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_9

    .line 174
    .line 175
    :cond_8
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->S0:Lcom/mycompany/app/view/MyLineText;

    .line 176
    .line 177
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 178
    .line 179
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    :cond_9
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 183
    .line 184
    if-eqz v5, :cond_e

    .line 185
    .line 186
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    const v6, -0x3e3e3f

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    .line 193
    .line 194
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    const v7, -0xc0c0c1

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 200
    .line 201
    .line 202
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 203
    .line 204
    const v11, -0x252526

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    .line 214
    .line 215
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    const v6, -0x50506

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    .line 223
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 224
    .line 225
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    .line 227
    .line 228
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 229
    .line 230
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    .line 232
    .line 233
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    .line 235
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    .line 237
    .line 238
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x0:Lcom/mycompany/app/view/MyLineRelative;

    .line 239
    .line 240
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 241
    .line 242
    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    .line 244
    .line 245
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 246
    .line 247
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 248
    .line 249
    invoke-virtual {v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 250
    .line 251
    .line 252
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 253
    .line 254
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    .line 256
    .line 257
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 258
    .line 259
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_contact_support_dark_20:I

    .line 260
    .line 261
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 262
    .line 263
    .line 264
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 265
    .line 266
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 267
    .line 268
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 269
    .line 270
    .line 271
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 272
    .line 273
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 274
    .line 275
    .line 276
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 277
    .line 278
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 279
    .line 280
    .line 281
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 282
    .line 283
    const v11, -0xafafb0

    .line 284
    .line 285
    .line 286
    if-eqz v5, :cond_a

    .line 287
    .line 288
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_dark_24:I

    .line 289
    .line 290
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 291
    .line 292
    .line 293
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 294
    .line 295
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 296
    .line 297
    .line 298
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 299
    .line 300
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 301
    .line 302
    .line 303
    :cond_a
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 304
    .line 305
    if-eqz v5, :cond_b

    .line 306
    .line 307
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_dark_24:I

    .line 308
    .line 309
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 310
    .line 311
    .line 312
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 313
    .line 314
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 315
    .line 316
    .line 317
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 318
    .line 319
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 320
    .line 321
    .line 322
    :cond_b
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 323
    .line 324
    if-eqz v5, :cond_c

    .line 325
    .line 326
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_info_dark_24:I

    .line 327
    .line 328
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 329
    .line 330
    .line 331
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 332
    .line 333
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 334
    .line 335
    .line 336
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 337
    .line 338
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 339
    .line 340
    .line 341
    :cond_c
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->D0:Lcom/mycompany/app/view/MyButtonImage;

    .line 342
    .line 343
    if-eqz v5, :cond_d

    .line 344
    .line 345
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 346
    .line 347
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 348
    .line 349
    .line 350
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->D0:Lcom/mycompany/app/view/MyButtonImage;

    .line 351
    .line 352
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 353
    .line 354
    .line 355
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->D0:Lcom/mycompany/app/view/MyButtonImage;

    .line 356
    .line 357
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 358
    .line 359
    .line 360
    :cond_d
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 361
    .line 362
    if-eqz v5, :cond_13

    .line 363
    .line 364
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 365
    .line 366
    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 367
    .line 368
    .line 369
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 370
    .line 371
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :cond_e
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 377
    .line 378
    const v6, -0x9e9e9f

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    .line 383
    .line 384
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 385
    .line 386
    const v7, -0x70708

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 390
    .line 391
    .line 392
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 393
    .line 394
    const v11, -0xbbbbbc

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    .line 399
    .line 400
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 401
    .line 402
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    .line 404
    .line 405
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 406
    .line 407
    const/high16 v6, -0x1000000

    .line 408
    .line 409
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    .line 411
    .line 412
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 413
    .line 414
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    .line 416
    .line 417
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 418
    .line 419
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    .line 421
    .line 422
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 423
    .line 424
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    .line 426
    .line 427
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x0:Lcom/mycompany/app/view/MyLineRelative;

    .line 428
    .line 429
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 430
    .line 431
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 432
    .line 433
    .line 434
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 435
    .line 436
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 437
    .line 438
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 439
    .line 440
    .line 441
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 442
    .line 443
    const v6, -0xe19938

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    .line 448
    .line 449
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 450
    .line 451
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_contact_support_black_20:I

    .line 452
    .line 453
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 454
    .line 455
    .line 456
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 457
    .line 458
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 459
    .line 460
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 461
    .line 462
    .line 463
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 464
    .line 465
    const v11, -0x1f1f20

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 469
    .line 470
    .line 471
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 472
    .line 473
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 474
    .line 475
    .line 476
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 477
    .line 478
    if-eqz v5, :cond_f

    .line 479
    .line 480
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_black_24:I

    .line 481
    .line 482
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 483
    .line 484
    .line 485
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 486
    .line 487
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 488
    .line 489
    .line 490
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 491
    .line 492
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 493
    .line 494
    .line 495
    :cond_f
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 496
    .line 497
    if-eqz v5, :cond_10

    .line 498
    .line 499
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_black_24:I

    .line 500
    .line 501
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 502
    .line 503
    .line 504
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 505
    .line 506
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 507
    .line 508
    .line 509
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 510
    .line 511
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 512
    .line 513
    .line 514
    :cond_10
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 515
    .line 516
    if-eqz v5, :cond_11

    .line 517
    .line 518
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_info_black_24:I

    .line 519
    .line 520
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 521
    .line 522
    .line 523
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 524
    .line 525
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 526
    .line 527
    .line 528
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 529
    .line 530
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 531
    .line 532
    .line 533
    :cond_11
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->D0:Lcom/mycompany/app/view/MyButtonImage;

    .line 534
    .line 535
    if-eqz v5, :cond_12

    .line 536
    .line 537
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 538
    .line 539
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 540
    .line 541
    .line 542
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->D0:Lcom/mycompany/app/view/MyButtonImage;

    .line 543
    .line 544
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 545
    .line 546
    .line 547
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->D0:Lcom/mycompany/app/view/MyButtonImage;

    .line 548
    .line 549
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 550
    .line 551
    .line 552
    :cond_12
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 553
    .line 554
    if-eqz v5, :cond_13

    .line 555
    .line 556
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 557
    .line 558
    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 559
    .line 560
    .line 561
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 562
    .line 563
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    .line 565
    .line 566
    :cond_13
    :goto_1
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 567
    .line 568
    if-eqz v5, :cond_16

    .line 569
    .line 570
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl$20;

    .line 571
    .line 572
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$20;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 573
    .line 574
    .line 575
    iput-object v5, v0, Lcom/mycompany/app/view/MyDialogBottom;->q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

    .line 576
    .line 577
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 578
    .line 579
    const/high16 v6, 0x43aa0000    # 340.0f

    .line 580
    .line 581
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    iput v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->f0:I

    .line 590
    .line 591
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 592
    .line 593
    if-nez v5, :cond_14

    .line 594
    .line 595
    goto :goto_2

    .line 596
    :cond_14
    new-instance v6, Lcom/mycompany/app/dialog/DialogDownUrl$19;

    .line 597
    .line 598
    invoke-direct {v6}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v5, v6}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 602
    .line 603
    .line 604
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 605
    .line 606
    invoke-virtual {v5, v9}, Landroid/view/View;->setClipToOutline(Z)V

    .line 607
    .line 608
    .line 609
    :goto_2
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 610
    .line 611
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 612
    .line 613
    if-eqz v6, :cond_15

    .line 614
    .line 615
    const v6, -0xdededf

    .line 616
    .line 617
    .line 618
    goto :goto_3

    .line 619
    :cond_15
    const/4 v6, -0x1

    .line 620
    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 621
    .line 622
    .line 623
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 624
    .line 625
    new-instance v6, Lcom/mycompany/app/dialog/DialogDownUrl$5;

    .line 626
    .line 627
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$5;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    .line 632
    .line 633
    :cond_16
    if-eqz v1, :cond_17

    .line 634
    .line 635
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->Z0:Ljava/lang/String;

    .line 636
    .line 637
    goto :goto_4

    .line 638
    :cond_17
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->d0(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    :goto_4
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 642
    .line 643
    invoke-static {v5, v10}, Lcom/mycompany/app/main/MainUtil;->k7(Landroid/widget/EditText;Z)V

    .line 644
    .line 645
    .line 646
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 647
    .line 648
    new-instance v6, Lcom/mycompany/app/dialog/DialogDownUrl$6;

    .line 649
    .line 650
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$6;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 654
    .line 655
    .line 656
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->s0:Lcom/mycompany/app/view/MyEditText;

    .line 657
    .line 658
    new-instance v6, Lcom/mycompany/app/dialog/DialogDownUrl$7;

    .line 659
    .line 660
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$7;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 664
    .line 665
    .line 666
    sget-boolean v5, Lcom/mycompany/app/pref/PrefRead;->F:Z

    .line 667
    .line 668
    if-eqz v5, :cond_18

    .line 669
    .line 670
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x0:Lcom/mycompany/app/view/MyLineRelative;

    .line 671
    .line 672
    invoke-virtual {v5, v9}, Lcom/mycompany/app/view/MyLineRelative;->setNoti(Z)V

    .line 673
    .line 674
    .line 675
    :cond_18
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->x0:Lcom/mycompany/app/view/MyLineRelative;

    .line 676
    .line 677
    new-instance v6, Lcom/mycompany/app/dialog/DialogDownUrl$8;

    .line 678
    .line 679
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$8;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    .line 684
    .line 685
    iget v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 686
    .line 687
    if-eq v5, v8, :cond_1a

    .line 688
    .line 689
    if-nez v1, :cond_1a

    .line 690
    .line 691
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F1:Ljava/util/List;

    .line 692
    .line 693
    if-eqz v1, :cond_19

    .line 694
    .line 695
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    if-eqz v1, :cond_1a

    .line 700
    .line 701
    :cond_19
    iget v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H1:I

    .line 702
    .line 703
    if-nez v1, :cond_1a

    .line 704
    .line 705
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->g0()V

    .line 706
    .line 707
    .line 708
    :cond_1a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 709
    .line 710
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl$9;

    .line 711
    .line 712
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$9;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    .line 717
    .line 718
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 719
    .line 720
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 721
    .line 722
    .line 723
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 724
    .line 725
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl$10;

    .line 726
    .line 727
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$10;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    .line 732
    .line 733
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 734
    .line 735
    if-eqz v1, :cond_1b

    .line 736
    .line 737
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl$11;

    .line 738
    .line 739
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$11;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    .line 744
    .line 745
    :cond_1b
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 746
    .line 747
    if-eqz v1, :cond_1c

    .line 748
    .line 749
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl$12;

    .line 750
    .line 751
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$12;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    .line 756
    .line 757
    :cond_1c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 758
    .line 759
    if-eqz v1, :cond_1d

    .line 760
    .line 761
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl$13;

    .line 762
    .line 763
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$13;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    .line 768
    .line 769
    :cond_1d
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->D0:Lcom/mycompany/app/view/MyButtonImage;

    .line 770
    .line 771
    if-eqz v1, :cond_1e

    .line 772
    .line 773
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl$14;

    .line 774
    .line 775
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$14;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    .line 780
    .line 781
    :cond_1e
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 782
    .line 783
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl$15;

    .line 784
    .line 785
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$15;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    .line 790
    .line 791
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->N0:Lcom/mycompany/app/view/MyLineText;

    .line 792
    .line 793
    if-eqz v1, :cond_1f

    .line 794
    .line 795
    new-instance v5, Lcom/mycompany/app/dialog/DialogDownUrl$16;

    .line 796
    .line 797
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$16;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    .line 802
    .line 803
    :cond_1f
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 804
    .line 805
    .line 806
    move-result v1

    .line 807
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->S(Z)V

    .line 808
    .line 809
    .line 810
    iget v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->t1:I

    .line 811
    .line 812
    if-ne v1, v9, :cond_20

    .line 813
    .line 814
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 815
    .line 816
    invoke-virtual {v0, v10, v10, v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->R(IILjava/lang/String;)V

    .line 817
    .line 818
    .line 819
    goto :goto_5

    .line 820
    :cond_20
    const/4 v5, 0x2

    .line 821
    if-ne v1, v5, :cond_21

    .line 822
    .line 823
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 824
    .line 825
    invoke-virtual {v0, v10, v9, v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->R(IILjava/lang/String;)V

    .line 826
    .line 827
    .line 828
    :cond_21
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 829
    .line 830
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    .line 832
    .line 833
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->j2:Z

    .line 834
    .line 835
    iput v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->k2:I

    .line 836
    .line 837
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 838
    .line 839
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$17;

    .line 840
    .line 841
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$17;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 845
    .line 846
    .line 847
    :cond_22
    :goto_6
    return-void
.end method
