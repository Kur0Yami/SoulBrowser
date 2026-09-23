.class public final synthetic Lcom/android/billingclient/api/zzbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/BillingClientImpl;

.field public final synthetic b:Lcom/android/billingclient/api/ProductDetailsResponseListener;

.field public final synthetic c:Lcom/android/billingclient/api/QueryProductDetailsParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/QueryProductDetailsParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbe;->a:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbe;->b:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    iput-object p3, p0, Lcom/android/billingclient/api/zzbe;->c:Lcom/android/billingclient/api/QueryProductDetailsParams;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/android/billingclient/api/zzbe;->a:Lcom/android/billingclient/api/BillingClientImpl;

    .line 4
    .line 5
    iget-object v3, v1, Lcom/android/billingclient/api/zzbe;->b:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    .line 6
    .line 7
    iget-object v0, v1, Lcom/android/billingclient/api/zzbe;->c:Lcom/android/billingclient/api/QueryProductDetailsParams;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->B()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x7

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->g:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 18
    .line 19
    sget-object v4, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 20
    .line 21
    invoke-virtual {v2, v0, v6, v4}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-direct {v0, v2, v6}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, v4, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    .line 38
    .line 39
    .line 40
    return-object v5

    .line 41
    :cond_0
    iget-boolean v4, v2, Lcom/android/billingclient/api/BillingClientImpl;->r:Z

    .line 42
    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    const-string v0, "BillingClient"

    .line 46
    .line 47
    const-string v4, "Querying product details is not supported."

    .line 48
    .line 49
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->y:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 53
    .line 54
    sget-object v4, Lcom/android/billingclient/api/zzdb;->o:Lcom/android/billingclient/api/BillingResult;

    .line 55
    .line 56
    invoke-virtual {v2, v0, v6, v4}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 60
    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-direct {v0, v2, v6}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v3, v4, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    .line 73
    .line 74
    .line 75
    return-object v5

    .line 76
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v6, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v7, v0, Lcom/android/billingclient/api/QueryProductDetailsParams;->a:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 94
    .line 95
    iget-object v11, v7, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->b:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/billingclient/api/QueryProductDetailsParams;->a:Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    const/4 v14, 0x0

    .line 104
    move v8, v14

    .line 105
    :goto_0
    if-ge v8, v7, :cond_10

    .line 106
    .line 107
    add-int/lit8 v15, v8, 0x14

    .line 108
    .line 109
    if-le v15, v7, :cond_2

    .line 110
    .line 111
    move v9, v7

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move v9, v15

    .line 114
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-interface {v0, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .line 122
    .line 123
    new-instance v8, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    move v12, v14

    .line 133
    :goto_2
    if-ge v12, v9, :cond_3

    .line 134
    .line 135
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    check-cast v13, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 140
    .line 141
    iget-object v13, v13, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->a:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    add-int/lit8 v12, v12, 0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    new-instance v12, Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v9, "ITEM_ID_LIST"

    .line 155
    .line 156
    invoke-virtual {v12, v9, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 157
    .line 158
    .line 159
    iget-object v8, v2, Lcom/android/billingclient/api/BillingClientImpl;->c:Ljava/lang/String;

    .line 160
    .line 161
    const-string v9, "playBillingLibraryVersion"

    .line 162
    .line 163
    invoke-virtual {v12, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :try_start_0
    iget-object v9, v2, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 167
    .line 168
    monitor-enter v9
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    move-object/from16 v16, v8

    .line 170
    .line 171
    :try_start_1
    iget-object v8, v2, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 172
    .line 173
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    if-nez v8, :cond_4

    .line 175
    .line 176
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 177
    .line 178
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->h1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 179
    .line 180
    const-string v6, "Service has been reset to null."

    .line 181
    .line 182
    invoke-virtual {v2, v0, v4, v6, v5}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    goto/16 :goto_c

    .line 187
    .line 188
    :catch_0
    move-exception v0

    .line 189
    goto/16 :goto_a

    .line 190
    .line 191
    :catch_1
    move-exception v0

    .line 192
    goto/16 :goto_b

    .line 193
    .line 194
    :cond_4
    iget-boolean v9, v2, Lcom/android/billingclient/api/BillingClientImpl;->s:Z

    .line 195
    .line 196
    if-eqz v9, :cond_5

    .line 197
    .line 198
    iget-object v9, v2, Lcom/android/billingclient/api/BillingClientImpl;->x:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 199
    .line 200
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    :cond_5
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->k()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->k()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->k()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->k()V

    .line 213
    .line 214
    .line 215
    new-instance v9, Lcom/google/android/gms/internal/play_billing/zza;

    .line 216
    .line 217
    invoke-direct {v9, v14}, Lcom/google/android/gms/internal/play_billing/zza;-><init>(Z)V

    .line 218
    .line 219
    .line 220
    iget-boolean v13, v2, Lcom/android/billingclient/api/BillingClientImpl;->t:Z

    .line 221
    .line 222
    const/4 v14, 0x1

    .line 223
    if-eq v14, v13, :cond_6

    .line 224
    .line 225
    const/16 v13, 0x11

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_6
    const/16 v13, 0x14

    .line 229
    .line 230
    :goto_3
    iget-object v14, v2, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    iget-object v5, v2, Lcom/android/billingclient/api/BillingClientImpl;->d:Ljava/lang/String;

    .line 237
    .line 238
    move-object/from16 v23, v0

    .line 239
    .line 240
    iget-object v0, v2, Lcom/android/billingclient/api/BillingClientImpl;->B:Ljava/lang/Long;

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 243
    .line 244
    .line 245
    move-result-wide v20

    .line 246
    move-object/from16 v17, v5

    .line 247
    .line 248
    move-object/from16 v19, v9

    .line 249
    .line 250
    move-object/from16 v18, v10

    .line 251
    .line 252
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/play_billing/zzc;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/internal/play_billing/zza;J)Landroid/os/Bundle;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    move-object/from16 v5, v18

    .line 257
    .line 258
    move v9, v13

    .line 259
    move-object v10, v14

    .line 260
    move-object v13, v0

    .line 261
    invoke-interface/range {v8 .. v13}, Lcom/google/android/gms/internal/play_billing/zzap;->x4(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 262
    .line 263
    .line 264
    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    if-nez v0, :cond_7

    .line 266
    .line 267
    sget-object v0, Lcom/android/billingclient/api/zzdb;->p:Lcom/android/billingclient/api/BillingResult;

    .line 268
    .line 269
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->W:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 270
    .line 271
    const-string v5, "queryProductDetailsAsync got empty product details response."

    .line 272
    .line 273
    const/4 v6, 0x0

    .line 274
    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    goto/16 :goto_c

    .line 279
    .line 280
    :cond_7
    const-string v8, "DETAILS_LIST"

    .line 281
    .line 282
    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v8

    .line 286
    const/4 v9, 0x6

    .line 287
    if-nez v8, :cond_9

    .line 288
    .line 289
    const-string v4, "BillingClient"

    .line 290
    .line 291
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    const-string v5, "BillingClient"

    .line 296
    .line 297
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->f(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-eqz v4, :cond_8

    .line 302
    .line 303
    invoke-static {v4, v0}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzje;->B:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 308
    .line 309
    const-string v6, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    .line 310
    .line 311
    invoke-static {v4, v6}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    const/4 v8, 0x0

    .line 316
    invoke-virtual {v2, v0, v5, v4, v8}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    goto/16 :goto_c

    .line 321
    .line 322
    :cond_8
    const/4 v8, 0x0

    .line 323
    invoke-static {v9, v0}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->X:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 328
    .line 329
    const-string v5, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    .line 330
    .line 331
    invoke-virtual {v2, v0, v4, v5, v8}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    goto/16 :goto_c

    .line 336
    .line 337
    :cond_9
    const/4 v8, 0x0

    .line 338
    const-string v10, "DETAILS_LIST"

    .line 339
    .line 340
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    if-nez v10, :cond_a

    .line 345
    .line 346
    sget-object v0, Lcom/android/billingclient/api/zzdb;->p:Lcom/android/billingclient/api/BillingResult;

    .line 347
    .line 348
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->Y:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 349
    .line 350
    const-string v5, "queryProductDetailsAsync got null response list"

    .line 351
    .line 352
    invoke-virtual {v2, v0, v4, v5, v8}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    goto/16 :goto_c

    .line 357
    .line 358
    :cond_a
    new-instance v8, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    const/4 v13, 0x0

    .line 368
    :goto_4
    if-ge v13, v12, :cond_b

    .line 369
    .line 370
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v14

    .line 374
    check-cast v14, Ljava/lang/String;

    .line 375
    .line 376
    :try_start_3
    new-instance v9, Lcom/android/billingclient/api/ProductDetails;

    .line 377
    .line 378
    invoke-direct {v9, v14}, Lcom/android/billingclient/api/ProductDetails;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 379
    .line 380
    .line 381
    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v14

    .line 385
    const-string v1, "Got product details: "

    .line 386
    .line 387
    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    const-string v14, "BillingClient"

    .line 392
    .line 393
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    add-int/lit8 v13, v13, 0x1

    .line 400
    .line 401
    move-object/from16 v1, p0

    .line 402
    .line 403
    const/4 v9, 0x6

    .line 404
    goto :goto_4

    .line 405
    :catch_2
    move-exception v0

    .line 406
    const-string v1, "Error trying to decode SkuDetails."

    .line 407
    .line 408
    const/4 v4, 0x6

    .line 409
    invoke-static {v4, v1}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->Z:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 414
    .line 415
    const-string v5, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    .line 416
    .line 417
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    goto/16 :goto_c

    .line 422
    .line 423
    :cond_b
    const-string v1, "UNFETCHED_PRODUCT_LIST"

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .line 433
    .line 434
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .line 438
    .line 439
    if-eqz v0, :cond_c

    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    const/4 v9, 0x0

    .line 446
    :goto_5
    if-ge v9, v5, :cond_f

    .line 447
    .line 448
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v10

    .line 452
    add-int/lit8 v9, v9, 0x1

    .line 453
    .line 454
    check-cast v10, Ljava/lang/String;

    .line 455
    .line 456
    new-instance v12, Lcom/android/billingclient/api/UnfetchedProduct;

    .line 457
    .line 458
    invoke-direct {v12, v10}, Lcom/android/billingclient/api/UnfetchedProduct;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const-string v10, "BillingClient"

    .line 462
    .line 463
    invoke-virtual {v12}, Lcom/android/billingclient/api/UnfetchedProduct;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v13

    .line 467
    const-string v14, "Got unfetchedProduct: "

    .line 468
    .line 469
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v13

    .line 473
    invoke-static {v10, v13}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    goto :goto_5

    .line 480
    :catch_3
    move-exception v0

    .line 481
    goto/16 :goto_9

    .line 482
    .line 483
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    const/4 v9, 0x0

    .line 488
    :goto_6
    if-ge v9, v0, :cond_f

    .line 489
    .line 490
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    add-int/lit8 v9, v9, 0x1

    .line 495
    .line 496
    check-cast v10, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 497
    .line 498
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 499
    .line 500
    .line 501
    move-result v12

    .line 502
    const/4 v13, 0x0

    .line 503
    :goto_7
    if-ge v13, v12, :cond_e

    .line 504
    .line 505
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v14

    .line 509
    add-int/lit8 v13, v13, 0x1

    .line 510
    .line 511
    check-cast v14, Lcom/android/billingclient/api/ProductDetails;

    .line 512
    .line 513
    move/from16 v17, v0

    .line 514
    .line 515
    iget-object v0, v10, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->a:Ljava/lang/String;

    .line 516
    .line 517
    move-object/from16 v18, v5

    .line 518
    .line 519
    iget-object v5, v14, Lcom/android/billingclient/api/ProductDetails;->c:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_d

    .line 526
    .line 527
    iget-object v0, v10, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->b:Ljava/lang/String;

    .line 528
    .line 529
    iget-object v5, v14, Lcom/android/billingclient/api/ProductDetails;->d:Ljava/lang/String;

    .line 530
    .line 531
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-eqz v0, :cond_d

    .line 536
    .line 537
    :goto_8
    move/from16 v0, v17

    .line 538
    .line 539
    move-object/from16 v5, v18

    .line 540
    .line 541
    goto :goto_6

    .line 542
    :cond_d
    move/from16 v0, v17

    .line 543
    .line 544
    move-object/from16 v5, v18

    .line 545
    .line 546
    goto :goto_7

    .line 547
    :cond_e
    move/from16 v17, v0

    .line 548
    .line 549
    move-object/from16 v18, v5

    .line 550
    .line 551
    new-instance v0, Lorg/json/JSONObject;

    .line 552
    .line 553
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 554
    .line 555
    .line 556
    const-string v5, "productId"

    .line 557
    .line 558
    iget-object v12, v10, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->a:Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v0, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    const-string v5, "type"

    .line 565
    .line 566
    iget-object v10, v10, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->b:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    const-string v5, "statusCode"

    .line 573
    .line 574
    const/4 v10, 0x0

    .line 575
    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    new-instance v5, Lcom/android/billingclient/api/UnfetchedProduct;

    .line 580
    .line 581
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-direct {v5, v0}, Lcom/android/billingclient/api/UnfetchedProduct;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 589
    .line 590
    .line 591
    goto :goto_8

    .line 592
    :cond_f
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 593
    .line 594
    .line 595
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 596
    .line 597
    .line 598
    move-object/from16 v1, p0

    .line 599
    .line 600
    move v8, v15

    .line 601
    move-object/from16 v0, v23

    .line 602
    .line 603
    const/4 v5, 0x0

    .line 604
    const/4 v14, 0x0

    .line 605
    goto/16 :goto_0

    .line 606
    .line 607
    :goto_9
    const-string v1, "Error trying to decode SkuDetails."

    .line 608
    .line 609
    const/4 v4, 0x6

    .line 610
    invoke-static {v4, v1}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->Z:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 615
    .line 616
    const-string v5, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: "

    .line 617
    .line 618
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    goto :goto_c

    .line 623
    :catchall_0
    move-exception v0

    .line 624
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 625
    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 626
    :goto_a
    sget-object v1, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 627
    .line 628
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->V:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 629
    .line 630
    const-string v5, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 631
    .line 632
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    goto :goto_c

    .line 637
    :goto_b
    sget-object v1, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 638
    .line 639
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->V:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 640
    .line 641
    const-string v5, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 642
    .line 643
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/android/billingclient/api/BillingClientImpl;->r(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcf;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    goto :goto_c

    .line 648
    :cond_10
    const-string v0, ""

    .line 649
    .line 650
    new-instance v1, Lcom/android/billingclient/api/zzcf;

    .line 651
    .line 652
    const/4 v10, 0x0

    .line 653
    invoke-direct {v1, v10, v0, v4, v6}, Lcom/android/billingclient/api/zzcf;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 654
    .line 655
    .line 656
    move-object v0, v1

    .line 657
    :goto_c
    iget v1, v0, Lcom/android/billingclient/api/zzcf;->c:I

    .line 658
    .line 659
    iget-object v2, v0, Lcom/android/billingclient/api/zzcf;->d:Ljava/lang/String;

    .line 660
    .line 661
    invoke-static {v1, v2}, Lcom/android/billingclient/api/zzdb;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    new-instance v2, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 666
    .line 667
    iget-object v4, v0, Lcom/android/billingclient/api/zzcf;->a:Ljava/util/ArrayList;

    .line 668
    .line 669
    iget-object v0, v0, Lcom/android/billingclient/api/zzcf;->b:Ljava/util/ArrayList;

    .line 670
    .line 671
    invoke-direct {v2, v4, v0}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 672
    .line 673
    .line 674
    invoke-interface {v3, v1, v2}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    .line 675
    .line 676
    .line 677
    const/16 v22, 0x0

    .line 678
    .line 679
    return-object v22
.end method
