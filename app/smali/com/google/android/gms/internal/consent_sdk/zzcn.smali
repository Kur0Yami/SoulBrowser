.class public final Lcom/google/android/gms/internal/consent_sdk/zzcn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I


# direct methods
.method public static a(Landroid/util/JsonReader;)Lcom/google/android/gms/internal/consent_sdk/zzcn;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->g:I

    .line 8
    .line 9
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 10
    .line 11
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->d:Ljava/util/List;

    .line 12
    .line 13
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->e:Ljava/util/List;

    .line 14
    .line 15
    iput v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->h:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_e

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x2

    .line 36
    sparse-switch v3, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    goto/16 :goto_9

    .line 40
    .line 41
    :sswitch_0
    const-string v3, "consent_form_payload"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_d

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->a:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :sswitch_1
    const-string v3, "request_info_keys"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_d

    .line 63
    .line 64
    new-instance v2, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->d:Ljava/util/List;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->d:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :sswitch_2
    const-string v3, "actions"

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_d

    .line 101
    .line 102
    new-instance v2, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->e:Ljava/util/List;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_8

    .line 117
    .line 118
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;

    .line 119
    .line 120
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    iput v1, v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;->b:I

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 126
    .line 127
    .line 128
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_7

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    const v7, -0x7d8028f6

    .line 143
    .line 144
    .line 145
    if-eq v6, v7, :cond_5

    .line 146
    .line 147
    const v7, 0x5e663ba3

    .line 148
    .line 149
    .line 150
    if-eq v6, v7, :cond_1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_1
    const-string v6, "action_type"

    .line 154
    .line 155
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_6

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    const v7, 0x3d3be2d

    .line 170
    .line 171
    .line 172
    if-eq v6, v7, :cond_3

    .line 173
    .line 174
    const v7, 0x4f05fbf

    .line 175
    .line 176
    .line 177
    if-eq v6, v7, :cond_2

    .line 178
    .line 179
    const v7, 0x6ea5670e

    .line 180
    .line 181
    .line 182
    if-ne v6, v7, :cond_4

    .line 183
    .line 184
    const-string v6, "UNKNOWN_ACTION_TYPE"

    .line 185
    .line 186
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_4

    .line 191
    .line 192
    move v3, v1

    .line 193
    goto :goto_4

    .line 194
    :cond_2
    const-string v6, "WRITE"

    .line 195
    .line 196
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_4

    .line 201
    .line 202
    move v3, v5

    .line 203
    goto :goto_4

    .line 204
    :cond_3
    const-string v6, "CLEAR"

    .line 205
    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_4

    .line 211
    .line 212
    move v3, v4

    .line 213
    :goto_4
    iput v3, v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;->b:I

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 217
    .line 218
    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.Action.ActionTypefrom: "

    .line 219
    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_5
    const-string v6, "args_json"

    .line 229
    .line 230
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_6

    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    iput-object v3, v2, Lcom/google/android/gms/internal/consent_sdk/zzcm;->a:Ljava/lang/String;

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_6
    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 248
    .line 249
    .line 250
    iget-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->e:Ljava/util/List;

    .line 251
    .line 252
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :sswitch_3
    const-string v3, "privacy_options_required"

    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_d

    .line 269
    .line 270
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    const v6, -0x70970855

    .line 279
    .line 280
    .line 281
    if-eq v3, v6, :cond_a

    .line 282
    .line 283
    const v4, 0x17371b9f

    .line 284
    .line 285
    .line 286
    if-eq v3, v4, :cond_9

    .line 287
    .line 288
    const v4, 0x19d1382a

    .line 289
    .line 290
    .line 291
    if-ne v3, v4, :cond_b

    .line 292
    .line 293
    const-string v3, "UNKNOWN"

    .line 294
    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_b

    .line 300
    .line 301
    move v4, v1

    .line 302
    goto :goto_6

    .line 303
    :cond_9
    const-string v3, "REQUIRED"

    .line 304
    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_b

    .line 310
    .line 311
    move v4, v5

    .line 312
    goto :goto_6

    .line 313
    :cond_a
    const-string v3, "NOT_REQUIRED"

    .line 314
    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_b

    .line 320
    .line 321
    :goto_6
    iput v4, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->h:I

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .line 326
    .line 327
    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.PrivacyOptionsRequirementStatusfrom: "

    .line 328
    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw p0

    .line 337
    :sswitch_4
    const-string v3, "client_side_pingback_url"

    .line 338
    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-eqz v2, :cond_d

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->f:Ljava/lang/String;

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :sswitch_5
    const-string v3, "consent_form_base_url"

    .line 354
    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-eqz v2, :cond_d

    .line 360
    .line 361
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->b:Ljava/lang/String;

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :sswitch_6
    const-string v3, "error_message"

    .line 370
    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_d

    .line 376
    .line 377
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->c:Ljava/lang/String;

    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    .line 385
    :sswitch_7
    const-string v3, "consent_signal"

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_d

    .line 392
    .line 393
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    sparse-switch v3, :sswitch_data_1

    .line 402
    .line 403
    .line 404
    goto :goto_8

    .line 405
    :sswitch_8
    const-string v3, "CONSENT_SIGNAL_NOT_REQUIRED"

    .line 406
    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eqz v3, :cond_c

    .line 412
    .line 413
    const/4 v4, 0x6

    .line 414
    goto :goto_7

    .line 415
    :sswitch_9
    const-string v3, "CONSENT_SIGNAL_PERSONALIZED_ADS"

    .line 416
    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-eqz v3, :cond_c

    .line 422
    .line 423
    move v4, v5

    .line 424
    goto :goto_7

    .line 425
    :sswitch_a
    const-string v3, "CONSENT_SIGNAL_SUFFICIENT"

    .line 426
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-eqz v3, :cond_c

    .line 432
    .line 433
    const/4 v4, 0x4

    .line 434
    goto :goto_7

    .line 435
    :sswitch_b
    const-string v3, "CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION"

    .line 436
    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_c

    .line 442
    .line 443
    const/16 v4, 0x8

    .line 444
    .line 445
    goto :goto_7

    .line 446
    :sswitch_c
    const-string v3, "CONSENT_SIGNAL_NON_PERSONALIZED_ADS"

    .line 447
    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-eqz v3, :cond_c

    .line 453
    .line 454
    goto :goto_7

    .line 455
    :sswitch_d
    const-string v3, "CONSENT_SIGNAL_UNKNOWN"

    .line 456
    .line 457
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-eqz v3, :cond_c

    .line 462
    .line 463
    move v4, v1

    .line 464
    goto :goto_7

    .line 465
    :sswitch_e
    const-string v3, "CONSENT_SIGNAL_ERROR"

    .line 466
    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_c

    .line 472
    .line 473
    const/4 v4, 0x7

    .line 474
    goto :goto_7

    .line 475
    :sswitch_f
    const-string v3, "CONSENT_SIGNAL_COLLECT_CONSENT"

    .line 476
    .line 477
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    if-eqz v3, :cond_c

    .line 482
    .line 483
    const/4 v4, 0x5

    .line 484
    :goto_7
    iput v4, v0, Lcom/google/android/gms/internal/consent_sdk/zzcn;->g:I

    .line 485
    .line 486
    goto/16 :goto_0

    .line 487
    .line 488
    :cond_c
    :goto_8
    new-instance p0, Ljava/io/IOException;

    .line 489
    .line 490
    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: "

    .line 491
    .line 492
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    throw p0

    .line 500
    :cond_d
    :goto_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_0

    .line 504
    .line 505
    :cond_e
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 506
    .line 507
    .line 508
    return-object v0

    .line 509
    :sswitch_data_0
    .sparse-switch
        -0x774ac593 -> :sswitch_7
        -0x738f0f30 -> :sswitch_6
        -0x6e5c3749 -> :sswitch_5
        -0x67601003 -> :sswitch_4
        -0x4ef2d809 -> :sswitch_3
        -0x453fb703 -> :sswitch_2
        -0x3ad17acb -> :sswitch_1
        -0x2f244ae8 -> :sswitch_0
    .end sparse-switch

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :sswitch_data_1
    .sparse-switch
        -0x7ab5a7ed -> :sswitch_f
        -0x755d1a4a -> :sswitch_e
        -0x4b527788 -> :sswitch_d
        -0x38e1da9b -> :sswitch_c
        -0x36c1e70c -> :sswitch_b
        0x19984e10 -> :sswitch_a
        0x1be36b13 -> :sswitch_9
        0x66d8a81d -> :sswitch_8
    .end sparse-switch
.end method
