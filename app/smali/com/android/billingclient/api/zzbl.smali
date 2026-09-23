.class final Lcom/android/billingclient/api/zzbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/PurchasesResponseListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/billingclient/api/zzbl;->a:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/billingclient/api/zzbl;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/billingclient/api/zzbl;->c:Lcom/android/billingclient/api/BillingClientImpl;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/android/billingclient/api/zzbl;->c:Lcom/android/billingclient/api/BillingClientImpl;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingClientImpl;->B()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x9

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->g:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 15
    .line 16
    sget-object v5, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v1, Lcom/android/billingclient/api/zzbl;->a:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v0, v5, v2}, Lcom/android/billingclient/api/PurchasesResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_0
    iget-object v9, v1, Lcom/android/billingclient/api/zzbl;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v0, "BillingClient"

    .line 40
    .line 41
    const-string v5, "Please provide a valid product type."

    .line 42
    .line 43
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzje;->c0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 47
    .line 48
    sget-object v5, Lcom/android/billingclient/api/zzdb;->e:Lcom/android/billingclient/api/BillingResult;

    .line 49
    .line 50
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v1, Lcom/android/billingclient/api/zzbl;->a:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v0, v5, v2}, Lcom/android/billingclient/api/PurchasesResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_1
    const-string v0, "Querying owned items, item type: "

    .line 64
    .line 65
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string v6, "BillingClient"

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-boolean v5, v2, Lcom/android/billingclient/api/BillingClientImpl;->n:Z

    .line 84
    .line 85
    iget-object v6, v2, Lcom/android/billingclient/api/BillingClientImpl;->x:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v6, v2, Lcom/android/billingclient/api/BillingClientImpl;->B:Ljava/lang/Long;

    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v6

    .line 96
    new-instance v11, Landroid/os/Bundle;

    .line 97
    .line 98
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v8, v2, Lcom/android/billingclient/api/BillingClientImpl;->c:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v10, v2, Lcom/android/billingclient/api/BillingClientImpl;->d:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v6, v7, v8, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->b(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    const/4 v12, 0x1

    .line 109
    if-eqz v5, :cond_2

    .line 110
    .line 111
    const-string v5, "enablePendingPurchases"

    .line 112
    .line 113
    invoke-virtual {v11, v5, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    :cond_2
    move-object v10, v3

    .line 117
    :goto_0
    :try_start_0
    iget-object v5, v2, Lcom/android/billingclient/api/BillingClientImpl;->a:Ljava/lang/Object;

    .line 118
    .line 119
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    iget-object v6, v2, Lcom/android/billingclient/api/BillingClientImpl;->i:Lcom/google/android/gms/internal/play_billing/zzap;

    .line 121
    .line 122
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    if-nez v6, :cond_3

    .line 124
    .line 125
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 126
    .line 127
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->h1:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 128
    .line 129
    const-string v5, "Service has been reset to null"

    .line 130
    .line 131
    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/android/billingclient/api/BillingClientImpl;->E(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdv;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :goto_1
    move-object/from16 v17, v3

    .line 136
    .line 137
    goto/16 :goto_d

    .line 138
    .line 139
    :catch_0
    move-exception v0

    .line 140
    move-object/from16 v17, v3

    .line 141
    .line 142
    goto/16 :goto_b

    .line 143
    .line 144
    :catch_1
    move-exception v0

    .line 145
    move-object/from16 v17, v3

    .line 146
    .line 147
    goto/16 :goto_c

    .line 148
    .line 149
    :cond_3
    iget-boolean v5, v2, Lcom/android/billingclient/api/BillingClientImpl;->n:Z

    .line 150
    .line 151
    if-nez v5, :cond_4

    .line 152
    .line 153
    iget-object v5, v2, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-interface {v6, v5, v9, v10}, Lcom/google/android/gms/internal/play_billing/zzap;->b0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    goto :goto_4

    .line 164
    :cond_4
    iget-boolean v5, v2, Lcom/android/billingclient/api/BillingClientImpl;->w:Z

    .line 165
    .line 166
    if-eqz v5, :cond_5

    .line 167
    .line 168
    const/16 v5, 0x1a

    .line 169
    .line 170
    :goto_2
    move v7, v5

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    iget-boolean v5, v2, Lcom/android/billingclient/api/BillingClientImpl;->v:Z

    .line 173
    .line 174
    if-eqz v5, :cond_6

    .line 175
    .line 176
    const/16 v5, 0x18

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    iget-boolean v5, v2, Lcom/android/billingclient/api/BillingClientImpl;->s:Z

    .line 180
    .line 181
    if-eqz v5, :cond_7

    .line 182
    .line 183
    const/16 v5, 0x13

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_7
    move v7, v4

    .line 187
    :goto_3
    iget-object v5, v2, Lcom/android/billingclient/api/BillingClientImpl;->g:Landroid/content/Context;

    .line 188
    .line 189
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/play_billing/zzap;->h4(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 194
    .line 195
    .line 196
    move-result-object v5
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    :goto_4
    sget-object v6, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 198
    .line 199
    const-string v7, "BillingClient"

    .line 200
    .line 201
    if-nez v5, :cond_8

    .line 202
    .line 203
    const-string v8, "getPurchase() got null owned items list"

    .line 204
    .line 205
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzje;->g0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 209
    .line 210
    :goto_5
    move-object v10, v6

    .line 211
    goto/16 :goto_7

    .line 212
    .line 213
    :cond_8
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->f(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->a()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v13

    .line 225
    iput v8, v13, Lcom/android/billingclient/api/BillingResult$Builder;->a:I

    .line 226
    .line 227
    iput-object v10, v13, Lcom/android/billingclient/api/BillingResult$Builder;->c:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v13}, Lcom/android/billingclient/api/BillingResult$Builder;->a()Lcom/android/billingclient/api/BillingResult;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    if-eqz v8, :cond_9

    .line 234
    .line 235
    new-instance v13, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string v14, "getPurchase() failed. Response code: "

    .line 238
    .line 239
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzje;->B:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_9
    const-string v8, "INAPP_PURCHASE_ITEM_LIST"

    .line 256
    .line 257
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    if-eqz v8, :cond_e

    .line 262
    .line 263
    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    .line 264
    .line 265
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    if-eqz v8, :cond_e

    .line 270
    .line 271
    const-string v8, "INAPP_DATA_SIGNATURE_LIST"

    .line 272
    .line 273
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-nez v8, :cond_a

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_a
    const-string v8, "INAPP_PURCHASE_ITEM_LIST"

    .line 281
    .line 282
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    const-string v10, "INAPP_PURCHASE_DATA_LIST"

    .line 287
    .line 288
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 293
    .line 294
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    if-nez v8, :cond_b

    .line 299
    .line 300
    const-string v8, "Bundle returned from getPurchase() contains null SKUs list."

    .line 301
    .line 302
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzje;->i0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_b
    if-nez v10, :cond_c

    .line 309
    .line 310
    const-string v8, "Bundle returned from getPurchase() contains null purchases list."

    .line 311
    .line 312
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzje;->j0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_c
    if-nez v13, :cond_d

    .line 319
    .line 320
    const-string v8, "Bundle returned from getPurchase() contains null signatures list."

    .line 321
    .line 322
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzje;->k0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_d
    sget-object v10, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 329
    .line 330
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzje;->f:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_e
    :goto_6
    const-string v8, "Bundle returned from getPurchase() doesn\'t contain required fields."

    .line 334
    .line 335
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzje;->h0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 339
    .line 340
    goto/16 :goto_5

    .line 341
    .line 342
    :goto_7
    sget-object v8, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 343
    .line 344
    if-eq v10, v8, :cond_f

    .line 345
    .line 346
    const-string v0, "Purchase bundle invalid"

    .line 347
    .line 348
    invoke-virtual {v2, v10, v7, v0, v3}, Lcom/android/billingclient/api/BillingClientImpl;->E(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdv;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_f
    const-string v7, "INAPP_PURCHASE_ITEM_LIST"

    .line 355
    .line 356
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    .line 361
    .line 362
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    const-string v10, "INAPP_DATA_SIGNATURE_LIST"

    .line 367
    .line 368
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    const/4 v13, 0x0

    .line 373
    move v14, v13

    .line 374
    :goto_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 375
    .line 376
    .line 377
    move-result v15

    .line 378
    if-ge v13, v15, :cond_11

    .line 379
    .line 380
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v15

    .line 384
    check-cast v15, Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v16

    .line 390
    move-object/from16 v17, v3

    .line 391
    .line 392
    move-object/from16 v3, v16

    .line 393
    .line 394
    check-cast v3, Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v16

    .line 400
    check-cast v16, Ljava/lang/String;

    .line 401
    .line 402
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v12

    .line 406
    const-string v4, "Sku is owned: "

    .line 407
    .line 408
    move-object/from16 v18, v7

    .line 409
    .line 410
    const-string v7, "BillingClient"

    .line 411
    .line 412
    invoke-virtual {v4, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :try_start_3
    new-instance v4, Lcom/android/billingclient/api/Purchase;

    .line 420
    .line 421
    invoke-direct {v4, v15, v3}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 422
    .line 423
    .line 424
    iget-object v3, v4, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    .line 425
    .line 426
    const-string v7, "purchaseToken"

    .line 427
    .line 428
    const-string v12, "token"

    .line 429
    .line 430
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    invoke-virtual {v3, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-eqz v3, :cond_10

    .line 443
    .line 444
    const-string v3, "BillingClient"

    .line 445
    .line 446
    const-string v7, "BUG: empty/null token!"

    .line 447
    .line 448
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const/4 v14, 0x1

    .line 452
    :cond_10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    add-int/lit8 v13, v13, 0x1

    .line 456
    .line 457
    move-object/from16 v3, v17

    .line 458
    .line 459
    move-object/from16 v7, v18

    .line 460
    .line 461
    const/16 v4, 0x9

    .line 462
    .line 463
    const/4 v12, 0x1

    .line 464
    goto :goto_8

    .line 465
    :catch_2
    move-exception v0

    .line 466
    sget-object v3, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 467
    .line 468
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->d0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 469
    .line 470
    const-string v5, "Got an exception trying to decode the purchase!"

    .line 471
    .line 472
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/billingclient/api/BillingClientImpl;->E(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdv;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    goto :goto_d

    .line 477
    :cond_11
    move-object/from16 v17, v3

    .line 478
    .line 479
    if-eqz v14, :cond_12

    .line 480
    .line 481
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzje;->E:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 482
    .line 483
    const/16 v4, 0x9

    .line 484
    .line 485
    invoke-virtual {v2, v3, v4, v6}, Lcom/android/billingclient/api/BillingClientImpl;->F(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;)V

    .line 486
    .line 487
    .line 488
    goto :goto_9

    .line 489
    :cond_12
    const/16 v4, 0x9

    .line 490
    .line 491
    :goto_9
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 492
    .line 493
    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v10

    .line 497
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    const-string v5, "Continuation token: "

    .line 502
    .line 503
    const-string v6, "BillingClient"

    .line 504
    .line 505
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-eqz v3, :cond_13

    .line 517
    .line 518
    new-instance v2, Lcom/android/billingclient/api/zzdv;

    .line 519
    .line 520
    sget-object v3, Lcom/android/billingclient/api/zzdb;->i:Lcom/android/billingclient/api/BillingResult;

    .line 521
    .line 522
    invoke-direct {v2, v3, v0}, Lcom/android/billingclient/api/zzdv;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/ArrayList;)V

    .line 523
    .line 524
    .line 525
    move-object v0, v2

    .line 526
    goto :goto_d

    .line 527
    :cond_13
    move-object/from16 v3, v17

    .line 528
    .line 529
    const/4 v12, 0x1

    .line 530
    goto/16 :goto_0

    .line 531
    .line 532
    :catchall_0
    move-exception v0

    .line 533
    move-object/from16 v17, v3

    .line 534
    .line 535
    :goto_a
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 536
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 537
    :catch_3
    move-exception v0

    .line 538
    goto :goto_b

    .line 539
    :catch_4
    move-exception v0

    .line 540
    goto :goto_c

    .line 541
    :catchall_1
    move-exception v0

    .line 542
    goto :goto_a

    .line 543
    :goto_b
    sget-object v3, Lcom/android/billingclient/api/zzdb;->h:Lcom/android/billingclient/api/BillingResult;

    .line 544
    .line 545
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->e0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 546
    .line 547
    const-string v5, "Got exception trying to get purchases try to reconnect"

    .line 548
    .line 549
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/billingclient/api/BillingClientImpl;->E(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdv;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    goto :goto_d

    .line 554
    :goto_c
    sget-object v3, Lcom/android/billingclient/api/zzdb;->j:Lcom/android/billingclient/api/BillingResult;

    .line 555
    .line 556
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzje;->e0:Lcom/google/android/gms/internal/play_billing/zzje;

    .line 557
    .line 558
    const-string v5, "Got exception trying to get purchases try to reconnect"

    .line 559
    .line 560
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/billingclient/api/BillingClientImpl;->E(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzje;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzdv;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    :goto_d
    iget-object v2, v0, Lcom/android/billingclient/api/zzdv;->a:Ljava/util/List;

    .line 565
    .line 566
    if-eqz v2, :cond_14

    .line 567
    .line 568
    iget-object v3, v1, Lcom/android/billingclient/api/zzbl;->a:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 569
    .line 570
    iget-object v0, v0, Lcom/android/billingclient/api/zzdv;->b:Lcom/android/billingclient/api/BillingResult;

    .line 571
    .line 572
    invoke-interface {v3, v0, v2}, Lcom/android/billingclient/api/PurchasesResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 573
    .line 574
    .line 575
    goto :goto_e

    .line 576
    :cond_14
    iget-object v2, v1, Lcom/android/billingclient/api/zzbl;->a:Lcom/android/billingclient/api/PurchasesResponseListener;

    .line 577
    .line 578
    iget-object v0, v0, Lcom/android/billingclient/api/zzdv;->b:Lcom/android/billingclient/api/BillingResult;

    .line 579
    .line 580
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbw;->t()Lcom/google/android/gms/internal/play_billing/zzbw;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    invoke-interface {v2, v0, v3}, Lcom/android/billingclient/api/PurchasesResponseListener;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 585
    .line 586
    .line 587
    :goto_e
    return-object v17
.end method
