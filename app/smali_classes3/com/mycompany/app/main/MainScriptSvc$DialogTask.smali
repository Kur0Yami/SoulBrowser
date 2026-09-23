.class Lcom/mycompany/app/main/MainScriptSvc$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainScriptSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public final g:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final h:I

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainScriptSvc;Ljava/util/List;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/main/MainScriptSvc;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->f:Ljava/util/List;

    .line 21
    .line 22
    iput p3, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->h:I

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lt p3, p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->g:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput p2, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->i:I

    .line 49
    .line 50
    iget-object p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->j:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->k:Ljava/lang/String;

    .line 57
    .line 58
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_a

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/main/MainScriptSvc;

    .line 12
    .line 13
    if-eqz v0, :cond_1c

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_a

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->g:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto/16 :goto_a

    .line 26
    .line 27
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->k:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, v0, Lcom/mycompany/app/main/MainScriptSvc;->g:Landroidx/core/app/NotificationCompat$Builder;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    iget v6, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->h:I

    .line 38
    .line 39
    add-int/2addr v6, v5

    .line 40
    iget v7, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->i:I

    .line 41
    .line 42
    if-lt v6, v7, :cond_4

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v8

    .line 50
    iget-wide v10, v0, Lcom/mycompany/app/main/MainScriptSvc;->h:J

    .line 51
    .line 52
    sub-long v10, v8, v10

    .line 53
    .line 54
    const-wide/16 v12, 0x3e8

    .line 55
    .line 56
    cmp-long v10, v10, v12

    .line 57
    .line 58
    if-gez v10, :cond_5

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    iput-wide v8, v0, Lcom/mycompany/app/main/MainScriptSvc;->h:J

    .line 62
    .line 63
    iget-object v8, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 64
    .line 65
    if-nez v8, :cond_6

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    invoke-static {v8}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    if-nez v8, :cond_7

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v10, " / "

    .line 84
    .line 85
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iput-object v2, v3, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 96
    .line 97
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, v3, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 106
    .line 107
    invoke-virtual {v3, v7, v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 108
    .line 109
    .line 110
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainScriptSvc;->i:Z

    .line 111
    .line 112
    if-nez v2, :cond_8

    .line 113
    .line 114
    iput-boolean v5, v0, Lcom/mycompany/app/main/MainScriptSvc;->i:Z

    .line 115
    .line 116
    new-instance v2, Landroid/content/Intent;

    .line 117
    .line 118
    const-string v6, "net.kaki87.soul2.testing.ACTION_SCRIPT_CANCEL"

    .line 119
    .line 120
    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v6, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    iget-object v6, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 133
    .line 134
    const/16 v7, 0xc

    .line 135
    .line 136
    const/high16 v9, 0xc000000

    .line 137
    .line 138
    invoke-static {v6, v7, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    new-instance v6, Landroidx/core/app/NotificationCompat$Action;

    .line 143
    .line 144
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 145
    .line 146
    iget-object v9, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 147
    .line 148
    sget v10, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 149
    .line 150
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-direct {v6, v7, v9, v2}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->a(Landroidx/core/app/NotificationCompat$Action;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const v3, 0x7ffffff5

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    :catch_0
    :goto_0
    const-string v2, "userscript://"

    .line 171
    .line 172
    iget-object v3, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->j:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_9

    .line 179
    .line 180
    iput-boolean v5, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->l:Z

    .line 181
    .line 182
    iput-boolean v5, v0, Lcom/mycompany/app/main/MainScriptSvc;->f:Z

    .line 183
    .line 184
    return-void

    .line 185
    :cond_9
    iget-object v6, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 186
    .line 187
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    const/4 v7, 0x0

    .line 192
    if-eqz v2, :cond_12

    .line 193
    .line 194
    if-nez v6, :cond_a

    .line 195
    .line 196
    :goto_1
    move-object v9, v7

    .line 197
    goto :goto_5

    .line 198
    :cond_a
    invoke-static {v6, v3}, Lcom/mycompany/app/main/MainUtil;->m1(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-nez v2, :cond_b

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_b
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 212
    .line 213
    .line 214
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 215
    :try_start_2
    new-instance v8, Lcom/mycompany/app/script/UnicodeReader;

    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-direct {v8, v3, v9}, Lcom/mycompany/app/script/UnicodeReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 222
    .line 223
    .line 224
    const/16 v9, 0x1000

    .line 225
    .line 226
    :try_start_3
    new-array v10, v9, [C

    .line 227
    .line 228
    move-object v11, v7

    .line 229
    :cond_c
    :goto_2
    iget-object v12, v8, Lcom/mycompany/app/script/UnicodeReader;->c:Ljava/io/InputStreamReader;

    .line 230
    .line 231
    invoke-virtual {v12, v10, v4, v9}, Ljava/io/InputStreamReader;->read([CII)I

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    const/4 v13, -0x1

    .line 236
    if-eq v12, v13, :cond_e

    .line 237
    .line 238
    if-lez v12, :cond_c

    .line 239
    .line 240
    if-nez v11, :cond_d

    .line 241
    .line 242
    new-instance v11, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    :cond_d
    invoke-virtual {v11, v10, v4, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_e
    if-eqz v11, :cond_f

    .line 252
    .line 253
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 257
    goto :goto_4

    .line 258
    :catch_1
    move-object v8, v7

    .line 259
    goto :goto_3

    .line 260
    :catch_2
    move-object v3, v7

    .line 261
    move-object v8, v3

    .line 262
    :catch_3
    :cond_f
    :goto_3
    move-object v9, v7

    .line 263
    :goto_4
    if-eqz v8, :cond_10

    .line 264
    .line 265
    :try_start_4
    invoke-virtual {v8}, Lcom/mycompany/app/script/UnicodeReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 266
    .line 267
    .line 268
    :catch_4
    :cond_10
    if-eqz v3, :cond_11

    .line 269
    .line 270
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 271
    .line 272
    .line 273
    :catch_5
    :cond_11
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 274
    .line 275
    .line 276
    :goto_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_14

    .line 281
    .line 282
    iput-boolean v5, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->l:Z

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_13

    .line 290
    .line 291
    goto :goto_6

    .line 292
    :cond_13
    :try_start_6
    invoke-static {v6, v3}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-static {v6, v2, v4}, Lcom/mycompany/app/main/MainUtil;->A3(Landroid/content/Context;Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 300
    move-object v9, v2

    .line 301
    goto :goto_7

    .line 302
    :catch_6
    :goto_6
    move-object v9, v7

    .line 303
    :goto_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-nez v2, :cond_14

    .line 308
    .line 309
    iput-boolean v5, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->l:Z

    .line 310
    .line 311
    :cond_14
    :goto_8
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->l:Z

    .line 312
    .line 313
    if-nez v2, :cond_15

    .line 314
    .line 315
    goto :goto_a

    .line 316
    :cond_15
    iget-object v2, v0, Lcom/mycompany/app/main/MainScriptSvc;->k:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-nez v2, :cond_16

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_16
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    if-nez v2, :cond_17

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_17
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-eqz v8, :cond_18

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_18
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 344
    .line 345
    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    if-nez v10, :cond_19

    .line 358
    .line 359
    invoke-virtual {v2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    const-string v7, "-"

    .line 364
    .line 365
    invoke-static {v3, v7, v2}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    :cond_19
    iput-object v3, v0, Lcom/mycompany/app/main/MainScriptSvc;->k:Ljava/lang/String;

    .line 370
    .line 371
    iput-object v7, v0, Lcom/mycompany/app/main/MainScriptSvc;->l:Ljava/lang/String;

    .line 372
    .line 373
    :goto_9
    iget-object v10, v0, Lcom/mycompany/app/main/MainScriptSvc;->k:Ljava/lang/String;

    .line 374
    .line 375
    iget-object v11, v0, Lcom/mycompany/app/main/MainScriptSvc;->l:Ljava/lang/String;

    .line 376
    .line 377
    const/4 v12, 0x0

    .line 378
    iget-object v7, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->j:Ljava/lang/String;

    .line 379
    .line 380
    iget-object v8, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->k:Ljava/lang/String;

    .line 381
    .line 382
    invoke-static/range {v6 .. v12}, Lcom/mycompany/app/script/Script;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/script/Script;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    if-nez v2, :cond_1a

    .line 387
    .line 388
    iput-boolean v4, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->l:Z

    .line 389
    .line 390
    return-void

    .line 391
    :cond_1a
    iget-object v3, v0, Lcom/mycompany/app/main/MainScriptSvc;->k:Ljava/lang/String;

    .line 392
    .line 393
    iget-object v7, v0, Lcom/mycompany/app/main/MainScriptSvc;->l:Ljava/lang/String;

    .line 394
    .line 395
    invoke-static {v6, v2, v1, v3, v7}, Lcom/mycompany/app/db/book/DbBookScript;->o(Landroid/content/Context;Lcom/mycompany/app/script/Script;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-nez v1, :cond_1b

    .line 400
    .line 401
    iput-boolean v4, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->l:Z

    .line 402
    .line 403
    return-void

    .line 404
    :cond_1b
    iput-boolean v5, v0, Lcom/mycompany/app/main/MainScriptSvc;->f:Z

    .line 405
    .line 406
    :cond_1c
    :goto_a
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/main/MainScriptSvc;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/main/MainScriptSvc;->d:Lcom/mycompany/app/main/MainScriptSvc$DialogTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainScriptSvc;->c()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainScriptSvc$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/main/MainScriptSvc;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/main/MainScriptSvc;->d:Lcom/mycompany/app/main/MainScriptSvc$DialogTask;

    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainScriptSvc;->e:Z

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/main/MainScriptSvc;->a:Landroid/content/Context;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancelled:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainScriptSvc;->c()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/main/MainScriptSvc;->c:Landroid/os/Handler;

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainScriptSvc$DialogTask$1;

    .line 39
    .line 40
    invoke-direct {v2, p0, v0}, Lcom/mycompany/app/main/MainScriptSvc$DialogTask$1;-><init>(Lcom/mycompany/app/main/MainScriptSvc$DialogTask;Lcom/mycompany/app/main/MainScriptSvc;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method
