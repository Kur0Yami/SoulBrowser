.class final Lcom/google/android/gms/internal/cast/zzgu;
.super Lcom/google/android/gms/internal/cast/zzgw;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cast/zzgt;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzgt;->a:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/zzgr;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzgr;-><init>(Lcom/google/android/gms/internal/cast/zzgt;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p1, Lcom/google/android/gms/internal/cast/zzgt;->a:Ljava/lang/Runnable;

    .line 11
    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
