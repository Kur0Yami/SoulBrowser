.class final Lcom/google/android/gms/cast/zzk;
.super Lcom/google/android/gms/cast/internal/zzae;
.source "SourceFile"


# virtual methods
.method public final b(Lcom/google/android/gms/cast/internal/zzx;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/cast/internal/zzx;->n(Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzae;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzc;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzk;->b(Lcom/google/android/gms/cast/internal/zzx;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
