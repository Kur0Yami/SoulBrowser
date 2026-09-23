.class Lcom/mycompany/app/view/MySnackbar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$2;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$2;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v1, v2, :cond_f

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    const/high16 v2, -0x1000000

    .line 14
    .line 15
    const/16 v3, 0x11

    .line 16
    .line 17
    const v4, -0x50506

    .line 18
    .line 19
    .line 20
    const/high16 v5, 0x41600000    # 14.0f

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x1

    .line 24
    if-ne v1, v7, :cond_3

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 27
    .line 28
    if-nez v1, :cond_e

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MySnackSub;

    .line 37
    .line 38
    iget-object v8, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 39
    .line 40
    invoke-direct {v1, v8}, Lcom/mycompany/app/view/MySnackSub;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MySnackSub;->setBodyView(Lcom/mycompany/app/view/MySnackbar;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    iget-object v8, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 51
    .line 52
    invoke-direct {v1, v8, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 58
    .line 59
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    invoke-virtual {v1, v7, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    move v2, v4

    .line 86
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    iget v2, v0, Lcom/mycompany/app/view/MySnackbar;->j:I

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 97
    .line 98
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$3;

    .line 99
    .line 100
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$3;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    const/4 v8, 0x2

    .line 108
    const/4 v9, 0x0

    .line 109
    if-ne v1, v8, :cond_6

    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 112
    .line 113
    if-nez v1, :cond_e

    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_4
    new-instance v1, Lcom/mycompany/app/view/MySnackSub;

    .line 122
    .line 123
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 124
    .line 125
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MySnackSub;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MySnackSub;->setBodyView(Lcom/mycompany/app/view/MySnackbar;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 136
    .line 137
    invoke-direct {v1, v2, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    .line 139
    .line 140
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 143
    .line 144
    invoke-virtual {v1, v2, v9, v2, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 153
    .line 154
    invoke-virtual {v1, v7, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 155
    .line 156
    .line 157
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 158
    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    const v2, -0xe19938

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    .line 188
    .line 189
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    iget v2, v0, Lcom/mycompany/app/view/MySnackbar;->k:I

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$4;

    .line 199
    .line 200
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$4;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 207
    .line 208
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$5;

    .line 209
    .line 210
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$5;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 218
    .line 219
    if-nez v1, :cond_e

    .line 220
    .line 221
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 222
    .line 223
    if-nez v1, :cond_7

    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :cond_7
    new-instance v1, Lcom/mycompany/app/view/MySnackSub;

    .line 228
    .line 229
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 230
    .line 231
    invoke-direct {v1, v3}, Lcom/mycompany/app/view/MySnackSub;-><init>(Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MySnackSub;->setBodyView(Lcom/mycompany/app/view/MySnackbar;)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Landroid/widget/LinearLayout;

    .line 240
    .line 241
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 242
    .line 243
    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 244
    .line 245
    .line 246
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 247
    .line 248
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 249
    .line 250
    invoke-virtual {v1, v3, v9, v3, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 251
    .line 252
    .line 253
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 254
    .line 255
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->C:Landroid/widget/LinearLayout;

    .line 259
    .line 260
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 261
    .line 262
    .line 263
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 264
    .line 265
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 266
    .line 267
    invoke-direct {v1, v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 268
    .line 269
    .line 270
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 271
    .line 272
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 273
    .line 274
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 275
    .line 276
    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 280
    .line 281
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 282
    .line 283
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 284
    .line 285
    .line 286
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 287
    .line 288
    const/16 v3, 0x10

    .line 289
    .line 290
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 291
    .line 292
    .line 293
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 294
    .line 295
    invoke-virtual {v1, v7, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 301
    .line 302
    if-eqz v3, :cond_8

    .line 303
    .line 304
    move v2, v4

    .line 305
    :cond_8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    iget v2, v0, Lcom/mycompany/app/view/MySnackbar;->j:I

    .line 311
    .line 312
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 313
    .line 314
    .line 315
    iget v1, v0, Lcom/mycompany/app/view/MySnackbar;->k:I

    .line 316
    .line 317
    const v2, -0x1f1f20

    .line 318
    .line 319
    .line 320
    const v3, -0xc0c0c1

    .line 321
    .line 322
    .line 323
    if-eqz v1, :cond_a

    .line 324
    .line 325
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 326
    .line 327
    iget-object v4, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 328
    .line 329
    invoke-direct {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 333
    .line 334
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 335
    .line 336
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 337
    .line 338
    .line 339
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 340
    .line 341
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 342
    .line 343
    if-eqz v4, :cond_9

    .line 344
    .line 345
    move v4, v3

    .line 346
    goto :goto_1

    .line 347
    :cond_9
    move v4, v2

    .line 348
    :goto_1
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 352
    .line 353
    iget v4, v0, Lcom/mycompany/app/view/MySnackbar;->k:I

    .line 354
    .line 355
    invoke-static {v4}, Lcom/mycompany/app/view/MySnackbar;->j(I)I

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 363
    .line 364
    new-instance v4, Lcom/mycompany/app/view/MySnackbar$6;

    .line 365
    .line 366
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MySnackbar$6;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    .line 371
    .line 372
    :cond_a
    iget v1, v0, Lcom/mycompany/app/view/MySnackbar;->l:I

    .line 373
    .line 374
    if-eqz v1, :cond_d

    .line 375
    .line 376
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 377
    .line 378
    iget-object v4, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 379
    .line 380
    invoke-direct {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 381
    .line 382
    .line 383
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 384
    .line 385
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 386
    .line 387
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 388
    .line 389
    .line 390
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 391
    .line 392
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 393
    .line 394
    if-eqz v4, :cond_b

    .line 395
    .line 396
    move v2, v3

    .line 397
    :cond_b
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 401
    .line 402
    iget v2, v0, Lcom/mycompany/app/view/MySnackbar;->l:I

    .line 403
    .line 404
    invoke-static {v2}, Lcom/mycompany/app/view/MySnackbar;->j(I)I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 409
    .line 410
    .line 411
    iget-boolean v1, v0, Lcom/mycompany/app/view/MySnackbar;->o:Z

    .line 412
    .line 413
    if-eqz v1, :cond_c

    .line 414
    .line 415
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 416
    .line 417
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 418
    .line 419
    .line 420
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 421
    .line 422
    invoke-virtual {v1, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 426
    .line 427
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$7;

    .line 428
    .line 429
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$7;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    .line 434
    .line 435
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 436
    .line 437
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$8;

    .line 438
    .line 439
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$8;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 443
    .line 444
    .line 445
    :cond_e
    :goto_2
    return-void

    .line 446
    :cond_f
    :goto_3
    invoke-static {v0}, Lcom/mycompany/app/view/MySnackbar;->c(Lcom/mycompany/app/view/MySnackbar;)V

    .line 447
    .line 448
    .line 449
    return-void
.end method
