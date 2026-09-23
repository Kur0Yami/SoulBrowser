.class public final Lokhttp3/internal/connection/ConnectPlan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner$Plan;
.implements Lokhttp3/internal/http/ExchangeCodec$Carrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/ConnectPlan$Companion;,
        Lokhttp3/internal/connection/ConnectPlan$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lokhttp3/internal/connection/ConnectPlan;",
        "Lokhttp3/internal/connection/RoutePlanner$Plan;",
        "Lokhttp3/internal/http/ExchangeCodec$Carrier;",
        "Companion",
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
        "SMAP\nConnectPlan.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectPlan.kt\nokhttp3/internal/connection/ConnectPlan\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,564:1\n1#2:565\n63#3:566\n1563#4:567\n1634#4,3:568\n*S KotlinDebug\n*F\n+ 1 ConnectPlan.kt\nokhttp3/internal/connection/ConnectPlan\n*L\n508#1:566\n393#1:567\n393#1:568,3\n*E\n"
    }
.end annotation


# instance fields
.field public final c:Lokhttp3/internal/concurrent/TaskRunner;

.field public final f:Lokhttp3/internal/connection/RealConnectionPool;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Lokhttp3/internal/connection/RealCall;

.field public final m:Lokhttp3/internal/connection/RealRoutePlanner;

.field public final n:Lokhttp3/Route;

.field public final o:Ljava/util/List;

.field public final p:I

.field public final q:Lokhttp3/Request;

.field public final r:I

.field public final s:Z

.field public volatile t:Z

.field public u:Ljava/net/Socket;

.field public v:Ljava/net/Socket;

.field public w:Lokhttp3/Handshake;

.field public x:Lokhttp3/Protocol;

.field public y:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

.field public z:Lokhttp3/internal/connection/RealConnection;


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V
    .locals 1

    .line 1
    const-string v0, "taskRunner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "connectionPool"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "call"

    .line 12
    .line 13
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "routePlanner"

    .line 17
    .line 18
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "route"

    .line 22
    .line 23
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/concurrent/TaskRunner;

    .line 30
    .line 31
    iput-object p2, p0, Lokhttp3/internal/connection/ConnectPlan;->f:Lokhttp3/internal/connection/RealConnectionPool;

    .line 32
    .line 33
    iput p3, p0, Lokhttp3/internal/connection/ConnectPlan;->g:I

    .line 34
    .line 35
    iput p4, p0, Lokhttp3/internal/connection/ConnectPlan;->h:I

    .line 36
    .line 37
    iput p5, p0, Lokhttp3/internal/connection/ConnectPlan;->i:I

    .line 38
    .line 39
    iput p6, p0, Lokhttp3/internal/connection/ConnectPlan;->j:I

    .line 40
    .line 41
    iput-boolean p7, p0, Lokhttp3/internal/connection/ConnectPlan;->k:Z

    .line 42
    .line 43
    iput-object p8, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 44
    .line 45
    iput-object p9, p0, Lokhttp3/internal/connection/ConnectPlan;->m:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 46
    .line 47
    iput-object p10, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 48
    .line 49
    iput-object p11, p0, Lokhttp3/internal/connection/ConnectPlan;->o:Ljava/util/List;

    .line 50
    .line 51
    iput p12, p0, Lokhttp3/internal/connection/ConnectPlan;->p:I

    .line 52
    .line 53
    iput-object p13, p0, Lokhttp3/internal/connection/ConnectPlan;->q:Lokhttp3/Request;

    .line 54
    .line 55
    iput p14, p0, Lokhttp3/internal/connection/ConnectPlan;->r:I

    .line 56
    .line 57
    move/from16 p1, p15

    .line 58
    .line 59
    iput-boolean p1, p0, Lokhttp3/internal/connection/ConnectPlan;->s:Z

    .line 60
    .line 61
    return-void
.end method

.method public static j(Lokhttp3/internal/connection/ConnectPlan;ILokhttp3/Request;IZI)Lokhttp3/internal/connection/ConnectPlan;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    and-int/lit8 v1, p5, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lokhttp3/internal/connection/ConnectPlan;->p:I

    .line 8
    .line 9
    move v14, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move/from16 v14, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, p5, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lokhttp3/internal/connection/ConnectPlan;->q:Lokhttp3/Request;

    .line 18
    .line 19
    move-object v15, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object/from16 v15, p2

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v1, p5, 0x4

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget v1, v0, Lokhttp3/internal/connection/ConnectPlan;->r:I

    .line 28
    .line 29
    move/from16 v16, v1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move/from16 v16, p3

    .line 33
    .line 34
    :goto_2
    and-int/lit8 v1, p5, 0x8

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-boolean v1, v0, Lokhttp3/internal/connection/ConnectPlan;->s:Z

    .line 39
    .line 40
    move/from16 v17, v1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    move/from16 v17, p4

    .line 44
    .line 45
    :goto_3
    new-instance v2, Lokhttp3/internal/connection/ConnectPlan;

    .line 46
    .line 47
    iget-object v3, v0, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/concurrent/TaskRunner;

    .line 48
    .line 49
    iget-object v4, v0, Lokhttp3/internal/connection/ConnectPlan;->f:Lokhttp3/internal/connection/RealConnectionPool;

    .line 50
    .line 51
    iget v5, v0, Lokhttp3/internal/connection/ConnectPlan;->g:I

    .line 52
    .line 53
    iget v6, v0, Lokhttp3/internal/connection/ConnectPlan;->h:I

    .line 54
    .line 55
    iget v7, v0, Lokhttp3/internal/connection/ConnectPlan;->i:I

    .line 56
    .line 57
    iget v8, v0, Lokhttp3/internal/connection/ConnectPlan;->j:I

    .line 58
    .line 59
    iget-boolean v9, v0, Lokhttp3/internal/connection/ConnectPlan;->k:Z

    .line 60
    .line 61
    iget-object v10, v0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 62
    .line 63
    iget-object v11, v0, Lokhttp3/internal/connection/ConnectPlan;->m:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 64
    .line 65
    iget-object v12, v0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 66
    .line 67
    iget-object v13, v0, Lokhttp3/internal/connection/ConnectPlan;->o:Ljava/util/List;

    .line 68
    .line 69
    invoke-direct/range {v2 .. v17}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V

    .line 70
    .line 71
    .line 72
    return-object v2
