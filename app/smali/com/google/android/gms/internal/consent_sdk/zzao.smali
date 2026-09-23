.class public final Lcom/google/android/gms/internal/consent_sdk/zzao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzd;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lcom/google/android/gms/internal/consent_sdk/zzaq;

.field public final c:Lcom/google/android/gms/internal/consent_sdk/zzl;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzl;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzao;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzao;->b:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzao;->d:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzao;->c:Lcom/google/android/gms/internal/consent_sdk/zzl;

    return-void
.end method


# virtual methods
.method public final f(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const v4, 0x5a5b64d

    .line 12
    .line 13
    .line 14
    iget-object v5, v1, Lcom/google/android/gms/internal/consent_sdk/zzao;->a:Landroid/app/Application;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    const-string v8, "UserMessagingPlatform"

    .line 19
    .line 20
    if-eq v3, v4, :cond_26

    .line 21
    .line 22
    const v4, 0x6c257df

    .line 23
    .line 24
    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    :cond_0
    move/from16 v16, v6

    .line 28
    .line 29
    goto/16 :goto_18

    .line 30
    .line 31
    :cond_1
    const-string v3, "write"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzcv;

    .line 40
    .line 41
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/consent_sdk/zzcv;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v5, v1, Lcom/google/android/gms/internal/consent_sdk/zzao;->b:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 53
    .line 54
    iget-object v9, v2, Lcom/google/android/gms/internal/consent_sdk/zzcv;->c:Ljava/util/HashMap;

    .line 55
    .line 56
    iget-object v10, v2, Lcom/google/android/gms/internal/consent_sdk/zzcv;->a:Ljava/util/HashMap;

    .line 57
    .line 58
    if-eqz v4, :cond_b

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    new-instance v13, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v14, "Writing to storage: ["

    .line 77
    .line 78
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v14, "] "

    .line 85
    .line 86
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object v12, v2, Lcom/google/android/gms/internal/consent_sdk/zzcv;->b:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzcu;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    if-nez v13, :cond_2

    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_2
    iget-object v14, v13, Lcom/google/android/gms/internal/consent_sdk/zzcu;->b:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v13, v13, Lcom/google/android/gms/internal/consent_sdk/zzcu;->a:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    if-nez v15, :cond_3

    .line 118
    .line 119
    invoke-virtual {v12, v13, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    invoke-virtual {v9, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    check-cast v9, Landroid/content/SharedPreferences$Editor;

    .line 135
    .line 136
    instance-of v12, v11, Ljava/lang/Integer;

    .line 137
    .line 138
    if-eqz v12, :cond_4

    .line 139
    .line 140
    check-cast v11, Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    invoke-interface {v9, v14, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 147
    .line 148
    .line 149
    sget-object v9, Lcom/google/android/gms/internal/consent_sdk/zzcv;->d:Lcom/google/android/gms/internal/consent_sdk/zzdw;

    .line 150
    .line 151
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/consent_sdk/zzds;->contains(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_9

    .line 156
    .line 157
    invoke-virtual {v10, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    instance-of v10, v11, Ljava/lang/Long;

    .line 162
    .line 163
    if-eqz v10, :cond_5

    .line 164
    .line 165
    check-cast v11, Ljava/lang/Long;

    .line 166
    .line 167
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 168
    .line 169
    .line 170
    move-result-wide v10

    .line 171
    invoke-interface {v9, v14, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    instance-of v10, v11, Ljava/lang/Double;

    .line 176
    .line 177
    if-eqz v10, :cond_6

    .line 178
    .line 179
    check-cast v11, Ljava/lang/Double;

    .line 180
    .line 181
    invoke-virtual {v11}, Ljava/lang/Double;->floatValue()F

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    invoke-interface {v9, v14, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_6
    instance-of v10, v11, Ljava/lang/Float;

    .line 190
    .line 191
    if-eqz v10, :cond_7

    .line 192
    .line 193
    check-cast v11, Ljava/lang/Float;

    .line 194
    .line 195
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    invoke-interface {v9, v14, v10}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_7
    instance-of v10, v11, Ljava/lang/Boolean;

    .line 204
    .line 205
    if-eqz v10, :cond_8

    .line 206
    .line 207
    check-cast v11, Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    invoke-interface {v9, v14, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_8
    instance-of v10, v11, Ljava/lang/String;

    .line 218
    .line 219
    if-eqz v10, :cond_a

    .line 220
    .line 221
    check-cast v11, Ljava/lang/String;

    .line 222
    .line 223
    invoke-interface {v9, v14, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    .line 225
    .line 226
    :cond_9
    :goto_1
    iget-object v5, v5, Lcom/google/android/gms/internal/consent_sdk/zzaq;->c:Ljava/util/HashSet;

    .line 227
    .line 228
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_a
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    const-string v5, "Failed writing key: "

    .line 238
    .line 239
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_b
    iget-object v0, v5, Lcom/google/android/gms/internal/consent_sdk/zzaq;->b:Landroid/content/SharedPreferences;

    .line 249
    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v2, "written_values"

    .line 255
    .line 256
    iget-object v3, v5, Lcom/google/android/gms/internal/consent_sdk/zzaq;->c:Ljava/util/HashSet;

    .line 257
    .line 258
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_c

    .line 278
    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Landroid/content/SharedPreferences$Editor;

    .line 284
    .line 285
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_c
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-le v0, v7, :cond_25

    .line 294
    .line 295
    iget-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzao;->c:Lcom/google/android/gms/internal/consent_sdk/zzl;

    .line 296
    .line 297
    iget-object v0, v2, Lcom/google/android/gms/internal/consent_sdk/zzl;->a:Lcom/google/android/gms/internal/consent_sdk/zzam;

    .line 298
    .line 299
    const-class v3, Ljava/lang/String;

    .line 300
    .line 301
    const-string v4, "valueOf"

    .line 302
    .line 303
    iget-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/zzam;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 304
    .line 305
    iget-object v9, v0, Lcom/google/android/gms/internal/consent_sdk/zzam;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 306
    .line 307
    iget-object v11, v0, Lcom/google/android/gms/internal/consent_sdk/zzam;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 308
    .line 309
    iget-object v12, v0, Lcom/google/android/gms/internal/consent_sdk/zzam;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 310
    .line 311
    iget-object v13, v0, Lcom/google/android/gms/internal/consent_sdk/zzam;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 312
    .line 313
    iget-object v14, v0, Lcom/google/android/gms/internal/consent_sdk/zzam;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 314
    .line 315
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v15

    .line 319
    move/from16 v16, v6

    .line 320
    .line 321
    if-eqz v15, :cond_d

    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Ljava/lang/Boolean;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    goto :goto_5

    .line 334
    :cond_d
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzam;->a:Landroid/content/Context;

    .line 335
    .line 336
    if-nez v0, :cond_e

    .line 337
    .line 338
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 339
    .line 340
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :goto_4
    move/from16 v0, v16

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_e
    :try_start_0
    const-string v15, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 347
    .line 348
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    move-result-object v15

    .line 352
    const-string v6, "getInstance"

    .line 353
    .line 354
    move-object/from16 p2, v0

    .line 355
    .line 356
    new-array v0, v7, [Ljava/lang/Class;

    .line 357
    .line 358
    const-class v17, Landroid/content/Context;

    .line 359
    .line 360
    aput-object v17, v0, v16

    .line 361
    .line 362
    invoke-virtual {v15, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    new-array v6, v7, [Ljava/lang/Object;

    .line 367
    .line 368
    aput-object p2, v6, v16

    .line 369
    .line 370
    const/4 v7, 0x0

    .line 371
    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v14, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    const-string v0, "setConsent"

    .line 379
    .line 380
    const/4 v6, 0x1

    .line 381
    new-array v7, v6, [Ljava/lang/Class;

    .line 382
    .line 383
    const-class v6, Ljava/util/Map;

    .line 384
    .line 385
    aput-object v6, v7, v16

    .line 386
    .line 387
    invoke-virtual {v15, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v13, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics$ConsentStatus"

    .line 395
    .line 396
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    const-string v6, "com.google.firebase.analytics.FirebaseAnalytics$ConsentType"

    .line 401
    .line 402
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    const/4 v7, 0x1

    .line 407
    new-array v15, v7, [Ljava/lang/Class;

    .line 408
    .line 409
    aput-object v3, v15, v16

    .line 410
    .line 411
    invoke-virtual {v0, v4, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    new-array v15, v7, [Ljava/lang/Class;

    .line 416
    .line 417
    aput-object v3, v15, v16

    .line 418
    .line 419
    invoke-virtual {v6, v4, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {v12, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v11, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .line 428
    .line 429
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 430
    .line 431
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    const/4 v0, 0x1

    .line 435
    goto :goto_5

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const-string v3, "No Firebase class found. "

    .line 438
    .line 439
    invoke-static {v8, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .line 441
    .line 442
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 443
    .line 444
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    goto :goto_4

    .line 448
    :goto_5
    if-nez v0, :cond_f

    .line 449
    .line 450
    goto/16 :goto_11

    .line 451
    .line 452
    :cond_f
    iget-object v0, v2, Lcom/google/android/gms/internal/consent_sdk/zzl;->b:Landroid/content/Context;

    .line 453
    .line 454
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    if-nez v2, :cond_10

    .line 459
    .line 460
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    const/16 v3, 0x80

    .line 469
    .line 470
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 475
    .line 476
    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 477
    .line 478
    .line 479
    goto :goto_7

    .line 480
    :catch_1
    move-exception v0

    .line 481
    goto :goto_6

    .line 482
    :catch_2
    move-exception v0

    .line 483
    :goto_6
    const-string v2, "Failed to get metadata. "

    .line 484
    .line 485
    invoke-static {v8, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    .line 487
    .line 488
    :cond_10
    :goto_7
    const-string v0, "IABTCF_gdprApplies"

    .line 489
    .line 490
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    check-cast v2, Ljava/lang/Integer;

    .line 495
    .line 496
    new-instance v3, Ljava/util/HashMap;

    .line 497
    .line 498
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 510
    .line 511
    .line 512
    move-result v5

    .line 513
    if-eqz v5, :cond_21

    .line 514
    .line 515
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v5

    .line 519
    check-cast v5, Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    if-nez v6, :cond_20

    .line 526
    .line 527
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 528
    .line 529
    .line 530
    move-result v6

    .line 531
    const-string v7, "AD_PERSONALIZATION"

    .line 532
    .line 533
    const-string v15, "AD_USER_DATA"

    .line 534
    .line 535
    sparse-switch v6, :sswitch_data_0

    .line 536
    .line 537
    .line 538
    :cond_11
    move-object/from16 p2, v0

    .line 539
    .line 540
    goto/16 :goto_e

    .line 541
    .line 542
    :sswitch_0
    const-string v6, "UMP_CoMoAdUserDataPurposeConsentStatus"

    .line 543
    .line 544
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    if-eqz v6, :cond_11

    .line 549
    .line 550
    const-string v6, "google_analytics_default_allow_ad_user_data"

    .line 551
    .line 552
    move-object/from16 p2, v0

    .line 553
    .line 554
    move-object v0, v15

    .line 555
    goto :goto_a

    .line 556
    :sswitch_1
    const-string v6, "UMP_CoMoAdStoragePurposeConsentStatus"

    .line 557
    .line 558
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v6

    .line 562
    if-eqz v6, :cond_11

    .line 563
    .line 564
    const-string v6, "google_analytics_default_allow_ad_storage"

    .line 565
    .line 566
    const-string v18, "AD_STORAGE"

    .line 567
    .line 568
    :goto_9
    move-object/from16 p2, v0

    .line 569
    .line 570
    move-object/from16 v0, v18

    .line 571
    .line 572
    goto :goto_a

    .line 573
    :sswitch_2
    const-string v6, "UMP_CoMoAnalyticsStoragePurposeConsentStatus"

    .line 574
    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v6

    .line 579
    if-eqz v6, :cond_11

    .line 580
    .line 581
    const-string v6, "google_analytics_default_allow_analytics_storage"

    .line 582
    .line 583
    const-string v18, "ANALYTICS_STORAGE"

    .line 584
    .line 585
    goto :goto_9

    .line 586
    :sswitch_3
    const-string v6, "UMP_CoMoAdPersonalizationPurposeConsentStatus"

    .line 587
    .line 588
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v6

    .line 592
    if-eqz v6, :cond_11

    .line 593
    .line 594
    const-string v6, "google_analytics_default_allow_ad_personalization_signals"

    .line 595
    .line 596
    move-object/from16 p2, v0

    .line 597
    .line 598
    move-object v0, v7

    .line 599
    :goto_a
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v5

    .line 603
    check-cast v5, Ljava/lang/Integer;

    .line 604
    .line 605
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    const/4 v1, -0x1

    .line 610
    if-eq v5, v1, :cond_1f

    .line 611
    .line 612
    const-string v1, "GRANTED"

    .line 613
    .line 614
    move-object/from16 v18, v2

    .line 615
    .line 616
    const/4 v2, 0x1

    .line 617
    if-eq v5, v2, :cond_1e

    .line 618
    .line 619
    const/4 v2, 0x2

    .line 620
    move-object/from16 v19, v4

    .line 621
    .line 622
    const-string v4, "DENIED"

    .line 623
    .line 624
    if-eq v5, v2, :cond_1d

    .line 625
    .line 626
    const/4 v2, 0x4

    .line 627
    if-eq v5, v2, :cond_12

    .line 628
    .line 629
    const/4 v2, 0x5

    .line 630
    if-eq v5, v2, :cond_13

    .line 631
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    const-string v1, "Invalid CoMo consent status: "

    .line 635
    .line 636
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    :cond_12
    :goto_b
    move-object/from16 v1, p0

    .line 650
    .line 651
    move-object/from16 v0, p2

    .line 652
    .line 653
    move-object/from16 v2, v18

    .line 654
    .line 655
    move-object/from16 v4, v19

    .line 656
    .line 657
    goto/16 :goto_8

    .line 658
    .line 659
    :cond_13
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    if-nez v2, :cond_14

    .line 664
    .line 665
    goto :goto_c

    .line 666
    :cond_14
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    check-cast v2, Landroid/os/Bundle;

    .line 671
    .line 672
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    if-eqz v2, :cond_16

    .line 677
    .line 678
    instance-of v5, v2, Ljava/lang/Boolean;

    .line 679
    .line 680
    if-eqz v5, :cond_15

    .line 681
    .line 682
    check-cast v2, Ljava/lang/Boolean;

    .line 683
    .line 684
    goto :goto_d

    .line 685
    :cond_15
    instance-of v5, v2, Ljava/lang/String;

    .line 686
    .line 687
    if-eqz v5, :cond_16

    .line 688
    .line 689
    check-cast v2, Ljava/lang/String;

    .line 690
    .line 691
    goto :goto_d

    .line 692
    :cond_16
    :goto_c
    const/4 v2, 0x0

    .line 693
    :goto_d
    if-nez v2, :cond_17

    .line 694
    .line 695
    const-string v0, "No default metadata"

    .line 696
    .line 697
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .line 699
    .line 700
    goto :goto_b

    .line 701
    :cond_17
    instance-of v5, v2, Ljava/lang/Boolean;

    .line 702
    .line 703
    if-eqz v5, :cond_19

    .line 704
    .line 705
    check-cast v2, Ljava/lang/Boolean;

    .line 706
    .line 707
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    const/4 v6, 0x1

    .line 712
    if-eq v6, v2, :cond_18

    .line 713
    .line 714
    move-object v1, v4

    .line 715
    :cond_18
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    goto :goto_b

    .line 719
    :cond_19
    instance-of v5, v2, Ljava/lang/String;

    .line 720
    .line 721
    if-eqz v5, :cond_1c

    .line 722
    .line 723
    const-string v5, "eu_consent_policy"

    .line 724
    .line 725
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v2

    .line 729
    if-eqz v2, :cond_1c

    .line 730
    .line 731
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    if-nez v2, :cond_1a

    .line 736
    .line 737
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v2

    .line 741
    if-eqz v2, :cond_1c

    .line 742
    .line 743
    :cond_1a
    if-eqz v18, :cond_1c

    .line 744
    .line 745
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 746
    .line 747
    .line 748
    move-result v2

    .line 749
    const/4 v6, 0x1

    .line 750
    if-ne v2, v6, :cond_1b

    .line 751
    .line 752
    move-object v1, v4

    .line 753
    :cond_1b
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    goto :goto_b

    .line 757
    :cond_1c
    const-string v0, "Failed to get the default eu_consent_policy value."

    .line 758
    .line 759
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    goto :goto_b

    .line 763
    :cond_1d
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    goto :goto_b

    .line 767
    :cond_1e
    move-object/from16 v19, v4

    .line 768
    .line 769
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-object/from16 v1, p0

    .line 773
    .line 774
    move-object/from16 v0, p2

    .line 775
    .line 776
    move-object/from16 v2, v18

    .line 777
    .line 778
    goto/16 :goto_8

    .line 779
    .line 780
    :cond_1f
    :goto_e
    move-object/from16 v18, v2

    .line 781
    .line 782
    move-object/from16 v19, v4

    .line 783
    .line 784
    goto/16 :goto_b

    .line 785
    .line 786
    :cond_20
    move-object/from16 v1, p0

    .line 787
    .line 788
    goto/16 :goto_8

    .line 789
    .line 790
    :cond_21
    const-string v0, "Update Firebase: "

    .line 791
    .line 792
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .line 802
    .line 803
    new-instance v1, Ljava/util/HashMap;

    .line 804
    .line 805
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 817
    .line 818
    .line 819
    move-result v0

    .line 820
    if-eqz v0, :cond_22

    .line 821
    .line 822
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    check-cast v0, Ljava/lang/String;

    .line 827
    .line 828
    :try_start_2
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v4

    .line 832
    check-cast v4, Ljava/lang/reflect/Method;

    .line 833
    .line 834
    const/4 v6, 0x1

    .line 835
    new-array v5, v6, [Ljava/lang/Object;

    .line 836
    .line 837
    aput-object v0, v5, v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 838
    .line 839
    const/4 v7, 0x0

    .line 840
    :try_start_3
    invoke-virtual {v4, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 844
    :try_start_4
    check-cast v4, Ljava/lang/Enum;

    .line 845
    .line 846
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    check-cast v5, Ljava/lang/reflect/Method;

    .line 851
    .line 852
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    const/4 v6, 0x1

    .line 857
    new-array v7, v6, [Ljava/lang/Object;

    .line 858
    .line 859
    aput-object v0, v7, v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 860
    .line 861
    const/4 v6, 0x0

    .line 862
    :try_start_5
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    check-cast v0, Ljava/lang/Enum;

    .line 867
    .line 868
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 869
    .line 870
    .line 871
    goto :goto_f

    .line 872
    :catch_3
    move-exception v0

    .line 873
    goto :goto_10

    .line 874
    :catch_4
    move-exception v0

    .line 875
    const/4 v6, 0x0

    .line 876
    goto :goto_10

    .line 877
    :catch_5
    move-exception v0

    .line 878
    move-object v6, v7

    .line 879
    :goto_10
    const-string v4, "Failed to invoke the Firebase static method."

    .line 880
    .line 881
    invoke-static {v8, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    .line 883
    .line 884
    goto :goto_f

    .line 885
    :cond_22
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    if-eqz v0, :cond_24

    .line 890
    .line 891
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    if-eqz v0, :cond_23

    .line 896
    .line 897
    goto :goto_11

    .line 898
    :cond_23
    :try_start_6
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    check-cast v0, Ljava/lang/reflect/Method;

    .line 903
    .line 904
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 905
    .line 906
    .line 907
    move-result-object v2

    .line 908
    const/4 v6, 0x1

    .line 909
    new-array v3, v6, [Ljava/lang/Object;

    .line 910
    .line 911
    aput-object v1, v3, v16

    .line 912
    .line 913
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 914
    .line 915
    .line 916
    goto :goto_11

    .line 917
    :catch_6
    move-exception v0

    .line 918
    const-string v1, "Failed to invoke Firebase method. "

    .line 919
    .line 920
    invoke-static {v8, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    .line 922
    .line 923
    :cond_24
    :goto_11
    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 924
    .line 925
    .line 926
    const/16 v17, 0x1

    .line 927
    .line 928
    return v17

    .line 929
    :cond_25
    move/from16 v17, v7

    .line 930
    .line 931
    goto/16 :goto_16

    .line 932
    .line 933
    :cond_26
    move/from16 v16, v6

    .line 934
    .line 935
    const-string v1, "clear"

    .line 936
    .line 937
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-eqz v1, :cond_2f

    .line 942
    .line 943
    const-string v1, "keys"

    .line 944
    .line 945
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    if-eqz v1, :cond_27

    .line 950
    .line 951
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 952
    .line 953
    .line 954
    move-result v2

    .line 955
    if-nez v2, :cond_28

    .line 956
    .line 957
    :cond_27
    const/16 v17, 0x1

    .line 958
    .line 959
    goto/16 :goto_17

    .line 960
    .line 961
    :cond_28
    new-instance v0, Ljava/util/HashSet;

    .line 962
    .line 963
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 967
    .line 968
    .line 969
    move-result v2

    .line 970
    move/from16 v3, v16

    .line 971
    .line 972
    :goto_12
    if-ge v3, v2, :cond_2a

    .line 973
    .line 974
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v4

    .line 978
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 979
    .line 980
    .line 981
    move-result v6

    .line 982
    if-eqz v6, :cond_29

    .line 983
    .line 984
    new-instance v4, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    const-string v6, "Action[clear]: empty key at index: "

    .line 987
    .line 988
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v4

    .line 998
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .line 1000
    .line 1001
    goto :goto_13

    .line 1002
    :cond_29
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    :goto_13
    add-int/lit8 v3, v3, 0x1

    .line 1006
    .line 1007
    goto :goto_12

    .line 1008
    :cond_2a
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzcv;

    .line 1009
    .line 1010
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/consent_sdk/zzcv;-><init>(Landroid/content/Context;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1018
    .line 1019
    .line 1020
    move-result v2

    .line 1021
    iget-object v3, v1, Lcom/google/android/gms/internal/consent_sdk/zzcv;->c:Ljava/util/HashMap;

    .line 1022
    .line 1023
    if-eqz v2, :cond_2d

    .line 1024
    .line 1025
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    check-cast v2, Ljava/lang/String;

    .line 1030
    .line 1031
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzcu;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v4

    .line 1035
    if-nez v4, :cond_2b

    .line 1036
    .line 1037
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    const-string v3, "clearKeys: unable to process key: "

    .line 1042
    .line 1043
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .line 1049
    .line 1050
    goto :goto_14

    .line 1051
    :cond_2b
    iget-object v2, v4, Lcom/google/android/gms/internal/consent_sdk/zzcu;->a:Ljava/lang/String;

    .line 1052
    .line 1053
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v6

    .line 1057
    if-nez v6, :cond_2c

    .line 1058
    .line 1059
    iget-object v6, v1, Lcom/google/android/gms/internal/consent_sdk/zzcv;->b:Landroid/content/Context;

    .line 1060
    .line 1061
    move/from16 v7, v16

    .line 1062
    .line 1063
    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v6

    .line 1067
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v6

    .line 1071
    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    :cond_2c
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v2

    .line 1078
    check-cast v2, Landroid/content/SharedPreferences$Editor;

    .line 1079
    .line 1080
    iget-object v3, v4, Lcom/google/android/gms/internal/consent_sdk/zzcu;->b:Ljava/lang/String;

    .line 1081
    .line 1082
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1083
    .line 1084
    .line 1085
    const/16 v16, 0x0

    .line 1086
    .line 1087
    goto :goto_14

    .line 1088
    :cond_2d
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v1

    .line 1100
    if-eqz v1, :cond_2e

    .line 1101
    .line 1102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v1

    .line 1106
    check-cast v1, Landroid/content/SharedPreferences$Editor;

    .line 1107
    .line 1108
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1109
    .line 1110
    .line 1111
    goto :goto_15

    .line 1112
    :cond_2e
    const/16 v17, 0x1

    .line 1113
    .line 1114
    :goto_16
    return v17

    .line 1115
    :goto_17
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    const-string v1, "Action[clear]: wrong args."

    .line 1124
    .line 1125
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .line 1131
    .line 1132
    return v17

    .line 1133
    :cond_2f
    const/16 v16, 0x0

    .line 1134
    .line 1135
    :goto_18
    return v16

    .line 1136
    nop

    .line 1137
    :sswitch_data_0
    .sparse-switch
        -0x72d36826 -> :sswitch_3
        -0x883f808 -> :sswitch_2
        0x3fb31ab1 -> :sswitch_1
        0x582c6f7b -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzao;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method
