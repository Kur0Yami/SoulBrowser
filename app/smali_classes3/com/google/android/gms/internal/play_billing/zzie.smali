.class final Lcom/google/android/gms/internal/play_billing/zzie;
.super Lcom/google/android/gms/internal/play_billing/zzic;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzid;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzid;->f:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzid;->b()Lcom/google/android/gms/internal/play_billing/zzid;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfv;->zzc:Lcom/google/android/gms/internal/play_billing/zzid;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/play_billing/zzid;->e:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Lcom/google/android/gms/internal/play_billing/zzid;->e:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method
