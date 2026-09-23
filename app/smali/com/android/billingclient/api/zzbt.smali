.class public final synthetic Lcom/android/billingclient/api/zzbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/zzbv;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbt;->a:Lcom/android/billingclient/api/zzbv;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/android/billingclient/api/zzbt;->a:Lcom/android/billingclient/api/zzbv;

    .line 4
    .line 5
    iget-object v0, v2, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x3

    .line 14
    if-ne v4, v6, :cond_0

    .line 15
    .line 16
    monitor-exit v3

    .line 17
    return-object v5

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto/16 :goto_1f

    .line 20
    .line 21
    :cond_0
    iget v4, v0, Lcom/android/billingclient/api/BillingClientImpl;->b:I

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    const/4 v8, 0x0

    .line 25
    if-ne v4, v7, :cond_1

    .line 26
    .line 27
    move v4, v7

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v4, v8

    .line 30
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    new-instance v3, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v9, "accountName"

    .line 43
    .line 44
    invoke-virtual {v3, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v9, v0, Lcom/android/billingclient/api/BillingClientImpl;->c:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v10, v0, Lcom/android/billingclient/api/BillingClientImpl;->d:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v11, v0, Lcom/android/billingclient/api/BillingClientImpl;->B:Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v11

    .line 57
    invoke-static {v11, v12, v9, v10, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->b(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v3, v5

    .line 62
    :goto_1
    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzje;->f:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 63
    .line 64
    iget-object v10, v0, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v10

    .line 67
    :try_start_1
    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 68
    .line 69
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    iget-object v0, v2, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 73
    .line 74
    invoke-virtual {v0, v8}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 75
    .line 76
    .line 77
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->h1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 78
    .line 79
    sget-object v4, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 80
    .line 81
    invoke-virtual {v0, v4, v3}, Lcom/android/billingclient/api/BillingClientImpl;->w(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4}, Lcom/android/billingclient/api/zzbv;->d(Lcom/android/billingclient/api/BillingResult;)V

    .line 85
    .line 86
    .line 87
    return-object v5

    .line 88
    :cond_3
    iget-object v10, v2, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 89
    .line 90
    iget-object v11, v10, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    move v14, v6

    .line 97
    const/16 v13, 0x1b

    .line 98
    .line 99
    :goto_2
    if-lt v13, v6, :cond_6

    .line 100
    .line 101
    :try_start_2
    const-string v14, "BillingClient"

    .line 102
    .line 103
    new-instance v15, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v7, "trying subs apiVersion: "

    .line 109
    .line 110
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v14, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    if-nez v3, :cond_4

    .line 124
    .line 125
    const-string v7, "subs"

    .line 126
    .line 127
    invoke-interface {v0, v13, v11, v7}, Lcom/google/android/gms/internal/play_billing/zzap;->i2(ILjava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    :goto_3
    move v14, v7

    .line 132
    goto :goto_4

    .line 133
    :catch_0
    move-exception v0

    .line 134
    goto/16 :goto_19

    .line 135
    .line 136
    :cond_4
    const-string v7, "subs"

    .line 137
    .line 138
    invoke-interface {v0, v13, v3, v11, v7}, Lcom/google/android/gms/internal/play_billing/zzap;->T0(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    goto :goto_3

    .line 143
    :goto_4
    if-nez v14, :cond_5

    .line 144
    .line 145
    const-string v7, "BillingClient"

    .line 146
    .line 147
    new-instance v15, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v12, "highestLevelSupportedForSubs: "

    .line 153
    .line 154
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-static {v7, v12}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_5
    add-int/lit8 v13, v13, -0x1

    .line 169
    .line 170
    const/4 v7, 0x1

    .line 171
    goto :goto_2

    .line 172
    :cond_6
    move v13, v8

    .line 173
    :goto_5
    if-lt v13, v6, :cond_7

    .line 174
    .line 175
    const/4 v7, 0x1

    .line 176
    goto :goto_6

    .line 177
    :cond_7
    move v7, v8

    .line 178
    :goto_6
    iput-boolean v7, v10, Lcom/android/billingclient/api/BillingClientImpl;->k:Z

    .line 179
    .line 180
    if-ge v13, v6, :cond_8

    .line 181
    .line 182
    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzje;->n:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 183
    .line 184
    const-string v7, "BillingClient"

    .line 185
    .line 186
    const-string v12, "In-app billing API does not support subscription on this device."

    .line 187
    .line 188
    invoke-static {v7, v12}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_8
    const/16 v12, 0x1b

    .line 192
    .line 193
    :goto_7
    if-lt v12, v6, :cond_b

    .line 194
    .line 195
    const-string v7, "BillingClient"

    .line 196
    .line 197
    new-instance v13, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v14, "trying inapp apiVersion: "

    .line 203
    .line 204
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    invoke-static {v7, v13}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    if-nez v3, :cond_9

    .line 218
    .line 219
    const-string v7, "inapp"

    .line 220
    .line 221
    invoke-interface {v0, v12, v11, v7}, Lcom/google/android/gms/internal/play_billing/zzap;->i2(ILjava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    :goto_8
    move v14, v7

    .line 226
    goto :goto_9

    .line 227
    :cond_9
    const-string v7, "inapp"

    .line 228
    .line 229
    invoke-interface {v0, v12, v3, v11, v7}, Lcom/google/android/gms/internal/play_billing/zzap;->T0(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    goto :goto_8

    .line 234
    :goto_9
    if-nez v14, :cond_a

    .line 235
    .line 236
    iput v12, v10, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    .line 237
    .line 238
    const-string v0, "BillingClient"

    .line 239
    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v7, "mHighestLevelSupportedForInApp: "

    .line 246
    .line 247
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_a
    add-int/lit8 v12, v12, -0x1

    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_b
    :goto_a
    iget v0, v10, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    .line 265
    .line 266
    iput v0, v10, Lcom/android/billingclient/api/BillingClientImpl;->l:I

    .line 267
    .line 268
    const/16 v3, 0x1a

    .line 269
    .line 270
    if-lt v0, v3, :cond_c

    .line 271
    .line 272
    const/4 v3, 0x1

    .line 273
    goto :goto_b

    .line 274
    :cond_c
    move v3, v8

    .line 275
    :goto_b
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->w:Z

    .line 276
    .line 277
    const/16 v3, 0x18

    .line 278
    .line 279
    if-lt v0, v3, :cond_d

    .line 280
    .line 281
    const/4 v3, 0x1

    .line 282
    goto :goto_c

    .line 283
    :cond_d
    move v3, v8

    .line 284
    :goto_c
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->v:Z

    .line 285
    .line 286
    const/16 v3, 0x15

    .line 287
    .line 288
    if-lt v0, v3, :cond_e

    .line 289
    .line 290
    const/4 v3, 0x1

    .line 291
    goto :goto_d

    .line 292
    :cond_e
    move v3, v8

    .line 293
    :goto_d
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->u:Z

    .line 294
    .line 295
    const/16 v3, 0x14

    .line 296
    .line 297
    if-lt v0, v3, :cond_f

    .line 298
    .line 299
    const/4 v3, 0x1

    .line 300
    goto :goto_e

    .line 301
    :cond_f
    move v3, v8

    .line 302
    :goto_e
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->t:Z

    .line 303
    .line 304
    const/16 v3, 0x13

    .line 305
    .line 306
    if-lt v0, v3, :cond_10

    .line 307
    .line 308
    const/4 v3, 0x1

    .line 309
    goto :goto_f

    .line 310
    :cond_10
    move v3, v8

    .line 311
    :goto_f
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->s:Z

    .line 312
    .line 313
    const/16 v3, 0x11

    .line 314
    .line 315
    if-lt v0, v3, :cond_11

    .line 316
    .line 317
    const/4 v3, 0x1

    .line 318
    goto :goto_10

    .line 319
    :cond_11
    move v3, v8

    .line 320
    :goto_10
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->r:Z

    .line 321
    .line 322
    const/16 v3, 0x10

    .line 323
    .line 324
    if-lt v0, v3, :cond_12

    .line 325
    .line 326
    const/4 v3, 0x1

    .line 327
    goto :goto_11

    .line 328
    :cond_12
    move v3, v8

    .line 329
    :goto_11
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->q:Z

    .line 330
    .line 331
    const/16 v3, 0xf

    .line 332
    .line 333
    if-lt v0, v3, :cond_13

    .line 334
    .line 335
    const/4 v3, 0x1

    .line 336
    goto :goto_12

    .line 337
    :cond_13
    move v3, v8

    .line 338
    :goto_12
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->p:Z

    .line 339
    .line 340
    const/16 v3, 0xe

    .line 341
    .line 342
    if-lt v0, v3, :cond_14

    .line 343
    .line 344
    const/4 v3, 0x1

    .line 345
    goto :goto_13

    .line 346
    :cond_14
    move v3, v8

    .line 347
    :goto_13
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->o:Z

    .line 348
    .line 349
    const/16 v3, 0x9

    .line 350
    .line 351
    if-lt v0, v3, :cond_15

    .line 352
    .line 353
    const/4 v3, 0x1

    .line 354
    goto :goto_14

    .line 355
    :cond_15
    move v3, v8

    .line 356
    :goto_14
    iput-boolean v3, v10, Lcom/android/billingclient/api/BillingClientImpl;->n:Z

    .line 357
    .line 358
    const/4 v3, 0x6

    .line 359
    if-lt v0, v3, :cond_16

    .line 360
    .line 361
    const/4 v7, 0x1

    .line 362
    goto :goto_15

    .line 363
    :cond_16
    move v7, v8

    .line 364
    :goto_15
    iput-boolean v7, v10, Lcom/android/billingclient/api/BillingClientImpl;->m:Z

    .line 365
    .line 366
    if-ge v0, v6, :cond_17

    .line 367
    .line 368
    sget-object v9, Lcom/google/android/gms/internal/play_billing/zzje;->O:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 369
    .line 370
    const-string v0, "BillingClient"

    .line 371
    .line 372
    const-string v6, "In-app billing API version 3 is not supported on this device."

    .line 373
    .line 374
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :cond_17
    invoke-static {v10, v14}, Lcom/android/billingclient/api/BillingClientImpl;->o(Lcom/android/billingclient/api/BillingClientImpl;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 378
    .line 379
    .line 380
    if-eqz v14, :cond_18

    .line 381
    .line 382
    sget-object v0, Lcom/android/billingclient/api/zzdb;->b:Lcom/android/billingclient/api/BillingResult;

    .line 383
    .line 384
    invoke-virtual {v2, v0, v9, v5, v4}, Lcom/android/billingclient/api/zzbv;->c(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Z)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/zzbv;->d(Lcom/android/billingclient/api/BillingResult;)V

    .line 388
    .line 389
    .line 390
    return-object v5

    .line 391
    :cond_18
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/android/billingclient/api/zzbv;->b(Z)Ljava/lang/Long;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    if-eqz v4, :cond_1a

    .line 396
    .line 397
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjb;->r()Lcom/google/android/gms/internal/play_billing/zziz;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 402
    .line 403
    .line 404
    iget-object v6, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 405
    .line 406
    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 407
    .line 408
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/zzjb;->q(Lcom/google/android/gms/internal/play_billing/zzjb;I)V

    .line 409
    .line 410
    .line 411
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkv;->q()Lcom/google/android/gms/internal/play_billing/zzkt;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/play_billing/zzkt;->g(Z)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzkt;->h()V

    .line 419
    .line 420
    .line 421
    if-eqz v0, :cond_19

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 424
    .line 425
    .line 426
    move-result-wide v6

    .line 427
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 428
    .line 429
    .line 430
    iget-object v0, v3, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 431
    .line 432
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkv;

    .line 433
    .line 434
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzkv;->t(Lcom/google/android/gms/internal/play_billing/zzkv;J)V

    .line 435
    .line 436
    .line 437
    goto :goto_16

    .line 438
    :catchall_1
    move-exception v0

    .line 439
    goto :goto_17

    .line 440
    :cond_19
    :goto_16
    iget-object v0, v2, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 441
    .line 442
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 443
    .line 444
    .line 445
    iget-object v6, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 446
    .line 447
    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 448
    .line 449
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzkv;

    .line 454
    .line 455
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/zzjb;->v(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzkv;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 463
    .line 464
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingClientImpl;->v(Lcom/google/android/gms/internal/play_billing/zzjb;)V

    .line 465
    .line 466
    .line 467
    goto :goto_18

    .line 468
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzko;->q()Lcom/google/android/gms/internal/play_billing/zzkm;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjg;->q()Lcom/google/android/gms/internal/play_billing/zzjc;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 477
    .line 478
    .line 479
    iget-object v6, v4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 480
    .line 481
    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 482
    .line 483
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/play_billing/zzjg;->v(Lcom/google/android/gms/internal/play_billing/zzjg;I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 487
    .line 488
    .line 489
    iget-object v6, v3, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 490
    .line 491
    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 492
    .line 493
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 494
    .line 495
    .line 496
    move-result-object v4

    .line 497
    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 498
    .line 499
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/play_billing/zzko;->r(Lcom/google/android/gms/internal/play_billing/zzko;Lcom/google/android/gms/internal/play_billing/zzjg;)V

    .line 500
    .line 501
    .line 502
    if-eqz v0, :cond_1b

    .line 503
    .line 504
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 505
    .line 506
    .line 507
    move-result-wide v6

    .line 508
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 509
    .line 510
    .line 511
    iget-object v0, v3, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 512
    .line 513
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 514
    .line 515
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzko;->s(Lcom/google/android/gms/internal/play_billing/zzko;J)V

    .line 516
    .line 517
    .line 518
    :cond_1b
    iget-object v0, v2, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 519
    .line 520
    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl;->h:Lcom/android/billingclient/api/zzdh;

    .line 521
    .line 522
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 527
    .line 528
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/zzdh;->j(Lcom/google/android/gms/internal/play_billing/zzko;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 529
    .line 530
    .line 531
    goto :goto_18

    .line 532
    :goto_17
    const-string v3, "BillingClient"

    .line 533
    .line 534
    const-string v4, "Unable to log."

    .line 535
    .line 536
    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    .line 538
    .line 539
    :goto_18
    sget-object v0, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 540
    .line 541
    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/zzbv;->d(Lcom/android/billingclient/api/BillingResult;)V

    .line 542
    .line 543
    .line 544
    goto :goto_1e

    .line 545
    :goto_19
    const-string v3, "BillingClient"

    .line 546
    .line 547
    const-string v6, "Exception while checking if billing is supported; try to reconnect"

    .line 548
    .line 549
    invoke-static {v3, v6, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    .line 551
    .line 552
    instance-of v3, v0, Landroid/os/DeadObjectException;

    .line 553
    .line 554
    if-eqz v3, :cond_1c

    .line 555
    .line 556
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzje;->R0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 557
    .line 558
    goto :goto_1a

    .line 559
    :cond_1c
    instance-of v6, v0, Landroid/os/RemoteException;

    .line 560
    .line 561
    if-eqz v6, :cond_1d

    .line 562
    .line 563
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzje;->Q0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 564
    .line 565
    goto :goto_1a

    .line 566
    :cond_1d
    instance-of v6, v0, Ljava/lang/SecurityException;

    .line 567
    .line 568
    if-eqz v6, :cond_1e

    .line 569
    .line 570
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzje;->S0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 571
    .line 572
    goto :goto_1a

    .line 573
    :cond_1e
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzje;->U:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 574
    .line 575
    :goto_1a
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzje;->U:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 576
    .line 577
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v7

    .line 581
    if-eqz v7, :cond_1f

    .line 582
    .line 583
    invoke-static {v0}, Lcom/android/billingclient/api/zzcx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    goto :goto_1b

    .line 588
    :cond_1f
    move-object v0, v5

    .line 589
    :goto_1b
    iget-object v7, v2, Lcom/android/billingclient/api/zzbv;->h:Lcom/android/billingclient/api/BillingClientImpl;

    .line 590
    .line 591
    invoke-virtual {v7, v8}, Lcom/android/billingclient/api/BillingClientImpl;->x(I)V

    .line 592
    .line 593
    .line 594
    if-eqz v3, :cond_20

    .line 595
    .line 596
    sget-object v7, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 597
    .line 598
    goto :goto_1c

    .line 599
    :cond_20
    sget-object v7, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 600
    .line 601
    :goto_1c
    invoke-virtual {v2, v7, v6, v0, v4}, Lcom/android/billingclient/api/zzbv;->c(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Z)V

    .line 602
    .line 603
    .line 604
    if-eqz v3, :cond_21

    .line 605
    .line 606
    sget-object v0, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 607
    .line 608
    goto :goto_1d

    .line 609
    :cond_21
    sget-object v0, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 610
    .line 611
    :goto_1d
    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/zzbv;->d(Lcom/android/billingclient/api/BillingResult;)V

    .line 612
    .line 613
    .line 614
    :goto_1e
    return-object v5

    .line 615
    :catchall_2
    move-exception v0

    .line 616
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 617
    throw v0

    .line 618
    :goto_1f
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 619
    throw v0
.end method
