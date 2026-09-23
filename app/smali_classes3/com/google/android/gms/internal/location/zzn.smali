.class final Lcom/google/android/gms/internal/location/zzn;
.super Lcom/google/android/gms/internal/location/zzx;
.source "SourceFile"


# virtual methods
.method public final doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/location/zzaz;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "LocationCallback"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->createListenerKey(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v7, Lcom/google/android/gms/internal/location/zzy;

    .line 11
    .line 12
    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/location/zzy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 18
    .line 19
    check-cast v1, Lcom/google/android/gms/internal/location/zzh;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/gms/internal/location/zzh;->a:Lcom/google/android/gms/internal/location/zzi;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 24
    .line 25
    .line 26
    const-string v1, "Invalid null listener key"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v8, p1, Lcom/google/android/gms/internal/location/zzav;->e:Ljava/util/HashMap;

    .line 32
    .line 33
    monitor-enter v8

    .line 34
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/location/zzav;->e:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v6, v0

    .line 41
    check-cast v6, Lcom/google/android/gms/internal/location/zzar;

    .line 42
    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    invoke-virtual {v6}, Lcom/google/android/gms/internal/location/zzar;->zzc()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 49
    .line 50
    check-cast p1, Lcom/google/android/gms/internal/location/zzh;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v1, Lcom/google/android/gms/internal/location/zzbc;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v2, 0x2

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/location/zzam;->f0(Lcom/google/android/gms/internal/location/zzbc;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    move-object p1, v0

    .line 71
    goto :goto_1

    .line 72
    :cond_0
    :goto_0
    monitor-exit v8

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p1
.end method
