.class public abstract Lcom/google/android/gms/internal/cast/zzbd;
.super Lcom/google/android/gms/internal/cast/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzbe;


# virtual methods
.method public final I1(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    return v2

    .line 8
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    move-object p2, p0

    .line 16
    check-cast p2, Lcom/google/android/gms/internal/cast/zzbx;

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbx;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->e()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    move v4, v2

    .line 34
    :cond_0
    :goto_0
    if-ge v4, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 43
    .line 44
    iget-object v6, v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    new-array v6, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v5, v6, v2

    .line 55
    .line 56
    const-string v7, "clean up the connectedGroupRoute = %s"

    .line 57
    .line 58
    invoke-virtual {v0, v7, v6}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->l()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    iget-boolean v3, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->h:Z

    .line 72
    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    iget-object v3, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    new-array p1, v1, [Ljava/lang/Object;

    .line 84
    .line 85
    aput-object p2, p1, v2

    .line 86
    .line 87
    const-string p2, "clean up the selected route = %s"

    .line 88
    .line 89
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter;->v(I)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    .line 97
    .line 98
    return v1

    .line 99
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 104
    .line 105
    .line 106
    move-object p2, p0

    .line 107
    check-cast p2, Lcom/google/android/gms/internal/cast/zzbx;

    .line 108
    .line 109
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->v(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    .line 119
    .line 120
    return v1

    .line 121
    :pswitch_2
    move-object p1, p0

    .line 122
    check-cast p1, Lcom/google/android/gms/internal/cast/zzbx;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->d()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_3

    .line 134
    .line 135
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->l()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 140
    .line 141
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    move v2, v1

    .line 150
    :cond_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    .line 152
    .line 153
    sget p1, Lcom/google/android/gms/internal/cast/zzc;->a:I

    .line 154
    .line 155
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    .line 157
    .line 158
    return v1

    .line 159
    :pswitch_3
    move-object p1, p0

    .line 160
    check-cast p1, Lcom/google/android/gms/internal/cast/zzbx;

    .line 161
    .line 162
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/zzbx;->g:Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_5

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Ljava/util/Set;

    .line 183
    .line 184
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_4

    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 199
    .line 200
    iget-object v4, p1, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 201
    .line 202
    invoke-virtual {v4, v3}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    .line 211
    .line 212
    return v1

    .line 213
    :pswitch_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    .line 215
    .line 216
    const p1, 0xbdfcb8

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    .line 221
    .line 222
    return v1

    .line 223
    :pswitch_5
    move-object p1, p0

    .line 224
    check-cast p1, Lcom/google/android/gms/internal/cast/zzbx;

    .line 225
    .line 226
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->l()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return v1

    .line 244
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 249
    .line 250
    .line 251
    move-object p2, p0

    .line 252
    check-cast p2, Lcom/google/android/gms/internal/cast/zzbx;

    .line 253
    .line 254
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 255
    .line 256
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->k()Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    move v4, v2

    .line 268
    :cond_6
    if-ge v4, v3, :cond_7

    .line 269
    .line 270
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    add-int/lit8 v4, v4, 0x1

    .line 275
    .line 276
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 277
    .line 278
    iget-object v6, v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_6

    .line 285
    .line 286
    iget-object v0, v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 287
    .line 288
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    .line 290
    .line 291
    if-nez v0, :cond_8

    .line 292
    .line 293
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    .line 295
    .line 296
    return v1

    .line 297
    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 301
    .line 302
    .line 303
    return v1

    .line 304
    :pswitch_7
    move-object p1, p0

    .line 305
    check-cast p1, Lcom/google/android/gms/internal/cast/zzbx;

    .line 306
    .line 307
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->f()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->l()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 321
    .line 322
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    .line 330
    .line 331
    sget p2, Lcom/google/android/gms/internal/cast/zzc;->a:I

    .line 332
    .line 333
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    .line 335
    .line 336
    return v1

    .line 337
    :pswitch_8
    move-object p1, p0

    .line 338
    check-cast p1, Lcom/google/android/gms/internal/cast/zzbx;

    .line 339
    .line 340
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->f()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->m(Z)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    .line 354
    .line 355
    return v1

    .line 356
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 361
    .line 362
    .line 363
    move-object p2, p0

    .line 364
    check-cast p2, Lcom/google/android/gms/internal/cast/zzbx;

    .line 365
    .line 366
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbx;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 367
    .line 368
    new-array v3, v1, [Ljava/lang/Object;

    .line 369
    .line 370
    aput-object p1, v3, v2

    .line 371
    .line 372
    const-string v4, "select route with routeId = %s"

    .line 373
    .line 374
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 378
    .line 379
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->k()Ljava/util/ArrayList;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    move v4, v2

    .line 391
    :cond_9
    if-ge v4, v3, :cond_a

    .line 392
    .line 393
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    add-int/lit8 v4, v4, 0x1

    .line 398
    .line 399
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 400
    .line 401
    iget-object v6, v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    if-eqz v6, :cond_9

    .line 408
    .line 409
    new-array p1, v2, [Ljava/lang/Object;

    .line 410
    .line 411
    const-string p2, "media route is found and selected"

    .line 412
    .line 413
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v5, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->m(Z)V

    .line 417
    .line 418
    .line 419
    :cond_a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    .line 421
    .line 422
    return v1

    .line 423
    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 424
    .line 425
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    check-cast p1, Landroid/os/Bundle;

    .line 430
    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 436
    .line 437
    .line 438
    move-object p2, p0

    .line 439
    check-cast p2, Lcom/google/android/gms/internal/cast/zzbx;

    .line 440
    .line 441
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    if-nez p1, :cond_b

    .line 446
    .line 447
    goto :goto_2

    .line 448
    :cond_b
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 449
    .line 450
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    invoke-static {p1, v0}, Landroidx/mediarouter/media/MediaRouter;->o(Landroidx/mediarouter/media/MediaRouteSelector;I)Z

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    .line 462
    .line 463
    return v1

    .line 464
    :pswitch_b
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 465
    .line 466
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    check-cast p1, Landroid/os/Bundle;

    .line 471
    .line 472
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 473
    .line 474
    .line 475
    move-object p2, p0

    .line 476
    check-cast p2, Lcom/google/android/gms/internal/cast/zzbx;

    .line 477
    .line 478
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    if-nez p1, :cond_c

    .line 483
    .line 484
    goto :goto_3

    .line 485
    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    if-ne v0, v2, :cond_d

    .line 494
    .line 495
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/zzbx;->r2(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 496
    .line 497
    .line 498
    goto :goto_3

    .line 499
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/cast/zzfk;

    .line 500
    .line 501
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(Landroid/os/Looper;)V

    .line 506
    .line 507
    .line 508
    new-instance v2, Lcom/google/android/gms/internal/cast/zzbv;

    .line 509
    .line 510
    invoke-direct {v2, p2, p1}, Lcom/google/android/gms/internal/cast/zzbv;-><init>(Lcom/google/android/gms/internal/cast/zzbx;Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    .line 515
    .line 516
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    .line 518
    .line 519
    return v1

    .line 520
    :pswitch_c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 521
    .line 522
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    check-cast p1, Landroid/os/Bundle;

    .line 527
    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 533
    .line 534
    .line 535
    move-object p2, p0

    .line 536
    check-cast p2, Lcom/google/android/gms/internal/cast/zzbx;

    .line 537
    .line 538
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    if-nez p1, :cond_e

    .line 543
    .line 544
    goto :goto_4

    .line 545
    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    if-ne v2, v3, :cond_f

    .line 554
    .line 555
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzbx;->f2(Landroidx/mediarouter/media/MediaRouteSelector;I)V

    .line 556
    .line 557
    .line 558
    goto :goto_4

    .line 559
    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/cast/zzfk;

    .line 560
    .line 561
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(Landroid/os/Looper;)V

    .line 566
    .line 567
    .line 568
    new-instance v3, Lcom/google/android/gms/internal/cast/zzbu;

    .line 569
    .line 570
    invoke-direct {v3, p2, p1, v0}, Lcom/google/android/gms/internal/cast/zzbu;-><init>(Lcom/google/android/gms/internal/cast/zzbx;Landroidx/mediarouter/media/MediaRouteSelector;I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    .line 575
    .line 576
    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    .line 578
    .line 579
    return v1

    .line 580
    :pswitch_d
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 581
    .line 582
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/cast/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    check-cast p1, Landroid/os/Bundle;

    .line 587
    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    if-nez v2, :cond_10

    .line 593
    .line 594
    goto :goto_5

    .line 595
    :cond_10
    const-string v0, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback"

    .line 596
    .line 597
    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    instance-of v4, v3, Lcom/google/android/gms/internal/cast/zzbg;

    .line 602
    .line 603
    if-eqz v4, :cond_11

    .line 604
    .line 605
    move-object v0, v3

    .line 606
    check-cast v0, Lcom/google/android/gms/internal/cast/zzbg;

    .line 607
    .line 608
    goto :goto_5

    .line 609
    :cond_11
    new-instance v3, Lcom/google/android/gms/internal/cast/zzbf;

    .line 610
    .line 611
    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/internal/cast/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    move-object v0, v3

    .line 615
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzc;->d(Landroid/os/Parcel;)V

    .line 616
    .line 617
    .line 618
    move-object p2, p0

    .line 619
    check-cast p2, Lcom/google/android/gms/internal/cast/zzbx;

    .line 620
    .line 621
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    if-nez p1, :cond_12

    .line 626
    .line 627
    goto :goto_6

    .line 628
    :cond_12
    iget-object v2, p2, Lcom/google/android/gms/internal/cast/zzbx;->g:Ljava/util/HashMap;

    .line 629
    .line 630
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    if-nez v3, :cond_13

    .line 635
    .line 636
    new-instance v3, Ljava/util/HashSet;

    .line 637
    .line 638
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    :cond_13
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    check-cast p1, Ljava/util/Set;

    .line 649
    .line 650
    new-instance v2, Lcom/google/android/gms/internal/cast/zzbl;

    .line 651
    .line 652
    iget-object v3, p2, Lcom/google/android/gms/internal/cast/zzbx;->h:Lcom/google/android/gms/internal/cast/zzce;

    .line 653
    .line 654
    invoke-direct {v2, v0, p2, v3}, Lcom/google/android/gms/internal/cast/zzbl;-><init>(Lcom/google/android/gms/internal/cast/zzbg;Lcom/google/android/gms/internal/cast/zzbx;Lcom/google/android/gms/internal/cast/zzce;)V

    .line 655
    .line 656
    .line 657
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    :goto_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    .line 662
    .line 663
    return v1

    .line 664
    nop

    .line 665
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
