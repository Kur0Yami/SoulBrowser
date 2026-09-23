.class public Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ParseAdsInfoCallback;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;,
        Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;
    }
.end annotation


# static fields
.field public static final k:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/android/gms/internal/cast/zzfk;

.field public final c:Lcom/google/android/gms/cast/internal/zzar;

.field public final d:Lcom/google/android/gms/cast/framework/media/zzax;

.field public final e:Lcom/google/android/gms/cast/framework/media/MediaQueue;

.field public f:Lcom/google/android/gms/cast/zzq;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final i:Lj$/util/concurrent/ConcurrentHashMap;

.field public final j:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "RemoteMediaClient"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->k:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/cast/internal/zzar;->x:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzar;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->i:Lj$/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j:Lj$/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->a:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/cast/zzfk;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->b:Lcom/google/android/gms/internal/cast/zzfk;

    .line 49
    .line 50
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzax;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzax;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->d:Lcom/google/android/gms/cast/framework/media/zzax;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/google/android/gms/cast/internal/zzar;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 64
    .line 65
    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/media/zzbe;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p1, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 71
    .line 72
    iput-object v0, p1, Lcom/google/android/gms/cast/internal/zzq;->c:Lcom/google/android/gms/cast/internal/zzas;

    .line 73
    .line 74
    new-instance p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->e:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 80
    .line 81
    return-void
.end method

