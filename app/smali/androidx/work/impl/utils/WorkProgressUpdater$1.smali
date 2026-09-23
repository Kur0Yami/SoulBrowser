.class Landroidx/work/impl/utils/WorkProgressUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/UUID;

.field public final synthetic f:Landroidx/work/Data;

.field public final synthetic g:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final synthetic h:Landroidx/work/impl/utils/WorkProgressUpdater;


# direct methods
.method public constructor <init>(Landroidx/work/impl/utils/WorkProgressUpdater;Ljava/util/UUID;Landroidx/work/Data;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->h:Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->c:Ljava/util/UUID;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->f:Landroidx/work/Data;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->g:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->g:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 2
    .line 3
    const-string v1, "Ignoring setProgressAsync(...). WorkSpec ("

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->c:Ljava/util/UUID;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    sget-object v5, Landroidx/work/impl/utils/WorkProgressUpdater;->c:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v7, "Updating progress for "

    .line 20
    .line 21
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " ("

    .line 28
    .line 29
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->f:Landroidx/work/Data;

    .line 33
    .line 34
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v7, ")"

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const/4 v7, 0x0

    .line 47
    new-array v8, v7, [Ljava/lang/Throwable;

    .line 48
    .line 49
    invoke-virtual {v4, v5, v6, v8}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Landroidx/work/impl/utils/WorkProgressUpdater$1;->h:Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 53
    .line 54
    iget-object v4, v4, Landroidx/work/impl/utils/WorkProgressUpdater;->a:Landroidx/work/impl/WorkDatabase;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->c()V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-interface {v6, v3}, Landroidx/work/impl/model/WorkSpecDao;->p(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    iget-object v6, v6, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 70
    .line 71
    sget-object v8, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    .line 72
    .line 73
    if-ne v6, v8, :cond_0

    .line 74
    .line 75
    new-instance v1, Landroidx/work/impl/model/WorkProgress;

    .line 76
    .line 77
    invoke-direct {v1, v3, v2}, Landroidx/work/impl/model/WorkProgress;-><init>(Ljava/lang/String;Landroidx/work/Data;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->m()Landroidx/work/impl/model/WorkProgressDao;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v2, v1}, Landroidx/work/impl/model/WorkProgressDao;->b(Landroidx/work/impl/model/WorkProgress;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, ") is not in a RUNNING state."

    .line 103
    .line 104
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-array v3, v7, [Ljava/lang/Throwable;

    .line 112
    .line 113
    invoke-virtual {v2, v5, v1, v3}, Landroidx/work/Logger;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->f()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_1
    :try_start_1
    const-string v1, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 128
    .line 129
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :goto_1
    :try_start_2
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    sget-object v3, Landroidx/work/impl/utils/WorkProgressUpdater;->c:Ljava/lang/String;

    .line 140
    .line 141
    const-string v5, "Error updating Worker progress"

    .line 142
    .line 143
    const/4 v6, 0x1

    .line 144
    new-array v6, v6, [Ljava/lang/Throwable;

    .line 145
    .line 146
    aput-object v1, v6, v7

    .line 147
    .line 148
    invoke-virtual {v2, v3, v5, v6}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->i(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->f()V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catchall_1
    move-exception v0

    .line 159
    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->f()V

    .line 160
    .line 161
    .line 162
    throw v0
.end method
