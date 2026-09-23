.class final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiveHandler"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->a:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 12
    .line 13
    if-eqz v2, :cond_15

    .line 14
    .line 15
    iget-object v3, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->l:Landroid/util/SparseArray;

    .line 16
    .line 17
    iget-object v4, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->m:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 18
    .line 19
    iget-object v5, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->o:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget v6, v1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    iget v7, v1, Landroid/os/Message;->arg1:I

    .line 24
    .line 25
    iget v8, v1, Landroid/os/Message;->arg2:I

    .line 26
    .line 27
    iget-object v9, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v10, 0x0

    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v12, 0x1

    .line 36
    packed-switch v6, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :pswitch_0
    iget-object v1, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->r:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 42
    .line 43
    if-ne v1, v2, :cond_13

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :cond_0
    if-ge v10, v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    add-int/lit8 v10, v10, 0x1

    .line 56
    .line 57
    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 58
    .line 59
    invoke-interface {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->a()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ne v3, v8, :cond_0

    .line 64
    .line 65
    move-object v11, v2

    .line 66
    :cond_1
    iget-object v1, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->t:Landroidx/mediarouter/media/e;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    instance-of v2, v11, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    move-object v2, v11

    .line 75
    check-cast v2, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 76
    .line 77
    iget-object v1, v1, Landroidx/mediarouter/media/e;->a:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 78
    .line 79
    iget-object v1, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->b:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;

    .line 80
    .line 81
    check-cast v1, Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 82
    .line 83
    iget-object v3, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 84
    .line 85
    if-ne v3, v2, :cond_2

    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->c()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const/4 v3, 0x2

    .line 92
    invoke-virtual {v1, v2, v3, v12}, Landroidx/mediarouter/media/GlobalMediaRouter;->l(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V

    .line 93
    .line 94
    .line 95
    :cond_2
    if-eqz v11, :cond_13

    .line 96
    .line 97
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-interface {v11}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->b()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->l()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :pswitch_1
    if-eqz v9, :cond_3

    .line 109
    .line 110
    instance-of v1, v9, Landroid/os/Bundle;

    .line 111
    .line 112
    if-eqz v1, :cond_13

    .line 113
    .line 114
    :cond_3
    check-cast v9, Landroid/os/Bundle;

    .line 115
    .line 116
    iget v1, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->j:I

    .line 117
    .line 118
    if-eqz v1, :cond_13

    .line 119
    .line 120
    const-string v1, "groupRoute"

    .line 121
    .line 122
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/os/Bundle;

    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    new-instance v3, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 131
    .line 132
    invoke-direct {v3, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    move-object v3, v11

    .line 137
    :goto_0
    const-string v1, "dynamicRoutes"

    .line 138
    .line 139
    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    move v9, v10

    .line 153
    :goto_1
    if-ge v9, v7, :cond_7

    .line 154
    .line 155
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    add-int/lit8 v9, v9, 0x1

    .line 160
    .line 161
    check-cast v13, Landroid/os/Bundle;

    .line 162
    .line 163
    if-nez v13, :cond_5

    .line 164
    .line 165
    move-object v13, v11

    .line 166
    goto :goto_3

    .line 167
    :cond_5
    const-string v14, "mrDescriptor"

    .line 168
    .line 169
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    if-eqz v14, :cond_6

    .line 174
    .line 175
    new-instance v15, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 176
    .line 177
    invoke-direct {v15, v14}, Landroidx/mediarouter/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;)V

    .line 178
    .line 179
    .line 180
    move-object/from16 v17, v15

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    move-object/from16 v17, v11

    .line 184
    .line 185
    :goto_2
    const-string v14, "selectionState"

    .line 186
    .line 187
    invoke-virtual {v13, v14, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result v18

    .line 191
    const-string v14, "isUnselectable"

    .line 192
    .line 193
    invoke-virtual {v13, v14, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result v19

    .line 197
    const-string v14, "isGroupable"

    .line 198
    .line 199
    invoke-virtual {v13, v14, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 200
    .line 201
    .line 202
    move-result v20

    .line 203
    const-string v14, "isTransferable"

    .line 204
    .line 205
    invoke-virtual {v13, v14, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 206
    .line 207
    .line 208
    move-result v21

    .line 209
    new-instance v16, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 210
    .line 211
    invoke-direct/range {v16 .. v21}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;IZZZ)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v13, v16

    .line 215
    .line 216
    :goto_3
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_7
    iget-object v1, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->r:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 221
    .line 222
    if-ne v1, v2, :cond_15

    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    :cond_8
    if-ge v10, v1, :cond_9

    .line 229
    .line 230
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    add-int/lit8 v10, v10, 0x1

    .line 235
    .line 236
    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 237
    .line 238
    invoke-interface {v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->a()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-ne v4, v8, :cond_8

    .line 243
    .line 244
    move-object v11, v2

    .line 245
    :cond_9
    instance-of v1, v11, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    .line 246
    .line 247
    if-eqz v1, :cond_15

    .line 248
    .line 249
    check-cast v11, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    .line 250
    .line 251
    invoke-virtual {v11, v3, v6}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->l(Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/ArrayList;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :pswitch_2
    instance-of v1, v9, Landroid/os/Bundle;

    .line 256
    .line 257
    if-eqz v1, :cond_b

    .line 258
    .line 259
    check-cast v9, Landroid/os/Bundle;

    .line 260
    .line 261
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 266
    .line 267
    const-string v2, "routeId"

    .line 268
    .line 269
    invoke-virtual {v9, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_a

    .line 274
    .line 275
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v9}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->b(Landroid/os/Bundle;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_6

    .line 282
    .line 283
    :cond_a
    const-string v2, "DynamicGroupRouteController is created without valid route id."

    .line 284
    .line 285
    invoke-virtual {v1, v2, v9}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_6

    .line 289
    .line 290
    :cond_b
    const-string v1, "MediaRouteProviderProxy"

    .line 291
    .line 292
    const-string v2, "No further information on the dynamic group controller"

    .line 293
    .line 294
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    goto/16 :goto_6

    .line 298
    .line 299
    :pswitch_3
    if-eqz v9, :cond_c

    .line 300
    .line 301
    instance-of v1, v9, Landroid/os/Bundle;

    .line 302
    .line 303
    if-eqz v1, :cond_13

    .line 304
    .line 305
    :cond_c
    check-cast v9, Landroid/os/Bundle;

    .line 306
    .line 307
    iget v1, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->j:I

    .line 308
    .line 309
    if-eqz v1, :cond_13

    .line 310
    .line 311
    invoke-static {v9}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->a(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    iget-object v3, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->r:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 316
    .line 317
    if-ne v3, v2, :cond_15

    .line 318
    .line 319
    invoke-virtual {v4, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->f(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_4
    if-eqz v9, :cond_d

    .line 324
    .line 325
    instance-of v2, v9, Landroid/os/Bundle;

    .line 326
    .line 327
    if-eqz v2, :cond_13

    .line 328
    .line 329
    :cond_d
    if-nez v1, :cond_e

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_e
    const-string v2, "error"

    .line 333
    .line 334
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    :goto_4
    check-cast v9, Landroid/os/Bundle;

    .line 339
    .line 340
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 345
    .line 346
    if-eqz v1, :cond_13

    .line 347
    .line 348
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v11, v9}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :pswitch_5
    if-eqz v9, :cond_f

    .line 356
    .line 357
    instance-of v1, v9, Landroid/os/Bundle;

    .line 358
    .line 359
    if-eqz v1, :cond_13

    .line 360
    .line 361
    :cond_f
    check-cast v9, Landroid/os/Bundle;

    .line 362
    .line 363
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 368
    .line 369
    if-eqz v1, :cond_13

    .line 370
    .line 371
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v9}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->b(Landroid/os/Bundle;)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :pswitch_6
    if-eqz v9, :cond_10

    .line 379
    .line 380
    instance-of v1, v9, Landroid/os/Bundle;

    .line 381
    .line 382
    if-eqz v1, :cond_13

    .line 383
    .line 384
    :cond_10
    check-cast v9, Landroid/os/Bundle;

    .line 385
    .line 386
    iget v1, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->j:I

    .line 387
    .line 388
    if-nez v1, :cond_13

    .line 389
    .line 390
    iget v1, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->k:I

    .line 391
    .line 392
    if-ne v7, v1, :cond_13

    .line 393
    .line 394
    if-lt v8, v12, :cond_13

    .line 395
    .line 396
    iput v10, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->k:I

    .line 397
    .line 398
    iput v8, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->j:I

    .line 399
    .line 400
    invoke-static {v9}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->a(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    iget-object v3, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->r:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 405
    .line 406
    if-ne v3, v2, :cond_11

    .line 407
    .line 408
    invoke-virtual {v4, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->f(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 409
    .line 410
    .line 411
    :cond_11
    iget-object v1, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->r:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 412
    .line 413
    if-ne v1, v2, :cond_15

    .line 414
    .line 415
    iput-boolean v12, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->s:Z

    .line 416
    .line 417
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    :goto_5
    if-ge v10, v1, :cond_12

    .line 422
    .line 423
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    check-cast v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;

    .line 428
    .line 429
    iget-object v3, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->r:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 430
    .line 431
    invoke-interface {v2, v3}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;->c(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    .line 432
    .line 433
    .line 434
    add-int/lit8 v10, v10, 0x1

    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_12
    iget-object v1, v4, Landroidx/mediarouter/media/MediaRouteProvider;->i:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 438
    .line 439
    if-eqz v1, :cond_15

    .line 440
    .line 441
    iget-object v5, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->r:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 442
    .line 443
    iget v7, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->h:I

    .line 444
    .line 445
    add-int/lit8 v2, v7, 0x1

    .line 446
    .line 447
    iput v2, v5, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->h:I

    .line 448
    .line 449
    iget-object v9, v1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->a:Landroid/os/Bundle;

    .line 450
    .line 451
    const/4 v10, 0x0

    .line 452
    const/16 v6, 0xa

    .line 453
    .line 454
    const/4 v8, 0x0

    .line 455
    invoke-virtual/range {v5 .. v10}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->b(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :cond_13
    :goto_6
    sget v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->u:I

    .line 460
    .line 461
    return-void

    .line 462
    :pswitch_7
    iget v1, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->k:I

    .line 463
    .line 464
    if-ne v7, v1, :cond_14

    .line 465
    .line 466
    iput v10, v2, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->k:I

    .line 467
    .line 468
    iget-object v1, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->r:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    .line 469
    .line 470
    if-ne v1, v2, :cond_14

    .line 471
    .line 472
    invoke-virtual {v4}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->k()V

    .line 473
    .line 474
    .line 475
    :cond_14
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 480
    .line 481
    if-eqz v1, :cond_15

    .line 482
    .line 483
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1, v11, v11}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 487
    .line 488
    .line 489
    :cond_15
    :pswitch_8
    return-void

    .line 490
    nop

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