.method public static I()Lcom/google/android/gms/common/api/PendingResult;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzaz;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 8
    .line 9
    const/16 v3, 0x11

    .line 10
    .line 11
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzay;

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/cast/framework/media/zzay;-><init>(Lcom/google/android/gms/cast/framework/media/zzaz;Lcom/google/android/gms/common/api/Status;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static final L(Lcom/google/android/gms/cast/framework/media/zzbc;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/zzbc;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 6
    .line 7
    const/16 v1, 0x834

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/cast/framework/media/zzbb;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/cast/framework/media/zzbb;-><init>(Lcom/google/android/gms/cast/framework/media/zzbc;Lcom/google/android/gms/common/api/Status;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    throw p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzar;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzar;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzap;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzap;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final B(Lcom/google/android/gms/cast/zzbm;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->d:Lcom/google/android/gms/cast/framework/media/zzax;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f:Lcom/google/android/gms/cast/zzq;

    .line 4
    .line 5
    if-ne v1, p1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 11
    .line 12
    iget-object v3, v2, Lcom/google/android/gms/cast/internal/zzd;->d:Ljava/util/List;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/google/android/gms/cast/internal/zzav;

    .line 30
    .line 31
    const/16 v6, 0x7d2

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Lcom/google/android/gms/cast/internal/zzav;->e(I)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/cast/internal/zzar;->i()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->e:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->a()V

    .line 46
    .line 47
    .line 48
    const-string v2, "Must be called from the main thread."

    .line 49
    .line 50
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/google/android/gms/cast/internal/zzq;->b:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v1, v2}, Lcom/google/android/gms/cast/zzq;->a(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/zzax;->a:Lcom/google/android/gms/cast/zzq;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->b:Lcom/google/android/gms/internal/cast/zzfk;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1

    .line 71
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f:Lcom/google/android/gms/cast/zzq;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/zzax;->a:Lcom/google/android/gms/cast/zzq;

    .line 76
    .line 77
    :cond_3
    :goto_3
    return-void
.end method

.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f:Lcom/google/android/gms/cast/zzq;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "Must be called from the main thread."

    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/google/android/gms/cast/internal/zzq;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v0, v2, p0}, Lcom/google/android/gms/cast/zzq;->e(Ljava/lang/String;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Lcom/google/android/gms/tasks/Task;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzu;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzu;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final D()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final E()Z
    .locals 6

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->l()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-wide/16 v2, 0x2

    .line 22
    .line 23
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->l:J

    .line 24
    .line 25
    and-long/2addr v2, v4

    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    cmp-long v2, v2, v4

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaStatus;->y:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :cond_2
    :goto_1
    return v1
.end method

.method public final F()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f()Lcom/google/android/gms/cast/MediaInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->k()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x6

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->o()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    return v0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->n()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    return v0

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->m()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->e()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaQueueItem;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    return v2

    .line 56
    :cond_4
    :goto_0
    return v1
.end method

.method public final G()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/android/gms/cast/MediaStatus;

    .line 17
    .line 18
    const-wide/16 v1, 0x80

    .line 19
    .line 20
    iget-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->l:J

    .line 21
    .line 22
    and-long/2addr v1, v3

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v1, v1, v3

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    iget v1, v0, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    iget v1, v0, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 36
    .line 37
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaStatus;->B:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 55
    return v0

    .line 56
    :cond_3
    :goto_1
    return v2
.end method

.method public final H()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/android/gms/cast/MediaStatus;

    .line 17
    .line 18
    const-wide/16 v1, 0x40

    .line 19
    .line 20
    iget-wide v3, v0, Lcom/google/android/gms/cast/MediaStatus;->l:J

    .line 21
    .line 22
    and-long/2addr v1, v3

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v1, v1, v3

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    iget v1, v0, Lcom/google/android/gms/cast/MediaStatus;->t:I

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    iget v1, v0, Lcom/google/android/gms/cast/MediaStatus;->g:I

    .line 36
    .line 37
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->B:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaStatus;->u:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    if-ge v1, v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 63
    return v0

    .line 64
    :cond_3
    :goto_1
    return v2
.end method

.method public final J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f:Lcom/google/android/gms/cast/zzq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K(Ljava/util/Set;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->o()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->n()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->k()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->D()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->m()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const-wide/16 v1, 0x0

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->e()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaQueueItem;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;

    .line 64
    .line 65
    iget-wide v4, p1, Lcom/google/android/gms/cast/MediaInfo;->i:J

    .line 66
    .line 67
    invoke-interface {v3, v1, v2, v4, v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;->a(JJ)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;

    .line 86
    .line 87
    invoke-interface {v0, v1, v2, v1, v2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;->a(JJ)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->d()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->i()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;->a(JJ)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 44

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v0, "insertBefore"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/google/android/gms/cast/internal/zzar;->j:Lcom/google/android/gms/cast/internal/zzav;

    .line 10
    .line 11
    iget-object v5, v3, Lcom/google/android/gms/cast/internal/zzd;->d:Ljava/util/List;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    new-array v7, v6, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    aput-object v1, v7, v8

    .line 18
    .line 19
    iget-object v9, v3, Lcom/google/android/gms/cast/internal/zzq;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 20
    .line 21
    const-string v10, "message received: %s"

    .line 22
    .line 23
    invoke-virtual {v9, v10, v7}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v7, v9, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 27
    .line 28
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v10, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v11, "type"

    .line 34
    .line 35
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    const-string v12, "requestId"

    .line 40
    .line 41
    const-wide/16 v13, -0x1

    .line 42
    .line 43
    invoke-virtual {v10, v12, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v12

    .line 47
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    move/from16 v16, v6

    .line 52
    .line 53
    const-string v6, "itemIds"

    .line 54
    .line 55
    const/4 v15, 0x0

    .line 56
    sparse-switch v14, :sswitch_data_0

    .line 57
    .line 58
    .line 59
    goto/16 :goto_15

    .line 60
    .line 61
    :sswitch_0
    const-string v0, "QUEUE_ITEM_IDS"

    .line 62
    .line 63
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1d

    .line 68
    .line 69
    :try_start_1
    iget-object v4, v3, Lcom/google/android/gms/cast/internal/zzar;->t:Lcom/google/android/gms/cast/internal/zzav;

    .line 70
    .line 71
    invoke-virtual {v4, v12, v13, v8, v15}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v10, v0}, Lcom/google/android/gms/cast/internal/zzar;->g(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 78
    .line 79
    if-eqz v0, :cond_1d

    .line 80
    .line 81
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zzar;->h(Lorg/json/JSONArray;)[I

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_1d

    .line 90
    .line 91
    iget-object v3, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 92
    .line 93
    check-cast v3, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 94
    .line 95
    invoke-virtual {v3, v0}, Lcom/google/android/gms/cast/framework/media/zzbe;->e([I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    goto/16 :goto_16

    .line 101
    .line 102
    :sswitch_1
    const-string v0, "MEDIA_STATUS"

    .line 103
    .line 104
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_1d

    .line 109
    .line 110
    :try_start_2
    const-string v0, "status"

    .line 111
    .line 112
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-lez v6, :cond_e

    .line 121
    .line 122
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v4, v12, v13}, Lcom/google/android/gms/cast/internal/zzav;->c(J)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    iget-object v6, v3, Lcom/google/android/gms/cast/internal/zzar;->o:Lcom/google/android/gms/cast/internal/zzav;

    .line 131
    .line 132
    invoke-virtual {v6}, Lcom/google/android/gms/cast/internal/zzav;->b()Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-eqz v10, :cond_1

    .line 137
    .line 138
    invoke-virtual {v6, v12, v13}, Lcom/google/android/gms/cast/internal/zzav;->c(J)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_0

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_0
    :goto_0
    move/from16 v6, v16

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_1
    :goto_1
    iget-object v6, v3, Lcom/google/android/gms/cast/internal/zzar;->p:Lcom/google/android/gms/cast/internal/zzav;

    .line 149
    .line 150
    invoke-virtual {v6}, Lcom/google/android/gms/cast/internal/zzav;->b()Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-eqz v10, :cond_2

    .line 155
    .line 156
    invoke-virtual {v6, v12, v13}, Lcom/google/android/gms/cast/internal/zzav;->c(J)Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-nez v6, :cond_2

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    move v6, v8

    .line 164
    :goto_2
    if-nez v4, :cond_4

    .line 165
    .line 166
    iget-object v4, v3, Lcom/google/android/gms/cast/internal/zzar;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 167
    .line 168
    if-nez v4, :cond_3

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_3
    invoke-virtual {v4, v0, v6}, Lcom/google/android/gms/cast/MediaStatus;->X(Lorg/json/JSONObject;I)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    goto :goto_4

    .line 176
    :cond_4
    :goto_3
    new-instance v17, Lcom/google/android/gms/cast/MediaStatus;

    .line 177
    .line 178
    const/16 v42, 0x0

    .line 179
    .line 180
    const/16 v43, 0x0

    .line 181
    .line 182
    const/16 v18, 0x0

    .line 183
    .line 184
    const-wide/16 v19, 0x0

    .line 185
    .line 186
    const/16 v21, 0x0

    .line 187
    .line 188
    const-wide/16 v22, 0x0

    .line 189
    .line 190
    const/16 v24, 0x0

    .line 191
    .line 192
    const/16 v25, 0x0

    .line 193
    .line 194
    const-wide/16 v26, 0x0

    .line 195
    .line 196
    const-wide/16 v28, 0x0

    .line 197
    .line 198
    const-wide/16 v30, 0x0

    .line 199
    .line 200
    const/16 v32, 0x0

    .line 201
    .line 202
    const/16 v33, 0x0

    .line 203
    .line 204
    const/16 v34, 0x0

    .line 205
    .line 206
    const/16 v35, 0x0

    .line 207
    .line 208
    const/16 v36, 0x0

    .line 209
    .line 210
    const/16 v37, 0x0

    .line 211
    .line 212
    const/16 v38, 0x0

    .line 213
    .line 214
    const/16 v39, 0x0

    .line 215
    .line 216
    const/16 v40, 0x0

    .line 217
    .line 218
    const/16 v41, 0x0

    .line 219
    .line 220
    invoke-direct/range {v17 .. v43}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/ArrayList;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;Lcom/google/android/gms/cast/MediaLiveSeekableRange;Lcom/google/android/gms/cast/MediaQueueData;)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v4, v17

    .line 224
    .line 225
    invoke-virtual {v4, v0, v8}, Lcom/google/android/gms/cast/MediaStatus;->X(Lorg/json/JSONObject;I)I

    .line 226
    .line 227
    .line 228
    iput-object v4, v3, Lcom/google/android/gms/cast/internal/zzar;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 229
    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 231
    .line 232
    .line 233
    move-result-wide v10

    .line 234
    iput-wide v10, v3, Lcom/google/android/gms/cast/internal/zzar;->e:J

    .line 235
    .line 236
    const/16 v0, 0x7f

    .line 237
    .line 238
    :goto_4
    and-int/lit8 v4, v0, 0x1

    .line 239
    .line 240
    if-eqz v4, :cond_5

    .line 241
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 243
    .line 244
    .line 245
    move-result-wide v10

    .line 246
    iput-wide v10, v3, Lcom/google/android/gms/cast/internal/zzar;->e:J

    .line 247
    .line 248
    const/4 v4, -0x1

    .line 249
    iput v4, v3, Lcom/google/android/gms/cast/internal/zzar;->i:I

    .line 250
    .line 251
    move/from16 v4, v16

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_5
    move v4, v8

    .line 255
    :goto_5
    and-int/lit8 v6, v0, 0x2

    .line 256
    .line 257
    if-eqz v6, :cond_6

    .line 258
    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 260
    .line 261
    .line 262
    move-result-wide v10

    .line 263
    iput-wide v10, v3, Lcom/google/android/gms/cast/internal/zzar;->e:J

    .line 264
    .line 265
    move/from16 v4, v16

    .line 266
    .line 267
    :cond_6
    and-int/lit16 v6, v0, 0x80

    .line 268
    .line 269
    if-eqz v6, :cond_7

    .line 270
    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 272
    .line 273
    .line 274
    move-result-wide v10

    .line 275
    iput-wide v10, v3, Lcom/google/android/gms/cast/internal/zzar;->e:J

    .line 276
    .line 277
    :cond_7
    and-int/lit8 v6, v0, 0x4

    .line 278
    .line 279
    if-eqz v6, :cond_8

    .line 280
    .line 281
    iget-object v6, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 282
    .line 283
    if-eqz v6, :cond_8

    .line 284
    .line 285
    check-cast v6, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 286
    .line 287
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/zzbe;->b()V

    .line 288
    .line 289
    .line 290
    :cond_8
    and-int/lit8 v6, v0, 0x8

    .line 291
    .line 292
    if-eqz v6, :cond_9

    .line 293
    .line 294
    iget-object v6, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 295
    .line 296
    if-eqz v6, :cond_9

    .line 297
    .line 298
    check-cast v6, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 299
    .line 300
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/zzbe;->c()V

    .line 301
    .line 302
    .line 303
    :cond_9
    and-int/lit8 v6, v0, 0x10

    .line 304
    .line 305
    if-eqz v6, :cond_a

    .line 306
    .line 307
    iget-object v6, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 308
    .line 309
    if-eqz v6, :cond_a

    .line 310
    .line 311
    check-cast v6, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 312
    .line 313
    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/media/zzbe;->d()V

    .line 314
    .line 315
    .line 316
    :cond_a
    and-int/lit8 v6, v0, 0x20

    .line 317
    .line 318
    if-eqz v6, :cond_c

    .line 319
    .line 320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 321
    .line 322
    .line 323
    move-result-wide v10

    .line 324
    iput-wide v10, v3, Lcom/google/android/gms/cast/internal/zzar;->e:J

    .line 325
    .line 326
    iget-object v6, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 327
    .line 328
    if-eqz v6, :cond_c

    .line 329
    .line 330
    check-cast v6, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 331
    .line 332
    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/zzbe;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 333
    .line 334
    iget-object v10, v6, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 335
    .line 336
    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    if-eqz v11, :cond_b

    .line 345
    .line 346
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v11

    .line 350
    check-cast v11, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    .line 351
    .line 352
    invoke-interface {v11}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;->l()V

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_b
    iget-object v6, v6, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 357
    .line 358
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    if-eqz v10, :cond_c

    .line 367
    .line 368
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    check-cast v10, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 373
    .line 374
    invoke-virtual {v10}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->a()V

    .line 375
    .line 376
    .line 377
    goto :goto_7

    .line 378
    :cond_c
    and-int/lit8 v0, v0, 0x40

    .line 379
    .line 380
    if-eqz v0, :cond_d

    .line 381
    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 383
    .line 384
    .line 385
    move-result-wide v10

    .line 386
    iput-wide v10, v3, Lcom/google/android/gms/cast/internal/zzar;->e:J

    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_d
    if-eqz v4, :cond_12

    .line 390
    .line 391
    :goto_8
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 392
    .line 393
    if-eqz v0, :cond_12

    .line 394
    .line 395
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 396
    .line 397
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/zzbe;->a()V

    .line 398
    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_e
    iput-object v15, v3, Lcom/google/android/gms/cast/internal/zzar;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 402
    .line 403
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 404
    .line 405
    if-eqz v0, :cond_f

    .line 406
    .line 407
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/zzbe;->a()V

    .line 410
    .line 411
    .line 412
    :cond_f
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 413
    .line 414
    if-eqz v0, :cond_10

    .line 415
    .line 416
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/zzbe;->b()V

    .line 419
    .line 420
    .line 421
    :cond_10
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 422
    .line 423
    if-eqz v0, :cond_11

    .line 424
    .line 425
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/zzbe;->c()V

    .line 428
    .line 429
    .line 430
    :cond_11
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 431
    .line 432
    if-eqz v0, :cond_12

    .line 433
    .line 434
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/zzbe;->d()V

    .line 437
    .line 438
    .line 439
    :cond_12
    :goto_9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-eqz v3, :cond_1d

    .line 448
    .line 449
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    check-cast v3, Lcom/google/android/gms/cast/internal/zzav;

    .line 454
    .line 455
    invoke-virtual {v3, v12, v13, v8, v15}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 456
    .line 457
    .line 458
    goto :goto_a

    .line 459
    :sswitch_2
    const-string v0, "INVALID_PLAYER_STATE"

    .line 460
    .line 461
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_1d

    .line 466
    .line 467
    :try_start_3
    const-string v0, "received unexpected error: Invalid Player State."

    .line 468
    .line 469
    new-array v3, v8, [Ljava/lang/Object;

    .line 470
    .line 471
    invoke-virtual {v9, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    if-eqz v3, :cond_1d

    .line 487
    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    check-cast v3, Lcom/google/android/gms/cast/internal/zzav;

    .line 493
    .line 494
    invoke-static {v10}, Lcom/google/android/gms/cast/internal/zzar;->j(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzaq;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    const/16 v5, 0x834

    .line 499
    .line 500
    invoke-virtual {v3, v12, v13, v5, v4}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 501
    .line 502
    .line 503
    goto :goto_b

    .line 504
    :sswitch_3
    const-string v4, "QUEUE_CHANGE"

    .line 505
    .line 506
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    if-eqz v5, :cond_1d

    .line 511
    .line 512
    :try_start_4
    iget-object v5, v3, Lcom/google/android/gms/cast/internal/zzar;->v:Lcom/google/android/gms/cast/internal/zzav;

    .line 513
    .line 514
    invoke-virtual {v5, v12, v13, v8, v15}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, v10, v4}, Lcom/google/android/gms/cast/internal/zzar;->g(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    iget-object v4, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 521
    .line 522
    if-eqz v4, :cond_1d

    .line 523
    .line 524
    const-string v4, "changeType"

    .line 525
    .line 526
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    invoke-static {v5}, Lcom/google/android/gms/cast/internal/zzar;->h(Lorg/json/JSONArray;)[I

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 539
    .line 540
    .line 541
    move-result v11

    .line 542
    if-eqz v5, :cond_1d

    .line 543
    .line 544
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 545
    .line 546
    .line 547
    move-result v12
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 548
    sparse-switch v12, :sswitch_data_1

    .line 549
    .line 550
    .line 551
    goto/16 :goto_15

    .line 552
    .line 553
    :sswitch_4
    const-string v0, "ITEMS_CHANGE"

    .line 554
    .line 555
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_1d

    .line 560
    .line 561
    :try_start_5
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 562
    .line 563
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 564
    .line 565
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzbe;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 566
    .line 567
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 568
    .line 569
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    if-eqz v3, :cond_13

    .line 578
    .line 579
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    check-cast v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 584
    .line 585
    invoke-virtual {v3, v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->i([I)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 586
    .line 587
    .line 588
    goto :goto_c

    .line 589
    :cond_13
    return-void

    .line 590
    :sswitch_5
    const-string v5, "UPDATE"

    .line 591
    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    if-eqz v4, :cond_1d

    .line 597
    .line 598
    :try_start_6
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    invoke-static {v4}, Lcom/google/android/gms/cast/internal/zzar;->h(Lorg/json/JSONArray;)[I

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    const-string v5, "A list of item IDs is expected in a QUEUE UPDATE message."

    .line 607
    .line 608
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    const-string v5, "reorderItemIds"

    .line 612
    .line 613
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    if-eqz v5, :cond_15

    .line 618
    .line 619
    invoke-static {v4}, Lcom/google/android/gms/cast/internal/CastUtils;->e([I)Ljava/util/ArrayList;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    invoke-static {v5}, Lcom/google/android/gms/cast/internal/zzar;->h(Lorg/json/JSONArray;)[I

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    check-cast v5, [I

    .line 636
    .line 637
    invoke-static {v5}, Lcom/google/android/gms/cast/internal/CastUtils;->e([I)Ljava/util/ArrayList;

    .line 638
    .line 639
    .line 640
    move-result-object v5

    .line 641
    iget-object v3, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 642
    .line 643
    check-cast v3, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 644
    .line 645
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/zzbe;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 646
    .line 647
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 648
    .line 649
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 654
    .line 655
    .line 656
    move-result v6

    .line 657
    if-eqz v6, :cond_14

    .line 658
    .line 659
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v6

    .line 663
    check-cast v6, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 664
    .line 665
    invoke-virtual {v6, v4, v5, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->l(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 666
    .line 667
    .line 668
    goto :goto_d

    .line 669
    :cond_14
    return-void

    .line 670
    :cond_15
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 671
    .line 672
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 673
    .line 674
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/framework/media/zzbe;->e([I)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    :sswitch_6
    const-string v0, "REMOVE"

    .line 679
    .line 680
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    if-eqz v0, :cond_1d

    .line 685
    .line 686
    :try_start_7
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 687
    .line 688
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 689
    .line 690
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzbe;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 691
    .line 692
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 693
    .line 694
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    if-eqz v3, :cond_16

    .line 703
    .line 704
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    check-cast v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 709
    .line 710
    invoke-virtual {v3, v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->j([I)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 711
    .line 712
    .line 713
    goto :goto_e

    .line 714
    :cond_16
    return-void

    .line 715
    :sswitch_7
    const-string v0, "INSERT"

    .line 716
    .line 717
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    if-eqz v0, :cond_1d

    .line 722
    .line 723
    :try_start_8
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 724
    .line 725
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 726
    .line 727
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzbe;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 728
    .line 729
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 730
    .line 731
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    if-eqz v3, :cond_17

    .line 740
    .line 741
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v3

    .line 745
    check-cast v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 746
    .line 747
    invoke-virtual {v3, v11, v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->h(I[I)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 748
    .line 749
    .line 750
    goto :goto_f

    .line 751
    :cond_17
    return-void

    .line 752
    :sswitch_8
    const-string v0, "ERROR"

    .line 753
    .line 754
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    if-eqz v0, :cond_1d

    .line 759
    .line 760
    :try_start_9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 765
    .line 766
    .line 767
    move-result v4

    .line 768
    if-eqz v4, :cond_18

    .line 769
    .line 770
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v4

    .line 774
    check-cast v4, Lcom/google/android/gms/cast/internal/zzav;

    .line 775
    .line 776
    invoke-static {v10}, Lcom/google/android/gms/cast/internal/zzar;->j(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzaq;

    .line 777
    .line 778
    .line 779
    move-result-object v5

    .line 780
    const/16 v6, 0x834

    .line 781
    .line 782
    invoke-virtual {v4, v12, v13, v6, v5}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V

    .line 783
    .line 784
    .line 785
    goto :goto_10

    .line 786
    :cond_18
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 787
    .line 788
    if-eqz v0, :cond_1d

    .line 789
    .line 790
    invoke-static {v10}, Lcom/google/android/gms/cast/MediaError;->F(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    .line 791
    .line 792
    .line 793
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 794
    .line 795
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 796
    .line 797
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzbe;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 798
    .line 799
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    if-eqz v3, :cond_19

    .line 810
    .line 811
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    check-cast v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 816
    .line 817
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    .line 818
    .line 819
    .line 820
    goto :goto_11

    .line 821
    :cond_19
    return-void

    .line 822
    :sswitch_9
    const-string v0, "LOAD_FAILED"

    .line 823
    .line 824
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    if-eqz v0, :cond_1d

    .line 829
    .line 830
    :try_start_a
    invoke-static {v10}, Lcom/google/android/gms/cast/internal/zzar;->j(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzaq;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    const/16 v5, 0x834

    .line 835
    .line 836
    invoke-virtual {v4, v12, v13, v5, v0}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    .line 837
    .line 838
    .line 839
    return-void

    .line 840
    :sswitch_a
    const-string v0, "INVALID_REQUEST"

    .line 841
    .line 842
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    if-eqz v0, :cond_1d

    .line 847
    .line 848
    :try_start_b
    const-string v0, "received unexpected error: Invalid Request."

    .line 849
    .line 850
    new-array v3, v8, [Ljava/lang/Object;

    .line 851
    .line 852
    invoke-virtual {v9, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .line 858
    .line 859
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 864
    .line 865
    .line 866
    move-result v3

    .line 867
    if-eqz v3, :cond_1d

    .line 868
    .line 869
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v3

    .line 873
    check-cast v3, Lcom/google/android/gms/cast/internal/zzav;

    .line 874
    .line 875
    invoke-static {v10}, Lcom/google/android/gms/cast/internal/zzar;->j(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzaq;

    .line 876
    .line 877
    .line 878
    move-result-object v4

    .line 879
    const/16 v5, 0x7d1

    .line 880
    .line 881
    invoke-virtual {v3, v12, v13, v5, v4}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    .line 882
    .line 883
    .line 884
    goto :goto_12

    .line 885
    :sswitch_b
    const-string v0, "QUEUE_ITEMS"

    .line 886
    .line 887
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    move-result v4

    .line 891
    if-eqz v4, :cond_1d

    .line 892
    .line 893
    :try_start_c
    iget-object v4, v3, Lcom/google/android/gms/cast/internal/zzar;->u:Lcom/google/android/gms/cast/internal/zzav;

    .line 894
    .line 895
    invoke-virtual {v4, v12, v13, v8, v15}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v3, v10, v0}, Lcom/google/android/gms/cast/internal/zzar;->g(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 902
    .line 903
    if-nez v0, :cond_1a

    .line 904
    .line 905
    goto :goto_15

    .line 906
    :cond_1a
    const-string v0, "items"

    .line 907
    .line 908
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 913
    .line 914
    .line 915
    move-result v4

    .line 916
    new-array v4, v4, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 917
    .line 918
    move v5, v8

    .line 919
    :goto_13
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 920
    .line 921
    .line 922
    move-result v6

    .line 923
    if-ge v5, v6, :cond_1b

    .line 924
    .line 925
    new-instance v6, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 926
    .line 927
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 928
    .line 929
    .line 930
    move-result-object v10

    .line 931
    invoke-direct {v6, v10}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lorg/json/JSONObject;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 935
    .line 936
    .line 937
    move-result-object v6

    .line 938
    aput-object v6, v4, v5

    .line 939
    .line 940
    add-int/lit8 v5, v5, 0x1

    .line 941
    .line 942
    goto :goto_13

    .line 943
    :cond_1b
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 944
    .line 945
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbe;

    .line 946
    .line 947
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzbe;->a:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 948
    .line 949
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 950
    .line 951
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 956
    .line 957
    .line 958
    move-result v3

    .line 959
    if-eqz v3, :cond_1c

    .line 960
    .line 961
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    check-cast v3, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;

    .line 966
    .line 967
    invoke-virtual {v3, v4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;->k([Lcom/google/android/gms/cast/MediaQueueItem;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    .line 968
    .line 969
    .line 970
    goto :goto_14

    .line 971
    :cond_1c
    return-void

    .line 972
    :sswitch_c
    const-string v0, "LOAD_CANCELLED"

    .line 973
    .line 974
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    move-result v0

    .line 978
    if-eqz v0, :cond_1d

    .line 979
    .line 980
    :try_start_d
    invoke-static {v10}, Lcom/google/android/gms/cast/internal/zzar;->j(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/internal/zzaq;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    const/16 v3, 0x835

    .line 985
    .line 986
    invoke-virtual {v4, v12, v13, v3, v0}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    .line 987
    .line 988
    .line 989
    :cond_1d
    :goto_15
    return-void

    .line 990
    :catch_1
    move-exception v0

    .line 991
    move/from16 v16, v6

    .line 992
    .line 993
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    const/4 v3, 0x2

    .line 998
    new-array v3, v3, [Ljava/lang/Object;

    .line 999
    .line 1000
    aput-object v0, v3, v8

    .line 1001
    .line 1002
    aput-object v1, v3, v16

    .line 1003
    .line 1004
    const-string v0, "Message is malformed (%s); ignoring: %s"

    .line 1005
    .line 1006
    invoke-virtual {v9, v0, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    .line 1012
    .line 1013
    return-void

    .line 1014
    nop

    .line 1015
    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_c
        -0x6ab4c52e -> :sswitch_b
        -0x430e23f9 -> :sswitch_a
        -0xfa7664a -> :sswitch_9
        0x3f2d9e8 -> :sswitch_8
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_7
        -0x7022137c -> :sswitch_6
        -0x6a6cd337 -> :sswitch_5
        0x42ef412f -> :sswitch_4
    .end sparse-switch
.end method

.method public final b(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)V
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->i:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j:Lj$/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/google/android/gms/cast/framework/media/zzbg;

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    new-instance v3, Lcom/google/android/gms/cast/framework/media/zzbg;

    .line 30
    .line 31
    invoke-direct {v3, p0, p2, p3}, Lcom/google/android/gms/cast/framework/media/zzbg;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p2, v3, Lcom/google/android/gms/cast/framework/media/zzbg;->a:Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, v3, Lcom/google/android/gms/cast/framework/media/zzbg;->e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 52
    .line 53
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->b:Lcom/google/android/gms/internal/cast/zzfk;

    .line 54
    .line 55
    iget-object p3, v3, Lcom/google/android/gms/cast/framework/media/zzbg;->c:Ljava/lang/Runnable;

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    const/4 p2, 0x1

    .line 61
    iput-boolean p2, v3, Lcom/google/android/gms/cast/framework/media/zzbg;->d:Z

    .line 62
    .line 63
    iget-wide v0, v3, Lcom/google/android/gms/cast/framework/media/zzbg;->b:J

    .line 64
    .line 65
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->b:Lcom/google/android/gms/internal/cast/zzfk;

    .line 66
    .line 67
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public final c()J
    .locals 11

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    const-string v0, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 10
    .line 11
    iget-wide v3, v2, Lcom/google/android/gms/cast/internal/zzar;->e:J

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v0, v3, v5

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, v2, Lcom/google/android/gms/cast/internal/zzar;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/cast/MediaStatus;->w:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 25
    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    iget-wide v4, v0, Lcom/google/android/gms/cast/MediaStatus;->h:D

    .line 29
    .line 30
    const-wide/16 v6, 0x0

    .line 31
    .line 32
    cmpl-double v8, v4, v6

    .line 33
    .line 34
    if-nez v8, :cond_1

    .line 35
    .line 36
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 37
    .line 38
    :cond_1
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 39
    .line 40
    const/4 v8, 0x2

    .line 41
    if-eq v0, v8, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-wide v6, v4

    .line 45
    :goto_0
    iget-wide v3, v3, Lcom/google/android/gms/cast/AdBreakStatus;->f:J

    .line 46
    .line 47
    move-wide v9, v6

    .line 48
    move-wide v5, v3

    .line 49
    move-wide v3, v9

    .line 50
    const-wide/16 v7, 0x0

    .line 51
    .line 52
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/cast/internal/zzar;->f(DJJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    :cond_3
    :goto_1
    monitor-exit v1

    .line 57
    return-wide v5

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw v0
.end method

.method public final d()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzar;->l()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    monitor-exit v0

    .line 16
    return-wide v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public final e()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget v1, v0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaStatus;->G(I)Lcom/google/android/gms/cast/MediaQueueItem;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final f()Lcom/google/android/gms/cast/MediaInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/gms/cast/internal/zzar;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public final g()Lcom/google/android/gms/cast/MediaStatus;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/gms/cast/internal/zzar;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public final h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v1, v1, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return v1

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method

.method public final i()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/gms/cast/internal/zzar;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/cast/MediaStatus;->c:Lcom/google/android/gms/cast/MediaInfo;

    .line 18
    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-wide v1, v1, Lcom/google/android/gms/cast/MediaInfo;->i:J

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    return-wide v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public final j()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->k()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->D()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->o()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->n()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->m()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return v0

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 40
    return v0
.end method

.method public final k()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f()Lcom/google/android/gms/cast/MediaInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->p:I

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final n()Z
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->l()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->a:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    const-string v2, "Must be called from the main thread."

    .line 29
    .line 30
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget v2, v2, Lcom/google/android/gms/cast/MediaStatus;->j:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v2, v1

    .line 45
    :goto_0
    monitor-exit v0

    .line 46
    const/4 v0, 0x2

    .line 47
    if-eq v2, v0, :cond_1

    .line 48
    .line 49
    return v1

    .line 50
    :cond_1
    return v3

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v1

    .line 53
    :cond_2
    return v1

    .line 54
    :cond_3
    return v3

    .line 55
    :cond_4
    return v1
.end method

.method public final o()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/MediaStatus;->i:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/google/android/gms/cast/MediaStatus;->v:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final q(Lcom/google/android/gms/cast/MediaLoadRequestData;)V
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzan;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzan;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/MediaLoadRequestData;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final r([Lcom/google/android/gms/cast/MediaQueueItem;IIJ)Lcom/google/android/gms/common/api/internal/BasePendingResult;
    .locals 7

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzx;

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    move-object v2, p1

    .line 23
    move v3, p2

    .line 24
    move v4, p3

    .line 25
    move-wide v5, p4

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/zzx;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJ)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final s()V
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzaf;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzaf;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzae;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzae;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final u(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;)V
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final v(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V
    .locals 3

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->i:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/cast/framework/media/zzbg;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/zzbg;->a:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-wide v1, v0, Lcom/google/android/gms/cast/framework/media/zzbg;->b:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j:Lj$/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object p1, v0, Lcom/google/android/gms/cast/framework/media/zzbg;->e:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->b:Lcom/google/android/gms/internal/cast/zzfk;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/zzbg;->c:Ljava/lang/Runnable;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, v0, Lcom/google/android/gms/cast/framework/media/zzbg;->d:Z

    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final w(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/internal/BasePendingResult;
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzas;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzas;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/MediaSeekOptions;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final x(J)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p1, v0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->a:J

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/cast/MediaSeekOptions;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->b:Z

    .line 11
    .line 12
    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/cast/MediaSeekOptions;-><init>(JZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->w(Lcom/google/android/gms/cast/MediaSeekOptions;)Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final y()V
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzt;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzt;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->J()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->I()Lcom/google/android/gms/common/api/PendingResult;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzaq;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/zzaq;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->L(Lcom/google/android/gms/cast/framework/media/zzbc;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
