.class final Lcom/google/android/gms/internal/drive/zzcc;
.super Lcom/google/android/gms/internal/drive/zzcg;


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzaw;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/drive/zzeo;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/drive/zzce;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzce;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/drive/zzeo;->C2(Lcom/google/android/gms/internal/drive/zzl;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
