.class public Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkerWrapper$Builder;
    }
.end annotation


# static fields
.field public static final x:Ljava/lang/String;


# instance fields
.field public c:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;

.field public h:Landroidx/work/WorkerParameters$RuntimeExtras;

.field public i:Landroidx/work/impl/model/WorkSpec;

.field public j:Landroidx/work/ListenableWorker;

.field public k:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

.field public l:Landroidx/work/ListenableWorker$Result;

.field public m:Landroidx/work/Configuration;

.field public n:Landroidx/work/impl/Processor;

.field public o:Landroidx/work/impl/WorkDatabase;

.field public p:Landroidx/work/impl/model/WorkSpecDao;

.field public q:Landroidx/work/impl/model/DependencyDao;

.field public r:Landroidx/work/impl/model/WorkTagDao;

.field public s:Ljava/util/List;

.field public t:Ljava/lang/String;

.field public u:Landroidx/work/impl/utils/futures/SettableFuture;

.field public v:Lcom/google/common/util/concurrent/ListenableFuture;

.field public volatile w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkerWrapper"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/WorkerWrapper;->x:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/ListenableWorker$Result;)V
    .locals 13

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$Result$Success;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Landroidx/work/impl/WorkerWrapper;->x:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->t:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "Worker result SUCCESS for "

    .line 15
    .line 16
    invoke-static {v3, v0}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-array v3, v1, [Ljava/lang/Throwable;

    .line 21
    .line 22
    invoke-virtual {p1, v2, v0, v3}, Landroidx/work/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->c()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->e()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->q:Landroidx/work/impl/model/DependencyDao;

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->f:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->o:Landroidx/work/impl/WorkDatabase;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->c()V

    .line 46
    .line 47
    .line 48
    :try_start_0
    sget-object v5, Landroidx/work/WorkInfo$State;->g:Landroidx/work/WorkInfo$State;

    .line 49
    .line 50
    filled-new-array {v0}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v3, v5, v6}, Landroidx/work/impl/model/WorkSpecDao;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->l:Landroidx/work/ListenableWorker$Result;

    .line 58
    .line 59
    check-cast v5, Landroidx/work/ListenableWorker$Result$Success;

    .line 60
    .line 61
    iget-object v5, v5, Landroidx/work/ListenableWorker$Result$Success;->a:Landroidx/work/Data;

    .line 62
    .line 63
    invoke-interface {v3, v0, v5}, Landroidx/work/impl/model/WorkSpecDao;->l(Ljava/lang/String;Landroidx/work/Data;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    invoke-interface {p1, v0}, Landroidx/work/impl/model/DependencyDao;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    move v8, v1

    .line 79
    :cond_1
    :goto_0
    if-ge v8, v7, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    add-int/lit8 v8, v8, 0x1

    .line 86
    .line 87
    check-cast v9, Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {v3, v9}, Landroidx/work/impl/model/WorkSpecDao;->o(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    sget-object v11, Landroidx/work/WorkInfo$State;->i:Landroidx/work/WorkInfo$State;

    .line 94
    .line 95
    if-ne v10, v11, :cond_1

    .line 96
    .line 97
    invoke-interface {p1, v9}, Landroidx/work/impl/model/DependencyDao;->c(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-eqz v10, :cond_1

    .line 102
    .line 103
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v12, "Setting status to enqueued for "

    .line 113
    .line 114
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    new-array v12, v1, [Ljava/lang/Throwable;

    .line 125
    .line 126
    invoke-virtual {v10, v2, v11, v12}, Landroidx/work/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    sget-object v10, Landroidx/work/WorkInfo$State;->c:Landroidx/work/WorkInfo$State;

    .line 130
    .line 131
    filled-new-array {v9}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    invoke-interface {v3, v10, v11}, Landroidx/work/impl/model/WorkSpecDao;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    invoke-interface {v3, v5, v6, v9}, Landroidx/work/impl/model/WorkSpecDao;->j(JLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->f()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v1}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_1
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->f()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v1}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :cond_3
    instance-of p1, p1, Landroidx/work/ListenableWorker$Result$Retry;

    .line 162
    .line 163
    if-eqz p1, :cond_4

    .line 164
    .line 165
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->t:Ljava/lang/String;

    .line 170
    .line 171
    const-string v3, "Worker result RETRY for "

    .line 172
    .line 173
    invoke-static {v3, v0}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-array v1, v1, [Ljava/lang/Throwable;

    .line 178
    .line 179
    invoke-virtual {p1, v2, v0, v1}, Landroidx/work/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->d()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_4
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->t:Ljava/lang/String;

    .line 191
    .line 192
    const-string v3, "Worker result FAILURE for "

    .line 193
    .line 194
    invoke-static {v3, v0}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-array v1, v1, [Ljava/lang/Throwable;

    .line 199
    .line 200
    invoke-virtual {p1, v2, v0, v1}, Landroidx/work/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 204
    .line 205
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->c()Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_5

    .line 210
    .line 211
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->e()V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_5
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->h()V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Landroidx/work/impl/model/WorkSpecDao;->o(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 28
    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    sget-object v2, Landroidx/work/WorkInfo$State;->h:Landroidx/work/WorkInfo$State;

    .line 32
    .line 33
    filled-new-array {p1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v0, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->q:Landroidx/work/impl/model/DependencyDao;

    .line 41
    .line 42
    invoke-interface {v2, p1}, Landroidx/work/impl/model/DependencyDao;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->g:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->o:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_3

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->c()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 17
    .line 18
    invoke-interface {v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->o(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->m()Landroidx/work/impl/model/WorkProgressDao;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-interface {v4, v1}, Landroidx/work/impl/model/WorkProgressDao;->delete(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    sget-object v4, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    .line 39
    .line 40
    if-ne v3, v4, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->l:Landroidx/work/ListenableWorker$Result;

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->a(Landroidx/work/ListenableWorker$Result;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v3}, Landroidx/work/WorkInfo$State;->a()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->d()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :goto_1
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Landroidx/work/impl/Scheduler;

    .line 85
    .line 86
    invoke-interface {v4, v1}, Landroidx/work/impl/Scheduler;->e(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->m:Landroidx/work/Configuration;

    .line 91
    .line 92
    invoke-static {v1, v2, v0}, Landroidx/work/impl/Schedulers;->a(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->o:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->c()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    :try_start_0
    sget-object v4, Landroidx/work/WorkInfo$State;->c:Landroidx/work/WorkInfo$State;

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-interface {v1, v4, v5}, Landroidx/work/impl/model/WorkSpecDao;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-interface {v1, v4, v5, v0}, Landroidx/work/impl/model/WorkSpecDao;->j(JLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v4, -0x1

    .line 28
    .line 29
    invoke-interface {v1, v4, v5, v0}, Landroidx/work/impl/model/WorkSpecDao;->e(JLjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->o:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->c()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    invoke-interface {v1, v4, v5, v0}, Landroidx/work/impl/model/WorkSpecDao;->j(JLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v4, Landroidx/work/WorkInfo$State;->c:Landroidx/work/WorkInfo$State;

    .line 19
    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-interface {v1, v4, v5}, Landroidx/work/impl/model/WorkSpecDao;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->q(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const-wide/16 v4, -0x1

    .line 31
    .line 32
    invoke-interface {v1, v4, v5, v0}, Landroidx/work/impl/model/WorkSpecDao;->e(JLjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public final f(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->f:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->o:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->c()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-interface {v3}, Landroidx/work/impl/model/WorkSpecDao;->n()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->c:Landroid/content/Context;

    .line 21
    .line 22
    const-class v4, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v3, v4, v5}, Landroidx/work/impl/utils/PackageManagerHelper;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    sget-object v3, Landroidx/work/WorkInfo$State;->c:Landroidx/work/WorkInfo$State;

    .line 34
    .line 35
    filled-new-array {v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v0, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const-wide/16 v3, -0x1

    .line 43
    .line 44
    invoke-interface {v0, v3, v4, v1}, Landroidx/work/impl/model/WorkSpecDao;->e(JLjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/ListenableWorker;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isRunInForeground()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->n:Landroidx/work/impl/Processor;

    .line 62
    .line 63
    iget-object v3, v0, Landroidx/work/impl/Processor;->o:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    iget-object v4, v0, Landroidx/work/impl/Processor;->j:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/work/impl/Processor;->i()V

    .line 72
    .line 73
    .line 74
    monitor-exit v3

    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :try_start_2
    throw p1

    .line 79
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->u:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_2
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->o(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v2, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    .line 10
    .line 11
    const-string v3, "Status for "

    .line 12
    .line 13
    sget-object v4, Landroidx/work/impl/WorkerWrapper;->x:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, " is RUNNING;not doing any work and rescheduling for later execution"

    .line 23
    .line 24
    invoke-static {v3, v1, v2}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-array v2, v5, [Ljava/lang/Throwable;

    .line 29
    .line 30
    invoke-virtual {v0, v4, v1, v2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " is "

    .line 51
    .line 52
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "; not doing any work"

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-array v1, v5, [Ljava/lang/Throwable;

    .line 68
    .line 69
    invoke-virtual {v2, v4, v0, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v5}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->o:Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/work/impl/WorkerWrapper;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->l:Landroidx/work/ListenableWorker$Result;

    .line 13
    .line 14
    check-cast v3, Landroidx/work/ListenableWorker$Result$Failure;

    .line 15
    .line 16
    iget-object v3, v3, Landroidx/work/ListenableWorker$Result$Failure;->a:Landroidx/work/Data;

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 19
    .line 20
    invoke-interface {v4, v0, v3}, Landroidx/work/impl/model/WorkSpecDao;->l(Ljava/lang/String;Landroidx/work/Data;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->f()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->f()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/WorkerWrapper;->w:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v2, Landroidx/work/impl/WorkerWrapper;->x:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->t:Ljava/lang/String;

    .line 13
    .line 14
    const-string v4, "Work interrupted for "

    .line 15
    .line 16
    invoke-static {v4, v3}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-array v4, v1, [Ljava/lang/Throwable;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->f:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkSpecDao;->o(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->a()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    xor-int/2addr v0, v2

    .line 45
    invoke-virtual {p0, v0}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 46
    .line 47
    .line 48
    return v2

    .line 49
    :cond_1
    return v1
.end method

.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v7, v1, Landroidx/work/impl/WorkerWrapper;->k:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 4
    .line 5
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->r:Landroidx/work/impl/model/WorkTagDao;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkTagDao;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, v1, Landroidx/work/impl/WorkerWrapper;->s:Ljava/util/List;

    .line 14
    .line 15
    const-string v3, "Work [ id="

    .line 16
    .line 17
    const-string v4, ", tags={ "

    .line 18
    .line 19
    invoke-static {v3, v2, v4}, Landroid/support/v4/media/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x1

    .line 29
    move v9, v5

    .line 30
    move v8, v6

    .line 31
    :goto_0
    if-ge v9, v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    add-int/lit8 v9, v9, 0x1

    .line 38
    .line 39
    check-cast v10, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v8, :cond_0

    .line 42
    .line 43
    move v8, v5

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string v11, ", "

    .line 46
    .line 47
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v0, " } ]"

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, v1, Landroidx/work/impl/WorkerWrapper;->t:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->m:Landroidx/work/Configuration;

    .line 66
    .line 67
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->p:Landroidx/work/impl/model/WorkSpecDao;

    .line 68
    .line 69
    iget-object v8, v1, Landroidx/work/impl/WorkerWrapper;->o:Landroidx/work/impl/WorkDatabase;

    .line 70
    .line 71
    const-string v0, "Delaying execution for "

    .line 72
    .line 73
    const-string v9, "Didn\'t find WorkSpec for id "

    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->i()Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_2

    .line 80
    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :cond_2
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->c()V

    .line 84
    .line 85
    .line 86
    :try_start_0
    invoke-interface {v4, v2}, Landroidx/work/impl/model/WorkSpecDao;->p(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    iput-object v10, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    sget-object v11, Landroidx/work/impl/WorkerWrapper;->x:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v10, :cond_3

    .line 95
    .line 96
    :try_start_1
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-array v3, v5, [Ljava/lang/Throwable;

    .line 113
    .line 114
    invoke-virtual {v0, v11, v2, v3}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v5}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto/16 :goto_9

    .line 129
    .line 130
    :cond_3
    :try_start_2
    iget-object v9, v10, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    sget-object v12, Landroidx/work/WorkInfo$State;->c:Landroidx/work/WorkInfo$State;

    .line 133
    .line 134
    if-eq v9, v12, :cond_4

    .line 135
    .line 136
    :try_start_3
    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->g()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->h()V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 147
    .line 148
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v2, " is not in ENQUEUED state. Nothing more to do."

    .line 159
    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    new-array v3, v5, [Ljava/lang/Throwable;

    .line 168
    .line 169
    invoke-virtual {v0, v11, v2, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_4
    :try_start_4
    invoke-virtual {v10}, Landroidx/work/impl/model/WorkSpec;->c()Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    if-nez v9, :cond_6

    .line 181
    .line 182
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 183
    .line 184
    iget-object v10, v9, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 185
    .line 186
    if-ne v10, v12, :cond_5

    .line 187
    .line 188
    iget v9, v9, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 189
    .line 190
    if-lez v9, :cond_5

    .line 191
    .line 192
    move v9, v6

    .line 193
    goto :goto_2

    .line 194
    :cond_5
    move v9, v5

    .line 195
    :goto_2
    if-eqz v9, :cond_8

    .line 196
    .line 197
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v9

    .line 201
    iget-object v13, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 202
    .line 203
    iget-wide v14, v13, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 204
    .line 205
    const-wide/16 v16, 0x0

    .line 206
    .line 207
    cmp-long v14, v14, v16

    .line 208
    .line 209
    if-nez v14, :cond_7

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_7
    invoke-virtual {v13}, Landroidx/work/impl/model/WorkSpec;->a()J

    .line 213
    .line 214
    .line 215
    move-result-wide v13

    .line 216
    cmp-long v9, v9, v13

    .line 217
    .line 218
    if-gez v9, :cond_8

    .line 219
    .line 220
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 225
    .line 226
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 227
    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v0, " because it is being executed before schedule."

    .line 237
    .line 238
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-array v3, v5, [Ljava/lang/Throwable;

    .line 246
    .line 247
    invoke-virtual {v2, v11, v0, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v6}, Landroidx/work/impl/WorkerWrapper;->f(Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_8
    :goto_3
    :try_start_5
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->h()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 264
    .line 265
    .line 266
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 267
    .line 268
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->c()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_9

    .line 273
    .line 274
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 275
    .line 276
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_9
    iget-object v0, v3, Landroidx/work/Configuration;->d:Landroidx/work/InputMergerFactory;

    .line 280
    .line 281
    iget-object v9, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 282
    .line 283
    iget-object v9, v9, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    sget-object v0, Landroidx/work/InputMerger;->a:Ljava/lang/String;

    .line 289
    .line 290
    :try_start_6
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Landroidx/work/InputMerger;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :catch_0
    move-exception v0

    .line 302
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    sget-object v13, Landroidx/work/InputMerger;->a:Ljava/lang/String;

    .line 307
    .line 308
    const-string v14, "Trouble instantiating + "

    .line 309
    .line 310
    invoke-static {v14, v9}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    new-array v14, v6, [Ljava/lang/Throwable;

    .line 315
    .line 316
    aput-object v0, v14, v5

    .line 317
    .line 318
    invoke-virtual {v10, v13, v9, v14}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 319
    .line 320
    .line 321
    const/4 v0, 0x0

    .line 322
    :goto_4
    if-nez v0, :cond_a

    .line 323
    .line 324
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 329
    .line 330
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    .line 331
    .line 332
    const-string v3, "Could not create Input Merger "

    .line 333
    .line 334
    invoke-static {v3, v2}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    new-array v3, v5, [Ljava/lang/Throwable;

    .line 339
    .line 340
    invoke-virtual {v0, v11, v2, v3}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->h()V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_7

    .line 347
    .line 348
    :cond_a
    new-instance v9, Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .line 352
    .line 353
    iget-object v10, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 354
    .line 355
    iget-object v10, v10, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 356
    .line 357
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    invoke-interface {v4, v2}, Landroidx/work/impl/model/WorkSpecDao;->r(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v9}, Landroidx/work/InputMerger;->a(Ljava/util/ArrayList;)Landroidx/work/Data;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    :goto_5
    new-instance v9, Landroidx/work/WorkerParameters;

    .line 372
    .line 373
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    iget-object v13, v1, Landroidx/work/impl/WorkerWrapper;->s:Ljava/util/List;

    .line 378
    .line 379
    iget-object v14, v1, Landroidx/work/impl/WorkerWrapper;->h:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 380
    .line 381
    iget-object v15, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 382
    .line 383
    iget v15, v15, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 384
    .line 385
    iget-object v6, v3, Landroidx/work/Configuration;->a:Ljava/util/concurrent/ExecutorService;

    .line 386
    .line 387
    iget-object v3, v3, Landroidx/work/Configuration;->c:Landroidx/work/WorkerFactory;

    .line 388
    .line 389
    new-instance v5, Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 390
    .line 391
    invoke-direct {v5, v8, v7}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 392
    .line 393
    .line 394
    move-object/from16 v18, v12

    .line 395
    .line 396
    new-instance v12, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 397
    .line 398
    move-object/from16 v19, v2

    .line 399
    .line 400
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->n:Landroidx/work/impl/Processor;

    .line 401
    .line 402
    invoke-direct {v12, v8, v2, v7}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 403
    .line 404
    .line 405
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 406
    .line 407
    .line 408
    iput-object v10, v9, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 409
    .line 410
    iput-object v0, v9, Landroidx/work/WorkerParameters;->b:Landroidx/work/Data;

    .line 411
    .line 412
    new-instance v0, Ljava/util/HashSet;

    .line 413
    .line 414
    invoke-direct {v0, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 415
    .line 416
    .line 417
    iput-object v0, v9, Landroidx/work/WorkerParameters;->c:Ljava/util/HashSet;

    .line 418
    .line 419
    iput-object v14, v9, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 420
    .line 421
    iput v15, v9, Landroidx/work/WorkerParameters;->e:I

    .line 422
    .line 423
    iput-object v6, v9, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/ExecutorService;

    .line 424
    .line 425
    iput-object v7, v9, Landroidx/work/WorkerParameters;->g:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 426
    .line 427
    iput-object v3, v9, Landroidx/work/WorkerParameters;->h:Landroidx/work/WorkerFactory;

    .line 428
    .line 429
    iput-object v5, v9, Landroidx/work/WorkerParameters;->i:Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 430
    .line 431
    iput-object v12, v9, Landroidx/work/WorkerParameters;->j:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 432
    .line 433
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/ListenableWorker;

    .line 434
    .line 435
    if-nez v0, :cond_b

    .line 436
    .line 437
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->c:Landroid/content/Context;

    .line 438
    .line 439
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 440
    .line 441
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v3, v0, v2, v9}, Landroidx/work/WorkerFactory;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    iput-object v0, v1, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/ListenableWorker;

    .line 448
    .line 449
    :cond_b
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/ListenableWorker;

    .line 450
    .line 451
    if-nez v0, :cond_c

    .line 452
    .line 453
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 458
    .line 459
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 460
    .line 461
    const-string v3, "Could not create Worker "

    .line 462
    .line 463
    invoke-static {v3, v2}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    const/4 v3, 0x0

    .line 468
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 469
    .line 470
    invoke-virtual {v0, v11, v2, v3}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->h()V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_7

    .line 477
    .line 478
    :cond_c
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isUsed()Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_d

    .line 483
    .line 484
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 489
    .line 490
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 491
    .line 492
    const-string v3, "Received an already-used Worker "

    .line 493
    .line 494
    const-string v4, "; WorkerFactory should return new instances"

    .line 495
    .line 496
    invoke-static {v3, v2, v4}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    const/4 v3, 0x0

    .line 501
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 502
    .line 503
    invoke-virtual {v0, v11, v2, v3}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->h()V

    .line 507
    .line 508
    .line 509
    goto :goto_7

    .line 510
    :cond_d
    const/4 v3, 0x0

    .line 511
    iget-object v0, v1, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/ListenableWorker;

    .line 512
    .line 513
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->c()V

    .line 517
    .line 518
    .line 519
    move-object/from16 v2, v19

    .line 520
    .line 521
    :try_start_7
    invoke-interface {v4, v2}, Landroidx/work/impl/model/WorkSpecDao;->o(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    move-object/from16 v5, v18

    .line 526
    .line 527
    if-ne v0, v5, :cond_e

    .line 528
    .line 529
    sget-object v0, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    .line 530
    .line 531
    filled-new-array {v2}, [Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-interface {v4, v0, v3}, Landroidx/work/impl/model/WorkSpecDao;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    invoke-interface {v4, v2}, Landroidx/work/impl/model/WorkSpecDao;->s(Ljava/lang/String;)I

    .line 539
    .line 540
    .line 541
    const/4 v5, 0x1

    .line 542
    goto :goto_6

    .line 543
    :catchall_1
    move-exception v0

    .line 544
    goto :goto_8

    .line 545
    :cond_e
    move v5, v3

    .line 546
    :goto_6
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->h()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 547
    .line 548
    .line 549
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 550
    .line 551
    .line 552
    if-eqz v5, :cond_10

    .line 553
    .line 554
    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->i()Z

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    if-eqz v0, :cond_f

    .line 559
    .line 560
    goto :goto_7

    .line 561
    :cond_f
    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    .line 562
    .line 563
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 564
    .line 565
    .line 566
    new-instance v2, Landroidx/work/impl/utils/WorkForegroundRunnable;

    .line 567
    .line 568
    iget-object v3, v1, Landroidx/work/impl/WorkerWrapper;->c:Landroid/content/Context;

    .line 569
    .line 570
    iget-object v4, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 571
    .line 572
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/ListenableWorker;

    .line 573
    .line 574
    move-object v6, v12

    .line 575
    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/utils/WorkForegroundRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ListenableWorker;Landroidx/work/impl/utils/WorkForegroundUpdater;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 576
    .line 577
    .line 578
    iget-object v3, v7, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->c:Ljava/util/concurrent/Executor;

    .line 579
    .line 580
    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 581
    .line 582
    .line 583
    new-instance v3, Landroidx/work/impl/WorkerWrapper$1;

    .line 584
    .line 585
    iget-object v2, v2, Landroidx/work/impl/utils/WorkForegroundRunnable;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 586
    .line 587
    invoke-direct {v3, v1, v2, v0}, Landroidx/work/impl/WorkerWrapper$1;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/utils/futures/SettableFuture;)V

    .line 588
    .line 589
    .line 590
    iget-object v4, v7, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->c:Ljava/util/concurrent/Executor;

    .line 591
    .line 592
    invoke-virtual {v2, v3, v4}, Landroidx/work/impl/utils/futures/AbstractFuture;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 593
    .line 594
    .line 595
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->t:Ljava/lang/String;

    .line 596
    .line 597
    new-instance v3, Landroidx/work/impl/WorkerWrapper$2;

    .line 598
    .line 599
    invoke-direct {v3, v1, v0, v2}, Landroidx/work/impl/WorkerWrapper$2;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/impl/utils/futures/SettableFuture;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    iget-object v2, v7, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutor;

    .line 603
    .line 604
    invoke-virtual {v0, v3, v2}, Landroidx/work/impl/utils/futures/AbstractFuture;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 605
    .line 606
    .line 607
    goto :goto_7

    .line 608
    :cond_10
    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->g()V

    .line 609
    .line 610
    .line 611
    :goto_7
    return-void

    .line 612
    :goto_8
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 613
    .line 614
    .line 615
    throw v0

    .line 616
    :goto_9
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->f()V

    .line 617
    .line 618
    .line 619
    throw v0
.end method
