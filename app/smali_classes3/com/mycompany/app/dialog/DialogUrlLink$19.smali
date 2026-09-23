.class Lcom/mycompany/app/dialog/DialogUrlLink$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$19;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$19;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-eqz v1, :cond_f

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->h0:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v1, :cond_a

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v4, 0x7

    .line 30
    const/4 v5, 0x2

    .line 31
    if-nez v1, :cond_5

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogUrlLink;->O(Landroid/graphics/Bitmap;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v5, v1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v6, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogUrlLink;->O(Landroid/graphics/Bitmap;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    new-instance v1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 85
    .line 86
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->j0:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 93
    .line 94
    iput v5, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 95
    .line 96
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->K0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 97
    .line 98
    if-nez v4, :cond_4

    .line 99
    .line 100
    new-instance v4, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 101
    .line 102
    invoke-direct {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-boolean v2, v4, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 106
    .line 107
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 110
    .line 111
    .line 112
    new-instance v2, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v2, v4, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 118
    .line 119
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 120
    .line 121
    invoke-direct {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 122
    .line 123
    .line 124
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->K0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 125
    .line 126
    :cond_4
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogUrlLink;->O(Landroid/graphics/Bitmap;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 134
    .line 135
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->K0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 136
    .line 137
    new-instance v5, Lcom/mycompany/app/dialog/DialogUrlLink$26;

    .line 138
    .line 139
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$26;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 147
    .line 148
    if-nez v1, :cond_6

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->h0:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_7

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogUrlLink;->P(Landroid/graphics/Bitmap;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->h0:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v5, v1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_8

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogUrlLink;->P(Landroid/graphics/Bitmap;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_8
    new-instance v1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 193
    .line 194
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 195
    .line 196
    .line 197
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 198
    .line 199
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->h0:Ljava/lang/String;

    .line 200
    .line 201
    iput-object v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 202
    .line 203
    iput v5, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 204
    .line 205
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->K0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 206
    .line 207
    if-nez v3, :cond_9

    .line 208
    .line 209
    new-instance v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 210
    .line 211
    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 212
    .line 213
    .line 214
    iput-boolean v2, v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 215
    .line 216
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 219
    .line 220
    .line 221
    new-instance v2, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 222
    .line 223
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-object v2, v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 227
    .line 228
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 229
    .line 230
    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 231
    .line 232
    .line 233
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->K0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 234
    .line 235
    :cond_9
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 240
    .line 241
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->K0:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 242
    .line 243
    new-instance v5, Lcom/mycompany/app/dialog/DialogUrlLink$25;

    .line 244
    .line 245
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$25;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 253
    .line 254
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-nez v1, :cond_b

    .line 259
    .line 260
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->D(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 265
    .line 266
    if-nez v1, :cond_c

    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_c
    const/4 v4, 0x0

    .line 270
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->c0:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_d

    .line 280
    .line 281
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 282
    .line 283
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 284
    .line 285
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->e0:Ljava/lang/String;

    .line 286
    .line 287
    const v4, -0x70708

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :cond_d
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 295
    .line 296
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 297
    .line 298
    .line 299
    const/16 v3, 0x12

    .line 300
    .line 301
    iput v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 302
    .line 303
    const/16 v3, 0xb

    .line 304
    .line 305
    iput v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 306
    .line 307
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->c0:Ljava/lang/String;

    .line 308
    .line 309
    iput-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 310
    .line 311
    invoke-static {v1}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-eqz v5, :cond_e

    .line 320
    .line 321
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 324
    .line 325
    .line 326
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 327
    .line 328
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :cond_e
    new-instance v2, Lcom/mycompany/app/main/MainListLoader;

    .line 333
    .line 334
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 335
    .line 336
    new-instance v5, Lcom/mycompany/app/dialog/DialogUrlLink$20;

    .line 337
    .line 338
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$20;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 339
    .line 340
    .line 341
    invoke-direct {v2, v3, v4, v5}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 342
    .line 343
    .line 344
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->J0:Lcom/mycompany/app/main/MainListLoader;

    .line 345
    .line 346
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 347
    .line 348
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->J0:Lcom/mycompany/app/main/MainListLoader;

    .line 356
    .line 357
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->w0:Lcom/mycompany/app/view/MyRoundImage;

    .line 358
    .line 359
    invoke-virtual {v2, v1, v0}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 360
    .line 361
    .line 362
    :cond_f
    :goto_0
    return-void
.end method
