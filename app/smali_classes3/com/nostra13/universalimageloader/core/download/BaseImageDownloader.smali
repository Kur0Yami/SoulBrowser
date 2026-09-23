.class public Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->a:Landroid/content/Context;

    .line 9
    .line 10
    const/16 p1, 0x1388

    .line 11
    .line 12
    iput p1, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->b:I

    .line 13
    .line 14
    const/16 p1, 0x4e20

    .line 15
    .line 16
    iput p1, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->c:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;)Ljava/io/InputStream;
    .locals 6

    .line 1
    if-eqz p1, :cond_18

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->a:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 25
    .line 26
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->U3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const-string v2, "flv"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    const-string v2, "video/"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 80
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 v2, 0x1d

    .line 84
    .line 85
    if-lt v0, v2, :cond_4

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_4
    const/4 v0, 0x2

    .line 90
    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_14

    .line 95
    .line 96
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .line 100
    .line 101
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 102
    .line 103
    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    .line 105
    .line 106
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_5
    :goto_1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 117
    .line 118
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const v2, 0x8000

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 131
    .line 132
    new-instance v2, Ljava/io/File;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 135
    .line 136
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    long-to-int p1, v2

    .line 144
    invoke-direct {v1, v0, p1}, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;-><init>(Ljava/io/BufferedInputStream;I)V

    .line 145
    .line 146
    .line 147
    return-object v1

    .line 148
    :pswitch_0
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :cond_6
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v1, v2, v3, v4, p1}, Lcom/mycompany/app/main/MainUtil;->g0(IJLandroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f0(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    return-object p1

    .line 169
    :pswitch_1
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :cond_7
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    return-object p1

    .line 194
    :pswitch_2
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_8

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :cond_8
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    return-object p1

    .line 215
    :pswitch_3
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_9

    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_9
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 226
    .line 227
    if-nez v0, :cond_a

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_a
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v0, p1}, Lcom/mycompany/app/compress/Compress;->o(Ljava/lang/String;)Ljava/io/InputStream;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    return-object p1

    .line 238
    :pswitch_4
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_b

    .line 245
    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :cond_b
    const-string v1, "data:image/"

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_d

    .line 255
    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-eqz p1, :cond_c

    .line 261
    .line 262
    return-object v5

    .line 263
    :cond_c
    invoke-static {v4, v0}, Lcom/mycompany/app/main/MainUtil;->d0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f0(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    return-object p1

    .line 272
    :cond_d
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {p0, v0, p1}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    return-object p1

    .line 279
    :pswitch_5
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_e

    .line 286
    .line 287
    goto/16 :goto_2

    .line 288
    .line 289
    :cond_e
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v4, p1}, Lcom/mycompany/app/main/MainUtil;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f0(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    return-object p1

    .line 300
    :pswitch_6
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_f

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_f
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 310
    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_10

    .line 316
    .line 317
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 318
    .line 319
    invoke-static {v4, v0}, Lcom/mycompany/app/main/MainUtil;->p2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    iput-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 324
    .line 325
    :cond_10
    new-instance v0, Ljava/io/File;

    .line 326
    .line 327
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 328
    .line 329
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 333
    .line 334
    .line 335
    move-result-wide v0

    .line 336
    cmp-long v0, v0, v2

    .line 337
    .line 338
    if-lez v0, :cond_11

    .line 339
    .line 340
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 341
    .line 342
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->U1(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    return-object p1

    .line 347
    :cond_11
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 348
    .line 349
    if-eqz v0, :cond_12

    .line 350
    .line 351
    invoke-virtual {v0}, Lcom/mycompany/app/compress/Compress;->e()Ljava/io/InputStream;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    return-object p1

    .line 356
    :cond_12
    const/4 v0, 0x1

    .line 357
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 358
    .line 359
    invoke-static {v0, v4, p1, v5}, Lcom/mycompany/app/compress/Compress;->b(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/compress/Compress;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lcom/mycompany/app/compress/Compress;->e()Ljava/io/InputStream;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p1}, Lcom/mycompany/app/compress/Compress;->a()V

    .line 368
    .line 369
    .line 370
    return-object v0

    .line 371
    :pswitch_7
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 372
    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-nez v0, :cond_13

    .line 378
    .line 379
    new-instance v0, Ljava/io/File;

    .line 380
    .line 381
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 382
    .line 383
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 387
    .line 388
    .line 389
    move-result-wide v0

    .line 390
    cmp-long v0, v0, v2

    .line 391
    .line 392
    if-lez v0, :cond_13

    .line 393
    .line 394
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 395
    .line 396
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->U1(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    return-object p1

    .line 401
    :cond_13
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_15

    .line 408
    .line 409
    :cond_14
    :goto_2
    :pswitch_8
    return-object v5

    .line 410
    :cond_15
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 411
    .line 412
    invoke-static {v4, p1}, Lcom/mycompany/app/main/MainUtil;->w2(Landroid/content/Context;Ljava/lang/String;)[B

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 417
    .line 418
    .line 419
    return-object v0

    .line 420
    :pswitch_9
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 421
    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-nez v0, :cond_16

    .line 427
    .line 428
    new-instance v0, Ljava/io/File;

    .line 429
    .line 430
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 431
    .line 432
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 436
    .line 437
    .line 438
    move-result-wide v0

    .line 439
    cmp-long v0, v0, v2

    .line 440
    .line 441
    if-lez v0, :cond_16

    .line 442
    .line 443
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 444
    .line 445
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->U1(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    return-object p1

    .line 450
    :cond_16
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 451
    .line 452
    invoke-static {v4, p1}, Lcom/mycompany/app/main/MainUtil;->f4(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f0(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    return-object p1

    .line 461
    :pswitch_a
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 462
    .line 463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-nez v0, :cond_17

    .line 468
    .line 469
    new-instance v0, Ljava/io/File;

    .line 470
    .line 471
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 472
    .line 473
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 477
    .line 478
    .line 479
    move-result-wide v0

    .line 480
    cmp-long v0, v0, v2

    .line 481
    .line 482
    if-lez v0, :cond_17

    .line 483
    .line 484
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->s:Ljava/lang/String;

    .line 485
    .line 486
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->U1(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    return-object p1

    .line 491
    :cond_17
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 492
    .line 493
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->U1(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    return-object p1

    .line 498
    :cond_18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 499
    .line 500
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 501
    .line 502
    const-string v0, "UIL doesn\'t support scheme(protocol) by default [null]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))"

    .line 503
    .line 504
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    throw p1

    .line 508
    nop

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->a(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_3

    .line 21
    .line 22
    const-string p2, "data:image/"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_1
    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->a:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->d0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f0(Landroid/graphics/Bitmap;)Ljava/io/ByteArrayInputStream;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2
    new-instance p2, Ljava/io/BufferedInputStream;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x8000

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 61
    .line 62
    new-instance v1, Ljava/io/File;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    long-to-int p1, v1

    .line 72
    invoke-direct {v0, p2, p1}, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;-><init>(Ljava/io/BufferedInputStream;I)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget v2, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->c:I

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    iget v1, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->b:I

    .line 12
    .line 13
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->a:Landroid/content/Context;

    .line 14
    .line 15
    move-object v4, p1

    .line 16
    move-object v5, p2

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    move-object v3, v4

    .line 22
    move-object v4, v5

    .line 23
    const/4 p2, 0x0

    .line 24
    move v6, p2

    .line 25
    :goto_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    div-int/lit8 v0, v0, 0x64

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    :cond_1
    const/4 v0, 0x5

    .line 37
    if-ge v6, v0, :cond_3

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget v1, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->c:I

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    iget v0, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->b:I

    .line 45
    .line 46
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->a:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    move-object v7, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v7, v3

    .line 55
    const-string v0, "Location"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget v1, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->c:I

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    iget v0, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->b:I

    .line 65
    .line 66
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->a:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    move-object v3, v7

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    if-nez p1, :cond_4

    .line 77
    .line 78
    :goto_2
    const/4 p1, 0x0

    .line 79
    return-object p1

    .line 80
    :cond_4
    const v1, 0x8000

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 84
    .line 85
    .line 86
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/16 v2, 0xc8

    .line 92
    .line 93
    if-ne v0, v2, :cond_5

    .line 94
    .line 95
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;

    .line 96
    .line 97
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 98
    .line 99
    invoke-direct {v2, p2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-direct {v0, v2, p1}, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;-><init>(Ljava/io/BufferedInputStream;I)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_5
    invoke-static {p2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 111
    .line 112
    .line 113
    new-instance p2, Ljava/io/IOException;

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "Image request failed with response code "

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-array v2, v1, [B

    .line 143
    .line 144
    :goto_3
    :try_start_1
    invoke-virtual {p1, v2, p2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 145
    .line 146
    .line 147
    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    const/4 v4, -0x1

    .line 149
    if-eq v3, v4, :cond_6

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_1
    :cond_6
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    move-object p2, v0

    .line 158
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->a(Ljava/io/Closeable;)V

    .line 159
    .line 160
    .line 161
    throw p2

    .line 162
    :goto_4
    throw v0
.end method
