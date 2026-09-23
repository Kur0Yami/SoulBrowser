.class final Lcom/google/android/gms/internal/play_billing/zzhp;
.super Lcom/google/android/gms/internal/play_billing/zzhu;
.source "SourceFile"


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzhu;->f:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-gtz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzhu;->b()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfl;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzfl;->zze()Z

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzhu;->d(I)Ljava/util/Map$Entry;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhq;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzhq;->c:Ljava/lang/Comparable;

    .line 49
    .line 50
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfl;

    .line 51
    .line 52
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzfl;->zze()Z

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/internal/play_billing/zzhu;->a()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
