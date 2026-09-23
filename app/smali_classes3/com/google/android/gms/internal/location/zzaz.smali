.class public final Lcom/google/android/gms/internal/location/zzaz;
.super Lcom/google/android/gms/internal/location/zzi;
.source "SourceFile"


# instance fields
.field public final g:Lcom/google/android/gms/internal/location/zzav;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/location/zzi;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/common/internal/ClientSettings;)V

    .line 2
    .line 3
    .line 4
    move-object p2, p1

    .line 5
    move-object p1, p0

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/location/zzav;

    .line 7
    .line 8
    iget-object p4, p1, Lcom/google/android/gms/internal/location/zzi;->f:Lcom/google/android/gms/internal/location/zzbg;

    .line 9
    .line 10
    invoke-direct {p3, p2, p4}, Lcom/google/android/gms/internal/location/zzav;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/location/zzbg;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p1, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final d()Lcom/google/android/gms/location/LocationAvailability;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/internal/location/zzh;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/google/android/gms/internal/location/zzh;->a:Lcom/google/android/gms/internal/location/zzi;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v0, v0, Lcom/google/android/gms/internal/location/zzav;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/location/zzam;->z0(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public final disconnect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/zzav;->c()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v1

    .line 24
    :try_start_2
    const-string v2, "LocationClientImpl"

    .line 25
    .line 26
    const-string v3, "Client disconnected before listeners could be cleaned up"

    .line 27
    .line 28
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    throw v1
.end method

.method public final e(Lcom/google/android/gms/internal/location/zzah;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/location/zzh;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/location/zzh;->a:Lcom/google/android/gms/internal/location/zzi;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/location/zzbc;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v7, p1

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/location/zzam;->f0(Lcom/google/android/gms/internal/location/zzbc;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/location/zzh;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/location/zzh;->a:Lcom/google/android/gms/internal/location/zzi;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzam;->zzp()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/location/zzh;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/location/zzh;->a:Lcom/google/android/gms/internal/location/zzi;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzam;->zzq()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/location/zzah;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/location/zzh;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/location/zzh;->a:Lcom/google/android/gms/internal/location/zzi;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/zzam;->p3(Lcom/google/android/gms/internal/location/zzah;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final i(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 2
    .line 3
    .line 4
    const-string v0, "locationSettingsRequest can\'t be null nor empty."

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const-string v1, "listener can\'t be null."

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/location/zzay;

    .line 17
    .line 18
    const-string v3, "com.google.android.gms.location.internal.ISettingsCallbacks"

    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/location/zzb;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, v2, Lcom/google/android/gms/internal/location/zzay;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/android/gms/internal/location/zzam;

    .line 33
    .line 34
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/location/zzam;->G3(Lcom/google/android/gms/internal/location/zzao;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const-string v1, "detectionIntervalMillis must be >= 0"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/location/zzam;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/location/zzam;->zzh()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final k(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 2
    .line 3
    .line 4
    const-string v0, "geofencingRequest can\'t be null."

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string v0, "PendingIntent must be specified."

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v0, "ResultHolder not provided."

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/internal/location/zzaw;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzaj;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, v0, Lcom/google/android/gms/internal/location/zzaw;->c:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/location/zzam;

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/location/zzam;->m0(Lcom/google/android/gms/internal/location/zzak;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final l(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 2
    .line 3
    .line 4
    const-string v0, "PendingIntent must be specified."

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string v0, "ResultHolder not provided."

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/location/zzax;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/location/zzax;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/location/zzam;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/location/zzam;->h0(Lcom/google/android/gms/internal/location/zzak;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final usesClientTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
