.class final Lcom/google/android/gms/internal/drive/zzgl;
.super Lcom/google/android/gms/internal/drive/zzl;


# virtual methods
.method public final S1(Lcom/google/android/gms/internal/drive/zzfh;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/drive/zzfh;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS_CACHE:Lcom/google/android/gms/common/api/Status;

    .line 13
    .line 14
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbi;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzfh;->c:Lcom/google/android/gms/drive/Contents;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzbi;-><init>(Lcom/google/android/gms/drive/Contents;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public final W2(Lcom/google/android/gms/internal/drive/zzfl;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final r3(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
