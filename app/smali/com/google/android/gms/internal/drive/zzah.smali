.class final Lcom/google/android/gms/internal/drive/zzah;
.super Lcom/google/android/gms/internal/drive/zzam;


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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzr;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzr;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/drive/zzak;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/drive/zzak;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/drive/zzeo;->e3(Lcom/google/android/gms/internal/drive/zzr;Lcom/google/android/gms/internal/drive/zzl;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
