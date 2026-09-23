.class Landroidx/mediarouter/app/MediaRouteControllerDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;->f:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;->f:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->x:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->k0:Z

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iput-boolean v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->l0:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 23
    .line 24
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .line 32
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const/4 v6, -0x1

    .line 35
    invoke-static {v5, v6}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o(Landroid/view/View;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->h()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v1, v5}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->u(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 62
    .line 63
    const/high16 v7, 0x40000000    # 2.0f

    .line 64
    .line 65
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const/4 v7, 0x0

    .line 70
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 71
    .line 72
    .line 73
    iget-object v6, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-static {v6, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o(Landroid/view/View;I)V

    .line 76
    .line 77
    .line 78
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->z:Landroid/widget/ImageView;

    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    instance-of v4, v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 85
    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->z:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eqz v4, :cond_2

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    invoke-virtual {v1, v6, v8}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->k(II)I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    iget-object v8, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->z:Landroid/widget/ImageView;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-lt v9, v4, :cond_1

    .line 125
    .line 126
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 130
    .line 131
    :goto_0
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    move v6, v7

    .line 136
    :goto_1
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->h()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-virtual {v1, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->l(Z)I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    iget-object v8, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->L:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_3

    .line 155
    .line 156
    iget v9, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->T:I

    .line 157
    .line 158
    iget-object v10, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-static {v10}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    mul-int/2addr v10, v9

    .line 169
    goto :goto_2

    .line 170
    :cond_3
    move v10, v7

    .line 171
    :goto_2
    if-lez v8, :cond_4

    .line 172
    .line 173
    iget v8, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->V:I

    .line 174
    .line 175
    add-int/2addr v10, v8

    .line 176
    :cond_4
    iget v8, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->U:I

    .line 177
    .line 178
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    iget-boolean v9, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->j0:Z

    .line 183
    .line 184
    if-eqz v9, :cond_5

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    move v8, v7

    .line 188
    :goto_3
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    add-int/2addr v9, v4

    .line 193
    new-instance v10, Landroid/graphics/Rect;

    .line 194
    .line 195
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 199
    .line 200
    .line 201
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->w:Landroid/widget/LinearLayout;

    .line 202
    .line 203
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    iget-object v11, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->x:Landroid/widget/FrameLayout;

    .line 208
    .line 209
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    sub-int/2addr v5, v11

    .line 214
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    sub-int/2addr v11, v5

    .line 219
    const/16 v5, 0x8

    .line 220
    .line 221
    if-lez v6, :cond_6

    .line 222
    .line 223
    if-gt v9, v11, :cond_6

    .line 224
    .line 225
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->z:Landroid/widget/ImageView;

    .line 226
    .line 227
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->z:Landroid/widget/ImageView;

    .line 231
    .line 232
    invoke-static {v4, v6}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o(Landroid/view/View;I)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_6
    iget-object v6, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 237
    .line 238
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    .line 244
    iget-object v9, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 245
    .line 246
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    add-int/2addr v9, v6

    .line 251
    iget-object v6, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->x:Landroid/widget/FrameLayout;

    .line 252
    .line 253
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    if-lt v9, v6, :cond_7

    .line 258
    .line 259
    iget-object v6, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->z:Landroid/widget/ImageView;

    .line 260
    .line 261
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :cond_7
    add-int v9, v8, v4

    .line 265
    .line 266
    move v6, v7

    .line 267
    :goto_4
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->h()Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_8

    .line 272
    .line 273
    if-gt v9, v11, :cond_8

    .line 274
    .line 275
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->G:Landroid/widget/RelativeLayout;

    .line 276
    .line 277
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_8
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->G:Landroid/widget/RelativeLayout;

    .line 282
    .line 283
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    :goto_5
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->G:Landroid/widget/RelativeLayout;

    .line 287
    .line 288
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-nez v4, :cond_9

    .line 293
    .line 294
    move v4, v3

    .line 295
    goto :goto_6

    .line 296
    :cond_9
    move v4, v7

    .line 297
    :goto_6
    invoke-virtual {v1, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->u(Z)V

    .line 298
    .line 299
    .line 300
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->G:Landroid/widget/RelativeLayout;

    .line 301
    .line 302
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-nez v4, :cond_a

    .line 307
    .line 308
    move v4, v3

    .line 309
    goto :goto_7

    .line 310
    :cond_a
    move v4, v7

    .line 311
    :goto_7
    invoke-virtual {v1, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->l(Z)I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    add-int/2addr v5, v4

    .line 320
    if-le v5, v11, :cond_b

    .line 321
    .line 322
    sub-int/2addr v5, v11

    .line 323
    sub-int/2addr v8, v5

    .line 324
    goto :goto_8

    .line 325
    :cond_b
    move v11, v5

    .line 326
    :goto_8
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 327
    .line 328
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 329
    .line 330
    .line 331
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 332
    .line 333
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 334
    .line 335
    .line 336
    iget-object v5, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->x:Landroid/widget/FrameLayout;

    .line 337
    .line 338
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 339
    .line 340
    .line 341
    iget-boolean v5, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;->c:Z

    .line 342
    .line 343
    if-eqz v5, :cond_c

    .line 344
    .line 345
    iget-object v6, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 346
    .line 347
    invoke-virtual {v1, v6, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->g(Landroid/view/View;I)V

    .line 348
    .line 349
    .line 350
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 351
    .line 352
    invoke-virtual {v1, v4, v8}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->g(Landroid/view/View;I)V

    .line 353
    .line 354
    .line 355
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->x:Landroid/widget/FrameLayout;

    .line 356
    .line 357
    invoke-virtual {v1, v4, v11}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->g(Landroid/view/View;I)V

    .line 358
    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_c
    iget-object v6, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 362
    .line 363
    invoke-static {v6, v4}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o(Landroid/view/View;I)V

    .line 364
    .line 365
    .line 366
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 367
    .line 368
    invoke-static {v4, v8}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o(Landroid/view/View;I)V

    .line 369
    .line 370
    .line 371
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->x:Landroid/widget/FrameLayout;

    .line 372
    .line 373
    invoke-static {v4, v11}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o(Landroid/view/View;I)V

    .line 374
    .line 375
    .line 376
    :goto_9
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->v:Landroid/widget/FrameLayout;

    .line 377
    .line 378
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    invoke-static {v4, v6}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o(Landroid/view/View;I)V

    .line 383
    .line 384
    .line 385
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-eqz v4, :cond_d

    .line 396
    .line 397
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->L:Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 400
    .line 401
    .line 402
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->K:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 403
    .line 404
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    :cond_d
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->L:Ljava/util/ArrayList;

    .line 409
    .line 410
    new-instance v6, Ljava/util/HashSet;

    .line 411
    .line 412
    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 413
    .line 414
    .line 415
    new-instance v4, Ljava/util/HashSet;

    .line 416
    .line 417
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    if-eqz v4, :cond_e

    .line 425
    .line 426
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->K:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 427
    .line 428
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 429
    .line 430
    .line 431
    return-void

    .line 432
    :cond_e
    if-eqz v5, :cond_f

    .line 433
    .line 434
    iget-object v6, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 435
    .line 436
    iget-object v8, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->K:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 437
    .line 438
    new-instance v9, Ljava/util/HashMap;

    .line 439
    .line 440
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 444
    .line 445
    .line 446
    move-result v10

    .line 447
    move v11, v7

    .line 448
    :goto_a
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 449
    .line 450
    .line 451
    move-result v12

    .line 452
    if-ge v11, v12, :cond_10

    .line 453
    .line 454
    add-int v12, v10, v11

    .line 455
    .line 456
    invoke-virtual {v8, v12}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v12

    .line 460
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 461
    .line 462
    .line 463
    move-result-object v13

    .line 464
    new-instance v14, Landroid/graphics/Rect;

    .line 465
    .line 466
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    .line 467
    .line 468
    .line 469
    move-result v15

    .line 470
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    .line 479
    .line 480
    .line 481
    move-result v13

    .line 482
    invoke-direct {v14, v15, v4, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v9, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    add-int/lit8 v11, v11, 0x1

    .line 489
    .line 490
    const/4 v3, 0x1

    .line 491
    goto :goto_a

    .line 492
    :cond_f
    const/4 v9, 0x0

    .line 493
    :cond_10
    if-eqz v5, :cond_11

    .line 494
    .line 495
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->n:Landroid/content/Context;

    .line 496
    .line 497
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 498
    .line 499
    iget-object v6, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->K:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 500
    .line 501
    new-instance v8, Ljava/util/HashMap;

    .line 502
    .line 503
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 507
    .line 508
    .line 509
    move-result v10

    .line 510
    move v11, v7

    .line 511
    :goto_b
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 512
    .line 513
    .line 514
    move-result v12

    .line 515
    if-ge v11, v12, :cond_12

    .line 516
    .line 517
    add-int v12, v10, v11

    .line 518
    .line 519
    invoke-virtual {v6, v12}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v12

    .line 523
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 524
    .line 525
    .line 526
    move-result-object v13

    .line 527
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 528
    .line 529
    .line 530
    move-result v14

    .line 531
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    .line 532
    .line 533
    .line 534
    move-result v15

    .line 535
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 536
    .line 537
    invoke-static {v14, v15, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    new-instance v14, Landroid/graphics/Canvas;

    .line 542
    .line 543
    invoke-direct {v14, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v13, v14}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 547
    .line 548
    .line 549
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 550
    .line 551
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 552
    .line 553
    .line 554
    move-result-object v14

    .line 555
    invoke-direct {v13, v14, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    add-int/lit8 v11, v11, 0x1

    .line 562
    .line 563
    const/4 v7, 0x0

    .line 564
    goto :goto_b

    .line 565
    :cond_11
    const/4 v8, 0x0

    .line 566
    :cond_12
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->L:Ljava/util/ArrayList;

    .line 567
    .line 568
    new-instance v4, Ljava/util/HashSet;

    .line 569
    .line 570
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 574
    .line 575
    .line 576
    iput-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->M:Ljava/util/HashSet;

    .line 577
    .line 578
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->L:Ljava/util/ArrayList;

    .line 579
    .line 580
    new-instance v4, Ljava/util/HashSet;

    .line 581
    .line 582
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 586
    .line 587
    .line 588
    iput-object v4, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->N:Ljava/util/HashSet;

    .line 589
    .line 590
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->L:Ljava/util/ArrayList;

    .line 591
    .line 592
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->M:Ljava/util/HashSet;

    .line 593
    .line 594
    const/4 v4, 0x0

    .line 595
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 596
    .line 597
    .line 598
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->L:Ljava/util/ArrayList;

    .line 599
    .line 600
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->N:Ljava/util/HashSet;

    .line 601
    .line 602
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 603
    .line 604
    .line 605
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->K:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 606
    .line 607
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 608
    .line 609
    .line 610
    if-eqz v5, :cond_13

    .line 611
    .line 612
    iget-boolean v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->j0:Z

    .line 613
    .line 614
    if-eqz v2, :cond_13

    .line 615
    .line 616
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->M:Ljava/util/HashSet;

    .line 617
    .line 618
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    iget-object v3, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->N:Ljava/util/HashSet;

    .line 623
    .line 624
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 625
    .line 626
    .line 627
    move-result v3

    .line 628
    add-int/2addr v3, v2

    .line 629
    if-lez v3, :cond_13

    .line 630
    .line 631
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 632
    .line 633
    const/4 v4, 0x0

    .line 634
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 635
    .line 636
    .line 637
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 638
    .line 639
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 640
    .line 641
    .line 642
    const/4 v2, 0x1

    .line 643
    iput-boolean v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->k0:Z

    .line 644
    .line 645
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 646
    .line 647
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    new-instance v3, Landroidx/mediarouter/app/MediaRouteControllerDialog$8;

    .line 652
    .line 653
    invoke-direct {v3, v1, v9, v8}, Landroidx/mediarouter/app/MediaRouteControllerDialog$8;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 657
    .line 658
    .line 659
    return-void

    .line 660
    :cond_13
    const/4 v2, 0x0

    .line 661
    iput-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->M:Ljava/util/HashSet;

    .line 662
    .line 663
    iput-object v2, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->N:Ljava/util/HashSet;

    .line 664
    .line 665
    return-void
.end method
