.class public final Lokhttp3/internal/connection/RealRoutePlanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/internal/connection/RealRoutePlanner;",
        "Lokhttp3/internal/connection/RoutePlanner;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRealRoutePlanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealRoutePlanner.kt\nokhttp3/internal/connection/RealRoutePlanner\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,348:1\n63#2:349\n63#2:350\n*S KotlinDebug\n*F\n+ 1 RealRoutePlanner.kt\nokhttp3/internal/connection/RealRoutePlanner\n*L\n100#1:349\n327#1:350\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/internal/concurrent/TaskRunner;

.field public final b:Lokhttp3/internal/connection/RealConnectionPool;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Lokhttp3/Address;

.field public final j:Lokhttp3/internal/connection/RouteDatabase;

.field public final k:Lokhttp3/internal/connection/RealCall;

.field public final l:Z

.field public m:Lokhttp3/internal/connection/RouteSelector$Selection;

.field public n:Lokhttp3/internal/connection/RouteSelector;

.field public o:Lokhttp3/Route;

.field public final p:Lkotlin/collections/ArrayDeque;


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZZLokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionPool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeDatabase"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 4
    iput p3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->c:I

    .line 5
    iput p4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->d:I

    .line 6
    iput p5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->e:I

    .line 7
    iput p6, p0, Lokhttp3/internal/connection/RealRoutePlanner;->f:I

    .line 8
    iput-boolean p7, p0, Lokhttp3/internal/connection/RealRoutePlanner;->g:Z

    .line 9
    iput-boolean p8, p0, Lokhttp3/internal/connection/RealRoutePlanner;->h:Z

    .line 10
    iput-object p9, p0, Lokhttp3/internal/connection/RealRoutePlanner;->i:Lokhttp3/Address;

    .line 11
    iput-object p10, p0, Lokhttp3/internal/connection/RealRoutePlanner;->j:Lokhttp3/internal/connection/RouteDatabase;

    .line 12
    iput-object p11, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 13
    iget-object p1, p12, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 14
    const-string p2, "GET"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Z

    .line 15
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lkotlin/collections/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-eqz p1, :cond_5

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget v0, p1, Lokhttp3/internal/connection/RealConnection;->p:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->n:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/Route;

    .line 31
    .line 32
    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 33
    .line 34
    iget-object v0, v0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 35
    .line 36
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->i:Lokhttp3/Address;

    .line 37
    .line 38
    iget-object v3, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 39
    .line 40
    invoke-static {v0, v3}, Lokhttp3/internal/_UtilJvmKt;->a(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/Route;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :goto_0
    monitor-exit p1

    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    iput-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 53
    .line 54
    return v1

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    monitor-exit p1

    .line 57
    throw v0

    .line 58
    :cond_5
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->m:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    iget v0, p1, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 63
    .line 64
    iget-object p1, p1, Lokhttp3/internal/connection/RouteSelector$Selection;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-ge v0, p1, :cond_6

    .line 71
    .line 72
    return v1

    .line 73
    :cond_6
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->n:Lokhttp3/internal/connection/RouteSelector;

    .line 74
    .line 75
    if-nez p1, :cond_7

    .line 76
    .line 77
    :goto_1
    return v1

    .line 78
    :cond_7
    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public final b()Lokhttp3/Address;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->i:Lokhttp3/Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Lokhttp3/HttpUrl;)Z
    .locals 3

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->i:Lokhttp3/Address;

    .line 7
    .line 8
    iget-object v0, v0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 9
    .line 10
    iget v1, p1, Lokhttp3/HttpUrl;->e:I

    .line 11
    .line 12
    iget v2, v0, Lokhttp3/HttpUrl;->e:I

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final d()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 7

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->m:Lokhttp3/internal/connection/RealConnection;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :cond_0
    :goto_0
    move-object v2, v1

    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_1
    iget-boolean v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Z

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RealConnection;->h(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    monitor-enter v0

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    :try_start_0
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->n:Z

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    xor-int/2addr v2, v3

    .line 24
    iput-boolean v3, v0, Lokhttp3/internal/connection/RealConnection;->n:Z

    .line 25
    .line 26
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 27
    .line 28
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->h()Ljava/net/Socket;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_2

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_2
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->n:Z

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    iget-object v2, v0, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/Route;

    .line 42
    .line 43
    iget-object v2, v2, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 44
    .line 45
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->c(Lokhttp3/HttpUrl;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move v2, v3

    .line 55
    move-object v3, v1

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    :goto_1
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 58
    .line 59
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->h()Ljava/net/Socket;

    .line 60
    .line 61
    .line 62
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    move v6, v3

    .line 64
    move-object v3, v2

    .line 65
    move v2, v6

    .line 66
    :goto_2
    monitor-exit v0

    .line 67
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 68
    .line 69
    iget-object v4, v4, Lokhttp3/internal/connection/RealCall;->m:Lokhttp3/internal/connection/RealConnection;

    .line 70
    .line 71
    if-eqz v4, :cond_6

    .line 72
    .line 73
    if-nez v3, :cond_5

    .line 74
    .line 75
    new-instance v2, Lokhttp3/internal/connection/ReusePlan;

    .line 76
    .line 77
    invoke-direct {v2, v0}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v1, "Check failed."

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_6
    if-eqz v3, :cond_7

    .line 90
    .line 91
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 92
    .line 93
    .line 94
    :cond_7
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 95
    .line 96
    iget-object v5, v4, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 97
    .line 98
    invoke-virtual {v5, v4, v0}, Lokhttp3/EventListener;->e(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 102
    .line 103
    const-string v5, "connection"

    .line 104
    .line 105
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v5, "call"

    .line 109
    .line 110
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    if-eqz v3, :cond_8

    .line 114
    .line 115
    const-string v2, "connection"

    .line 116
    .line 117
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    if-eqz v2, :cond_0

    .line 122
    .line 123
    const-string v2, "connection"

    .line 124
    .line 125
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :goto_3
    if-eqz v2, :cond_9

    .line 130
    .line 131
    return-object v2

    .line 132
    :cond_9
    invoke-virtual {p0, v1, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->g(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_a

    .line 137
    .line 138
    return-object v0

    .line 139
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lkotlin/collections/ArrayDeque;

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_b

    .line 146
    .line 147
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->p:Lkotlin/collections/ArrayDeque;

    .line 148
    .line 149
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_b
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->e()Lokhttp3/internal/connection/ConnectPlan;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v1, v0, Lokhttp3/internal/connection/ConnectPlan;->o:Ljava/util/List;

    .line 161
    .line 162
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->g(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_c

    .line 167
    .line 168
    return-object v1

    .line 169
    :cond_c
    return-object v0

    .line 170
    :goto_4
    monitor-exit v0

    .line 171
    throw v1
.end method

.method public final e()Lokhttp3/internal/connection/ConnectPlan;
    .locals 11

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->f(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->m:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v2, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 18
    .line 19
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_2

    .line 26
    .line 27
    iget v2, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 28
    .line 29
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v2, v4, :cond_1

    .line 36
    .line 37
    iget v2, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 38
    .line 39
    add-int/lit8 v4, v2, 0x1

    .line 40
    .line 41
    iput v4, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lokhttp3/Route;

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->f(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->n:Lokhttp3/internal/connection/RouteSelector;

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    .line 65
    .line 66
    iget-object v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->i:Lokhttp3/Address;

    .line 67
    .line 68
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->j:Lokhttp3/internal/connection/RouteDatabase;

    .line 69
    .line 70
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 71
    .line 72
    iget-boolean v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->h:Z

    .line 73
    .line 74
    invoke-direct {v0, v1, v2, v3, v4}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Z)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->n:Lokhttp3/internal/connection/RouteSelector;

    .line 78
    .line 79
    :cond_3
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1f

    .line 84
    .line 85
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->a()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1e

    .line 90
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget v2, v0, Lokhttp3/internal/connection/RouteSelector;->f:I

    .line 97
    .line 98
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector;->e:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-ge v2, v3, :cond_1a

    .line 105
    .line 106
    iget-object v2, v0, Lokhttp3/internal/connection/RouteSelector;->a:Lokhttp3/Address;

    .line 107
    .line 108
    const-string v3, "No route to "

    .line 109
    .line 110
    iget v4, v0, Lokhttp3/internal/connection/RouteSelector;->f:I

    .line 111
    .line 112
    iget-object v5, v0, Lokhttp3/internal/connection/RouteSelector;->e:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-ge v4, v5, :cond_19

    .line 119
    .line 120
    iget-object v4, v0, Lokhttp3/internal/connection/RouteSelector;->e:Ljava/util/List;

    .line 121
    .line 122
    iget v5, v0, Lokhttp3/internal/connection/RouteSelector;->f:I

    .line 123
    .line 124
    add-int/lit8 v6, v5, 0x1

    .line 125
    .line 126
    iput v6, v0, Lokhttp3/internal/connection/RouteSelector;->f:I

    .line 127
    .line 128
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Ljava/net/Proxy;

    .line 133
    .line 134
    iget-object v5, v0, Lokhttp3/internal/connection/RouteSelector;->c:Lokhttp3/internal/connection/RealCall;

    .line 135
    .line 136
    new-instance v6, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v6, v0, Lokhttp3/internal/connection/RouteSelector;->g:Ljava/util/List;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 148
    .line 149
    if-eq v7, v8, :cond_8

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 156
    .line 157
    if-ne v7, v8, :cond_5

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    instance-of v8, v7, Ljava/net/InetSocketAddress;

    .line 165
    .line 166
    if-eqz v8, :cond_7

    .line 167
    .line 168
    check-cast v7, Ljava/net/InetSocketAddress;

    .line 169
    .line 170
    const-string v8, "<this>"

    .line 171
    .line 172
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    if-nez v8, :cond_6

    .line 180
    .line 181
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    const-string v9, "getHostName(...)"

    .line 186
    .line 187
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_6
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    const-string v9, "getHostAddress(...)"

    .line 196
    .line 197
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :goto_0
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    goto :goto_2

    .line 205
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v1, "Proxy.address() is not an InetSocketAddress: "

    .line 208
    .line 209
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v1

    .line 233
    :cond_8
    :goto_1
    iget-object v7, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 234
    .line 235
    iget-object v8, v7, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 236
    .line 237
    iget v7, v7, Lokhttp3/HttpUrl;->e:I

    .line 238
    .line 239
    :goto_2
    const/4 v9, 0x1

    .line 240
    if-gt v9, v7, :cond_18

    .line 241
    .line 242
    const/high16 v9, 0x10000

    .line 243
    .line 244
    if-ge v7, v9, :cond_18

    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 251
    .line 252
    if-ne v3, v9, :cond_9

    .line 253
    .line 254
    invoke-static {v8, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto/16 :goto_9

    .line 262
    .line 263
    :cond_9
    sget-object v3, Lokhttp3/internal/_HostnamesCommonKt;->a:Lkotlin/text/Regex;

    .line 264
    .line 265
    const-string v3, "<this>"

    .line 266
    .line 267
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    sget-object v3, Lokhttp3/internal/_HostnamesCommonKt;->a:Lkotlin/text/Regex;

    .line 271
    .line 272
    invoke-virtual {v3, v8}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_a

    .line 277
    .line 278
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    goto :goto_3

    .line 287
    :cond_a
    iget-object v3, v5, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    const-string v3, "call"

    .line 293
    .line 294
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string v3, "domainName"

    .line 298
    .line 299
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-object v3, v2, Lokhttp3/Address;->a:Lokhttp3/Dns;

    .line 303
    .line 304
    invoke-interface {v3, v8}, Lokhttp3/Dns;->a(Ljava/lang/String;)Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    if-nez v9, :cond_17

    .line 313
    .line 314
    iget-object v2, v5, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    const-string v2, "call"

    .line 320
    .line 321
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const-string v2, "domainName"

    .line 325
    .line 326
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string v2, "inetAddressList"

    .line 330
    .line 331
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    move-object v2, v3

    .line 335
    :goto_3
    iget-boolean v3, v0, Lokhttp3/internal/connection/RouteSelector;->d:Z

    .line 336
    .line 337
    if-eqz v3, :cond_13

    .line 338
    .line 339
    const-string v3, "addresses"

    .line 340
    .line 341
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    const/4 v5, 0x2

    .line 349
    if-ge v3, v5, :cond_b

    .line 350
    .line 351
    goto/16 :goto_7

    .line 352
    .line 353
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .line 357
    .line 358
    new-instance v5, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    if-eqz v9, :cond_d

    .line 372
    .line 373
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    move-object v10, v9

    .line 378
    check-cast v10, Ljava/net/InetAddress;

    .line 379
    .line 380
    instance-of v10, v10, Ljava/net/Inet6Address;

    .line 381
    .line 382
    if-eqz v10, :cond_c

    .line 383
    .line 384
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_c
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_d
    new-instance v8, Lkotlin/Pair;

    .line 393
    .line 394
    invoke-direct {v8, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    check-cast v3, Ljava/util/List;

    .line 402
    .line 403
    invoke-virtual {v8}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    check-cast v5, Ljava/util/List;

    .line 408
    .line 409
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 410
    .line 411
    .line 412
    move-result v8

    .line 413
    if-nez v8, :cond_13

    .line 414
    .line 415
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v8

    .line 419
    if-eqz v8, :cond_e

    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_e
    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 423
    .line 424
    const-string v2, "a"

    .line 425
    .line 426
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    const-string v2, "b"

    .line 430
    .line 431
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 443
    .line 444
    .line 445
    move-result-object v8

    .line 446
    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-nez v2, :cond_11

    .line 451
    .line 452
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-eqz v2, :cond_10

    .line 457
    .line 458
    goto :goto_6

    .line 459
    :cond_10
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    goto :goto_7

    .line 464
    :cond_11
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    if-eqz v2, :cond_12

    .line 469
    .line 470
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-eqz v2, :cond_f

    .line 482
    .line 483
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_13
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    .line 497
    .line 498
    move-result v3

    .line 499
    if-eqz v3, :cond_14

    .line 500
    .line 501
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    check-cast v3, Ljava/net/InetAddress;

    .line 506
    .line 507
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 508
    .line 509
    invoke-direct {v5, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_14
    :goto_9
    iget-object v2, v0, Lokhttp3/internal/connection/RouteSelector;->g:Ljava/util/List;

    .line 517
    .line 518
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-eqz v3, :cond_16

    .line 527
    .line 528
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    check-cast v3, Ljava/net/InetSocketAddress;

    .line 533
    .line 534
    new-instance v5, Lokhttp3/Route;

    .line 535
    .line 536
    iget-object v6, v0, Lokhttp3/internal/connection/RouteSelector;->a:Lokhttp3/Address;

    .line 537
    .line 538
    invoke-direct {v5, v6, v4, v3}, Lokhttp3/Route;-><init>(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 539
    .line 540
    .line 541
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector;->b:Lokhttp3/internal/connection/RouteDatabase;

    .line 542
    .line 543
    monitor-enter v3

    .line 544
    :try_start_0
    const-string v6, "route"

    .line 545
    .line 546
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    iget-object v6, v3, Lokhttp3/internal/connection/RouteDatabase;->a:Ljava/util/LinkedHashSet;

    .line 550
    .line 551
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    monitor-exit v3

    .line 556
    if-eqz v6, :cond_15

    .line 557
    .line 558
    iget-object v3, v0, Lokhttp3/internal/connection/RouteSelector;->h:Ljava/util/ArrayList;

    .line 559
    .line 560
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    goto :goto_a

    .line 564
    :cond_15
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    goto :goto_a

    .line 568
    :catchall_0
    move-exception v0

    .line 569
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    throw v0

    .line 571
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-nez v2, :cond_4

    .line 576
    .line 577
    goto :goto_b

    .line 578
    :cond_17
    new-instance v0, Ljava/net/UnknownHostException;

    .line 579
    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .line 584
    .line 585
    iget-object v2, v2, Lokhttp3/Address;->a:Lokhttp3/Dns;

    .line 586
    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v2, " returned no addresses for "

    .line 591
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    throw v0

    .line 606
    :cond_18
    new-instance v0, Ljava/net/SocketException;

    .line 607
    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const/16 v2, 0x3a

    .line 617
    .line 618
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    const-string v2, "; port is out of range"

    .line 625
    .line 626
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    throw v0

    .line 637
    :cond_19
    new-instance v1, Ljava/net/SocketException;

    .line 638
    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 645
    .line 646
    iget-object v2, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 647
    .line 648
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    const-string v2, "; exhausted proxy configurations: "

    .line 652
    .line 653
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    iget-object v0, v0, Lokhttp3/internal/connection/RouteSelector;->e:Ljava/util/List;

    .line 657
    .line 658
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    throw v1

    .line 669
    :cond_1a
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    if-eqz v2, :cond_1b

    .line 674
    .line 675
    iget-object v2, v0, Lokhttp3/internal/connection/RouteSelector;->h:Ljava/util/ArrayList;

    .line 676
    .line 677
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 678
    .line 679
    .line 680
    iget-object v0, v0, Lokhttp3/internal/connection/RouteSelector;->h:Ljava/util/ArrayList;

    .line 681
    .line 682
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 683
    .line 684
    .line 685
    :cond_1b
    new-instance v0, Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 686
    .line 687
    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteSelector$Selection;-><init>(Ljava/util/ArrayList;)V

    .line 688
    .line 689
    .line 690
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->m:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 691
    .line 692
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 693
    .line 694
    iget-boolean v2, v2, Lokhttp3/internal/connection/RealCall;->u:Z

    .line 695
    .line 696
    if-nez v2, :cond_1d

    .line 697
    .line 698
    iget v2, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 699
    .line 700
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    if-ge v2, v3, :cond_1c

    .line 705
    .line 706
    iget v2, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 707
    .line 708
    add-int/lit8 v3, v2, 0x1

    .line 709
    .line 710
    iput v3, v0, Lokhttp3/internal/connection/RouteSelector$Selection;->b:I

    .line 711
    .line 712
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    check-cast v0, Lokhttp3/Route;

    .line 717
    .line 718
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->f(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    return-object v0

    .line 723
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 724
    .line 725
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 726
    .line 727
    .line 728
    throw v0

    .line 729
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    .line 730
    .line 731
    const-string v1, "Canceled"

    .line 732
    .line 733
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    throw v0

    .line 737
    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 738
    .line 739
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 740
    .line 741
    .line 742
    throw v0

    .line 743
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    .line 744
    .line 745
    const-string v1, "exhausted all routes"

    .line 746
    .line 747
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    throw v0
.end method

.method public final f(Lokhttp3/Route;Ljava/util/ArrayList;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 16

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    const-string v0, "route"

    .line 6
    .line 7
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v10, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 11
    .line 12
    iget-object v1, v0, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iget-object v0, v0, Lokhttp3/Address;->j:Ljava/util/List;

    .line 17
    .line 18
    sget-object v1, Lokhttp3/ConnectionSpec;->h:Lokhttp3/ConnectionSpec;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v10, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 27
    .line 28
    iget-object v0, v0, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 29
    .line 30
    iget-object v0, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 33
    .line 34
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->i(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/net/UnknownServiceException;

    .line 44
    .line 45
    const-string v2, "CLEARTEXT communication to "

    .line 46
    .line 47
    const-string v3, " not permitted by network security policy"

    .line 48
    .line 49
    invoke-static {v2, v0, v3}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {v1, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 58
    .line 59
    const-string v1, "CLEARTEXT communication not enabled for client"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    iget-object v0, v0, Lokhttp3/Address;->i:Ljava/util/List;

    .line 66
    .line 67
    sget-object v1, Lokhttp3/Protocol;->k:Lokhttp3/Protocol;

    .line 68
    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    :goto_0
    iget-object v0, v10, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-eq v0, v1, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object v0, v10, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 88
    .line 89
    iget-object v1, v0, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 90
    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    iget-object v0, v0, Lokhttp3/Address;->i:Ljava/util/List;

    .line 94
    .line 95
    sget-object v1, Lokhttp3/Protocol;->k:Lokhttp3/Protocol;

    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    :goto_1
    move-object v13, v2

    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_5
    :goto_2
    new-instance v0, Lokhttp3/Request$Builder;

    .line 108
    .line 109
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v1, v10, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 113
    .line 114
    iget-object v1, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 115
    .line 116
    const-string v3, "url"

    .line 117
    .line 118
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 122
    .line 123
    const-string v1, "CONNECT"

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v10, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 129
    .line 130
    iget-object v2, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    invoke-static {v2, v3}, Lokhttp3/internal/_UtilJvmKt;->g(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v3, "Host"

    .line 138
    .line 139
    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v2, "Proxy-Connection"

    .line 143
    .line 144
    const-string v3, "Keep-Alive"

    .line 145
    .line 146
    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v2, "User-Agent"

    .line 150
    .line 151
    const-string v3, "okhttp/5.3.2"

    .line 152
    .line 153
    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v2, Lokhttp3/Request;

    .line 157
    .line 158
    invoke-direct {v2, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lokhttp3/Response$Builder;

    .line 162
    .line 163
    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v3, "request"

    .line 167
    .line 168
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iput-object v2, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 172
    .line 173
    sget-object v3, Lokhttp3/Protocol;->h:Lokhttp3/Protocol;

    .line 174
    .line 175
    const-string v4, "protocol"

    .line 176
    .line 177
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iput-object v3, v0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 181
    .line 182
    const/16 v3, 0x197

    .line 183
    .line 184
    iput v3, v0, Lokhttp3/Response$Builder;->c:I

    .line 185
    .line 186
    const-string v3, "message"

    .line 187
    .line 188
    const-string v4, "Preemptive Authenticate"

    .line 189
    .line 190
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iput-object v4, v0, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 194
    .line 195
    const-wide/16 v3, -0x1

    .line 196
    .line 197
    iput-wide v3, v0, Lokhttp3/Response$Builder;->l:J

    .line 198
    .line 199
    iput-wide v3, v0, Lokhttp3/Response$Builder;->m:J

    .line 200
    .line 201
    const-string v3, "name"

    .line 202
    .line 203
    const-string v4, "Proxy-Authenticate"

    .line 204
    .line 205
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v3, "value"

    .line 209
    .line 210
    const-string v5, "OkHttp-Preemptive"

    .line 211
    .line 212
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v3, v0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 216
    .line 217
    invoke-virtual {v3, v4, v5}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-object v1, v1, Lokhttp3/Address;->f:Lokhttp3/Authenticator;

    .line 225
    .line 226
    invoke-interface {v1, v10, v0}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-nez v0, :cond_6

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_6
    move-object v2, v0

    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :goto_3
    new-instance v0, Lokhttp3/internal/connection/ConnectPlan;

    .line 238
    .line 239
    iget-object v1, v9, Lokhttp3/internal/connection/RealRoutePlanner;->a:Lokhttp3/internal/concurrent/TaskRunner;

    .line 240
    .line 241
    iget-object v2, v9, Lokhttp3/internal/connection/RealRoutePlanner;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 242
    .line 243
    iget v3, v9, Lokhttp3/internal/connection/RealRoutePlanner;->c:I

    .line 244
    .line 245
    iget v4, v9, Lokhttp3/internal/connection/RealRoutePlanner;->d:I

    .line 246
    .line 247
    iget v5, v9, Lokhttp3/internal/connection/RealRoutePlanner;->e:I

    .line 248
    .line 249
    iget v6, v9, Lokhttp3/internal/connection/RealRoutePlanner;->f:I

    .line 250
    .line 251
    iget-boolean v7, v9, Lokhttp3/internal/connection/RealRoutePlanner;->g:Z

    .line 252
    .line 253
    iget-object v8, v9, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 254
    .line 255
    const/4 v14, -0x1

    .line 256
    const/4 v15, 0x0

    .line 257
    const/4 v12, 0x0

    .line 258
    move-object/from16 v11, p2

    .line 259
    .line 260
    invoke-direct/range {v0 .. v15}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V

    .line 261
    .line 262
    .line 263
    return-object v0

    .line 264
    :cond_7
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 265
    .line 266
    const-string v1, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 267
    .line 268
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0
.end method

.method public final g(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;
    .locals 10

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->b:Lokhttp3/internal/connection/RealConnectionPool;

    .line 2
    .line 3
    iget-boolean v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->l:Z

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->i:Lokhttp3/Address;

    .line 6
    .line 7
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lokhttp3/internal/connection/ConnectPlan;->isReady()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    move v6, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v6, v4

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v7, "address"

    .line 26
    .line 27
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v7, "call"

    .line 31
    .line 32
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v7, "iterator(...)"

    .line 42
    .line 43
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const/4 v8, 0x0

    .line 51
    if-eqz v7, :cond_7

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Lokhttp3/internal/connection/RealConnection;

    .line 58
    .line 59
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    monitor-enter v7

    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    :try_start_0
    iget-object v9, v7, Lokhttp3/internal/connection/RealConnection;->m:Lokhttp3/internal/http2/Http2Connection;

    .line 66
    .line 67
    if-eqz v9, :cond_2

    .line 68
    .line 69
    move v9, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move v9, v4

    .line 72
    :goto_2
    if-nez v9, :cond_3

    .line 73
    .line 74
    :goto_3
    move v9, v4

    .line 75
    goto :goto_4

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_5

    .line 78
    :cond_3
    invoke-virtual {v7, v2, p2}, Lokhttp3/internal/connection/RealConnection;->g(Lokhttp3/Address;Ljava/util/List;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-nez v9, :cond_4

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    invoke-virtual {v3, v7}, Lokhttp3/internal/connection/RealCall;->a(Lokhttp3/internal/connection/RealConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    move v9, v5

    .line 89
    :goto_4
    monitor-exit v7

    .line 90
    if-eqz v9, :cond_1

    .line 91
    .line 92
    invoke-virtual {v7, v1}, Lokhttp3/internal/connection/RealConnection;->h(Z)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_5

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_5
    monitor-enter v7

    .line 100
    :try_start_1
    iget-boolean v8, v7, Lokhttp3/internal/connection/RealConnection;->n:Z

    .line 101
    .line 102
    iput-boolean v5, v7, Lokhttp3/internal/connection/RealConnection;->n:Z

    .line 103
    .line 104
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->h()Ljava/net/Socket;

    .line 105
    .line 106
    .line 107
    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    monitor-exit v7

    .line 109
    if-eqz v9, :cond_6

    .line 110
    .line 111
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 112
    .line 113
    .line 114
    const-string v8, "connection"

    .line 115
    .line 116
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    if-nez v8, :cond_1

    .line 121
    .line 122
    const-string v8, "connection"

    .line 123
    .line 124
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_1
    move-exception p1

    .line 129
    monitor-exit v7

    .line 130
    throw p1

    .line 131
    :goto_5
    monitor-exit v7

    .line 132
    throw p1

    .line 133
    :cond_7
    move-object v7, v8

    .line 134
    :goto_6
    if-nez v7, :cond_8

    .line 135
    .line 136
    return-object v8

    .line 137
    :cond_8
    if-eqz p1, :cond_9

    .line 138
    .line 139
    iget-object p2, p1, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 140
    .line 141
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->o:Lokhttp3/Route;

    .line 142
    .line 143
    iget-object p1, p1, Lokhttp3/internal/connection/ConnectPlan;->v:Ljava/net/Socket;

    .line 144
    .line 145
    if-eqz p1, :cond_9

    .line 146
    .line 147
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 148
    .line 149
    .line 150
    :cond_9
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 151
    .line 152
    iget-object p2, p1, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 153
    .line 154
    invoke-virtual {p2, p1, v7}, Lokhttp3/EventListener;->d(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->k:Lokhttp3/internal/connection/RealCall;

    .line 158
    .line 159
    const-string p2, "connection"

    .line 160
    .line 161
    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string p2, "call"

    .line 165
    .line 166
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance p1, Lokhttp3/internal/connection/ReusePlan;

    .line 170
    .line 171
    invoke-direct {p1, v7}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 172
    .line 173
    .line 174
    return-object p1
.end method
