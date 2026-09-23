.class public Landroidx/work/impl/background/systemalarm/CommandHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/ExecutionListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final c:Landroid/content/Context;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "CommandHandler"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/systemalarm/CommandHandler;->h:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->c:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->f:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->g:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "ACTION_DELAY_MET"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "KEY_WORKSPEC_ID"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "ACTION_SCHEDULE_WORK"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p0, "KEY_WORKSPEC_ID"

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->f:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->f:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/work/impl/ExecutionListener;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, p1, p2}, Landroidx/work/impl/ExecutionListener;->d(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public final e(ILandroid/content/Intent;Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_7

    .line 14
    .line 15
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Landroidx/work/impl/background/systemalarm/CommandHandler;->h:Ljava/lang/String;

    .line 20
    .line 21
    const-string v4, "Handling constraints changed %s"

    .line 22
    .line 23
    new-array v5, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object p2, v5, v3

    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-array v4, v3, [Ljava/lang/Throwable;

    .line 32
    .line 33
    invoke-virtual {v0, v1, p2, v4}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    new-instance p2, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->c:Landroid/content/Context;

    .line 39
    .line 40
    invoke-direct {p2, v0, p1, p3}, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;-><init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p2, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->b:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 44
    .line 45
    iget-object v1, p3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->i:Landroidx/work/impl/WorkManagerImpl;

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Landroidx/work/impl/model/WorkSpecDao;->k()Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v4, Landroidx/work/impl/background/systemalarm/ConstraintProxy;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    move v5, v3

    .line 64
    move v6, v5

    .line 65
    move v7, v6

    .line 66
    move v8, v7

    .line 67
    move v9, v8

    .line 68
    :cond_0
    if-ge v9, v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    add-int/lit8 v9, v9, 0x1

    .line 75
    .line 76
    check-cast v10, Landroidx/work/impl/model/WorkSpec;

    .line 77
    .line 78
    iget-object v10, v10, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 79
    .line 80
    iget-boolean v11, v10, Landroidx/work/Constraints;->d:Z

    .line 81
    .line 82
    or-int/2addr v5, v11

    .line 83
    iget-boolean v11, v10, Landroidx/work/Constraints;->b:Z

    .line 84
    .line 85
    or-int/2addr v6, v11

    .line 86
    iget-boolean v11, v10, Landroidx/work/Constraints;->e:Z

    .line 87
    .line 88
    or-int/2addr v7, v11

    .line 89
    iget-object v10, v10, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    .line 90
    .line 91
    sget-object v11, Landroidx/work/NetworkType;->c:Landroidx/work/NetworkType;

    .line 92
    .line 93
    if-eq v10, v11, :cond_1

    .line 94
    .line 95
    move v10, v2

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move v10, v3

    .line 98
    :goto_0
    or-int/2addr v8, v10

    .line 99
    if-eqz v5, :cond_0

    .line 100
    .line 101
    if-eqz v6, :cond_0

    .line 102
    .line 103
    if-eqz v7, :cond_0

    .line 104
    .line 105
    if-eqz v8, :cond_0

    .line 106
    .line 107
    :cond_2
    sget-object v2, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v2, Landroid/content/Intent;

    .line 110
    .line 111
    const-string v4, "androidx.work.impl.background.systemalarm.UpdateProxies"

    .line 112
    .line 113
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v4, Landroid/content/ComponentName;

    .line 117
    .line 118
    const-class v9, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    .line 119
    .line 120
    invoke-direct {v4, v0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    const-string v4, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    .line 127
    .line 128
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const-string v5, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    .line 133
    .line 134
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    const-string v5, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    .line 139
    .line 140
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    const-string v5, "KEY_NETWORK_STATE_PROXY_ENABLED"

    .line 145
    .line 146
    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->d(Ljava/util/Collection;)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide v4

    .line 168
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    move v7, v3

    .line 173
    :cond_3
    :goto_1
    if-ge v7, v6, :cond_5

    .line 174
    .line 175
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    add-int/lit8 v7, v7, 0x1

    .line 180
    .line 181
    check-cast v8, Landroidx/work/impl/model/WorkSpec;

    .line 182
    .line 183
    iget-object v9, v8, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->a()J

    .line 186
    .line 187
    .line 188
    move-result-wide v10

    .line 189
    cmp-long v10, v4, v10

    .line 190
    .line 191
    if-ltz v10, :cond_3

    .line 192
    .line 193
    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->b()Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v10, :cond_4

    .line 198
    .line 199
    invoke-virtual {p1, v9}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->c(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-eqz v9, :cond_3

    .line 204
    .line 205
    :cond_4
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    move v4, v3

    .line 214
    :goto_2
    if-ge v4, v1, :cond_6

    .line 215
    .line 216
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    add-int/lit8 v4, v4, 0x1

    .line 221
    .line 222
    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    .line 223
    .line 224
    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v0, v5}, Landroidx/work/impl/background/systemalarm/CommandHandler;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    sget-object v8, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->c:Ljava/lang/String;

    .line 235
    .line 236
    const-string v9, "Creating a delay_met command for workSpec with id ("

    .line 237
    .line 238
    const-string v10, ")"

    .line 239
    .line 240
    invoke-static {v9, v5, v10}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    new-array v9, v3, [Ljava/lang/Throwable;

    .line 245
    .line 246
    invoke-virtual {v7, v8, v5, v9}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 247
    .line 248
    .line 249
    new-instance v5, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    .line 250
    .line 251
    iget v7, p2, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->a:I

    .line 252
    .line 253
    invoke-direct {v5, v7, v6, p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(ILandroid/content/Intent;Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3, v5}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->f(Ljava/lang/Runnable;)V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_6
    invoke-virtual {p1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->e()V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_7
    const-string v1, "ACTION_RESCHEDULE"

    .line 265
    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    const/4 v4, 0x2

    .line 271
    if-eqz v1, :cond_8

    .line 272
    .line 273
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    sget-object v1, Landroidx/work/impl/background/systemalarm/CommandHandler;->h:Ljava/lang/String;

    .line 278
    .line 279
    const-string v5, "Handling reschedule %s, %s"

    .line 280
    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    new-array v4, v4, [Ljava/lang/Object;

    .line 286
    .line 287
    aput-object p2, v4, v3

    .line 288
    .line 289
    aput-object p1, v4, v2

    .line 290
    .line 291
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    new-array p2, v3, [Ljava/lang/Throwable;

    .line 296
    .line 297
    invoke-virtual {v0, v1, p1, p2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->i:Landroidx/work/impl/WorkManagerImpl;

    .line 301
    .line 302
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->f()V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    const-string v5, "KEY_WORKSPEC_ID"

    .line 311
    .line 312
    filled-new-array {v5}, [Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    if-eqz v1, :cond_14

    .line 317
    .line 318
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    if-eqz v6, :cond_9

    .line 323
    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :cond_9
    aget-object v5, v5, v3

    .line 327
    .line 328
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-nez v1, :cond_a

    .line 333
    .line 334
    goto/16 :goto_7

    .line 335
    .line 336
    :cond_a
    const-string v1, "ACTION_SCHEDULE_WORK"

    .line 337
    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_e

    .line 343
    .line 344
    const-string v0, " at "

    .line 345
    .line 346
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->c:Landroid/content/Context;

    .line 347
    .line 348
    const-string v2, "Opportunistically setting an alarm for "

    .line 349
    .line 350
    const-string v4, "Setting up Alarms for "

    .line 351
    .line 352
    const-string v5, "Skipping scheduling "

    .line 353
    .line 354
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    const-string v6, "KEY_WORKSPEC_ID"

    .line 359
    .line 360
    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    sget-object v7, Landroidx/work/impl/background/systemalarm/CommandHandler;->h:Ljava/lang/String;

    .line 369
    .line 370
    const-string v8, "Handling schedule work for "

    .line 371
    .line 372
    invoke-static {v8, p2}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    new-array v9, v3, [Ljava/lang/Throwable;

    .line 377
    .line 378
    invoke-virtual {v6, v7, v8, v9}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    iget-object v6, p3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->i:Landroidx/work/impl/WorkManagerImpl;

    .line 382
    .line 383
    iget-object v8, v6, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 384
    .line 385
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->c()V

    .line 386
    .line 387
    .line 388
    :try_start_0
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    invoke-interface {v9, p2}, Landroidx/work/impl/model/WorkSpecDao;->p(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 393
    .line 394
    .line 395
    move-result-object v9

    .line 396
    if-nez v9, :cond_b

    .line 397
    .line 398
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    new-instance p3, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string p2, " because it\'s no longer in the DB"

    .line 411
    .line 412
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p2

    .line 419
    new-array p3, v3, [Ljava/lang/Throwable;

    .line 420
    .line 421
    invoke-virtual {p1, v7, p2, p3}, Landroidx/work/Logger;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .line 423
    .line 424
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :catchall_0
    move-exception p1

    .line 429
    goto/16 :goto_4

    .line 430
    .line 431
    :cond_b
    :try_start_1
    iget-object v10, v9, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 432
    .line 433
    invoke-virtual {v10}, Landroidx/work/WorkInfo$State;->a()Z

    .line 434
    .line 435
    .line 436
    move-result v10

    .line 437
    if-eqz v10, :cond_c

    .line 438
    .line 439
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    new-instance p3, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const-string p2, "because it is finished."

    .line 452
    .line 453
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    new-array p3, v3, [Ljava/lang/Throwable;

    .line 461
    .line 462
    invoke-virtual {p1, v7, p2, p3}, Landroidx/work/Logger;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    .line 464
    .line 465
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 466
    .line 467
    .line 468
    return-void

    .line 469
    :cond_c
    :try_start_2
    invoke-virtual {v9}, Landroidx/work/impl/model/WorkSpec;->a()J

    .line 470
    .line 471
    .line 472
    move-result-wide v10

    .line 473
    invoke-virtual {v9}, Landroidx/work/impl/model/WorkSpec;->b()Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    if-nez v5, :cond_d

    .line 478
    .line 479
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    new-instance p3, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {p3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p3

    .line 501
    new-array v0, v3, [Ljava/lang/Throwable;

    .line 502
    .line 503
    invoke-virtual {p1, v7, p3, v0}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 504
    .line 505
    .line 506
    invoke-static {v1, v6, p2, v10, v11}, Landroidx/work/impl/background/systemalarm/Alarms;->b(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;J)V

    .line 507
    .line 508
    .line 509
    goto :goto_3

    .line 510
    :cond_d
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    new-array v2, v3, [Ljava/lang/Throwable;

    .line 533
    .line 534
    invoke-virtual {v4, v7, v0, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 535
    .line 536
    .line 537
    invoke-static {v1, v6, p2, v10, v11}, Landroidx/work/impl/background/systemalarm/Alarms;->b(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;J)V

    .line 538
    .line 539
    .line 540
    new-instance p2, Landroid/content/Intent;

    .line 541
    .line 542
    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 543
    .line 544
    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 545
    .line 546
    .line 547
    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 548
    .line 549
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    .line 551
    .line 552
    new-instance v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    .line 553
    .line 554
    invoke-direct {v0, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(ILandroid/content/Intent;Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p3, v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->f(Ljava/lang/Runnable;)V

    .line 558
    .line 559
    .line 560
    :goto_3
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    .line 562
    .line 563
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 564
    .line 565
    .line 566
    return-void

    .line 567
    :goto_4
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 568
    .line 569
    .line 570
    throw p1

    .line 571
    :cond_e
    const-string v1, "ACTION_DELAY_MET"

    .line 572
    .line 573
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    if-eqz v1, :cond_10

    .line 578
    .line 579
    const-string v0, "WorkSpec "

    .line 580
    .line 581
    const-string v1, "Handing delay met for "

    .line 582
    .line 583
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 584
    .line 585
    .line 586
    move-result-object p2

    .line 587
    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->g:Ljava/lang/Object;

    .line 588
    .line 589
    monitor-enter v5

    .line 590
    :try_start_3
    const-string v2, "KEY_WORKSPEC_ID"

    .line 591
    .line 592
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object p2

    .line 596
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    sget-object v4, Landroidx/work/impl/background/systemalarm/CommandHandler;->h:Ljava/lang/String;

    .line 601
    .line 602
    new-instance v6, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    new-array v6, v3, [Ljava/lang/Throwable;

    .line 615
    .line 616
    invoke-virtual {v2, v4, v1, v6}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 617
    .line 618
    .line 619
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->f:Ljava/util/HashMap;

    .line 620
    .line 621
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    if-nez v1, :cond_f

    .line 626
    .line 627
    new-instance v0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;

    .line 628
    .line 629
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->c:Landroid/content/Context;

    .line 630
    .line 631
    invoke-direct {v0, v1, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;-><init>(Landroid/content/Context;ILjava/lang/String;Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    .line 632
    .line 633
    .line 634
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->f:Ljava/util/HashMap;

    .line 635
    .line 636
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->e()V

    .line 640
    .line 641
    .line 642
    goto :goto_5

    .line 643
    :catchall_1
    move-exception p1

    .line 644
    goto :goto_6

    .line 645
    :cond_f
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    new-instance p3, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const-string p2, " is already being handled for ACTION_DELAY_MET"

    .line 658
    .line 659
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object p2

    .line 666
    new-array p3, v3, [Ljava/lang/Throwable;

    .line 667
    .line 668
    invoke-virtual {p1, v4, p2, p3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 669
    .line 670
    .line 671
    :goto_5
    monitor-exit v5

    .line 672
    return-void

    .line 673
    :goto_6
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 674
    throw p1

    .line 675
    :cond_10
    const-string v1, "ACTION_STOP_WORK"

    .line 676
    .line 677
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    if-eqz v1, :cond_12

    .line 682
    .line 683
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    const-string p2, "KEY_WORKSPEC_ID"

    .line 688
    .line 689
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 694
    .line 695
    .line 696
    move-result-object p2

    .line 697
    sget-object v0, Landroidx/work/impl/background/systemalarm/CommandHandler;->h:Ljava/lang/String;

    .line 698
    .line 699
    const-string v1, "Handing stopWork work for "

    .line 700
    .line 701
    invoke-static {v1, p1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    new-array v2, v3, [Ljava/lang/Throwable;

    .line 706
    .line 707
    invoke-virtual {p2, v0, v1, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 708
    .line 709
    .line 710
    iget-object p2, p3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->i:Landroidx/work/impl/WorkManagerImpl;

    .line 711
    .line 712
    iget-object v0, p2, Landroidx/work/impl/WorkManagerImpl;->d:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 713
    .line 714
    new-instance v1, Landroidx/work/impl/utils/StopWorkRunnable;

    .line 715
    .line 716
    invoke-direct {v1, p2, p1, v3}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->b(Ljava/lang/Runnable;)V

    .line 720
    .line 721
    .line 722
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/CommandHandler;->c:Landroid/content/Context;

    .line 723
    .line 724
    iget-object v0, p3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->i:Landroidx/work/impl/WorkManagerImpl;

    .line 725
    .line 726
    sget-object v1, Landroidx/work/impl/background/systemalarm/Alarms;->a:Ljava/lang/String;

    .line 727
    .line 728
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 729
    .line 730
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()Landroidx/work/impl/model/SystemIdInfoDao;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-interface {v0, p1}, Landroidx/work/impl/model/SystemIdInfoDao;->c(Ljava/lang/String;)Landroidx/work/impl/model/SystemIdInfo;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    if-eqz v1, :cond_11

    .line 739
    .line 740
    iget v1, v1, Landroidx/work/impl/model/SystemIdInfo;->b:I

    .line 741
    .line 742
    invoke-static {p2, v1, p1}, Landroidx/work/impl/background/systemalarm/Alarms;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 746
    .line 747
    .line 748
    move-result-object p2

    .line 749
    sget-object v1, Landroidx/work/impl/background/systemalarm/Alarms;->a:Ljava/lang/String;

    .line 750
    .line 751
    const-string v2, "Removing SystemIdInfo for workSpecId ("

    .line 752
    .line 753
    const-string v4, ")"

    .line 754
    .line 755
    invoke-static {v2, p1, v4}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v2

    .line 759
    new-array v4, v3, [Ljava/lang/Throwable;

    .line 760
    .line 761
    invoke-virtual {p2, v1, v2, v4}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 762
    .line 763
    .line 764
    invoke-interface {v0, p1}, Landroidx/work/impl/model/SystemIdInfoDao;->d(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    :cond_11
    invoke-virtual {p3, p1, v3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->d(Ljava/lang/String;Z)V

    .line 768
    .line 769
    .line 770
    return-void

    .line 771
    :cond_12
    const-string p3, "ACTION_EXECUTION_COMPLETED"

    .line 772
    .line 773
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result p3

    .line 777
    if-eqz p3, :cond_13

    .line 778
    .line 779
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 780
    .line 781
    .line 782
    move-result-object p3

    .line 783
    const-string v0, "KEY_WORKSPEC_ID"

    .line 784
    .line 785
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    const-string v1, "KEY_NEEDS_RESCHEDULE"

    .line 790
    .line 791
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 792
    .line 793
    .line 794
    move-result p3

    .line 795
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    sget-object v5, Landroidx/work/impl/background/systemalarm/CommandHandler;->h:Ljava/lang/String;

    .line 800
    .line 801
    const-string v6, "Handling onExecutionCompleted %s, %s"

    .line 802
    .line 803
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 804
    .line 805
    .line 806
    move-result-object p1

    .line 807
    new-array v4, v4, [Ljava/lang/Object;

    .line 808
    .line 809
    aput-object p2, v4, v3

    .line 810
    .line 811
    aput-object p1, v4, v2

    .line 812
    .line 813
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    new-array p2, v3, [Ljava/lang/Throwable;

    .line 818
    .line 819
    invoke-virtual {v1, v5, p1, p2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {p0, v0, p3}, Landroidx/work/impl/background/systemalarm/CommandHandler;->d(Ljava/lang/String;Z)V

    .line 823
    .line 824
    .line 825
    return-void

    .line 826
    :cond_13
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 827
    .line 828
    .line 829
    move-result-object p1

    .line 830
    sget-object p3, Landroidx/work/impl/background/systemalarm/CommandHandler;->h:Ljava/lang/String;

    .line 831
    .line 832
    const-string v0, "Ignoring intent %s"

    .line 833
    .line 834
    new-array v1, v2, [Ljava/lang/Object;

    .line 835
    .line 836
    aput-object p2, v1, v3

    .line 837
    .line 838
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object p2

    .line 842
    new-array v0, v3, [Ljava/lang/Throwable;

    .line 843
    .line 844
    invoke-virtual {p1, p3, p2, v0}, Landroidx/work/Logger;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 845
    .line 846
    .line 847
    return-void

    .line 848
    :cond_14
    :goto_7
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 849
    .line 850
    .line 851
    move-result-object p1

    .line 852
    sget-object p2, Landroidx/work/impl/background/systemalarm/CommandHandler;->h:Ljava/lang/String;

    .line 853
    .line 854
    const-string p3, "Invalid request for "

    .line 855
    .line 856
    const-string v1, ", requires KEY_WORKSPEC_ID."

    .line 857
    .line 858
    invoke-static {p3, v0, v1}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object p3

    .line 862
    new-array v0, v3, [Ljava/lang/Throwable;

    .line 863
    .line 864
    invoke-virtual {p1, p2, p3, v0}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 865
    .line 866
    .line 867
    return-void
.end method
