.class final Lcom/google/android/gms/cast/zzj;
.super Lcom/google/android/gms/cast/internal/zzae;
.source "SourceFile"


# virtual methods
.method public final b(Lcom/google/android/gms/cast/internal/zzx;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/cast/internal/zzx;->h(Lcom/google/android/gms/cast/internal/zzae;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/cast/internal/zzah;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzx;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzff;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zza;->I1()Landroid/os/Parcel;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/cast/zzc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x4

    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zza;->v2(ILandroid/os/Parcel;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/16 v0, 0x7e0

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/internal/zzx;->k(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzc;->a()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzj;->b(Lcom/google/android/gms/cast/internal/zzx;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
