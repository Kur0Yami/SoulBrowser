.class Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompatBuilder$Api26Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api23Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api20Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api21Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api24Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api28Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api29Impl;,
        Landroidx/core/app/NotificationCompatBuilder$Api31Impl;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:Landroidx/core/app/NotificationCompat$Builder;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->d:Landroid/os/Bundle;

    .line 19
    .line 20
    iput-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->c:Landroidx/core/app/NotificationCompat$Builder;

    .line 21
    .line 22
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->a:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->v:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v4, v1, Landroidx/core/app/NotificationCompat$Builder;->c:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->d:Ljava/util/ArrayList;

    .line 29
    .line 30
    iput-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->a:Landroid/content/Context;

    .line 31
    .line 32
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v7, 0x1a

    .line 35
    .line 36
    if-lt v6, v7, :cond_0

    .line 37
    .line 38
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->s:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2, v6}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    iput-object v6, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v6, Landroid/app/Notification$Builder;

    .line 48
    .line 49
    invoke-direct {v6, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object v6, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 53
    .line 54
    :goto_0
    iget-object v6, v1, Landroidx/core/app/NotificationCompat$Builder;->u:Landroid/app/Notification;

    .line 55
    .line 56
    iget-object v8, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 57
    .line 58
    iget-wide v9, v6, Landroid/app/Notification;->when:J

    .line 59
    .line 60
    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget v9, v6, Landroid/app/Notification;->icon:I

    .line 65
    .line 66
    iget v10, v6, Landroid/app/Notification;->iconLevel:I

    .line 67
    .line 68
    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    iget-object v9, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 73
    .line 74
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    iget-object v9, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 79
    .line 80
    const/4 v10, 0x0

    .line 81
    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    iget-object v9, v6, Landroid/app/Notification;->vibrate:[J

    .line 86
    .line 87
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    iget v9, v6, Landroid/app/Notification;->ledARGB:I

    .line 92
    .line 93
    iget v11, v6, Landroid/app/Notification;->ledOnMS:I

    .line 94
    .line 95
    iget v12, v6, Landroid/app/Notification;->ledOffMS:I

    .line 96
    .line 97
    invoke-virtual {v8, v9, v11, v12}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    iget v9, v6, Landroid/app/Notification;->flags:I

    .line 102
    .line 103
    const/4 v11, 0x2

    .line 104
    and-int/2addr v9, v11

    .line 105
    const/4 v12, 0x1

    .line 106
    const/4 v13, 0x0

    .line 107
    if-eqz v9, :cond_1

    .line 108
    .line 109
    move v9, v12

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move v9, v13

    .line 112
    :goto_1
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    iget v9, v6, Landroid/app/Notification;->flags:I

    .line 117
    .line 118
    and-int/lit8 v9, v9, 0x8

    .line 119
    .line 120
    if-eqz v9, :cond_2

    .line 121
    .line 122
    move v9, v12

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v9, v13

    .line 125
    :goto_2
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    iget v9, v6, Landroid/app/Notification;->flags:I

    .line 130
    .line 131
    and-int/lit8 v9, v9, 0x10

    .line 132
    .line 133
    if-eqz v9, :cond_3

    .line 134
    .line 135
    move v9, v12

    .line 136
    goto :goto_3

    .line 137
    :cond_3
    move v9, v13

    .line 138
    :goto_3
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    iget v9, v6, Landroid/app/Notification;->defaults:I

    .line 143
    .line 144
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    iget-object v9, v1, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 149
    .line 150
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    iget-object v9, v1, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 155
    .line 156
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    iget-object v9, v1, Landroidx/core/app/NotificationCompat$Builder;->g:Landroid/app/PendingIntent;

    .line 165
    .line 166
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    iget-object v9, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 171
    .line 172
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    iget v9, v6, Landroid/app/Notification;->flags:I

    .line 177
    .line 178
    and-int/lit16 v9, v9, 0x80

    .line 179
    .line 180
    if-eqz v9, :cond_4

    .line 181
    .line 182
    move v9, v12

    .line 183
    goto :goto_4

    .line 184
    :cond_4
    move v9, v13

    .line 185
    :goto_4
    invoke-virtual {v8, v10, v9}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    iget v9, v1, Landroidx/core/app/NotificationCompat$Builder;->l:I

    .line 194
    .line 195
    iget v14, v1, Landroidx/core/app/NotificationCompat$Builder;->m:I

    .line 196
    .line 197
    iget-boolean v15, v1, Landroidx/core/app/NotificationCompat$Builder;->n:Z

    .line 198
    .line 199
    invoke-virtual {v8, v9, v14, v15}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 200
    .line 201
    .line 202
    iget-object v8, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 203
    .line 204
    iget-object v9, v1, Landroidx/core/app/NotificationCompat$Builder;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 205
    .line 206
    if-nez v9, :cond_5

    .line 207
    .line 208
    move-object v2, v10

    .line 209
    goto :goto_5

    .line 210
    :cond_5
    invoke-virtual {v9, v2}, Landroidx/core/graphics/drawable/IconCompat;->g(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    :goto_5
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 215
    .line 216
    .line 217
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 218
    .line 219
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    iget v8, v1, Landroidx/core/app/NotificationCompat$Builder;->i:I

    .line 228
    .line 229
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 230
    .line 231
    .line 232
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->k:Landroidx/core/app/NotificationCompat$Style;

    .line 233
    .line 234
    instance-of v8, v2, Landroidx/core/app/NotificationCompat$CallStyle;

    .line 235
    .line 236
    if-eqz v8, :cond_9

    .line 237
    .line 238
    check-cast v2, Landroidx/core/app/NotificationCompat$CallStyle;

    .line 239
    .line 240
    sget v8, Landroidx/core/R$drawable;->ic_call_decline:I

    .line 241
    .line 242
    sget v9, Landroidx/core/R$string;->call_notification_hang_up_action:I

    .line 243
    .line 244
    sget v14, Landroidx/core/R$color;->call_notification_decline_color:I

    .line 245
    .line 246
    iget-object v15, v2, Landroidx/core/app/NotificationCompat$Style;->a:Landroidx/core/app/NotificationCompat$Builder;

    .line 247
    .line 248
    iget-object v15, v15, Landroidx/core/app/NotificationCompat$Builder;->a:Landroid/content/Context;

    .line 249
    .line 250
    invoke-virtual {v15, v14}, Landroid/content/Context;->getColor(I)I

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    new-instance v15, Landroid/text/SpannableStringBuilder;

    .line 255
    .line 256
    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    iget-object v11, v2, Landroidx/core/app/NotificationCompat$Style;->a:Landroidx/core/app/NotificationCompat$Builder;

    .line 260
    .line 261
    iget-object v11, v11, Landroidx/core/app/NotificationCompat$Builder;->a:Landroid/content/Context;

    .line 262
    .line 263
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    invoke-virtual {v15, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 272
    .line 273
    .line 274
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    .line 275
    .line 276
    invoke-direct {v9, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    const/16 v14, 0x12

    .line 284
    .line 285
    invoke-virtual {v15, v9, v13, v11, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 286
    .line 287
    .line 288
    new-instance v9, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 289
    .line 290
    iget-object v11, v2, Landroidx/core/app/NotificationCompat$Style;->a:Landroidx/core/app/NotificationCompat$Builder;

    .line 291
    .line 292
    iget-object v11, v11, Landroidx/core/app/NotificationCompat$Builder;->a:Landroid/content/Context;

    .line 293
    .line 294
    sget-object v14, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 295
    .line 296
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 300
    .line 301
    .line 302
    move-result-object v14

    .line 303
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v11

    .line 307
    invoke-static {v14, v11, v8}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    new-instance v11, Landroid/os/Bundle;

    .line 312
    .line 313
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-direct {v9, v8, v15, v10, v11}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    iget-object v9, v8, Landroidx/core/app/NotificationCompat$Action;->a:Landroid/os/Bundle;

    .line 324
    .line 325
    const-string v11, "key_action_priority"

    .line 326
    .line 327
    invoke-virtual {v9, v11, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    .line 329
    .line 330
    new-instance v9, Ljava/util/ArrayList;

    .line 331
    .line 332
    const/4 v14, 0x3

    .line 333
    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Style;->a:Landroidx/core/app/NotificationCompat$Builder;

    .line 340
    .line 341
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$Builder;->b:Ljava/util/ArrayList;

    .line 342
    .line 343
    if-eqz v2, :cond_8

    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    move v15, v13

    .line 350
    const/4 v14, 0x2

    .line 351
    :goto_6
    if-ge v15, v8, :cond_8

    .line 352
    .line 353
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v16

    .line 357
    add-int/lit8 v15, v15, 0x1

    .line 358
    .line 359
    move-object/from16 v7, v16

    .line 360
    .line 361
    check-cast v7, Landroidx/core/app/NotificationCompat$Action;

    .line 362
    .line 363
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    iget-object v13, v7, Landroidx/core/app/NotificationCompat$Action;->a:Landroid/os/Bundle;

    .line 367
    .line 368
    invoke-virtual {v13, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v13

    .line 372
    if-eqz v13, :cond_6

    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_6
    if-le v14, v12, :cond_7

    .line 376
    .line 377
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    add-int/lit8 v14, v14, -0x1

    .line 381
    .line 382
    :cond_7
    :goto_7
    const/16 v7, 0x1a

    .line 383
    .line 384
    const/4 v13, 0x0

    .line 385
    goto :goto_6

    .line 386
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    const/4 v7, 0x0

    .line 391
    :goto_8
    if-ge v7, v2, :cond_a

    .line 392
    .line 393
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    add-int/lit8 v7, v7, 0x1

    .line 398
    .line 399
    check-cast v8, Landroidx/core/app/NotificationCompat$Action;

    .line 400
    .line 401
    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompatBuilder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    .line 402
    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_9
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->b:Ljava/util/ArrayList;

    .line 406
    .line 407
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    const/4 v8, 0x0

    .line 412
    :goto_9
    if-ge v8, v7, :cond_a

    .line 413
    .line 414
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    add-int/lit8 v8, v8, 0x1

    .line 419
    .line 420
    check-cast v9, Landroidx/core/app/NotificationCompat$Action;

    .line 421
    .line 422
    invoke-virtual {v0, v9}, Landroidx/core/app/NotificationCompatBuilder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    .line 423
    .line 424
    .line 425
    goto :goto_9

    .line 426
    :cond_a
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Landroid/os/Bundle;

    .line 427
    .line 428
    if-eqz v2, :cond_b

    .line 429
    .line 430
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->d:Landroid/os/Bundle;

    .line 431
    .line 432
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 433
    .line 434
    .line 435
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 436
    .line 437
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 438
    .line 439
    iget-boolean v8, v1, Landroidx/core/app/NotificationCompat$Builder;->j:Z

    .line 440
    .line 441
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 442
    .line 443
    .line 444
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 445
    .line 446
    iget-boolean v8, v1, Landroidx/core/app/NotificationCompat$Builder;->p:Z

    .line 447
    .line 448
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 449
    .line 450
    .line 451
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 452
    .line 453
    iget-object v8, v1, Landroidx/core/app/NotificationCompat$Builder;->o:Ljava/lang/String;

    .line 454
    .line 455
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 456
    .line 457
    .line 458
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 459
    .line 460
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 461
    .line 462
    .line 463
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 464
    .line 465
    const/4 v8, 0x0

    .line 466
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 467
    .line 468
    .line 469
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 470
    .line 471
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 472
    .line 473
    .line 474
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 475
    .line 476
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 477
    .line 478
    .line 479
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 480
    .line 481
    iget v8, v1, Landroidx/core/app/NotificationCompat$Builder;->r:I

    .line 482
    .line 483
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 484
    .line 485
    .line 486
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 487
    .line 488
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 489
    .line 490
    .line 491
    iget-object v7, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 492
    .line 493
    iget-object v8, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 494
    .line 495
    iget-object v6, v6, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 496
    .line 497
    invoke-virtual {v7, v8, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 498
    .line 499
    .line 500
    const/16 v6, 0x1c

    .line 501
    .line 502
    if-ge v2, v6, :cond_10

    .line 503
    .line 504
    if-nez v4, :cond_c

    .line 505
    .line 506
    move-object v2, v10

    .line 507
    goto :goto_b

    .line 508
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    const/4 v8, 0x0

    .line 522
    :goto_a
    if-ge v8, v7, :cond_d

    .line 523
    .line 524
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    add-int/lit8 v8, v8, 0x1

    .line 529
    .line 530
    check-cast v9, Landroidx/core/app/Person;

    .line 531
    .line 532
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    const-string v9, ""

    .line 536
    .line 537
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    goto :goto_a

    .line 541
    :cond_d
    :goto_b
    if-nez v2, :cond_e

    .line 542
    .line 543
    goto :goto_c

    .line 544
    :cond_e
    if-nez v3, :cond_f

    .line 545
    .line 546
    move-object v3, v2

    .line 547
    goto :goto_c

    .line 548
    :cond_f
    new-instance v7, Landroidx/collection/ArraySet;

    .line 549
    .line 550
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 555
    .line 556
    .line 557
    move-result v9

    .line 558
    add-int/2addr v9, v8

    .line 559
    invoke-direct {v7, v9}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v7, v2}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 563
    .line 564
    .line 565
    invoke-virtual {v7, v3}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 566
    .line 567
    .line 568
    new-instance v3, Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 571
    .line 572
    .line 573
    :cond_10
    :goto_c
    if-eqz v3, :cond_11

    .line 574
    .line 575
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    if-nez v2, :cond_11

    .line 580
    .line 581
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    const/4 v7, 0x0

    .line 586
    :goto_d
    if-ge v7, v2, :cond_11

    .line 587
    .line 588
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    add-int/lit8 v7, v7, 0x1

    .line 593
    .line 594
    check-cast v8, Ljava/lang/String;

    .line 595
    .line 596
    iget-object v9, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 597
    .line 598
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 599
    .line 600
    .line 601
    goto :goto_d

    .line 602
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    if-lez v2, :cond_1a

    .line 607
    .line 608
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Landroid/os/Bundle;

    .line 609
    .line 610
    if-nez v2, :cond_12

    .line 611
    .line 612
    new-instance v2, Landroid/os/Bundle;

    .line 613
    .line 614
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 615
    .line 616
    .line 617
    iput-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Landroid/os/Bundle;

    .line 618
    .line 619
    :cond_12
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Landroid/os/Bundle;

    .line 620
    .line 621
    const-string v3, "android.car.EXTENSIONS"

    .line 622
    .line 623
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    if-nez v2, :cond_13

    .line 628
    .line 629
    new-instance v2, Landroid/os/Bundle;

    .line 630
    .line 631
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 632
    .line 633
    .line 634
    :cond_13
    new-instance v7, Landroid/os/Bundle;

    .line 635
    .line 636
    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 637
    .line 638
    .line 639
    new-instance v8, Landroid/os/Bundle;

    .line 640
    .line 641
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 642
    .line 643
    .line 644
    const/4 v9, 0x0

    .line 645
    :goto_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 646
    .line 647
    .line 648
    move-result v11

    .line 649
    if-ge v9, v11, :cond_18

    .line 650
    .line 651
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v11

    .line 655
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v12

    .line 659
    check-cast v12, Landroidx/core/app/NotificationCompat$Action;

    .line 660
    .line 661
    new-instance v13, Landroid/os/Bundle;

    .line 662
    .line 663
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v12}, Landroidx/core/app/NotificationCompat$Action;->a()Landroidx/core/graphics/drawable/IconCompat;

    .line 667
    .line 668
    .line 669
    move-result-object v14

    .line 670
    iget-object v15, v12, Landroidx/core/app/NotificationCompat$Action;->a:Landroid/os/Bundle;

    .line 671
    .line 672
    if-eqz v14, :cond_14

    .line 673
    .line 674
    invoke-virtual {v14}, Landroidx/core/graphics/drawable/IconCompat;->d()I

    .line 675
    .line 676
    .line 677
    move-result v14

    .line 678
    goto :goto_f

    .line 679
    :cond_14
    const/4 v14, 0x0

    .line 680
    :goto_f
    const-string v6, "icon"

    .line 681
    .line 682
    invoke-virtual {v13, v6, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 683
    .line 684
    .line 685
    const-string v6, "title"

    .line 686
    .line 687
    iget-object v14, v12, Landroidx/core/app/NotificationCompat$Action;->g:Ljava/lang/CharSequence;

    .line 688
    .line 689
    invoke-virtual {v13, v6, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 690
    .line 691
    .line 692
    const-string v6, "actionIntent"

    .line 693
    .line 694
    iget-object v14, v12, Landroidx/core/app/NotificationCompat$Action;->h:Landroid/app/PendingIntent;

    .line 695
    .line 696
    invoke-virtual {v13, v6, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 697
    .line 698
    .line 699
    if-eqz v15, :cond_15

    .line 700
    .line 701
    new-instance v6, Landroid/os/Bundle;

    .line 702
    .line 703
    invoke-direct {v6, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 704
    .line 705
    .line 706
    goto :goto_10

    .line 707
    :cond_15
    new-instance v6, Landroid/os/Bundle;

    .line 708
    .line 709
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 710
    .line 711
    .line 712
    :goto_10
    const-string v14, "android.support.allowGeneratedReplies"

    .line 713
    .line 714
    iget-boolean v15, v12, Landroidx/core/app/NotificationCompat$Action;->d:Z

    .line 715
    .line 716
    invoke-virtual {v6, v14, v15}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 717
    .line 718
    .line 719
    const-string v14, "extras"

    .line 720
    .line 721
    invoke-virtual {v13, v14, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 722
    .line 723
    .line 724
    iget-object v6, v12, Landroidx/core/app/NotificationCompat$Action;->c:[Landroidx/core/app/RemoteInput;

    .line 725
    .line 726
    if-nez v6, :cond_17

    .line 727
    .line 728
    move-object/from16 v17, v5

    .line 729
    .line 730
    move-object v15, v10

    .line 731
    :cond_16
    move/from16 v19, v9

    .line 732
    .line 733
    goto :goto_12

    .line 734
    :cond_17
    array-length v15, v6

    .line 735
    new-array v15, v15, [Landroid/os/Bundle;

    .line 736
    .line 737
    move-object/from16 v17, v5

    .line 738
    .line 739
    const/4 v10, 0x0

    .line 740
    :goto_11
    array-length v5, v6

    .line 741
    if-ge v10, v5, :cond_16

    .line 742
    .line 743
    aget-object v5, v6, v10

    .line 744
    .line 745
    move-object/from16 v18, v5

    .line 746
    .line 747
    new-instance v5, Landroid/os/Bundle;

    .line 748
    .line 749
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 750
    .line 751
    .line 752
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    move-object/from16 v18, v6

    .line 756
    .line 757
    const-string v6, "resultKey"

    .line 758
    .line 759
    move/from16 v19, v9

    .line 760
    .line 761
    const/4 v9, 0x0

    .line 762
    invoke-virtual {v5, v6, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    const-string v6, "label"

    .line 766
    .line 767
    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 768
    .line 769
    .line 770
    const-string v6, "choices"

    .line 771
    .line 772
    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 773
    .line 774
    .line 775
    const-string v6, "allowFreeFormInput"

    .line 776
    .line 777
    move/from16 v20, v10

    .line 778
    .line 779
    const/4 v10, 0x0

    .line 780
    invoke-virtual {v5, v6, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v5, v14, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 784
    .line 785
    .line 786
    aput-object v5, v15, v20

    .line 787
    .line 788
    add-int/lit8 v10, v20, 0x1

    .line 789
    .line 790
    move-object/from16 v6, v18

    .line 791
    .line 792
    move/from16 v9, v19

    .line 793
    .line 794
    goto :goto_11

    .line 795
    :goto_12
    const-string v5, "remoteInputs"

    .line 796
    .line 797
    invoke-virtual {v13, v5, v15}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 798
    .line 799
    .line 800
    const-string v5, "showsUserInterface"

    .line 801
    .line 802
    iget-boolean v6, v12, Landroidx/core/app/NotificationCompat$Action;->e:Z

    .line 803
    .line 804
    invoke-virtual {v13, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 805
    .line 806
    .line 807
    const-string v5, "semanticAction"

    .line 808
    .line 809
    const/4 v10, 0x0

    .line 810
    invoke-virtual {v13, v5, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v8, v11, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 814
    .line 815
    .line 816
    add-int/lit8 v9, v19, 0x1

    .line 817
    .line 818
    move-object/from16 v5, v17

    .line 819
    .line 820
    const/16 v6, 0x1c

    .line 821
    .line 822
    const/4 v10, 0x0

    .line 823
    goto/16 :goto_e

    .line 824
    .line 825
    :cond_18
    const-string v5, "invisible_actions"

    .line 826
    .line 827
    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v7, v5, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 831
    .line 832
    .line 833
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Landroid/os/Bundle;

    .line 834
    .line 835
    if-nez v5, :cond_19

    .line 836
    .line 837
    new-instance v5, Landroid/os/Bundle;

    .line 838
    .line 839
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 840
    .line 841
    .line 842
    iput-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Landroid/os/Bundle;

    .line 843
    .line 844
    :cond_19
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Landroid/os/Bundle;

    .line 845
    .line 846
    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 847
    .line 848
    .line 849
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->d:Landroid/os/Bundle;

    .line 850
    .line 851
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 852
    .line 853
    .line 854
    :cond_1a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 855
    .line 856
    const/16 v3, 0x18

    .line 857
    .line 858
    if-lt v2, v3, :cond_1b

    .line 859
    .line 860
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 861
    .line 862
    iget-object v5, v1, Landroidx/core/app/NotificationCompat$Builder;->q:Landroid/os/Bundle;

    .line 863
    .line 864
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 865
    .line 866
    .line 867
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 868
    .line 869
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->b(Landroid/app/Notification$Builder;)V

    .line 870
    .line 871
    .line 872
    :cond_1b
    const/16 v3, 0x1a

    .line 873
    .line 874
    if-lt v2, v3, :cond_1c

    .line 875
    .line 876
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 877
    .line 878
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->b(Landroid/app/Notification$Builder;)V

    .line 879
    .line 880
    .line 881
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 882
    .line 883
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->d(Landroid/app/Notification$Builder;)V

    .line 884
    .line 885
    .line 886
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 887
    .line 888
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->e(Landroid/app/Notification$Builder;)V

    .line 889
    .line 890
    .line 891
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 892
    .line 893
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->f(Landroid/app/Notification$Builder;)V

    .line 894
    .line 895
    .line 896
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 897
    .line 898
    invoke-static {v3}, Landroidx/core/app/NotificationCompatBuilder$Api26Impl;->c(Landroid/app/Notification$Builder;)V

    .line 899
    .line 900
    .line 901
    iget-object v3, v1, Landroidx/core/app/NotificationCompat$Builder;->s:Ljava/lang/String;

    .line 902
    .line 903
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 904
    .line 905
    .line 906
    move-result v3

    .line 907
    if-nez v3, :cond_1c

    .line 908
    .line 909
    iget-object v3, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 910
    .line 911
    const/4 v9, 0x0

    .line 912
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    const/4 v10, 0x0

    .line 917
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 918
    .line 919
    .line 920
    move-result-object v3

    .line 921
    invoke-virtual {v3, v10, v10, v10}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 922
    .line 923
    .line 924
    move-result-object v3

    .line 925
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 926
    .line 927
    .line 928
    :goto_13
    const/16 v3, 0x1c

    .line 929
    .line 930
    goto :goto_14

    .line 931
    :cond_1c
    const/4 v10, 0x0

    .line 932
    goto :goto_13

    .line 933
    :goto_14
    if-lt v2, v3, :cond_1d

    .line 934
    .line 935
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    move v13, v10

    .line 940
    :goto_15
    if-ge v13, v2, :cond_1d

    .line 941
    .line 942
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    add-int/lit8 v13, v13, 0x1

    .line 947
    .line 948
    check-cast v3, Landroidx/core/app/Person;

    .line 949
    .line 950
    iget-object v5, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 951
    .line 952
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    .line 954
    .line 955
    invoke-static {v3}, Landroidx/core/app/Person$Api28Impl;->a(Landroidx/core/app/Person;)Landroid/app/Person;

    .line 956
    .line 957
    .line 958
    move-result-object v3

    .line 959
    invoke-static {v5, v3}, Landroidx/core/app/NotificationCompatBuilder$Api28Impl;->a(Landroid/app/Notification$Builder;Landroid/app/Person;)V

    .line 960
    .line 961
    .line 962
    goto :goto_15

    .line 963
    :cond_1d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 964
    .line 965
    const/16 v3, 0x1d

    .line 966
    .line 967
    if-lt v2, v3, :cond_1e

    .line 968
    .line 969
    iget-object v2, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 970
    .line 971
    iget-boolean v1, v1, Landroidx/core/app/NotificationCompat$Builder;->t:Z

    .line 972
    .line 973
    invoke-static {v2, v1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->a(Landroid/app/Notification$Builder;Z)V

    .line 974
    .line 975
    .line 976
    iget-object v1, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 977
    .line 978
    invoke-static {v1}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->b(Landroid/app/Notification$Builder;)V

    .line 979
    .line 980
    .line 981
    :cond_1e
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->a()Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p1, Landroidx/core/app/NotificationCompat$Action;->d:Z

    .line 6
    .line 7
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Action;->a:Landroid/os/Bundle;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroidx/core/graphics/drawable/IconCompat;->g(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v3

    .line 18
    :goto_0
    iget-object v4, p1, Landroidx/core/app/NotificationCompat$Action;->g:Ljava/lang/CharSequence;

    .line 19
    .line 20
    iget-object v5, p1, Landroidx/core/app/NotificationCompat$Action;->h:Landroid/app/PendingIntent;

    .line 21
    .line 22
    new-instance v6, Landroid/app/Notification$Action$Builder;

    .line 23
    .line 24
    invoke-direct {v6, v0, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Action;->c:[Landroidx/core/app/RemoteInput;

    .line 28
    .line 29
    const/16 v4, 0x1d

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    array-length v7, v0

    .line 35
    new-array v7, v7, [Landroid/app/RemoteInput;

    .line 36
    .line 37
    move v8, v5

    .line 38
    :goto_1
    array-length v9, v0

    .line 39
    if-ge v8, v9, :cond_2

    .line 40
    .line 41
    aget-object v9, v0, v8

    .line 42
    .line 43
    new-instance v10, Landroid/app/RemoteInput$Builder;

    .line 44
    .line 45
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-direct {v10, v3}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10, v3}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual {v9, v3}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-virtual {v9, v5}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v9, v3}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    if-lt v10, v4, :cond_1

    .line 70
    .line 71
    invoke-static {v9}, Landroidx/core/app/RemoteInput$Api29Impl;->a(Landroid/app/RemoteInput$Builder;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {v9}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    aput-object v9, v7, v8

    .line 79
    .line 80
    add-int/lit8 v8, v8, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    array-length v0, v7

    .line 84
    move v3, v5

    .line 85
    :goto_2
    if-ge v3, v0, :cond_3

    .line 86
    .line 87
    aget-object v8, v7, v3

    .line 88
    .line 89
    invoke-virtual {v6, v8}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    if-eqz v2, :cond_4

    .line 96
    .line 97
    new-instance v0, Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    .line 104
    .line 105
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .line 107
    .line 108
    :goto_3
    const-string v2, "android.support.allowGeneratedReplies"

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    const/16 v3, 0x18

    .line 116
    .line 117
    if-lt v2, v3, :cond_5

    .line 118
    .line 119
    invoke-static {v6, v1}, Landroidx/core/app/NotificationCompatBuilder$Api24Impl;->a(Landroid/app/Notification$Action$Builder;Z)V

    .line 120
    .line 121
    .line 122
    :cond_5
    const-string v1, "android.support.action.semanticAction"

    .line 123
    .line 124
    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const/16 v1, 0x1c

    .line 128
    .line 129
    if-lt v2, v1, :cond_6

    .line 130
    .line 131
    invoke-static {v6}, Landroidx/core/app/NotificationCompatBuilder$Api28Impl;->b(Landroid/app/Notification$Action$Builder;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    if-lt v2, v4, :cond_7

    .line 135
    .line 136
    invoke-static {v6}, Landroidx/core/app/NotificationCompatBuilder$Api29Impl;->c(Landroid/app/Notification$Action$Builder;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    const/16 v1, 0x1f

    .line 140
    .line 141
    if-lt v2, v1, :cond_8

    .line 142
    .line 143
    invoke-static {v6}, Landroidx/core/app/NotificationCompatBuilder$Api31Impl;->a(Landroid/app/Notification$Action$Builder;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    const-string v1, "android.support.action.showsUserInterface"

    .line 147
    .line 148
    iget-boolean p1, p1, Landroidx/core/app/NotificationCompat$Action;->e:Z

    .line 149
    .line 150
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    .line 157
    .line 158
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 163
    .line 164
    .line 165
    return-void
.end method
