.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:J


# instance fields
.field public final c:Landroid/content/Context;

.field public final f:Landroidx/work/impl/WorkManagerImpl;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ForceStopRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->h:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0xe42

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->i:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Landroidx/work/impl/WorkManagerImpl;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->g:I

    .line 14
    .line 15
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "alarm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AlarmManager;

    .line 8
    .line 9
    invoke-static {}, Landroidx/core/os/BuildCompat;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0xa000000

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v1, 0x8000000

    .line 19
    .line 20
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/content/ComponentName;

    .line 26
    .line 27
    const-class v4, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 28
    .line 29
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v3, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-static {p0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->i:J

    .line 50
    .line 51
    add-long/2addr v1, v3

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->i:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "jobscheduler"

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 14
    .line 15
    invoke-static {v2, v0}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v1, Landroidx/work/impl/utils/ForceStopRunnable;->f:Landroidx/work/impl/WorkManagerImpl;

    .line 20
    .line 21
    iget-object v5, v4, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->k()Landroidx/work/impl/model/SystemIdInfoDao;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-interface {v5}, Landroidx/work/impl/model/SystemIdInfoDao;->a()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v6, 0x0

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v7, v6

    .line 40
    :goto_0
    new-instance v8, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 43
    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-nez v9, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    move v10, v6

    .line 58
    :goto_1
    if-ge v10, v9, :cond_3

    .line 59
    .line 60
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    add-int/lit8 v10, v10, 0x1

    .line 65
    .line 66
    check-cast v11, Landroid/app/job/JobInfo;

    .line 67
    .line 68
    const-string v12, "EXTRA_WORK_SPEC_ID"

    .line 69
    .line 70
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    if-eqz v13, :cond_1

    .line 75
    .line 76
    :try_start_0
    invoke-virtual {v13, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    if-eqz v14, :cond_1

    .line 81
    .line 82
    invoke-virtual {v13, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_2

    .line 87
    :catch_0
    :cond_1
    const/4 v12, 0x0

    .line 88
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    if-nez v13, :cond_2

    .line 93
    .line 94
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getId()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    invoke-static {v0, v11}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->b(Landroid/app/job/JobScheduler;I)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    move v3, v6

    .line 111
    :cond_4
    if-ge v3, v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    check-cast v10, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-nez v10, :cond_4

    .line 126
    .line 127
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->i:Ljava/lang/String;

    .line 132
    .line 133
    const-string v8, "Reconciling jobs"

    .line 134
    .line 135
    new-array v10, v6, [Ljava/lang/Throwable;

    .line 136
    .line 137
    invoke-virtual {v0, v3, v8, v10}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    const/4 v0, 0x1

    .line 141
    goto :goto_3

    .line 142
    :cond_5
    move v0, v6

    .line 143
    :goto_3
    const-wide/16 v10, -0x1

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    iget-object v3, v4, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 148
    .line 149
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->c()V

    .line 150
    .line 151
    .line 152
    :try_start_1
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    move v13, v6

    .line 161
    :goto_4
    if-ge v13, v12, :cond_6

    .line 162
    .line 163
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    add-int/lit8 v13, v13, 0x1

    .line 168
    .line 169
    check-cast v14, Ljava/lang/String;

    .line 170
    .line 171
    invoke-interface {v8, v10, v11, v14}, Landroidx/work/impl/model/WorkSpecDao;->e(JLjava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    goto :goto_5

    .line 177
    :cond_6
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->f()V

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :goto_5
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->f()V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :cond_7
    :goto_6
    iget-object v3, v4, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 189
    .line 190
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->m()Landroidx/work/impl/model/WorkProgressDao;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->c()V

    .line 199
    .line 200
    .line 201
    :try_start_2
    invoke-interface {v5}, Landroidx/work/impl/model/WorkSpecDao;->m()Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    if-nez v13, :cond_8

    .line 210
    .line 211
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    move v15, v6

    .line 216
    :goto_7
    if-ge v15, v14, :cond_8

    .line 217
    .line 218
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v16

    .line 222
    add-int/lit8 v15, v15, 0x1

    .line 223
    .line 224
    move-object/from16 v9, v16

    .line 225
    .line 226
    check-cast v9, Landroidx/work/impl/model/WorkSpec;

    .line 227
    .line 228
    sget-object v7, Landroidx/work/WorkInfo$State;->c:Landroidx/work/WorkInfo$State;

    .line 229
    .line 230
    iget-object v6, v9, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 231
    .line 232
    filled-new-array {v6}, [Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-interface {v5, v7, v6}, Landroidx/work/impl/model/WorkSpecDao;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    iget-object v6, v9, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 240
    .line 241
    invoke-interface {v5, v10, v11, v6}, Landroidx/work/impl/model/WorkSpecDao;->e(JLjava/lang/String;)I

    .line 242
    .line 243
    .line 244
    const/4 v6, 0x0

    .line 245
    goto :goto_7

    .line 246
    :catchall_1
    move-exception v0

    .line 247
    goto/16 :goto_10

    .line 248
    .line 249
    :cond_8
    invoke-interface {v8}, Landroidx/work/impl/model/WorkProgressDao;->a()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->f()V

    .line 256
    .line 257
    .line 258
    if-eqz v13, :cond_a

    .line 259
    .line 260
    if-eqz v0, :cond_9

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :cond_9
    const/4 v0, 0x0

    .line 264
    goto :goto_9

    .line 265
    :cond_a
    :goto_8
    const/4 v0, 0x1

    .line 266
    :goto_9
    iget-object v3, v4, Landroidx/work/impl/WorkManagerImpl;->g:Landroidx/work/impl/utils/PreferenceUtils;

    .line 267
    .line 268
    iget-object v3, v3, Landroidx/work/impl/utils/PreferenceUtils;->a:Landroidx/work/impl/WorkDatabase;

    .line 269
    .line 270
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/PreferenceDao;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    const-string v5, "reschedule_needed"

    .line 275
    .line 276
    invoke-interface {v3, v5}, Landroidx/work/impl/model/PreferenceDao;->a(Ljava/lang/String;)Ljava/lang/Long;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    sget-object v6, Landroidx/work/impl/utils/ForceStopRunnable;->h:Ljava/lang/String;

    .line 281
    .line 282
    if-eqz v3, :cond_b

    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 285
    .line 286
    .line 287
    move-result-wide v7

    .line 288
    const-wide/16 v9, 0x1

    .line 289
    .line 290
    cmp-long v3, v7, v9

    .line 291
    .line 292
    if-nez v3, :cond_b

    .line 293
    .line 294
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    const-string v2, "Rescheduling Workers."

    .line 299
    .line 300
    const/4 v3, 0x0

    .line 301
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 302
    .line 303
    invoke-virtual {v0, v6, v2, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4}, Landroidx/work/impl/WorkManagerImpl;->f()V

    .line 307
    .line 308
    .line 309
    iget-object v0, v4, Landroidx/work/impl/WorkManagerImpl;->g:Landroidx/work/impl/utils/PreferenceUtils;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    new-instance v2, Landroidx/work/impl/model/Preference;

    .line 315
    .line 316
    const-wide/16 v3, 0x0

    .line 317
    .line 318
    invoke-direct {v2, v5, v3, v4}, Landroidx/work/impl/model/Preference;-><init>(Ljava/lang/String;J)V

    .line 319
    .line 320
    .line 321
    iget-object v0, v0, Landroidx/work/impl/utils/PreferenceUtils;->a:Landroidx/work/impl/WorkDatabase;

    .line 322
    .line 323
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/PreferenceDao;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-interface {v0, v2}, Landroidx/work/impl/model/PreferenceDao;->b(Landroidx/work/impl/model/Preference;)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :cond_b
    :try_start_3
    invoke-static {}, Landroidx/core/os/BuildCompat;->b()Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_c

    .line 336
    .line 337
    const/high16 v3, 0x22000000

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_c
    const/high16 v3, 0x20000000

    .line 341
    .line 342
    :goto_a
    new-instance v5, Landroid/content/Intent;

    .line 343
    .line 344
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 345
    .line 346
    .line 347
    new-instance v7, Landroid/content/ComponentName;

    .line 348
    .line 349
    const-class v8, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 350
    .line 351
    invoke-direct {v7, v2, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 355
    .line 356
    .line 357
    const-string v7, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 358
    .line 359
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    .line 361
    .line 362
    const/4 v7, -0x1

    .line 363
    invoke-static {v2, v7, v5, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 368
    .line 369
    const/16 v7, 0x1e

    .line 370
    .line 371
    if-lt v5, v7, :cond_f

    .line 372
    .line 373
    if-eqz v3, :cond_d

    .line 374
    .line 375
    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    .line 376
    .line 377
    .line 378
    goto :goto_b

    .line 379
    :catch_1
    move-exception v0

    .line 380
    goto :goto_e

    .line 381
    :catch_2
    move-exception v0

    .line 382
    goto :goto_e

    .line 383
    :cond_d
    :goto_b
    const-string v3, "activity"

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Landroid/app/ActivityManager;

    .line 390
    .line 391
    const/4 v3, 0x0

    .line 392
    const/4 v5, 0x0

    .line 393
    invoke-virtual {v2, v3, v5, v5}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    if-eqz v2, :cond_10

    .line 398
    .line 399
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-nez v3, :cond_10

    .line 404
    .line 405
    const/4 v3, 0x0

    .line 406
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    if-ge v3, v5, :cond_10

    .line 411
    .line 412
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    check-cast v5, Landroid/app/ApplicationExitInfo;

    .line 417
    .line 418
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    const/16 v7, 0xa

    .line 423
    .line 424
    if-ne v5, v7, :cond_e

    .line 425
    .line 426
    :goto_d
    const/4 v5, 0x0

    .line 427
    goto :goto_f

    .line 428
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_f
    if-nez v3, :cond_10

    .line 432
    .line 433
    invoke-static {v2}, Landroidx/work/impl/utils/ForceStopRunnable;->c(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 434
    .line 435
    .line 436
    goto :goto_d

    .line 437
    :cond_10
    if-eqz v0, :cond_11

    .line 438
    .line 439
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    const-string v2, "Found unfinished work, scheduling it."

    .line 444
    .line 445
    const/4 v3, 0x0

    .line 446
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 447
    .line 448
    invoke-virtual {v0, v6, v2, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 449
    .line 450
    .line 451
    iget-object v0, v4, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 452
    .line 453
    iget-object v2, v4, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 454
    .line 455
    iget-object v3, v4, Landroidx/work/impl/WorkManagerImpl;->e:Ljava/util/List;

    .line 456
    .line 457
    invoke-static {v0, v2, v3}, Landroidx/work/impl/Schedulers;->a(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 458
    .line 459
    .line 460
    :cond_11
    return-void

    .line 461
    :goto_e
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    const/4 v3, 0x1

    .line 466
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 467
    .line 468
    const/4 v5, 0x0

    .line 469
    aput-object v0, v3, v5

    .line 470
    .line 471
    const-string v0, "Ignoring exception"

    .line 472
    .line 473
    invoke-virtual {v2, v6, v0, v3}, Landroidx/work/Logger;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 474
    .line 475
    .line 476
    :goto_f
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    const-string v2, "Application was force-stopped, rescheduling."

    .line 481
    .line 482
    new-array v3, v5, [Ljava/lang/Throwable;

    .line 483
    .line 484
    invoke-virtual {v0, v6, v2, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4}, Landroidx/work/impl/WorkManagerImpl;->f()V

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :goto_10
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->f()V

    .line 492
    .line 493
    .line 494
    throw v0
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Landroidx/work/impl/WorkManagerImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->h:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "The default process name was not specified."

    .line 23
    .line 24
    new-array v2, v2, [Ljava/lang/Throwable;

    .line 25
    .line 26
    invoke-virtual {v0, v3, v1, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroidx/work/impl/utils/ProcessUtils;->a(Landroid/content/Context;Landroidx/work/Configuration;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, "Is default app process = "

    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-array v2, v2, [Ljava/lang/Throwable;

    .line 56
    .line 57
    invoke-virtual {v1, v3, v4, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    return v0
.end method

.method public final run()V
    .locals 12

    .line 1
    sget-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->h:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Landroidx/work/impl/WorkManagerImpl;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->e()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->c:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v2}, Landroidx/work/impl/WorkDatabasePathHelper;->a(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "Performing cleanup operations."

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    new-array v5, v4, [Ljava/lang/Throwable;

    .line 28
    .line 29
    invoke-virtual {v2, v0, v3, v5}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_2
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->a()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->e()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_2

    .line 41
    :catch_1
    move-exception v2

    .line 42
    goto :goto_1

    .line 43
    :catch_2
    move-exception v2

    .line 44
    goto :goto_1

    .line 45
    :catch_3
    move-exception v2

    .line 46
    goto :goto_1

    .line 47
    :catch_4
    move-exception v2

    .line 48
    goto :goto_1

    .line 49
    :catch_5
    move-exception v2

    .line 50
    goto :goto_1

    .line 51
    :catch_6
    move-exception v2

    .line 52
    :goto_1
    :try_start_3
    iget v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->g:I

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    add-int/2addr v3, v5

    .line 56
    iput v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->g:I

    .line 57
    .line 58
    const/4 v6, 0x3

    .line 59
    if-ge v3, v6, :cond_1

    .line 60
    .line 61
    int-to-long v6, v3

    .line 62
    const-wide/16 v8, 0x12c

    .line 63
    .line 64
    mul-long/2addr v6, v8

    .line 65
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v11, "Retrying after "

    .line 75
    .line 76
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    new-array v5, v5, [Ljava/lang/Throwable;

    .line 87
    .line 88
    aput-object v2, v5, v4

    .line 89
    .line 90
    invoke-virtual {v3, v0, v6, v5}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    iget v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->g:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    .line 95
    int-to-long v2, v2

    .line 96
    mul-long/2addr v2, v8

    .line 97
    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    :try_start_5
    const-string v3, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 102
    .line 103
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    new-array v5, v5, [Ljava/lang/Throwable;

    .line 108
    .line 109
    aput-object v2, v5, v4

    .line 110
    .line 111
    invoke-virtual {v6, v0, v3, v5}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, v1, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    :goto_2
    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->e()V

    .line 126
    .line 127
    .line 128
    throw v0
.end method
