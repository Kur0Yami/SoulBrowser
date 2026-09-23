.class Lcom/mycompany/app/dialog/DialogDownBlob$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownBlob;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownBlob$8;->c:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownBlob$8;->c:Lcom/mycompany/app/dialog/DialogDownBlob;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->w0:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->w0:Z

    .line 12
    .line 13
    :cond_1
    iget v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->v0:I

    .line 14
    .line 15
    iget v4, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->r0:I

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    if-ge v3, v4, :cond_a

    .line 20
    .line 21
    iget-boolean v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->x0:Z

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->q0:[Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;

    .line 27
    .line 28
    if-nez v3, :cond_3

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_3
    array-length v4, v3

    .line 32
    move v7, v6

    .line 33
    :goto_0
    if-ge v7, v4, :cond_9

    .line 34
    .line 35
    aget-object v8, v3, v7

    .line 36
    .line 37
    if-nez v8, :cond_4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_4
    iget v9, v8, Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;->b:I

    .line 41
    .line 42
    const/4 v10, -0x1

    .line 43
    if-ne v9, v10, :cond_5

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_5
    iget-object v9, v8, Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    if-eqz v11, :cond_6

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_6
    :try_start_0
    const-string v11, "windows-1252"

    .line 56
    .line 57
    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v9
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-object v9, v5

    .line 63
    :goto_1
    if-nez v9, :cond_7

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_7
    iget v11, v8, Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;->b:I

    .line 67
    .line 68
    iput v10, v8, Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;->b:I

    .line 69
    .line 70
    iput-object v5, v8, Lcom/mycompany/app/dialog/DialogDownBlob$BlobItem;->a:Ljava/lang/String;

    .line 71
    .line 72
    :try_start_1
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->p0:Ljava/io/OutputStream;

    .line 73
    .line 74
    invoke-virtual {v8, v9, v6, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 75
    .line 76
    .line 77
    iget v8, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->v0:I

    .line 78
    .line 79
    add-int/2addr v8, v2

    .line 80
    iput v8, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->v0:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .line 82
    :catch_1
    iget-object v8, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 83
    .line 84
    if-nez v8, :cond_8

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_8
    new-instance v9, Lcom/mycompany/app/dialog/DialogDownBlob$9;

    .line 88
    .line 89
    invoke-direct {v9, v1}, Lcom/mycompany/app/dialog/DialogDownBlob$9;-><init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_9
    :goto_3
    iget-boolean v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->x0:Z

    .line 99
    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    :cond_a
    iget-boolean v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->x0:Z

    .line 103
    .line 104
    if-eqz v3, :cond_e

    .line 105
    .line 106
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->p0:Ljava/io/OutputStream;

    .line 107
    .line 108
    if-nez v2, :cond_b

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_b
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    .line 113
    .line 114
    :catch_2
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->p0:Ljava/io/OutputStream;

    .line 115
    .line 116
    :goto_4
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 117
    .line 118
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 119
    .line 120
    if-nez v2, :cond_c

    .line 121
    .line 122
    goto/16 :goto_7

    .line 123
    .line 124
    :cond_c
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 125
    .line 126
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->m0:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 132
    .line 133
    if-nez v2, :cond_d

    .line 134
    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :cond_d
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownBlob$10;

    .line 138
    .line 139
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogDownBlob$10;-><init>(Lcom/mycompany/app/dialog/DialogDownBlob;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    goto/16 :goto_7

    .line 146
    .line 147
    :cond_e
    iget v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->v0:I

    .line 148
    .line 149
    iget v4, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->u0:I

    .line 150
    .line 151
    if-ge v3, v4, :cond_f

    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_f
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->p0:Ljava/io/OutputStream;

    .line 156
    .line 157
    if-nez v3, :cond_10

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_10
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 161
    .line 162
    .line 163
    :catch_3
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->p0:Ljava/io/OutputStream;

    .line 164
    .line 165
    :goto_5
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 166
    .line 167
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->l0:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 168
    .line 169
    if-nez v3, :cond_11

    .line 170
    .line 171
    goto/16 :goto_7

    .line 172
    .line 173
    :cond_11
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 174
    .line 175
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUtil;->L0(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    if-eqz v4, :cond_12

    .line 180
    .line 181
    iput-object v4, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 182
    .line 183
    iget-object v5, v4, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 184
    .line 185
    iput-object v5, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->m0:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v4, v4, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 190
    .line 191
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 192
    .line 193
    :cond_12
    const/4 v4, 0x3

    .line 194
    iput v4, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 195
    .line 196
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->P0(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    iput v9, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->e:I

    .line 203
    .line 204
    iget-wide v13, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->t0:J

    .line 205
    .line 206
    iput-wide v13, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 207
    .line 208
    iput-wide v13, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 209
    .line 210
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 211
    .line 212
    iget v8, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 213
    .line 214
    iget-object v10, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v11, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v12, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 219
    .line 220
    sget-boolean v18, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 221
    .line 222
    sget-wide v19, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 223
    .line 224
    const/16 v21, 0x0

    .line 225
    .line 226
    const/16 v17, 0x0

    .line 227
    .line 228
    move-wide v15, v13

    .line 229
    invoke-static/range {v7 .. v21}, Lcom/mycompany/app/db/book/DbBookDown;->u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J

    .line 230
    .line 231
    .line 232
    move-result-wide v7

    .line 233
    iput-wide v7, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->o0:J

    .line 234
    .line 235
    iget v5, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->e:I

    .line 236
    .line 237
    const/4 v7, 0x4

    .line 238
    if-eq v5, v7, :cond_14

    .line 239
    .line 240
    const/4 v7, 0x5

    .line 241
    if-eq v5, v7, :cond_14

    .line 242
    .line 243
    const/4 v7, 0x6

    .line 244
    if-eq v5, v7, :cond_14

    .line 245
    .line 246
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v5}, Lcom/mycompany/app/data/DataUtil;->d(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eq v5, v2, :cond_13

    .line 253
    .line 254
    const/4 v7, 0x2

    .line 255
    if-eq v5, v7, :cond_13

    .line 256
    .line 257
    if-ne v5, v4, :cond_14

    .line 258
    .line 259
    :cond_13
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 260
    .line 261
    iget-object v3, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 262
    .line 263
    invoke-static {v4, v5, v3}, Lcom/mycompany/app/data/DataUtil;->a(Landroid/content/Context;ILcom/mycompany/app/main/MainUri$UriItem;)V

    .line 264
    .line 265
    .line 266
    :cond_14
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 267
    .line 268
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->u2(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->a0:Landroid/content/Context;

    .line 273
    .line 274
    if-nez v4, :cond_15

    .line 275
    .line 276
    goto/16 :goto_6

    .line 277
    .line 278
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    iget-wide v7, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->t0:J

    .line 284
    .line 285
    invoke-static {v5, v7, v8}, Lcom/mycompany/app/main/MainDownSvc;->n(Ljava/lang/StringBuilder;J)V

    .line 286
    .line 287
    .line 288
    const-string v7, "  "

    .line 289
    .line 290
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->n0:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    new-instance v7, Landroid/content/Intent;

    .line 303
    .line 304
    const-class v8, Lcom/mycompany/app/main/MainLauncher;

    .line 305
    .line 306
    invoke-direct {v7, v4, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .line 308
    .line 309
    const-string v8, "EXTRA_NOTI"

    .line 310
    .line 311
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->m0:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    .line 315
    .line 316
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    if-nez v8, :cond_16

    .line 321
    .line 322
    const-string v8, "EXTRA_TYPE"

    .line 323
    .line 324
    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    .line 326
    .line 327
    :cond_16
    const/high16 v8, 0x20000000

    .line 328
    .line 329
    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 330
    .line 331
    .line 332
    invoke-static {}, Lcom/mycompany/app/main/MainDownSvc;->u()I

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    const/high16 v9, 0xc000000

    .line 337
    .line 338
    invoke-static {v4, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    .line 343
    .line 344
    const-string v9, "Download"

    .line 345
    .line 346
    invoke-direct {v8, v4, v9}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_done_white_24:I

    .line 350
    .line 351
    iget-object v10, v8, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 352
    .line 353
    iput v9, v10, Landroid/app/Notification;->icon:I

    .line 354
    .line 355
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    iput-object v5, v8, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 360
    .line 361
    sget v5, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 362
    .line 363
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-static {v5}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    iput-object v5, v8, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 372
    .line 373
    invoke-virtual {v8, v6, v6, v6}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 374
    .line 375
    .line 376
    iput-object v7, v8, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 377
    .line 378
    iput v2, v8, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 379
    .line 380
    const-string v5, "net.kaki87.soul2.testing.NOTI_GROUP_DOWN"

    .line 381
    .line 382
    iput-object v5, v8, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 383
    .line 384
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_offline_pin_gray_20:I

    .line 385
    .line 386
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->B3(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    if-eqz v7, :cond_17

    .line 395
    .line 396
    invoke-virtual {v8, v5}, Landroidx/core/app/NotificationCompat$Builder;->e(Landroid/graphics/Bitmap;)V

    .line 397
    .line 398
    .line 399
    :cond_17
    iget-wide v9, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->o0:J

    .line 400
    .line 401
    const-wide/32 v11, 0x7ffffff3

    .line 402
    .line 403
    .line 404
    rem-long/2addr v9, v11

    .line 405
    long-to-int v5, v9

    .line 406
    add-int/2addr v5, v2

    .line 407
    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    iget v7, v2, Landroid/app/Notification;->flags:I

    .line 412
    .line 413
    and-int/lit8 v7, v7, -0x21

    .line 414
    .line 415
    or-int/lit8 v7, v7, 0x10

    .line 416
    .line 417
    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 418
    .line 419
    invoke-static {v4}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    if-eqz v4, :cond_18

    .line 424
    .line 425
    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 426
    .line 427
    .line 428
    :cond_18
    :goto_6
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 429
    .line 430
    if-nez v2, :cond_19

    .line 431
    .line 432
    goto :goto_7

    .line 433
    :cond_19
    new-instance v4, Lcom/mycompany/app/dialog/DialogDownBlob$11;

    .line 434
    .line 435
    invoke-direct {v4, v1, v3}, Lcom/mycompany/app/dialog/DialogDownBlob$11;-><init>(Lcom/mycompany/app/dialog/DialogDownBlob;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    .line 440
    .line 441
    :goto_7
    iput-boolean v6, v1, Lcom/mycompany/app/dialog/DialogDownBlob;->w0:Z

    .line 442
    .line 443
    return-void
.end method
