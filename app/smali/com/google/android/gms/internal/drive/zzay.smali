.class final Lcom/google/android/gms/internal/drive/zzay;
.super Lcom/google/android/gms/internal/drive/zzav;


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2

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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzgy;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzgy;-><init>(Lcom/google/android/gms/internal/drive/zzav;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/drive/zzeo;->o2(Lcom/google/android/gms/internal/drive/zzgs;Lcom/google/android/gms/internal/drive/zzgy;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
