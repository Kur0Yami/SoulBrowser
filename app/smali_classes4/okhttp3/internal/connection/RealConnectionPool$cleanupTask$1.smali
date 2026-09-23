.class public final Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;
.super Lokhttp3/internal/concurrent/Task;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "okhttp3/internal/connection/RealConnectionPool$cleanupTask$1",
        "Lokhttp3/internal/concurrent/Task;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;->e:Lokhttp3/internal/connection/RealConnectionPool;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p2, p1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;->e:Lokhttp3/internal/connection/RealConnectionPool;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-wide v4, v0, Lokhttp3/internal/connection/RealConnectionPool;->a:J

    .line 10
    .line 11
    sub-long v4, v2, v4

    .line 12
    .line 13
    const-wide/16 v6, 0x1

    .line 14
    .line 15
    add-long/2addr v4, v6

    .line 16
    iget-object v6, v0, Lokhttp3/internal/connection/RealConnectionPool;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const-string v7, "iterator(...)"

    .line 23
    .line 24
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-wide v8, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    move v11, v10

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x0

    .line 36
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v14

    .line 40
    if-eqz v14, :cond_3

    .line 41
    .line 42
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v14

    .line 46
    check-cast v14, Lokhttp3/internal/connection/RealConnection;

    .line 47
    .line 48
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    monitor-enter v14

    .line 52
    :try_start_0
    invoke-virtual {v0, v14, v2, v3}, Lokhttp3/internal/connection/RealConnectionPool;->a(Lokhttp3/internal/connection/RealConnection;J)I

    .line 53
    .line 54
    .line 55
    move-result v15

    .line 56
    if-lez v15, :cond_0

    .line 57
    .line 58
    add-int/lit8 v11, v11, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    move-wide/from16 v16, v8

    .line 62
    .line 63
    iget-wide v7, v14, Lokhttp3/internal/connection/RealConnection;->u:J

    .line 64
    .line 65
    cmp-long v9, v7, v4

    .line 66
    .line 67
    if-gez v9, :cond_1

    .line 68
    .line 69
    move-wide v4, v7

    .line 70
    move-object v12, v14

    .line 71
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 72
    .line 73
    cmp-long v9, v7, v16

    .line 74
    .line 75
    if-gez v9, :cond_2

    .line 76
    .line 77
    move-wide v8, v7

    .line 78
    move-object v13, v14

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move-wide/from16 v8, v16

    .line 81
    .line 82
    :goto_1
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    monitor-exit v14

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    monitor-exit v14

    .line 88
    throw v0

    .line 89
    :cond_3
    move-wide/from16 v16, v8

    .line 90
    .line 91
    const-wide/16 v6, -0x1

    .line 92
    .line 93
    if-eqz v12, :cond_4

    .line 94
    .line 95
    move-object v15, v12

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const/4 v4, 0x5

    .line 98
    if-le v10, v4, :cond_5

    .line 99
    .line 100
    move-object v15, v13

    .line 101
    move-wide/from16 v4, v16

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move-wide v4, v6

    .line 105
    const/4 v15, 0x0

    .line 106
    :goto_2
    if-eqz v15, :cond_9

    .line 107
    .line 108
    monitor-enter v15

    .line 109
    :try_start_1
    iget-object v2, v15, Lokhttp3/internal/connection/RealConnection;->t:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    const-wide/16 v6, 0x0

    .line 116
    .line 117
    if-nez v2, :cond_6

    .line 118
    .line 119
    monitor-exit v15

    .line 120
    return-wide v6

    .line 121
    :cond_6
    :try_start_2
    iget-wide v2, v15, Lokhttp3/internal/connection/RealConnection;->u:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    .line 123
    cmp-long v2, v2, v4

    .line 124
    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    monitor-exit v15

    .line 128
    return-wide v6

    .line 129
    :cond_7
    const/4 v2, 0x1

    .line 130
    :try_start_3
    iput-boolean v2, v15, Lokhttp3/internal/connection/RealConnection;->n:Z

    .line 131
    .line 132
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnectionPool;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 133
    .line 134
    invoke-virtual {v2, v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    .line 136
    .line 137
    monitor-exit v15

    .line 138
    iget-object v2, v15, Lokhttp3/internal/connection/RealConnection;->i:Ljava/net/Socket;

    .line 139
    .line 140
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 141
    .line 142
    .line 143
    const-string v2, "connection"

    .line 144
    .line 145
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnectionPool;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_8

    .line 155
    .line 156
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/concurrent/TaskQueue;

    .line 157
    .line 158
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskQueue;->a()V

    .line 159
    .line 160
    .line 161
    :cond_8
    return-wide v6

    .line 162
    :catchall_1
    move-exception v0

    .line 163
    monitor-exit v15

    .line 164
    throw v0

    .line 165
    :cond_9
    if-eqz v13, :cond_a

    .line 166
    .line 167
    iget-wide v4, v0, Lokhttp3/internal/connection/RealConnectionPool;->a:J

    .line 168
    .line 169
    add-long v8, v16, v4

    .line 170
    .line 171
    sub-long/2addr v8, v2

    .line 172
    return-wide v8

    .line 173
    :cond_a
    if-lez v11, :cond_b

    .line 174
    .line 175
    iget-wide v2, v0, Lokhttp3/internal/connection/RealConnectionPool;->a:J

    .line 176
    .line 177
    return-wide v2

    .line 178
    :cond_b
    return-wide v6
.end method
