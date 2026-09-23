.class final Lcom/google/android/gms/cast/zzbl;
.super Lcom/google/android/gms/cast/internal/zzai;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/zzbm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/zzbm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/zzai;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final G0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p2, v0, v1

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/cast/zzbm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 11
    .line 12
    const-string v2, "Receive (type=text, ns=%s) %s"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->i()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/google/android/gms/cast/zzbj;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/cast/zzbj;-><init>(Lcom/google/android/gms/cast/zzbl;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final T2(Lcom/google/android/gms/cast/internal/zzac;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->i()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbh;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbh;-><init>(Lcom/google/android/gms/cast/zzbl;Lcom/google/android/gms/cast/internal/zzac;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b1(Lcom/google/android/gms/cast/internal/zza;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->i()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbi;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbi;-><init>(Lcom/google/android/gms/cast/zzbl;Lcom/google/android/gms/cast/internal/zza;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/zzbm;->g(I)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbm;->t:Lcom/google/android/gms/cast/Cast$Listener;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->i()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/google/android/gms/cast/zzbg;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbg;-><init>(Lcom/google/android/gms/cast/zzbl;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/zzbm;->g(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e2()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/zzbm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "Deprecated callback: \"onStatusReceived\""

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->i()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbf;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbf;-><init>(Lcom/google/android/gms/cast/zzbl;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final j0(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/zzbm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    array-length p2, p2

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    aput-object p1, v0, v1

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    aput-object p2, v0, p1

    .line 16
    .line 17
    sget-object p1, Lcom/google/android/gms/cast/zzbm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 18
    .line 19
    const-string p2, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final o3(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/cast/zzbm;->h(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/zzbm;->g(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final z4(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/cast/zzbm;->j:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 4
    .line 5
    iput-object p2, v0, Lcom/google/android/gms/cast/zzbm;->k:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/cast/internal/zzr;

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 13
    .line 14
    .line 15
    move-object v3, p1

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move v6, p4

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/cast/internal/zzr;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, Lcom/google/android/gms/cast/zzbm;->h:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p2, v0, Lcom/google/android/gms/cast/zzbm;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object p2, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 37
    iput-object p2, v0, Lcom/google/android/gms/cast/zzbm;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 38
    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p2
.end method

.method public final zzb(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->i()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbk;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbk;-><init>(Lcom/google/android/gms/cast/zzbl;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzc(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/zzbm;->i()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/cast/zzbe;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/cast/zzbe;-><init>(Lcom/google/android/gms/cast/zzbl;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzf(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/zzbm;->l(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzp(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/zzbm;->h(IJ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
