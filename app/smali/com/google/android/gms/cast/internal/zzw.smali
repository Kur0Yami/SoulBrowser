.class final Lcom/google/android/gms/cast/internal/zzw;
.super Lcom/google/android/gms/cast/internal/zzai;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final f:Lcom/google/android/gms/internal/cast/zzfk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzai;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/cast/zzfk;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->f:Lcom/google/android/gms/internal/cast/zzfk;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final G0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p1, v1, v2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    aput-object p2, v1, v2

    .line 20
    .line 21
    sget-object v2, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 22
    .line 23
    const-string v3, "Receive (type=text, ns=%s) %s"

    .line 24
    .line 25
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/google/android/gms/cast/internal/zzv;

    .line 29
    .line 30
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/cast/internal/zzv;-><init>(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zzx;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->f:Lcom/google/android/gms/internal/cast/zzfk;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final T2(Lcom/google/android/gms/cast/internal/zzac;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v1, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v3, "onDeviceStatusChanged"

    .line 18
    .line 19
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/google/android/gms/cast/internal/zzt;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/cast/internal/zzt;-><init>(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/cast/internal/zzac;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->f:Lcom/google/android/gms/internal/cast/zzfk;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final b1(Lcom/google/android/gms/cast/internal/zza;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v1, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v3, "onApplicationStatusChanged"

    .line 18
    .line 19
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/google/android/gms/cast/internal/zzu;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/cast/internal/zzu;-><init>(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/cast/internal/zza;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->f:Lcom/google/android/gms/internal/cast/zzfk;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/cast/internal/zzx;->v:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/google/android/gms/cast/internal/zzx;->w:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/internal/zzx;->k(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/google/android/gms/cast/internal/zzx;->g:Lcom/google/android/gms/cast/Cast$Listener;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/gms/cast/internal/zzs;

    .line 25
    .line 26
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/cast/internal/zzs;-><init>(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zzx;I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/cast/internal/zzw;->f:Lcom/google/android/gms/internal/cast/zzfk;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/internal/zzx;->k(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final e2()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "Deprecated callback: \"onStatusreceived\""

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j0(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 13
    .line 14
    array-length p2, p2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object p1, v0, v1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    aput-object p2, v0, p1

    .line 27
    .line 28
    sget-object p1, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 29
    .line 30
    const-string p2, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final o3(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzx;->j(IJ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final p(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/internal/zzx;->k(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final z4(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/cast/internal/zzx;->c:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/google/android/gms/cast/ApplicationMetadata;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/google/android/gms/cast/internal/zzx;->v:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, v0, Lcom/google/android/gms/cast/internal/zzx;->w:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, v0, Lcom/google/android/gms/cast/internal/zzx;->l:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v1, Lcom/google/android/gms/cast/internal/zzx;->C:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/cast/internal/zzx;->z:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    new-instance v3, Lcom/google/android/gms/cast/internal/zzr;

    .line 30
    .line 31
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 35
    .line 36
    .line 37
    move-object v5, p1

    .line 38
    move-object v6, p2

    .line 39
    move-object v7, p3

    .line 40
    move v8, p4

    .line 41
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/cast/internal/zzr;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, v0, Lcom/google/android/gms/cast/internal/zzx;->z:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p1, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    monitor-exit v1

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p1
.end method

.method public final zzb(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-boolean v2, v0, Lcom/google/android/gms/cast/internal/zzx;->p:Z

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    iput v3, v0, Lcom/google/android/gms/cast/internal/zzx;->s:I

    .line 18
    .line 19
    iput v3, v0, Lcom/google/android/gms/cast/internal/zzx;->t:I

    .line 20
    .line 21
    iput-object v1, v0, Lcom/google/android/gms/cast/internal/zzx;->c:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/google/android/gms/cast/internal/zzx;->l:Ljava/lang/String;

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    iput-wide v3, v0, Lcom/google/android/gms/cast/internal/zzx;->q:D

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/zzx;->e()V

    .line 30
    .line 31
    .line 32
    iput-boolean v2, v0, Lcom/google/android/gms/cast/internal/zzx;->m:Z

    .line 33
    .line 34
    iput-object v1, v0, Lcom/google/android/gms/cast/internal/zzx;->r:Lcom/google/android/gms/cast/zzao;

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    :goto_0
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v3, 0x1

    .line 45
    new-array v3, v3, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object v0, v3, v2

    .line 48
    .line 49
    sget-object v0, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 50
    .line 51
    const-string v2, "ICastDeviceControllerListener.onDisconnected: %d"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    const/4 p1, 0x2

    .line 59
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerConnectionSuspended(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    return-void
.end method

.method public final zzc(I)V
    .locals 0

    return-void
.end method

.method public final zzf(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/internal/zzx;->f(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzp(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzw;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/cast/internal/zzx;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/internal/zzx;->j(IJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
