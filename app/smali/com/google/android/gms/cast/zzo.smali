.class Lcom/google/android/gms/cast/zzo;
.super Lcom/google/android/gms/cast/internal/zzc;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# virtual methods
.method public b(Lcom/google/android/gms/cast/internal/zzx;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/zzn;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/zzn;-><init>(Lcom/google/android/gms/cast/zzo;Lcom/google/android/gms/common/api/Status;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzo;->b(Lcom/google/android/gms/cast/internal/zzx;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
