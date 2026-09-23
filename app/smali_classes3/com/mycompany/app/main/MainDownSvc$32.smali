.class Lcom/mycompany/app/main/MainDownSvc$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainDownSvc$DownImageListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 4
    .line 5
    return-object v0
.end method

.method public final b(Ljava/util/List;Z)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_5

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/mycompany/app/main/MainDownSvc$ImageItem;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 25
    .line 26
    iget-boolean v5, v5, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 27
    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_2
    if-nez v4, :cond_3

    .line 33
    .line 34
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget v4, v4, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    if-ne v4, v5, :cond_4

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    const/4 v5, 0x4

    .line 48
    if-ne v4, v5, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 52
    .line 53
    iget v4, v0, Lcom/mycompany/app/main/MainDownSvc;->H:I

    .line 54
    .line 55
    add-int/2addr v4, v2

    .line 56
    iput v4, v0, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 57
    .line 58
    iget v4, v0, Lcom/mycompany/app/main/MainDownSvc;->I:I

    .line 59
    .line 60
    add-int/2addr v4, v3

    .line 61
    iput v4, v0, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-ge v2, p1, :cond_10

    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 70
    .line 71
    const-string p2, " ("

    .line 72
    .line 73
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    if-nez v0, :cond_6

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_6
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 81
    .line 82
    iget v3, p1, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 83
    .line 84
    if-lt v0, v3, :cond_7

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_7
    iget-object v4, p1, Lcom/mycompany/app/main/MainDownSvc;->L:Landroidx/core/app/NotificationCompat$Builder;

    .line 89
    .line 90
    if-nez v4, :cond_8

    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_8
    iget-object v5, p1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 95
    .line 96
    if-nez v5, :cond_9

    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_9
    if-gez v3, :cond_a

    .line 101
    .line 102
    iput v1, p1, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 103
    .line 104
    :cond_a
    iget v3, p1, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 105
    .line 106
    if-le v0, v3, :cond_b

    .line 107
    .line 108
    iput v3, p1, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 109
    .line 110
    :cond_b
    iget v0, p1, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 111
    .line 112
    if-le v0, v3, :cond_c

    .line 113
    .line 114
    iput v3, p1, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 115
    .line 116
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    iget-wide v7, p1, Lcom/mycompany/app/main/MainDownSvc;->J:J

    .line 121
    .line 122
    sub-long v7, v5, v7

    .line 123
    .line 124
    const-wide/16 v9, 0x1f4

    .line 125
    .line 126
    cmp-long v0, v7, v9

    .line 127
    .line 128
    if-gez v0, :cond_d

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_d
    iput-wide v5, p1, Lcom/mycompany/app/main/MainDownSvc;->J:J

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget v3, p1, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 140
    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v3, " / "

    .line 145
    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget v3, p1, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v3, " - "

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    sget v3, Lnet/kaki87/soul2/testing/R$string;->down_image:I

    .line 160
    .line 161
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    sget v5, Lnet/kaki87/soul2/testing/R$string;->success:I

    .line 174
    .line 175
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget v5, p1, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 186
    .line 187
    iget v6, p1, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 188
    .line 189
    sub-int/2addr v5, v6

    .line 190
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v5, ")  "

    .line 194
    .line 195
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    sget v5, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 199
    .line 200
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget p2, p1, Lcom/mycompany/app/main/MainDownSvc;->G:I

    .line 211
    .line 212
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p2, ")"

    .line 216
    .line 217
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget p2, p1, Lcom/mycompany/app/main/MainDownSvc;->E:I

    .line 221
    .line 222
    iget v5, p1, Lcom/mycompany/app/main/MainDownSvc;->F:I

    .line 223
    .line 224
    invoke-virtual {v4, p2, v5, v1}, Landroidx/core/app/NotificationCompat$Builder;->f(IIZ)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    iput-object p2, v4, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    .line 236
    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-static {p2}, Landroidx/core/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    iput-object p2, v4, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    .line 246
    .line 247
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->b()Landroid/app/Notification;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainDownSvc;->R(Landroid/app/Notification;I)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 255
    .line 256
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->q(Landroid/content/Context;)Landroid/app/NotificationManager;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    if-eqz p1, :cond_e

    .line 261
    .line 262
    const v0, 0x7ffffffc

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 266
    .line 267
    .line 268
    :cond_e
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 269
    .line 270
    .line 271
    move-result-wide p1

    .line 272
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 273
    .line 274
    iget-wide v3, v0, Lcom/mycompany/app/main/MainDownSvc;->K:J

    .line 275
    .line 276
    sub-long v3, p1, v3

    .line 277
    .line 278
    const-wide/16 v5, 0x7d0

    .line 279
    .line 280
    cmp-long v1, v3, v5

    .line 281
    .line 282
    if-lez v1, :cond_f

    .line 283
    .line 284
    iput-wide p1, v0, Lcom/mycompany/app/main/MainDownSvc;->K:J

    .line 285
    .line 286
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainDownSvc;->L(Z)V

    .line 287
    .line 288
    .line 289
    :cond_f
    :goto_3
    return-void

    .line 290
    :cond_10
    iget-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 291
    .line 292
    iget-object p1, p1, Lcom/mycompany/app/main/MainDownSvc;->f:Ljava/lang/Object;

    .line 293
    .line 294
    monitor-enter p1

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 296
    .line 297
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 298
    .line 299
    if-nez v1, :cond_11

    .line 300
    .line 301
    monitor-exit p1

    .line 302
    return-void

    .line 303
    :catchall_0
    move-exception p2

    .line 304
    goto :goto_5

    .line 305
    :cond_11
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc;->C:Ljava/util/ArrayList;

    .line 306
    .line 307
    if-eqz v0, :cond_12

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-nez v0, :cond_12

    .line 314
    .line 315
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 316
    .line 317
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->C:Ljava/util/ArrayList;

    .line 318
    .line 319
    const/4 v2, 0x0

    .line 320
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->C:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v0, v1, p2}, Lcom/mycompany/app/main/MainDownSvc;->a0(Ljava/util/List;Z)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_12
    iget-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 327
    .line 328
    invoke-static {p2}, Lcom/mycompany/app/main/MainDownSvc;->a(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 329
    .line 330
    .line 331
    :goto_4
    monitor-exit p1

    .line 332
    return-void

    .line 333
    :goto_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    throw p2
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$32;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 4
    .line 5
    return v0
.end method
