.class Landroidx/work/impl/workers/ConstraintTrackingWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$1;->c:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$1;->c:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroidx/work/Data;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->o:Ljava/lang/String;

    .line 25
    .line 26
    const-string v4, "No worker to delegate to."

    .line 27
    .line 28
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v4, v3}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 34
    .line 35
    new-instance v1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 36
    .line 37
    invoke-direct {v1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getWorkerFactory()Landroidx/work/WorkerFactory;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->j:Landroidx/work/WorkerParameters;

    .line 53
    .line 54
    invoke-virtual {v2, v4, v1, v5}, Landroidx/work/WorkerFactory;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n:Landroidx/work/ListenableWorker;

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget-object v2, Landroidx/work/impl/workers/ConstraintTrackingWorker;->o:Ljava/lang/String;

    .line 67
    .line 68
    const-string v4, "No worker to delegate to."

    .line 69
    .line 70
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 71
    .line 72
    invoke-virtual {v1, v2, v4, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 76
    .line 77
    new-instance v1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 78
    .line 79
    invoke-direct {v1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Landroidx/work/impl/WorkManagerImpl;->c(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object v2, v2, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-interface {v2, v4}, Landroidx/work/impl/model/WorkSpecDao;->p(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-nez v2, :cond_2

    .line 113
    .line 114
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 115
    .line 116
    new-instance v1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 117
    .line 118
    invoke-direct {v1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    new-instance v4, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-direct {v4, v5, v6, v0}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/constraints/WorkConstraintsCallback;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v4, v2}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->d(Ljava/util/Collection;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v4, v2}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->c(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_4

    .line 158
    .line 159
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    sget-object v4, Landroidx/work/impl/workers/ConstraintTrackingWorker;->o:Ljava/lang/String;

    .line 164
    .line 165
    const-string v5, "Constraints met for delegate "

    .line 166
    .line 167
    invoke-static {v5, v1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    new-array v6, v3, [Ljava/lang/Throwable;

    .line 172
    .line 173
    invoke-virtual {v2, v4, v5, v6}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :try_start_0
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->n:Landroidx/work/ListenableWorker;

    .line 177
    .line 178
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    new-instance v4, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;

    .line 183
    .line 184
    invoke-direct {v4, v0, v2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-interface {v2, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :catchall_0
    move-exception v2

    .line 196
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    sget-object v5, Landroidx/work/impl/workers/ConstraintTrackingWorker;->o:Ljava/lang/String;

    .line 201
    .line 202
    const-string v6, "Delegated worker "

    .line 203
    .line 204
    const-string v7, " threw exception in startWork."

    .line 205
    .line 206
    invoke-static {v6, v1, v7}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const/4 v6, 0x1

    .line 211
    new-array v6, v6, [Ljava/lang/Throwable;

    .line 212
    .line 213
    aput-object v2, v6, v3

    .line 214
    .line 215
    invoke-virtual {v4, v5, v1, v6}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ljava/lang/Object;

    .line 219
    .line 220
    monitor-enter v2

    .line 221
    :try_start_1
    iget-boolean v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->l:Z

    .line 222
    .line 223
    if-eqz v1, :cond_3

    .line 224
    .line 225
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const-string v4, "Constraints were unmet, Retrying."

    .line 230
    .line 231
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 232
    .line 233
    invoke-virtual {v1, v5, v4, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 237
    .line 238
    new-instance v1, Landroidx/work/ListenableWorker$Result$Retry;

    .line 239
    .line 240
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :catchall_1
    move-exception v0

    .line 248
    goto :goto_1

    .line 249
    :cond_3
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 250
    .line 251
    new-instance v1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 252
    .line 253
    invoke-direct {v1}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    :goto_0
    monitor-exit v2

    .line 260
    return-void

    .line 261
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    throw v0

    .line 263
    :cond_4
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    sget-object v4, Landroidx/work/impl/workers/ConstraintTrackingWorker;->o:Ljava/lang/String;

    .line 268
    .line 269
    const-string v5, "Constraints not met for delegate "

    .line 270
    .line 271
    const-string v6, ". Requesting retry."

    .line 272
    .line 273
    invoke-static {v5, v1, v6}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 278
    .line 279
    invoke-virtual {v2, v4, v1, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 283
    .line 284
    new-instance v1, Landroidx/work/ListenableWorker$Result$Retry;

    .line 285
    .line 286
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    return-void
.end method
