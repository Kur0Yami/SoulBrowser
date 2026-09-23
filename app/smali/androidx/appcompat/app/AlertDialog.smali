.class public Landroidx/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field public final j:Landroidx/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertDialog;->f(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/appcompat/app/AlertController;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;Landroid/view/Window;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/appcompat/app/AlertDialog;->j:Landroidx/appcompat/app/AlertController;

    .line 22
    .line 23
    return-void
.end method

.method public static f(Landroid/content/Context;I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget v0, Landroidx/appcompat/R$attr;->alertDialogTheme:I

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    return p0
.end method


# virtual methods
.method public final e()Landroidx/appcompat/app/AlertController$RecycleListView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->j:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 4
    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/appcompat/app/AlertDialog;->j:Landroidx/appcompat/app/AlertController;

    .line 7
    .line 8
    iget v2, v1, Landroidx/appcompat/app/AlertController;->u:I

    .line 9
    .line 10
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->b:Landroidx/appcompat/app/AlertDialog;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    .line 18
    .line 19
    sget v4, Landroidx/appcompat/R$id;->parentPanel:I

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    sget v5, Landroidx/appcompat/R$id;->topPanel:I

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget v6, Landroidx/appcompat/R$id;->contentPanel:I

    .line 32
    .line 33
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    sget v7, Landroidx/appcompat/R$id;->buttonPanel:I

    .line 38
    .line 39
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    sget v8, Landroidx/appcompat/R$id;->customPanel:I

    .line 44
    .line 45
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->f:Landroid/view/View;

    .line 52
    .line 53
    if-eqz v8, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v8, 0x0

    .line 57
    :goto_0
    const/4 v10, 0x1

    .line 58
    const/4 v11, 0x0

    .line 59
    if-eqz v8, :cond_1

    .line 60
    .line 61
    move v12, v10

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v12, v11

    .line 64
    :goto_1
    if-eqz v12, :cond_2

    .line 65
    .line 66
    invoke-static {v8}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    if-nez v13, :cond_3

    .line 71
    .line 72
    :cond_2
    const/high16 v13, 0x20000

    .line 73
    .line 74
    invoke-virtual {v3, v13, v13}, Landroid/view/Window;->setFlags(II)V

    .line 75
    .line 76
    .line 77
    :cond_3
    const/16 v13, 0x8

    .line 78
    .line 79
    const/4 v14, -0x1

    .line 80
    if-eqz v12, :cond_5

    .line 81
    .line 82
    sget v12, Landroidx/appcompat/R$id;->custom:I

    .line 83
    .line 84
    invoke-virtual {v3, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    check-cast v12, Landroid/widget/FrameLayout;

    .line 89
    .line 90
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    .line 91
    .line 92
    invoke-direct {v15, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v12, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    iget-boolean v8, v1, Landroidx/appcompat/app/AlertController;->g:Z

    .line 99
    .line 100
    if-eqz v8, :cond_4

    .line 101
    .line 102
    invoke-virtual {v12, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 103
    .line 104
    .line 105
    :cond_4
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 106
    .line 107
    if-eqz v8, :cond_6

    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_2
    sget v8, Landroidx/appcompat/R$id;->topPanel:I

    .line 123
    .line 124
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    sget v12, Landroidx/appcompat/R$id;->contentPanel:I

    .line 129
    .line 130
    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    sget v15, Landroidx/appcompat/R$id;->buttonPanel:I

    .line 135
    .line 136
    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    invoke-static {v8, v5}, Landroidx/appcompat/app/AlertController;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-static {v12, v6}, Landroidx/appcompat/app/AlertController;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-static {v15, v7}, Landroidx/appcompat/app/AlertController;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    sget v8, Landroidx/appcompat/R$id;->scrollView:I

    .line 153
    .line 154
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    check-cast v8, Landroidx/core/widget/NestedScrollView;

    .line 159
    .line 160
    iput-object v8, v1, Landroidx/appcompat/app/AlertController;->m:Landroidx/core/widget/NestedScrollView;

    .line 161
    .line 162
    invoke-virtual {v8, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 163
    .line 164
    .line 165
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->m:Landroidx/core/widget/NestedScrollView;

    .line 166
    .line 167
    invoke-virtual {v8, v11}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 168
    .line 169
    .line 170
    const v8, 0x102000b

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    check-cast v8, Landroid/widget/TextView;

    .line 178
    .line 179
    iput-object v8, v1, Landroidx/appcompat/app/AlertController;->q:Landroid/widget/TextView;

    .line 180
    .line 181
    if-nez v8, :cond_7

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->m:Landroidx/core/widget/NestedScrollView;

    .line 188
    .line 189
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->q:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 195
    .line 196
    if-eqz v8, :cond_8

    .line 197
    .line 198
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->m:Landroidx/core/widget/NestedScrollView;

    .line 199
    .line 200
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    check-cast v8, Landroid/view/ViewGroup;

    .line 205
    .line 206
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->m:Landroidx/core/widget/NestedScrollView;

    .line 207
    .line 208
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 213
    .line 214
    .line 215
    iget-object v15, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 216
    .line 217
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 218
    .line 219
    invoke-direct {v9, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8, v15, v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_8
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    :goto_3
    const v8, 0x1020019

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    check-cast v8, Landroid/widget/Button;

    .line 237
    .line 238
    iput-object v8, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    .line 239
    .line 240
    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->A:Landroid/view/View$OnClickListener;

    .line 241
    .line 242
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    const/4 v8, 0x0

    .line 246
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-eqz v8, :cond_9

    .line 251
    .line 252
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    .line 253
    .line 254
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    move v8, v11

    .line 258
    goto :goto_4

    .line 259
    :cond_9
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    .line 260
    .line 261
    const/4 v12, 0x0

    .line 262
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    .line 266
    .line 267
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    move v8, v10

    .line 271
    :goto_4
    const v12, 0x102001a

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    check-cast v12, Landroid/widget/Button;

    .line 279
    .line 280
    iput-object v12, v1, Landroidx/appcompat/app/AlertController;->i:Landroid/widget/Button;

    .line 281
    .line 282
    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->j:Ljava/lang/CharSequence;

    .line 286
    .line 287
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    if-eqz v12, :cond_a

    .line 292
    .line 293
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->i:Landroid/widget/Button;

    .line 294
    .line 295
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_a
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->i:Landroid/widget/Button;

    .line 300
    .line 301
    iget-object v15, v1, Landroidx/appcompat/app/AlertController;->j:Ljava/lang/CharSequence;

    .line 302
    .line 303
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .line 305
    .line 306
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->i:Landroid/widget/Button;

    .line 307
    .line 308
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 309
    .line 310
    .line 311
    or-int/lit8 v8, v8, 0x2

    .line 312
    .line 313
    :goto_5
    const v12, 0x102001b

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v12

    .line 320
    check-cast v12, Landroid/widget/Button;

    .line 321
    .line 322
    iput-object v12, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/Button;

    .line 323
    .line 324
    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    .line 326
    .line 327
    const/4 v9, 0x0

    .line 328
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    if-eqz v9, :cond_b

    .line 333
    .line 334
    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/Button;

    .line 335
    .line 336
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_b
    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/Button;

    .line 341
    .line 342
    const/4 v12, 0x0

    .line 343
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    .line 346
    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/Button;

    .line 347
    .line 348
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    or-int/lit8 v8, v8, 0x4

    .line 352
    .line 353
    :goto_6
    new-instance v9, Landroid/util/TypedValue;

    .line 354
    .line 355
    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    sget v12, Landroidx/appcompat/R$attr;->alertDialogCenterButtons:I

    .line 363
    .line 364
    invoke-virtual {v2, v12, v9, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 365
    .line 366
    .line 367
    iget v2, v9, Landroid/util/TypedValue;->data:I

    .line 368
    .line 369
    const/4 v9, 0x2

    .line 370
    if-eqz v2, :cond_e

    .line 371
    .line 372
    const/high16 v2, 0x3f000000    # 0.5f

    .line 373
    .line 374
    if-ne v8, v10, :cond_c

    .line 375
    .line 376
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->h:Landroid/widget/Button;

    .line 377
    .line 378
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 379
    .line 380
    .line 381
    move-result-object v15

    .line 382
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 383
    .line 384
    iput v10, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 385
    .line 386
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 387
    .line 388
    invoke-virtual {v12, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .line 390
    .line 391
    goto :goto_7

    .line 392
    :cond_c
    if-ne v8, v9, :cond_d

    .line 393
    .line 394
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->i:Landroid/widget/Button;

    .line 395
    .line 396
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 397
    .line 398
    .line 399
    move-result-object v15

    .line 400
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 401
    .line 402
    iput v10, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 403
    .line 404
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 405
    .line 406
    invoke-virtual {v12, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_d
    const/4 v12, 0x4

    .line 411
    if-ne v8, v12, :cond_e

    .line 412
    .line 413
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->l:Landroid/widget/Button;

    .line 414
    .line 415
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 416
    .line 417
    .line 418
    move-result-object v15

    .line 419
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 420
    .line 421
    iput v10, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 422
    .line 423
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 424
    .line 425
    invoke-virtual {v12, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    .line 427
    .line 428
    :cond_e
    :goto_7
    if-eqz v8, :cond_f

    .line 429
    .line 430
    goto :goto_8

    .line 431
    :cond_f
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    :goto_8
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->r:Landroid/view/View;

    .line 435
    .line 436
    if-eqz v2, :cond_10

    .line 437
    .line 438
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 439
    .line 440
    const/4 v8, -0x2

    .line 441
    invoke-direct {v2, v14, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 442
    .line 443
    .line 444
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->r:Landroid/view/View;

    .line 445
    .line 446
    invoke-virtual {v5, v8, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 447
    .line 448
    .line 449
    sget v2, Landroidx/appcompat/R$id;->title_template:I

    .line 450
    .line 451
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 456
    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_10
    const v2, 0x1020006

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    check-cast v2, Landroid/widget/ImageView;

    .line 467
    .line 468
    iput-object v2, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 469
    .line 470
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 471
    .line 472
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-nez v2, :cond_12

    .line 477
    .line 478
    iget-boolean v2, v1, Landroidx/appcompat/app/AlertController;->y:Z

    .line 479
    .line 480
    if-eqz v2, :cond_12

    .line 481
    .line 482
    sget v2, Landroidx/appcompat/R$id;->alertTitle:I

    .line 483
    .line 484
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    check-cast v2, Landroid/widget/TextView;

    .line 489
    .line 490
    iput-object v2, v1, Landroidx/appcompat/app/AlertController;->p:Landroid/widget/TextView;

    .line 491
    .line 492
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 493
    .line 494
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->n:Landroid/graphics/drawable/Drawable;

    .line 498
    .line 499
    if-eqz v2, :cond_11

    .line 500
    .line 501
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 502
    .line 503
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    .line 505
    .line 506
    goto :goto_9

    .line 507
    :cond_11
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->p:Landroid/widget/TextView;

    .line 508
    .line 509
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 510
    .line 511
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    iget-object v12, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 516
    .line 517
    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    .line 518
    .line 519
    .line 520
    move-result v12

    .line 521
    iget-object v15, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 522
    .line 523
    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    .line 524
    .line 525
    .line 526
    move-result v15

    .line 527
    iget-object v9, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 528
    .line 529
    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    .line 530
    .line 531
    .line 532
    move-result v9

    .line 533
    invoke-virtual {v2, v8, v12, v15, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 534
    .line 535
    .line 536
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 537
    .line 538
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_12
    sget v2, Landroidx/appcompat/R$id;->title_template:I

    .line 543
    .line 544
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 549
    .line 550
    .line 551
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 552
    .line 553
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 557
    .line 558
    .line 559
    :goto_9
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    if-eq v2, v13, :cond_13

    .line 564
    .line 565
    move v2, v10

    .line 566
    goto :goto_a

    .line 567
    :cond_13
    move v2, v11

    .line 568
    :goto_a
    if-eqz v5, :cond_14

    .line 569
    .line 570
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    if-eq v4, v13, :cond_14

    .line 575
    .line 576
    move v4, v10

    .line 577
    goto :goto_b

    .line 578
    :cond_14
    move v4, v11

    .line 579
    :goto_b
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 580
    .line 581
    .line 582
    move-result v7

    .line 583
    if-eq v7, v13, :cond_15

    .line 584
    .line 585
    move v7, v10

    .line 586
    goto :goto_c

    .line 587
    :cond_15
    move v7, v11

    .line 588
    :goto_c
    if-nez v7, :cond_16

    .line 589
    .line 590
    sget v8, Landroidx/appcompat/R$id;->textSpacerNoButtons:I

    .line 591
    .line 592
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 593
    .line 594
    .line 595
    move-result-object v8

    .line 596
    if-eqz v8, :cond_16

    .line 597
    .line 598
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 599
    .line 600
    .line 601
    :cond_16
    if-eqz v4, :cond_19

    .line 602
    .line 603
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->m:Landroidx/core/widget/NestedScrollView;

    .line 604
    .line 605
    if-eqz v8, :cond_17

    .line 606
    .line 607
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 608
    .line 609
    .line 610
    :cond_17
    iget-object v8, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 611
    .line 612
    if-eqz v8, :cond_18

    .line 613
    .line 614
    sget v8, Landroidx/appcompat/R$id;->titleDividerNoCustom:I

    .line 615
    .line 616
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 617
    .line 618
    .line 619
    move-result-object v9

    .line 620
    goto :goto_d

    .line 621
    :cond_18
    const/4 v9, 0x0

    .line 622
    :goto_d
    if-eqz v9, :cond_1a

    .line 623
    .line 624
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 625
    .line 626
    .line 627
    goto :goto_e

    .line 628
    :cond_19
    sget v5, Landroidx/appcompat/R$id;->textSpacerNoTitle:I

    .line 629
    .line 630
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    if-eqz v5, :cond_1a

    .line 635
    .line 636
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 637
    .line 638
    .line 639
    :cond_1a
    :goto_e
    iget-object v5, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 640
    .line 641
    if-eqz v5, :cond_1e

    .line 642
    .line 643
    if-eqz v7, :cond_1b

    .line 644
    .line 645
    if-nez v4, :cond_1e

    .line 646
    .line 647
    :cond_1b
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 648
    .line 649
    .line 650
    move-result v8

    .line 651
    if-eqz v4, :cond_1c

    .line 652
    .line 653
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 654
    .line 655
    .line 656
    move-result v9

    .line 657
    goto :goto_f

    .line 658
    :cond_1c
    iget v9, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->c:I

    .line 659
    .line 660
    :goto_f
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 661
    .line 662
    .line 663
    move-result v12

    .line 664
    if-eqz v7, :cond_1d

    .line 665
    .line 666
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 667
    .line 668
    .line 669
    move-result v13

    .line 670
    goto :goto_10

    .line 671
    :cond_1d
    iget v13, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->f:I

    .line 672
    .line 673
    :goto_10
    invoke-virtual {v5, v8, v9, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 674
    .line 675
    .line 676
    :cond_1e
    if-nez v2, :cond_22

    .line 677
    .line 678
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 679
    .line 680
    if-eqz v2, :cond_1f

    .line 681
    .line 682
    goto :goto_11

    .line 683
    :cond_1f
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->m:Landroidx/core/widget/NestedScrollView;

    .line 684
    .line 685
    :goto_11
    if-eqz v2, :cond_22

    .line 686
    .line 687
    if-eqz v7, :cond_20

    .line 688
    .line 689
    const/4 v11, 0x2

    .line 690
    :cond_20
    or-int/2addr v4, v11

    .line 691
    sget v5, Landroidx/appcompat/R$id;->scrollIndicatorUp:I

    .line 692
    .line 693
    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    sget v7, Landroidx/appcompat/R$id;->scrollIndicatorDown:I

    .line 698
    .line 699
    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    invoke-static {v2, v4}, Landroidx/core/view/ViewCompat;->J(Landroid/view/ViewGroup;I)V

    .line 704
    .line 705
    .line 706
    if-eqz v5, :cond_21

    .line 707
    .line 708
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 709
    .line 710
    .line 711
    :cond_21
    if-eqz v3, :cond_22

    .line 712
    .line 713
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 714
    .line 715
    .line 716
    :cond_22
    iget-object v2, v1, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 717
    .line 718
    if-eqz v2, :cond_23

    .line 719
    .line 720
    iget-object v3, v1, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/ListAdapter;

    .line 721
    .line 722
    if-eqz v3, :cond_23

    .line 723
    .line 724
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 725
    .line 726
    .line 727
    iget v1, v1, Landroidx/appcompat/app/AlertController;->t:I

    .line 728
    .line 729
    if-le v1, v14, :cond_23

    .line 730
    .line 731
    invoke-virtual {v2, v1, v10}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 735
    .line 736
    .line 737
    :cond_23
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->j:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->m:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->c(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->j:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->m:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->c(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->j:Landroidx/appcompat/app/AlertController;

    .line 5
    .line 6
    iput-object p1, v0, Landroidx/appcompat/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->p:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