.end method


# virtual methods
.method public final a()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lokhttp3/internal/connection/ConnectPlan;

    .line 4
    .line 5
    iget v15, v0, Lokhttp3/internal/connection/ConnectPlan;->r:I

    .line 6
    .line 7
    iget-boolean v2, v0, Lokhttp3/internal/connection/ConnectPlan;->s:Z

    .line 8
    .line 9
    move/from16 v16, v2

    .line 10
    .line 11
    iget-object v2, v0, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/concurrent/TaskRunner;

    .line 12
    .line 13
    iget-object v3, v0, Lokhttp3/internal/connection/ConnectPlan;->f:Lokhttp3/internal/connection/RealConnectionPool;

    .line 14
    .line 15
    iget v4, v0, Lokhttp3/internal/connection/ConnectPlan;->g:I

    .line 16
    .line 17
    iget v5, v0, Lokhttp3/internal/connection/ConnectPlan;->h:I

    .line 18
    .line 19
    iget v6, v0, Lokhttp3/internal/connection/ConnectPlan;->i:I

    .line 20
    .line 21
    iget v7, v0, Lokhttp3/internal/connection/ConnectPlan;->j:I

    .line 22
    .line 23
    iget-boolean v8, v0, Lokhttp3/internal/connection/ConnectPlan;->k:Z

    .line 24
    .line 25
    iget-object v9, v0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 26
    .line 27
    iget-object v10, v0, Lokhttp3/internal/connection/ConnectPlan;->m:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 28
    .line 29
    iget-object v11, v0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 30
    .line 31
    iget-object v12, v0, Lokhttp3/internal/connection/ConnectPlan;->o:Ljava/util/List;

    .line 32
    .line 33
    iget v13, v0, Lokhttp3/internal/connection/ConnectPlan;->p:I

    .line 34
    .line 35
    iget-object v14, v0, Lokhttp3/internal/connection/ConnectPlan;->q:Lokhttp3/Request;

    .line 36
    .line 37
    invoke-direct/range {v1 .. v16}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public final b(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 0

    .line 1
    const-string p2, "call"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lokhttp3/internal/connection/RealConnection;
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->c:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    iget-object v0, v0, Lokhttp3/OkHttpClient;->y:Lokhttp3/internal/connection/RouteDatabase;

    .line 6
    .line 7
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/RouteDatabase;->a(Lokhttp3/Route;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->z:Lokhttp3/internal/connection/RealConnection;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 21
    .line 22
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 23
    .line 24
    const-string v3, "connection"

    .line 25
    .line 26
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "route"

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "call"

    .line 35
    .line 36
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->m:Lokhttp3/internal/connection/RealRoutePlanner;

    .line 40
    .line 41
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->o:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->g(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v0, v1, Lokhttp3/internal/connection/ReusePlan;->c:Lokhttp3/internal/connection/RealConnection;

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_0
    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->f:Lokhttp3/internal/connection/RealConnectionPool;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string v2, "connection"

    .line 59
    .line 60
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    .line 64
    .line 65
    iget-object v2, v1, Lokhttp3/internal/connection/RealConnectionPool;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    iget-object v2, v1, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/concurrent/TaskQueue;

    .line 71
    .line 72
    iget-object v1, v1, Lokhttp3/internal/connection/RealConnectionPool;->c:Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

    .line 73
    .line 74
    const-wide/16 v3, 0x0

    .line 75
    .line 76
    invoke-virtual {v2, v1, v3, v4}, Lokhttp3/internal/concurrent/TaskQueue;->d(Lokhttp3/internal/concurrent/Task;J)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/RealCall;->a(Lokhttp3/internal/connection/RealConnection;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    monitor-exit v0

    .line 87
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 88
    .line 89
    iget-object v2, v1, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 90
    .line 91
    invoke-virtual {v2, v1, v0}, Lokhttp3/EventListener;->d(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 95
    .line 96
    const-string v2, "connection"

    .line 97
    .line 98
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v2, "call"

    .line 102
    .line 103
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    monitor-exit v0

    .line 109
    throw v1
.end method

.method public final cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/connection/ConnectPlan;->t:Z

    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->u:Ljava/net/Socket;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final d()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 12

    .line 1
    const-string v0, "route"

    .line 2
    .line 3
    const-string v1, "call"

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->f:Lokhttp3/internal/connection/RealConnectionPool;

    .line 6
    .line 7
    iget-object v3, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 8
    .line 9
    iget-object v4, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 10
    .line 11
    iget-object v5, v4, Lokhttp3/internal/connection/RealCall;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    iget-object v6, p0, Lokhttp3/internal/connection/ConnectPlan;->u:Ljava/net/Socket;

    .line 14
    .line 15
    if-nez v6, :cond_3

    .line 16
    .line 17
    invoke-virtual {v5, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    :try_start_0
    iget-object v8, v4, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 23
    .line 24
    iget-object v9, v3, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 25
    .line 26
    iget-object v10, v3, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 27
    .line 28
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v8, "inetSocketAddress"

    .line 35
    .line 36
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v8, "proxy"

    .line 40
    .line 41
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lokhttp3/internal/connection/ConnectPlan;->g()V

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x1

    .line 57
    new-instance v8, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 58
    .line 59
    const/4 v9, 0x6

    .line 60
    invoke-direct {v8, p0, v6, v6, v9}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return-object v8

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v8

    .line 70
    :try_start_1
    iget-object v9, v3, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 71
    .line 72
    iget-object v9, v3, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 73
    .line 74
    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    sget-object v10, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 79
    .line 80
    if-eq v9, v10, :cond_0

    .line 81
    .line 82
    iget-object v9, v3, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 83
    .line 84
    iget-object v10, v9, Lokhttp3/Address;->g:Ljava/net/ProxySelector;

    .line 85
    .line 86
    iget-object v9, v9, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 87
    .line 88
    invoke-virtual {v9}, Lokhttp3/HttpUrl;->g()Ljava/net/URI;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    iget-object v11, v3, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 93
    .line 94
    invoke-virtual {v11}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-virtual {v10, v9, v11, v8}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object v9, v4, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 102
    .line 103
    iget-object v10, v3, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 104
    .line 105
    iget-object v11, v3, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 106
    .line 107
    invoke-virtual {v9, v4, v10, v11, v8}, Lokhttp3/EventListener;->c(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ljava/io/IOException;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "failure"

    .line 120
    .line 121
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 125
    .line 126
    const/4 v1, 0x2

    .line 127
    invoke-direct {v0, p0, v6, v8, v1}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    if-nez v7, :cond_1

    .line 134
    .line 135
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->u:Ljava/net/Socket;

    .line 136
    .line 137
    if-eqz v1, :cond_1

    .line 138
    .line 139
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    return-object v0

    .line 143
    :goto_0
    invoke-virtual {v5, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    if-nez v7, :cond_2

    .line 147
    .line 148
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->u:Ljava/net/Socket;

    .line 149
    .line 150
    if-eqz v1, :cond_2

    .line 151
    .line 152
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    throw v0

    .line 156
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    const-string v1, "TCP already connected"

    .line 159
    .line 160
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "call"

    .line 4
    .line 5
    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->f:Lokhttp3/internal/connection/RealConnectionPool;

    .line 6
    .line 7
    iget-object v4, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 8
    .line 9
    iget-object v0, v4, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 10
    .line 11
    iget-object v5, v4, Lokhttp3/internal/connection/RealCall;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    iget-object v10, v1, Lokhttp3/internal/connection/ConnectPlan;->u:Ljava/net/Socket;

    .line 14
    .line 15
    if-eqz v10, :cond_13

    .line 16
    .line 17
    invoke-virtual {v1}, Lokhttp3/internal/connection/ConnectPlan;->isReady()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_12

    .line 22
    .line 23
    iget-object v15, v1, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 24
    .line 25
    iget-object v6, v15, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 26
    .line 27
    iget-object v7, v15, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 28
    .line 29
    iget-object v8, v15, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 30
    .line 31
    iget-object v9, v15, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 32
    .line 33
    iget-object v6, v6, Lokhttp3/Address;->j:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    :try_start_0
    iget-object v12, v1, Lokhttp3/internal/connection/ConnectPlan;->q:Lokhttp3/Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    if-eqz v12, :cond_2

    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/internal/connection/ConnectPlan;->i()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    iget-object v13, v12, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 49
    .line 50
    if-nez v13, :cond_0

    .line 51
    .line 52
    iget-object v13, v12, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    if-eqz v13, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto/16 :goto_d

    .line 59
    .line 60
    :catch_0
    move-exception v0

    .line 61
    move-object/from16 v18, v2

    .line 62
    .line 63
    move-object/from16 v21, v3

    .line 64
    .line 65
    move-object v3, v7

    .line 66
    move-object v2, v8

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    goto/16 :goto_a

    .line 70
    .line 71
    :cond_0
    :goto_0
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->v:Ljava/net/Socket;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 82
    .line 83
    .line 84
    return-object v12

    .line 85
    :cond_2
    :try_start_2
    iget-object v12, v9, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    const/4 v13, 0x1

    .line 88
    const-string v14, "socket"

    .line 89
    .line 90
    if-eqz v12, :cond_6

    .line 91
    .line 92
    :try_start_3
    iget-object v12, v1, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 93
    .line 94
    if-nez v12, :cond_3

    .line 95
    .line 96
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v12, 0x0

    .line 100
    :cond_3
    iget-object v12, v12, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->f:Lokio/RealBufferedSource;

    .line 101
    .line 102
    iget-object v12, v12, Lokio/RealBufferedSource;->f:Lokio/Buffer;

    .line 103
    .line 104
    invoke-virtual {v12}, Lokio/Buffer;->D()Z

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    if-eqz v12, :cond_5

    .line 109
    .line 110
    iget-object v12, v1, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 111
    .line 112
    if-nez v12, :cond_4

    .line 113
    .line 114
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v12, 0x0

    .line 118
    :cond_4
    iget-object v12, v12, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->g:Lokio/RealBufferedSink;

    .line 119
    .line 120
    iget-object v12, v12, Lokio/RealBufferedSink;->f:Lokio/Buffer;

    .line 121
    .line 122
    invoke-virtual {v12}, Lokio/Buffer;->D()Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-eqz v12, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v12, v9, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 135
    .line 136
    iget-object v9, v9, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 137
    .line 138
    iget-object v11, v9, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 139
    .line 140
    iget v9, v9, Lokhttp3/HttpUrl;->e:I

    .line 141
    .line 142
    invoke-virtual {v12, v10, v11, v9, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    const-string v11, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    .line 147
    .line 148
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    check-cast v9, Ljavax/net/ssl/SSLSocket;

    .line 152
    .line 153
    invoke-virtual {v1, v6, v9}, Lokhttp3/internal/connection/ConnectPlan;->l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    iget v12, v11, Lokhttp3/internal/connection/ConnectPlan;->r:I

    .line 158
    .line 159
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    check-cast v12, Lokhttp3/ConnectionSpec;

    .line 164
    .line 165
    invoke-virtual {v11, v6, v9}, Lokhttp3/internal/connection/ConnectPlan;->k(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;

    .line 166
    .line 167
    .line 168
    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    :try_start_4
    iget-boolean v11, v11, Lokhttp3/internal/connection/ConnectPlan;->s:Z

    .line 170
    .line 171
    invoke-virtual {v12, v9, v11}, Lokhttp3/ConnectionSpec;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v9, v12}, Lokhttp3/internal/connection/ConnectPlan;->h(Ljavax/net/ssl/SSLSocket;Lokhttp3/ConnectionSpec;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    .line 182
    .line 183
    move-object/from16 v17, v6

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :goto_1
    move-object/from16 v18, v2

    .line 187
    .line 188
    move-object/from16 v21, v3

    .line 189
    .line 190
    move-object v11, v6

    .line 191
    move-object v3, v7

    .line 192
    move-object v2, v8

    .line 193
    :goto_2
    const/4 v7, 0x0

    .line 194
    goto/16 :goto_a

    .line 195
    .line 196
    :catch_1
    move-exception v0

    .line 197
    goto :goto_1

    .line 198
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    .line 199
    .line 200
    const-string v6, "TLS tunnel buffered too many bytes!"

    .line 201
    .line 202
    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 206
    :cond_6
    :try_start_6
    iput-object v10, v1, Lokhttp3/internal/connection/ConnectPlan;->v:Ljava/net/Socket;

    .line 207
    .line 208
    iget-object v6, v9, Lokhttp3/Address;->i:Ljava/util/List;

    .line 209
    .line 210
    sget-object v9, Lokhttp3/Protocol;->k:Lokhttp3/Protocol;

    .line 211
    .line 212
    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_7

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_7
    sget-object v9, Lokhttp3/Protocol;->h:Lokhttp3/Protocol;

    .line 220
    .line 221
    :goto_3
    iput-object v9, v1, Lokhttp3/internal/connection/ConnectPlan;->x:Lokhttp3/Protocol;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 222
    .line 223
    const/16 v17, 0x0

    .line 224
    .line 225
    :goto_4
    :try_start_7
    new-instance v6, Lokhttp3/internal/connection/RealConnection;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    .line 227
    move-object v9, v7

    .line 228
    :try_start_8
    iget-object v7, v1, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/concurrent/TaskRunner;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 229
    .line 230
    move-object v11, v8

    .line 231
    :try_start_9
    iget-object v8, v1, Lokhttp3/internal/connection/ConnectPlan;->f:Lokhttp3/internal/connection/RealConnectionPool;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 232
    .line 233
    move-object v12, v9

    .line 234
    :try_start_a
    iget-object v9, v1, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 235
    .line 236
    move-object/from16 v18, v11

    .line 237
    .line 238
    :try_start_b
    iget-object v11, v1, Lokhttp3/internal/connection/ConnectPlan;->v:Ljava/net/Socket;

    .line 239
    .line 240
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 241
    .line 242
    .line 243
    move-object/from16 v19, v12

    .line 244
    .line 245
    :try_start_c
    iget-object v12, v1, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/Handshake;

    .line 246
    .line 247
    move/from16 v20, v13

    .line 248
    .line 249
    iget-object v13, v1, Lokhttp3/internal/connection/ConnectPlan;->x:Lokhttp3/Protocol;

    .line 250
    .line 251
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 252
    .line 253
    .line 254
    move-object/from16 v21, v3

    .line 255
    .line 256
    :try_start_d
    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 257
    .line 258
    if-nez v3, :cond_8

    .line 259
    .line 260
    :try_start_e
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 261
    .line 262
    .line 263
    const/4 v14, 0x0

    .line 264
    goto :goto_5

    .line 265
    :catch_2
    move-exception v0

    .line 266
    move-object/from16 v3, v18

    .line 267
    .line 268
    move-object/from16 v18, v2

    .line 269
    .line 270
    move-object v2, v3

    .line 271
    move-object/from16 v11, v17

    .line 272
    .line 273
    move-object/from16 v3, v19

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_8
    move-object v14, v3

    .line 277
    :goto_5
    :try_start_f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 278
    .line 279
    .line 280
    move-object/from16 v3, v18

    .line 281
    .line 282
    move-object/from16 v18, v2

    .line 283
    .line 284
    move-object v2, v3

    .line 285
    move-object/from16 v3, v19

    .line 286
    .line 287
    :try_start_10
    invoke-direct/range {v6 .. v14}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;Ljava/net/Socket;Lokhttp3/Handshake;Lokhttp3/Protocol;Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;)V

    .line 288
    .line 289
    .line 290
    iput-object v6, v1, Lokhttp3/internal/connection/ConnectPlan;->z:Lokhttp3/internal/connection/RealConnection;

    .line 291
    .line 292
    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->i()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v4, v2, v3}, Lokhttp3/EventListener;->b(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 296
    .line 297
    .line 298
    :try_start_11
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 299
    .line 300
    const/4 v6, 0x6

    .line 301
    const/4 v7, 0x0

    .line 302
    :try_start_12
    invoke-direct {v0, v1, v7, v7, v6}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    return-object v0

    .line 309
    :catchall_1
    move-exception v0

    .line 310
    move/from16 v16, v20

    .line 311
    .line 312
    goto/16 :goto_d

    .line 313
    .line 314
    :catch_3
    move-exception v0

    .line 315
    :goto_6
    move-object/from16 v11, v17

    .line 316
    .line 317
    move/from16 v16, v20

    .line 318
    .line 319
    goto/16 :goto_a

    .line 320
    .line 321
    :catch_4
    move-exception v0

    .line 322
    const/4 v7, 0x0

    .line 323
    goto :goto_6

    .line 324
    :catch_5
    move-exception v0

    .line 325
    :goto_7
    const/4 v7, 0x0

    .line 326
    move-object/from16 v11, v17

    .line 327
    .line 328
    goto/16 :goto_a

    .line 329
    .line 330
    :catch_6
    move-exception v0

    .line 331
    move-object/from16 v3, v18

    .line 332
    .line 333
    move-object/from16 v18, v2

    .line 334
    .line 335
    move-object v2, v3

    .line 336
    :goto_8
    move-object/from16 v3, v19

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :catch_7
    move-exception v0

    .line 340
    move-object/from16 v7, v18

    .line 341
    .line 342
    move-object/from16 v18, v2

    .line 343
    .line 344
    move-object v2, v7

    .line 345
    move-object/from16 v21, v3

    .line 346
    .line 347
    goto :goto_8

    .line 348
    :catch_8
    move-exception v0

    .line 349
    move-object/from16 v7, v18

    .line 350
    .line 351
    move-object/from16 v18, v2

    .line 352
    .line 353
    move-object v2, v7

    .line 354
    move-object/from16 v21, v3

    .line 355
    .line 356
    :goto_9
    move-object v3, v12

    .line 357
    goto :goto_7

    .line 358
    :catch_9
    move-exception v0

    .line 359
    move-object/from16 v18, v2

    .line 360
    .line 361
    move-object/from16 v21, v3

    .line 362
    .line 363
    move-object v2, v11

    .line 364
    goto :goto_9

    .line 365
    :catch_a
    move-exception v0

    .line 366
    move-object/from16 v18, v2

    .line 367
    .line 368
    move-object/from16 v21, v3

    .line 369
    .line 370
    move-object v3, v9

    .line 371
    move-object v2, v11

    .line 372
    goto :goto_7

    .line 373
    :catch_b
    move-exception v0

    .line 374
    move-object/from16 v18, v2

    .line 375
    .line 376
    move-object/from16 v21, v3

    .line 377
    .line 378
    move-object v2, v8

    .line 379
    move-object v3, v9

    .line 380
    goto :goto_7

    .line 381
    :catch_c
    move-exception v0

    .line 382
    move-object/from16 v18, v2

    .line 383
    .line 384
    move-object/from16 v21, v3

    .line 385
    .line 386
    move-object v3, v7

    .line 387
    move-object v2, v8

    .line 388
    goto :goto_7

    .line 389
    :catch_d
    move-exception v0

    .line 390
    move-object/from16 v18, v2

    .line 391
    .line 392
    move-object/from16 v21, v3

    .line 393
    .line 394
    move-object v3, v7

    .line 395
    move-object v2, v8

    .line 396
    const/4 v7, 0x0

    .line 397
    move-object v11, v7

    .line 398
    :goto_a
    :try_start_13
    iget-object v6, v4, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 399
    .line 400
    invoke-virtual {v6, v4, v2, v3, v0}, Lokhttp3/EventListener;->c(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ljava/io/IOException;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    const-string v2, "route"

    .line 407
    .line 408
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    move-object/from16 v2, v18

    .line 412
    .line 413
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const-string v2, "failure"

    .line 417
    .line 418
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-boolean v2, v1, Lokhttp3/internal/connection/ConnectPlan;->k:Z

    .line 422
    .line 423
    if-eqz v2, :cond_d

    .line 424
    .line 425
    const-string v2, "e"

    .line 426
    .line 427
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    instance-of v2, v0, Ljava/net/ProtocolException;

    .line 431
    .line 432
    if-eqz v2, :cond_9

    .line 433
    .line 434
    goto :goto_b

    .line 435
    :cond_9
    instance-of v2, v0, Ljava/io/InterruptedIOException;

    .line 436
    .line 437
    if-eqz v2, :cond_a

    .line 438
    .line 439
    goto :goto_b

    .line 440
    :cond_a
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 441
    .line 442
    if-eqz v2, :cond_b

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    instance-of v2, v2, Ljava/security/cert/CertificateException;

    .line 449
    .line 450
    if-eqz v2, :cond_b

    .line 451
    .line 452
    goto :goto_b

    .line 453
    :cond_b
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 454
    .line 455
    if-eqz v2, :cond_c

    .line 456
    .line 457
    goto :goto_b

    .line 458
    :cond_c
    instance-of v2, v0, Ljavax/net/ssl/SSLException;

    .line 459
    .line 460
    if-eqz v2, :cond_d

    .line 461
    .line 462
    goto :goto_c

    .line 463
    :cond_d
    :goto_b
    move-object v11, v7

    .line 464
    :goto_c
    new-instance v2, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 465
    .line 466
    invoke-direct {v2, v1, v11, v0}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 467
    .line 468
    .line 469
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    if-nez v16, :cond_f

    .line 473
    .line 474
    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->v:Ljava/net/Socket;

    .line 475
    .line 476
    if-eqz v0, :cond_e

    .line 477
    .line 478
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 479
    .line 480
    .line 481
    :cond_e
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 482
    .line 483
    .line 484
    :cond_f
    return-object v2

    .line 485
    :goto_d
    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    if-nez v16, :cond_11

    .line 489
    .line 490
    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->v:Ljava/net/Socket;

    .line 491
    .line 492
    if-eqz v2, :cond_10

    .line 493
    .line 494
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 495
    .line 496
    .line 497
    :cond_10
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 498
    .line 499
    .line 500
    :cond_11
    throw v0

    .line 501
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 502
    .line 503
    const-string v2, "already connected"

    .line 504
    .line 505
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw v0

    .line 509
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 510
    .line 511
    const-string v2, "TCP not connected"

    .line 512
    .line 513
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v0
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lokhttp3/internal/connection/ConnectPlan$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_0
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/net/Socket;

    .line 28
    .line 29
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 30
    .line 31
    iget-object v1, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 38
    .line 39
    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 40
    .line 41
    iget-object v0, v0, Lokhttp3/Address;->b:Ljavax/net/SocketFactory;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    iput-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->u:Ljava/net/Socket;

    .line 51
    .line 52
    iget-boolean v1, p0, Lokhttp3/internal/connection/ConnectPlan;->t:Z

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget v1, p0, Lokhttp3/internal/connection/ConnectPlan;->j:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 62
    .line 63
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 64
    .line 65
    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 66
    .line 67
    iget-object v2, v2, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 68
    .line 69
    iget v3, p0, Lokhttp3/internal/connection/ConnectPlan;->i:I

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2, v3}, Lokhttp3/internal/platform/Platform;->f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .line 73
    .line 74
    :try_start_1
    const-string v1, "<this>"

    .line 75
    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lokio/internal/DefaultSocket;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Lokio/internal/DefaultSocket;-><init>(Ljava/net/Socket;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 91
    .line 92
    invoke-direct {v0, v2}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;-><init>(Lokio/internal/DefaultSocket;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v2, "throw with null exception"

    .line 104
    .line 105
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_2

    .line 110
    .line 111
    return-void

    .line 112
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    new-instance v1, Ljava/net/ConnectException;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v3, "Failed to connect to "

    .line 124
    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v3, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 129
    .line 130
    iget-object v3, v3, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 143
    .line 144
    .line 145
    throw v1

    .line 146
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 147
    .line 148
    const-string v1, "canceled"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0
.end method

.method public final getRoute()Lokhttp3/Route;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ljavax/net/ssl/SSLSocket;Lokhttp3/ConnectionSpec;)V
    .locals 10

    .line 1
    const-string v0, "sslSocket"

    .line 2
    .line 3
    const-string v1, "Hostname "

    .line 4
    .line 5
    const-string v2, "\n            |Hostname "

    .line 6
    .line 7
    iget-object v3, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 8
    .line 9
    iget-object v3, v3, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 10
    .line 11
    :try_start_0
    iget-boolean v4, p2, Lokhttp3/ConnectionSpec;->b:Z

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    sget-object v4, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 16
    .line 17
    sget-object v4, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 18
    .line 19
    iget-object v5, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 20
    .line 21
    iget-object v5, v5, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v6, v3, Lokhttp3/Address;->i:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {v4, p1, v5, v6}, Lokhttp3/internal/platform/Platform;->e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p2

    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Lokhttp3/Handshake$Companion;->a(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v6, v3, Lokhttp3/Address;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 47
    .line 48
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v7, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 52
    .line 53
    iget-object v7, v7, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v6, v7, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v5}, Lokhttp3/Handshake;->a()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 77
    .line 78
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 82
    .line 83
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 91
    .line 92
    iget-object v2, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, " not verified:\n            |    certificate: "

    .line 98
    .line 99
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    sget-object v2, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner;

    .line 103
    .line 104
    invoke-static {p2}, Lokhttp3/CertificatePinner$Companion;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, "\n            |    DN: "

    .line 112
    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v2, "\n            |    subjectAltNames: "

    .line 128
    .line 129
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "certificate"

    .line 133
    .line 134
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const/4 v2, 0x7

    .line 138
    invoke-static {p2, v2}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const/4 v3, 0x2

    .line 143
    invoke-static {p2, v3}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {v2, p2}, Lkotlin/collections/CollectionsKt;->q(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p2, "\n            "

    .line 155
    .line 156
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-static {p2}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v1

    .line 171
    :cond_1
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 172
    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 179
    .line 180
    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, " not verified (no certificates)"

    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-direct {p2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p2

    .line 198
    :cond_2
    iget-object v1, v3, Lokhttp3/Address;->e:Lokhttp3/CertificatePinner;

    .line 199
    .line 200
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    new-instance v2, Lokhttp3/Handshake;

    .line 204
    .line 205
    iget-object v4, v5, Lokhttp3/Handshake;->a:Lokhttp3/TlsVersion;

    .line 206
    .line 207
    iget-object v6, v5, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    .line 208
    .line 209
    iget-object v7, v5, Lokhttp3/Handshake;->c:Ljava/util/List;

    .line 210
    .line 211
    new-instance v8, Lokhttp3/a;

    .line 212
    .line 213
    const/4 v9, 0x1

    .line 214
    invoke-direct {v8, v1, v5, v3, v9}, Lokhttp3/a;-><init>(Lokhttp3/CertificatePinner;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    invoke-direct {v2, v4, v6, v7, v8}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 218
    .line 219
    .line 220
    iput-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/Handshake;

    .line 221
    .line 222
    iget-object v3, v3, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 223
    .line 224
    iget-object v3, v3, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 225
    .line 226
    new-instance v4, Lkotlin/time/a;

    .line 227
    .line 228
    const/4 v5, 0x3

    .line 229
    invoke-direct {v4, v5, v2}, Lkotlin/time/a;-><init>(ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v3, v4}, Lokhttp3/CertificatePinner;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 233
    .line 234
    .line 235
    iget-boolean p2, p2, Lokhttp3/ConnectionSpec;->b:Z

    .line 236
    .line 237
    if-eqz p2, :cond_3

    .line 238
    .line 239
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 240
    .line 241
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 242
    .line 243
    invoke-virtual {p2, p1}, Lokhttp3/internal/platform/Platform;->g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    goto :goto_1

    .line 248
    :cond_3
    const/4 p2, 0x0

    .line 249
    :goto_1
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectPlan;->v:Ljava/net/Socket;

    .line 250
    .line 251
    const-string v1, "<this>"

    .line 252
    .line 253
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    new-instance v2, Lokio/internal/DefaultSocket;

    .line 260
    .line 261
    invoke-direct {v2, p1}, Lokio/internal/DefaultSocket;-><init>(Ljava/net/Socket;)V

    .line 262
    .line 263
    .line 264
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-instance v1, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 268
    .line 269
    invoke-direct {v1, v2}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;-><init>(Lokio/internal/DefaultSocket;)V

    .line 270
    .line 271
    .line 272
    iput-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 273
    .line 274
    if-eqz p2, :cond_4

    .line 275
    .line 276
    sget-object v1, Lokhttp3/Protocol;->f:Lokhttp3/Protocol$Companion;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    invoke-static {p2}, Lokhttp3/Protocol$Companion;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    goto :goto_2

    .line 286
    :cond_4
    sget-object p2, Lokhttp3/Protocol;->h:Lokhttp3/Protocol;

    .line 287
    .line 288
    :goto_2
    iput-object p2, p0, Lokhttp3/internal/connection/ConnectPlan;->x:Lokhttp3/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .line 290
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 291
    .line 292
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :goto_3
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 302
    .line 303
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 312
    .line 313
    .line 314
    throw p2
.end method

.method public final i()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 13

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->q:Lokhttp3/Request;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->n:Lokhttp3/Route;

    .line 7
    .line 8
    iget-object v2, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 9
    .line 10
    iget-object v3, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 11
    .line 12
    iget-object v4, v1, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    .line 13
    .line 14
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v6, "CONNECT "

    .line 19
    .line 20
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-static {v2, v6}, Lokhttp3/internal/_UtilJvmKt;->g(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " HTTP/1.1"

    .line 32
    .line 33
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_0
    new-instance v5, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 41
    .line 42
    iget-object v7, p0, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 43
    .line 44
    const-string v8, "socket"

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    if-nez v7, :cond_0

    .line 48
    .line 49
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object v7, v9

    .line 53
    :cond_0
    invoke-direct {v5, v9, p0, v7}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/connection/BufferedSocket;)V

    .line 54
    .line 55
    .line 56
    iget-object v7, p0, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 57
    .line 58
    if-nez v7, :cond_1

    .line 59
    .line 60
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move-object v7, v9

    .line 64
    :cond_1
    iget-object v7, v7, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->f:Lokio/RealBufferedSource;

    .line 65
    .line 66
    iget-object v7, v7, Lokio/RealBufferedSource;->c:Lokio/Source;

    .line 67
    .line 68
    invoke-interface {v7}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    iget v10, p0, Lokhttp3/internal/connection/ConnectPlan;->g:I

    .line 73
    .line 74
    int-to-long v10, v10

    .line 75
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 76
    .line 77
    invoke-virtual {v7, v10, v11, v12}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 78
    .line 79
    .line 80
    iget-object v7, p0, Lokhttp3/internal/connection/ConnectPlan;->y:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    .line 81
    .line 82
    if-nez v7, :cond_2

    .line 83
    .line 84
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v7, v9

    .line 88
    :cond_2
    iget-object v7, v7, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->g:Lokio/RealBufferedSink;

    .line 89
    .line 90
    iget-object v7, v7, Lokio/RealBufferedSink;->c:Lokio/Sink;

    .line 91
    .line 92
    invoke-interface {v7}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iget v8, p0, Lokhttp3/internal/connection/ConnectPlan;->h:I

    .line 97
    .line 98
    int-to-long v10, v8

    .line 99
    invoke-virtual {v7, v10, v11, v12}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 100
    .line 101
    .line 102
    iget-object v7, v0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 103
    .line 104
    invoke-virtual {v5, v7, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->n(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Lokhttp3/internal/http1/Http1ExchangeCodec;->a()V

    .line 108
    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    invoke-virtual {v5, v7}, Lokhttp3/internal/http1/Http1ExchangeCodec;->e(Z)Lokhttp3/Response$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const-string v8, "request"

    .line 122
    .line 123
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, v7, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 127
    .line 128
    invoke-virtual {v7}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget v7, v0, Lokhttp3/Response;->h:I

    .line 133
    .line 134
    invoke-virtual {v5, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->m(Lokhttp3/Response;)V

    .line 135
    .line 136
    .line 137
    const/16 v5, 0xc8

    .line 138
    .line 139
    if-eq v7, v5, :cond_6

    .line 140
    .line 141
    const/16 v5, 0x197

    .line 142
    .line 143
    if-ne v7, v5, :cond_5

    .line 144
    .line 145
    iget-object v5, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 146
    .line 147
    iget-object v5, v5, Lokhttp3/Address;->f:Lokhttp3/Authenticator;

    .line 148
    .line 149
    invoke-interface {v5, v1, v0}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    if-eqz v5, :cond_4

    .line 154
    .line 155
    const-string v7, "Connection"

    .line 156
    .line 157
    invoke-static {v7, v0}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v7, "close"

    .line 162
    .line 163
    invoke-static {v7, v0}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_3

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    move-object v0, v5

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 174
    .line 175
    const-string v1, "Failed to authenticate with proxy"

    .line 176
    .line 177
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 182
    .line 183
    const-string v1, "Unexpected response code for CONNECT: "

    .line 184
    .line 185
    invoke-static {v7, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_6
    move-object v5, v9

    .line 194
    :goto_1
    if-nez v5, :cond_7

    .line 195
    .line 196
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 197
    .line 198
    const/4 v1, 0x6

    .line 199
    invoke-direct {v0, p0, v9, v9, v1}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->u:Ljava/net/Socket;

    .line 204
    .line 205
    if-eqz v0, :cond_8

    .line 206
    .line 207
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/net/Socket;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    iget v0, p0, Lokhttp3/internal/connection/ConnectPlan;->p:I

    .line 211
    .line 212
    add-int/2addr v0, v6

    .line 213
    const/16 v2, 0x15

    .line 214
    .line 215
    iget-object v6, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/internal/connection/RealCall;

    .line 216
    .line 217
    if-ge v0, v2, :cond_9

    .line 218
    .line 219
    iget-object v1, v6, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 220
    .line 221
    invoke-virtual {v1, v6, v4, v3}, Lokhttp3/EventListener;->b(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 222
    .line 223
    .line 224
    new-instance v1, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 225
    .line 226
    const/4 v6, 0x0

    .line 227
    const/16 v7, 0xc

    .line 228
    .line 229
    move-object v4, v5

    .line 230
    const/4 v5, 0x0

    .line 231
    move-object v2, p0

    .line 232
    move v3, v0

    .line 233
    invoke-static/range {v2 .. v7}, Lokhttp3/internal/connection/ConnectPlan;->j(Lokhttp3/internal/connection/ConnectPlan;ILokhttp3/Request;IZI)Lokhttp3/internal/connection/ConnectPlan;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const/4 v3, 0x4

    .line 238
    invoke-direct {v1, p0, v0, v9, v3}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V

    .line 239
    .line 240
    .line 241
    return-object v1

    .line 242
    :cond_9
    move-object v2, p0

    .line 243
    new-instance v0, Ljava/net/ProtocolException;

    .line 244
    .line 245
    const-string v5, "Too many tunnel connections attempted: 21"

    .line 246
    .line 247
    invoke-direct {v0, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v5, v6, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 251
    .line 252
    invoke-virtual {v5, v6, v4, v3, v0}, Lokhttp3/EventListener;->c(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ljava/io/IOException;)V

    .line 253
    .line 254
    .line 255
    iget-object v3, v2, Lokhttp3/internal/connection/ConnectPlan;->f:Lokhttp3/internal/connection/RealConnectionPool;

    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    const-string v3, "route"

    .line 261
    .line 262
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string v1, "call"

    .line 266
    .line 267
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string v1, "failure"

    .line 271
    .line 272
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance v1, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    .line 276
    .line 277
    const/4 v3, 0x2

    .line 278
    invoke-direct {v1, p0, v9, v0, v3}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/ConnectPlan;Ljava/lang/Throwable;I)V

    .line 279
    .line 280
    .line 281
    return-object v1
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->x:Lokhttp3/Protocol;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final k(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 9

    .line 1
    const-string v0, "connectionSpecs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sslSocket"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lokhttp3/internal/connection/ConnectPlan;->r:I

    .line 12
    .line 13
    add-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    move v6, v1

    .line 20
    :goto_0
    if-ge v6, v2, :cond_4

    .line 21
    .line 22
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lokhttp3/ConnectionSpec;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v3, "socket"

    .line 32
    .line 33
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v3, v1, Lokhttp3/ConnectionSpec;->a:Z

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object v3, v1, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {}, Lkotlin/comparisons/ComparisonsKt;->naturalOrder()Ljava/util/Comparator;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v3, v4, v5}, Lokhttp3/internal/_UtilCommonKt;->d([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v1, v1, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-object v4, Lokhttp3/CipherSuite;->c:Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

    .line 69
    .line 70
    invoke-static {v1, v3, v4}, Lokhttp3/internal/_UtilCommonKt;->d([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 p1, -0x1

    .line 80
    if-eq v0, p1, :cond_3

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    :goto_2
    move v7, p1

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    const/4 p1, 0x0

    .line 86
    goto :goto_2

    .line 87
    :goto_3
    const/4 v8, 0x3

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    move-object v3, p0

    .line 91
    invoke-static/range {v3 .. v8}, Lokhttp3/internal/connection/ConnectPlan;->j(Lokhttp3/internal/connection/ConnectPlan;ILokhttp3/Request;IZI)Lokhttp3/internal/connection/ConnectPlan;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_4
    const/4 p1, 0x0

    .line 97
    return-object p1
.end method

.method public final l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 3

    .line 1
    const-string v0, "connectionSpecs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sslSocket"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lokhttp3/internal/connection/ConnectPlan;->r:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/connection/ConnectPlan;->k(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Unable to find acceptable protocols. isFallback="

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v2, p0, Lokhttp3/internal/connection/ConnectPlan;->s:Z

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ", modes="

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ", supported protocols="

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string p2, "toString(...)"

    .line 63
    .line 64
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method
