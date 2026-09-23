.class final Lcom/google/android/gms/cast/zzl;
.super Lcom/google/android/gms/cast/internal/zzae;
.source "SourceFile"


# virtual methods
.method public final b(Lcom/google/android/gms/cast/internal/zzx;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/cast/internal/zzx;->n(Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzae;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzc;->a()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 17
    .line 18
    const/16 v1, 0x7d1

    .line 19
    .line 20
    const-string v2, "IllegalArgument: sessionId cannot be null or empty"

    .line 21
    .line 22
    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/cast/internal/zzx;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzl;->b(Lcom/google/android/gms/cast/internal/zzx;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
