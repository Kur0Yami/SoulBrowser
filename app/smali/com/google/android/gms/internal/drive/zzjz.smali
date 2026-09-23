.class final Lcom/google/android/gms/internal/drive/zzjz;
.super Lcom/google/android/gms/internal/drive/zzjy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzjy<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/NoSuchMethodError;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public final b(Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/NoSuchMethodError;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    .line 4
    .line 5
    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/android/gms/internal/drive/zzkb;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/drive/zzkb;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkb;->clone()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/drive/zzkb;

    .line 14
    .line 15
    iput-object v0, p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    .line 16
    .line 17
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    .line 18
    .line 19
    return-object p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;->zzrw:Lcom/google/android/gms/internal/drive/zzkb;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/drive/zzkb;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/drive/zzkb;->a:Lcom/google/android/gms/internal/drive/zzmj;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzmj;->e()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p1, Lcom/google/android/gms/internal/drive/zzkb;->b:Z

    .line 17
    .line 18
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/drive/zzlq;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/gms/internal/drive/zzkk$zzc;

    .line 2
    .line 3
    return p1
.end method
