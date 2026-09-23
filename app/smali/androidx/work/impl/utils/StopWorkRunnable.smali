.class public Landroidx/work/impl/utils/StopWorkRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final c:Landroidx/work/impl/WorkManagerImpl;

.field public final f:Ljava/lang/String;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "StopWorkRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/StopWorkRunnable;->h:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->c:Landroidx/work/impl/WorkManagerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/utils/StopWorkRunnable;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/work/impl/utils/StopWorkRunnable;->g:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "StopWorkRunnable for "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->c:Landroidx/work/impl/WorkManagerImpl;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/work/impl/WorkManagerImpl;->f:Landroidx/work/impl/Processor;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->c()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v4, p0, Landroidx/work/impl/utils/StopWorkRunnable;->f:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, v1, Landroidx/work/impl/Processor;->o:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    iget-object v1, v1, Landroidx/work/impl/Processor;->j:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :try_start_2
    iget-boolean v4, p0, Landroidx/work/impl/utils/StopWorkRunnable;->g:Z

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->c:Landroidx/work/impl/WorkManagerImpl;

    .line 33
    .line 34
    iget-object v1, v1, Landroidx/work/impl/WorkManagerImpl;->f:Landroidx/work/impl/Processor;

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/work/impl/utils/StopWorkRunnable;->f:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroidx/work/impl/Processor;->j(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->f:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->o(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v4, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    .line 54
    .line 55
    if-ne v1, v4, :cond_1

    .line 56
    .line 57
    sget-object v1, Landroidx/work/WorkInfo$State;->c:Landroidx/work/WorkInfo$State;

    .line 58
    .line 59
    iget-object v4, p0, Landroidx/work/impl/utils/StopWorkRunnable;->f:Ljava/lang/String;

    .line 60
    .line 61
    filled-new-array {v4}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v3, v1, v4}, Landroidx/work/impl/model/WorkSpecDao;->b(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v1, p0, Landroidx/work/impl/utils/StopWorkRunnable;->c:Landroidx/work/impl/WorkManagerImpl;

    .line 69
    .line 70
    iget-object v1, v1, Landroidx/work/impl/WorkManagerImpl;->f:Landroidx/work/impl/Processor;

    .line 71
    .line 72
    iget-object v3, p0, Landroidx/work/impl/utils/StopWorkRunnable;->f:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Landroidx/work/impl/Processor;->k(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    sget-object v4, Landroidx/work/impl/utils/StopWorkRunnable;->h:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v5, p0, Landroidx/work/impl/utils/StopWorkRunnable;->f:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, "; Processor.stopWork = "

    .line 95
    .line 96
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/4 v1, 0x0

    .line 107
    new-array v1, v1, [Ljava/lang/Throwable;

    .line 108
    .line 109
    invoke-virtual {v3, v4, v0, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    :goto_1
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->f()V

    .line 123
    .line 124
    .line 125
    throw v0
.end method
