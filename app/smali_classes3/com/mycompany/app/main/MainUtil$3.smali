.class Lcom/mycompany/app/main/MainUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainUtil$3;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainUtil$3;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/main/MainUtil$3;->g:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/mycompany/app/main/MainUtil$3;->h:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/main/MainUtil$3;->i:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainUtil$3;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/main/MainUtil$3;->f:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-boolean v5, v0, Lcom/mycompany/app/main/MainUtil$3;->g:Z

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    sget v3, Lnet/kaki87/soul2/testing/R$string;->back_play:I

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-nez v5, :cond_2

    .line 32
    .line 33
    sget v4, Lnet/kaki87/soul2/testing/R$string;->back_play:I

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->o4(Landroid/content/Context;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/high16 v7, 0x10000000

    .line 44
    .line 45
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const/4 v7, 0x6

    .line 49
    const/high16 v8, 0xc000000

    .line 50
    .line 51
    invoke-static {v1, v7, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const-string v9, "net.kaki87.soul2.testing.NOTI_GROUP_BACKPLAY"

    .line 60
    .line 61
    const-string v10, "stop"

    .line 62
    .line 63
    const-string v11, "net.kaki87.soul2.testing.ACTION_BACK_STOP"

    .line 64
    .line 65
    const-string v12, "BackPlayMode"

    .line 66
    .line 67
    const/4 v15, 0x0

    .line 68
    if-eqz v5, :cond_5

    .line 69
    .line 70
    iget-boolean v5, v0, Lcom/mycompany/app/main/MainUtil$3;->h:Z

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    .line 75
    .line 76
    const-string v6, "play"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    .line 80
    .line 81
    const-string v6, "pause"

    .line 82
    .line 83
    :goto_1
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 84
    .line 85
    .line 86
    move-result v16

    .line 87
    if-eqz v16, :cond_4

    .line 88
    .line 89
    sget v16, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 90
    .line 91
    sget v17, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 92
    .line 93
    :goto_2
    move/from16 v18, v16

    .line 94
    .line 95
    move/from16 v19, v17

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    sget v16, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 99
    .line 100
    sget v17, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_3
    new-instance v14, Landroid/content/Intent;

    .line 104
    .line 105
    const-string v13, "net.kaki87.soul2.testing.ACTION_PIP_FRWD"

    .line 106
    .line 107
    invoke-direct {v14, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v14, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    invoke-static {v1, v15, v14, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    new-instance v14, Landroid/content/Intent;

    .line 118
    .line 119
    const-string v15, "net.kaki87.soul2.testing.ACTION_PIP_PLAY"

    .line 120
    .line 121
    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v14, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    const/4 v15, 0x1

    .line 128
    invoke-static {v1, v15, v14, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    new-instance v15, Landroid/content/Intent;

    .line 133
    .line 134
    const-string v8, "net.kaki87.soul2.testing.ACTION_PIP_FFWD"

    .line 135
    .line 136
    invoke-direct {v15, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v15, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    move-object/from16 v21, v3

    .line 143
    .line 144
    const/high16 v3, 0xc000000

    .line 145
    .line 146
    const/4 v8, 0x2

    .line 147
    invoke-static {v1, v8, v15, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    new-instance v8, Landroid/content/Intent;

    .line 152
    .line 153
    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    const/4 v7, 0x3

    .line 160
    invoke-static {v1, v7, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    new-instance v7, Landroidx/core/app/NotificationCompat$Action;

    .line 165
    .line 166
    const-string v8, "frwd"

    .line 167
    .line 168
    move/from16 v11, v18

    .line 169
    .line 170
    invoke-direct {v7, v11, v8, v13}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 171
    .line 172
    .line 173
    new-instance v8, Landroidx/core/app/NotificationCompat$Action;

    .line 174
    .line 175
    invoke-direct {v8, v5, v6, v14}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 176
    .line 177
    .line 178
    new-instance v5, Landroidx/core/app/NotificationCompat$Action;

    .line 179
    .line 180
    const-string v6, "ffwd"

    .line 181
    .line 182
    move/from16 v11, v19

    .line 183
    .line 184
    invoke-direct {v5, v11, v6, v15}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 185
    .line 186
    .line 187
    new-instance v6, Landroidx/core/app/NotificationCompat$Action;

    .line 188
    .line 189
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_white_24:I

    .line 190
    .line 191
    invoke-direct {v6, v11, v10, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 192
    .line 193
    .line 194
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 195
    .line 196
    invoke-direct {v3, v1, v12}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    .line 200
    .line 201
    iget-object v11, v3, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 202
    .line 203
    iput v10, v11, Landroid/app/Notification;->icon:I

    .line 204
    .line 205
    invoke-static/range {v21 .. v21}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    iput-object v10, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 210
    .line 211
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 212
    .line 213
    const/4 v15, 0x1

    .line 214
    iput v15, v3, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 215
    .line 216
    iput-object v9, v3, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v8}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 228
    .line 229
    .line 230
    new-instance v4, Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 231
    .line 232
    invoke-direct {v4}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 233
    .line 234
    .line 235
    const/4 v5, 0x3

    .line 236
    const/4 v6, 0x0

    .line 237
    const/4 v8, 0x2

    .line 238
    filled-new-array {v6, v15, v8, v5}, [I

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    iput-object v5, v4, Landroidx/media/app/NotificationCompat$MediaStyle;->b:[I

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->g(Landroidx/core/app/NotificationCompat$Style;)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_5
    move-object/from16 v21, v3

    .line 249
    .line 250
    const/4 v5, 0x3

    .line 251
    new-instance v3, Landroid/content/Intent;

    .line 252
    .line 253
    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    const/high16 v7, 0xc000000

    .line 260
    .line 261
    invoke-static {v1, v5, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    new-instance v5, Landroidx/core/app/NotificationCompat$Action;

    .line 266
    .line 267
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_white_24:I

    .line 268
    .line 269
    invoke-direct {v5, v7, v10, v3}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 270
    .line 271
    .line 272
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    .line 273
    .line 274
    invoke-direct {v3, v1, v12}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_white_24:I

    .line 278
    .line 279
    iget-object v8, v3, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 280
    .line 281
    iput v7, v8, Landroid/app/Notification;->icon:I

    .line 282
    .line 283
    invoke-static/range {v21 .. v21}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    iput-object v7, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 288
    .line 289
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 290
    .line 291
    const/4 v15, 0x1

    .line 292
    iput v15, v3, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 293
    .line 294
    iput-object v9, v3, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 297
    .line 298
    .line 299
    new-instance v4, Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 300
    .line 301
    invoke-direct {v4}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 302
    .line 303
    .line 304
    const/16 v20, 0x0

    .line 305
    .line 306
    filled-new-array/range {v20 .. v20}, [I

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    iput-object v5, v4, Landroidx/media/app/NotificationCompat$MediaStyle;->b:[I

    .line 311
    .line 312
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->g(Landroidx/core/app/NotificationCompat$Style;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-nez v4, :cond_6

    .line 320
    .line 321
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    iput-object v4, v3, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 326
    .line 327
    :cond_6
    :goto_4
    iget-object v4, v0, Lcom/mycompany/app/main/MainUtil$3;->i:Landroid/graphics/Bitmap;

    .line 328
    .line 329
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-eqz v5, :cond_7

    .line 334
    .line 335
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->e(Landroid/graphics/Bitmap;)V

    .line 336
    .line 337
    .line 338
    :cond_7
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    iget v4, v3, Landroid/app/Notification;->flags:I

    .line 343
    .line 344
    or-int/lit8 v4, v4, 0x30

    .line 345
    .line 346
    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 347
    .line 348
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 349
    .line 350
    const/16 v5, 0x1a

    .line 351
    .line 352
    if-lt v4, v5, :cond_8

    .line 353
    .line 354
    new-instance v4, Landroid/app/NotificationChannel;

    .line 355
    .line 356
    sget v4, Lnet/kaki87/soul2/testing/R$string;->back_play:I

    .line 357
    .line 358
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    new-instance v5, Landroid/app/NotificationChannel;

    .line 363
    .line 364
    const/4 v8, 0x2

    .line 365
    invoke-direct {v5, v12, v4, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 369
    .line 370
    .line 371
    :cond_8
    const v4, 0x7ffffff9

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 375
    .line 376
    .line 377
    sget-boolean v2, Lcom/mycompany/app/pref/PrefTts;->s:Z

    .line 378
    .line 379
    if-nez v2, :cond_9

    .line 380
    .line 381
    const/4 v15, 0x1

    .line 382
    sput-boolean v15, Lcom/mycompany/app/pref/PrefTts;->s:Z

    .line 383
    .line 384
    const/16 v2, 0xc

    .line 385
    .line 386
    const-string v3, "mCheckBack"

    .line 387
    .line 388
    invoke-static {v2, v1, v3, v15}, Lcom/mycompany/app/pref/PrefSet;->g(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 389
    .line 390
    .line 391
    :cond_9
    :goto_5
    return-void
.end method
