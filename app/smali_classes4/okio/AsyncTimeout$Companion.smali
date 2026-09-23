.class final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0004R\u0014\u0010\u000c\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Lokio/AsyncTimeout$Companion;",
        "",
        "",
        "TIMEOUT_WRITE_SIZE",
        "I",
        "",
        "IDLE_TIMEOUT_MILLIS",
        "J",
        "IDLE_TIMEOUT_NANOS",
        "STATE_IDLE",
        "STATE_IN_QUEUE",
        "STATE_TIMED_OUT",
        "STATE_CANCELED",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lokio/AsyncTimeout;)V
    .locals 8

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->h:Lokio/PriorityQueue;

    .line 2
    .line 3
    sget-object v0, Lokio/AsyncTimeout;->i:Lokio/AsyncTimeout;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lokio/AsyncTimeout;

    .line 9
    .line 10
    invoke-direct {v0}, Lokio/AsyncTimeout;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lokio/AsyncTimeout;->i:Lokio/AsyncTimeout;

    .line 14
    .line 15
    new-instance v0, Lokio/AsyncTimeout$Watchdog;

    .line 16
    .line 17
    const-string v2, "Okio Watchdog"

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iget-wide v4, p0, Lokio/Timeout;->c:J

    .line 33
    .line 34
    iget-boolean v0, p0, Lokio/Timeout;->a:Z

    .line 35
    .line 36
    const-wide/16 v6, 0x0

    .line 37
    .line 38
    cmp-long v6, v4, v6

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lokio/Timeout;->c()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    sub-long/2addr v6, v2

    .line 49
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    add-long/2addr v4, v2

    .line 54
    iput-wide v4, p0, Lokio/AsyncTimeout;->g:J

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-eqz v6, :cond_2

    .line 58
    .line 59
    add-long/2addr v2, v4

    .line 60
    iput-wide v2, p0, Lokio/AsyncTimeout;->g:J

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {p0}, Lokio/Timeout;->c()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    iput-wide v2, p0, Lokio/AsyncTimeout;->g:J

    .line 70
    .line 71
    :goto_0
    sget-object v0, Lokio/AsyncTimeout;->h:Lokio/PriorityQueue;

    .line 72
    .line 73
    const-string v2, "node"

    .line 74
    .line 75
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v2, v0, Lokio/PriorityQueue;->a:I

    .line 79
    .line 80
    add-int/2addr v2, v1

    .line 81
    iput v2, v0, Lokio/PriorityQueue;->a:I

    .line 82
    .line 83
    iget-object v3, v0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 84
    .line 85
    array-length v4, v3

    .line 86
    if-ne v2, v4, :cond_3

    .line 87
    .line 88
    mul-int/lit8 v4, v2, 0x2

    .line 89
    .line 90
    new-array v4, v4, [Lokio/AsyncTimeout;

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    const/16 v6, 0xe

    .line 94
    .line 95
    invoke-static {v3, v4, v5, v6}, Lkotlin/collections/ArraysKt;->q([Ljava/lang/Object;[Ljava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    iput-object v4, v0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 99
    .line 100
    :cond_3
    invoke-virtual {v0, v2, p0}, Lokio/PriorityQueue;->a(ILokio/AsyncTimeout;)V

    .line 101
    .line 102
    .line 103
    iget p0, p0, Lokio/AsyncTimeout;->f:I

    .line 104
    .line 105
    if-ne p0, v1, :cond_4

    .line 106
    .line 107
    sget-object p0, Lokio/AsyncTimeout;->k:Ljava/util/concurrent/locks/Condition;

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void

    .line 113
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    .line 114
    .line 115
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 116
    .line 117
    .line 118
    throw p0
.end method

.method public static b()Lokio/AsyncTimeout;
    .locals 9

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->h:Lokio/PriorityQueue;

    .line 2
    .line 3
    iget-object v1, v0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    sget-object v1, Lokio/AsyncTimeout;->k:Ljava/util/concurrent/locks/Condition;

    .line 16
    .line 17
    sget-wide v6, Lokio/AsyncTimeout;->l:J

    .line 18
    .line 19
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-interface {v1, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lokio/PriorityQueue;->b:[Lokio/AsyncTimeout;

    .line 25
    .line 26
    aget-object v0, v0, v2

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    sub-long/2addr v0, v4

    .line 35
    sget-wide v4, Lokio/AsyncTimeout;->m:J

    .line 36
    .line 37
    cmp-long v0, v0, v4

    .line 38
    .line 39
    if-ltz v0, :cond_0

    .line 40
    .line 41
    sget-object v0, Lokio/AsyncTimeout;->i:Lokio/AsyncTimeout;

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    return-object v3

    .line 45
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    iget-wide v6, v1, Lokio/AsyncTimeout;->g:J

    .line 50
    .line 51
    sub-long/2addr v6, v4

    .line 52
    const-wide/16 v4, 0x0

    .line 53
    .line 54
    cmp-long v2, v6, v4

    .line 55
    .line 56
    if-lez v2, :cond_2

    .line 57
    .line 58
    sget-object v0, Lokio/AsyncTimeout;->k:Ljava/util/concurrent/locks/Condition;

    .line 59
    .line 60
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    .line 62
    invoke-interface {v0, v6, v7, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 63
    .line 64
    .line 65
    return-object v3

    .line 66
    :cond_2
    invoke-virtual {v0, v1}, Lokio/PriorityQueue;->b(Lokio/AsyncTimeout;)V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    iput v0, v1, Lokio/AsyncTimeout;->e:I

    .line 71
    .line 72
    return-object v1
.end method
