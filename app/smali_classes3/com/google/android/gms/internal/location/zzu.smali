.class final Lcom/google/android/gms/internal/location/zzu;
.super Lcom/google/android/gms/internal/location/zzx;
.source "SourceFile"


# virtual methods
.method public final doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/location/zzaz;

    .line 2
    .line 3
    new-instance v6, Lcom/google/android/gms/internal/location/zzy;

    .line 4
    .line 5
    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/location/zzy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzaz;->g:Lcom/google/android/gms/internal/location/zzav;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzav;->a:Lcom/google/android/gms/internal/location/zzbg;

    .line 11
    .line 12
    check-cast p1, Lcom/google/android/gms/internal/location/zzh;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/google/android/gms/internal/location/zzh;->a:Lcom/google/android/gms/internal/location/zzi;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzh;->a()Lcom/google/android/gms/internal/location/zzam;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/location/zzba;->F()Lcom/google/android/gms/internal/location/zzba;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/location/zzbc;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/location/zzbc;-><init>(ILcom/google/android/gms/internal/location/zzba;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/location/zzam;->f0(Lcom/google/android/gms/internal/location/zzbc;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
