.class public Lcom/google/auth/oauth2/OAuth2Credentials;
.super Lcom/google/auth/Credentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/OAuth2Credentials$Builder;,
        Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;,
        Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTaskListener;,
        Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;,
        Lcom/google/auth/oauth2/OAuth2Credentials$FutureCallbackToMetadataCallbackAdapter;,
        Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;,
        Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;,
        Lcom/google/auth/oauth2/OAuth2Credentials$CredentialsChangedListener;
    }
.end annotation


# static fields
.field public static final k:Lj$/time/Duration;

.field public static final l:Lj$/time/Duration;

.field public static final m:Lcom/google/common/collect/ImmutableMap;


# instance fields
.field public final c:Lj$/time/Duration;

.field public final f:Lj$/time/Duration;

.field public final g:[B

.field public volatile h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

.field public transient i:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

.field public final transient j:Lcom/google/api/client/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x3

    .line 2
    .line 3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    sput-object v2, Lcom/google/auth/oauth2/OAuth2Credentials;->k:Lj$/time/Duration;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMinutes(J)Lj$/time/Duration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lj$/time/Duration;->plusSeconds(J)Lj$/time/Duration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->l:Lj$/time/Duration;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->k()Lcom/google/common/collect/ImmutableMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->m:Lcom/google/common/collect/ImmutableMap;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/AccessToken;Lj$/time/Duration;Lj$/time/Duration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->g:[B

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 11
    .line 12
    sget-object v0, Lcom/google/api/client/util/Clock;->SYSTEM:Lcom/google/api/client/util/Clock;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->j:Lcom/google/api/client/util/Clock;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->m:Lcom/google/common/collect/ImmutableMap;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->a(Lcom/google/auth/oauth2/AccessToken;Ljava/util/Map;)Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 25
    .line 26
    :cond_0
    const-string p1, "refreshMargin"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->f:Lj$/time/Duration;

    .line 32
    .line 33
    invoke-virtual {p2}, Lj$/time/Duration;->isNegative()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    xor-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    const-string p2, "refreshMargin can\'t be negative"

    .line 40
    .line 41
    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->e(ZLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const-string p1, "expirationMargin"

    .line 45
    .line 46
    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object p3, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->c:Lj$/time/Duration;

    .line 50
    .line 51
    invoke-virtual {p3}, Lj$/time/Duration;->isNegative()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    xor-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    const-string p2, "expirationMargin can\'t be negative"

    .line 58
    .line 59
    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->e(ZLjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class v0, Lcom/google/auth/http/HttpTransportFactory;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    return-object p0
.end method

.method public static j(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of v0, p0, Ljava/io/IOException;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p0, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    throw p0

    .line 22
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 23
    .line 24
    const-string v1, "Unexpected error refreshing access token"

    .line 25
    .line 26
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    check-cast p0, Ljava/io/IOException;

    .line 31
    .line 32
    throw p0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/io/IOException;

    .line 42
    .line 43
    const-string v1, "Interrupted while asynchronously refreshing the access token"

    .line 44
    .line 45
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method


# virtual methods
.method public a(Ljava/net/URI;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->c(Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->f:Ljava/util/Map;

    .line 16
    .line 17
    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->g()Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;->a:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->a()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v0, v0, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;->b:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {v1}, Lcom/google/auth/oauth2/OAuth2Credentials;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final c(Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->h()Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;->c:Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->g:[B

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->h()Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eq v2, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->g()Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-boolean v0, v1, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;->b:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, v1, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;->a:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->g:[B

    .line 46
    .line 47
    monitor-enter p1

    .line 48
    :try_start_1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->h()Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v2, Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;->g:Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;

    .line 53
    .line 54
    if-eq v0, v2, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    monitor-exit p1

    .line 63
    return-object v0

    .line 64
    :catchall_1
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    if-eqz v1, :cond_4

    .line 67
    .line 68
    iget-object v0, v1, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;->a:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 69
    .line 70
    monitor-exit p1

    .line 71
    return-object v0

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v1, "Credentials expired, but there is no task to refresh"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->c(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    monitor-exit p1

    .line 84
    return-object v0

    .line 85
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    throw v0

    .line 87
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    throw p1
.end method

.method public final d()Lcom/google/auth/oauth2/AccessToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->c:Lcom/google/auth/oauth2/AccessToken;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->m:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/OAuth2Credentials;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/OAuth2Credentials;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final g()Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->g:[B

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->i:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v1, v3}, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;-><init>(Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;Z)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v2

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lcom/google/auth/oauth2/OAuth2Credentials$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/google/auth/oauth2/OAuth2Credentials$1;-><init>(Lcom/google/auth/oauth2/OAuth2Credentials;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/google/common/util/concurrent/ListenableFutureTask;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 29
    .line 30
    new-instance v3, Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTaskListener;

    .line 31
    .line 32
    invoke-direct {v3, p0, v2}, Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTaskListener;-><init>(Lcom/google/auth/oauth2/OAuth2Credentials;Lcom/google/common/util/concurrent/ListenableFutureTask;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2, v3}, Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;-><init>(Lcom/google/common/util/concurrent/ListenableFutureTask;Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTaskListener;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->i:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 39
    .line 40
    new-instance v2, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-direct {v2, v1, v3}, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;-><init>(Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;Z)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object v2

    .line 48
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v1
.end method

.method public final h()Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;->c:Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;

    .line 2
    .line 3
    sget-object v1, Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;->g:Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, v2, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->c:Lcom/google/auth/oauth2/AccessToken;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/google/auth/oauth2/AccessToken;->f:Ljava/lang/Long;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v3, Ljava/util/Date;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 25
    .line 26
    .line 27
    move-object v2, v3

    .line 28
    :goto_0
    if-nez v2, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    iget-object v4, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->j:Lcom/google/api/client/util/Clock;

    .line 36
    .line 37
    invoke-interface {v4}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    sub-long/2addr v2, v4

    .line 42
    invoke-static {v2, v3}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->c:Lj$/time/Duration;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-gtz v3, :cond_3

    .line 53
    .line 54
    :goto_1
    return-object v1

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->f:Lj$/time/Duration;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-gtz v1, :cond_4

    .line 62
    .line 63
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;->f:Lcom/google/auth/oauth2/OAuth2Credentials$CacheState;

    .line 64
    .line 65
    :cond_4
    :goto_2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()Lcom/google/auth/oauth2/AccessToken;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "OAuth2Credentials instance does not support refreshing the access token. An instance with a new access token should be used, or a derived type that supports refreshing."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->h:Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->f:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/auth/oauth2/OAuth2Credentials$OAuthValue;->c:Lcom/google/auth/oauth2/AccessToken;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    move-object v0, v1

    .line 12
    :goto_0
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->b(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "requestMetadata"

    .line 17
    .line 18
    invoke-virtual {v2, v1, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "temporaryAccess"

    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
