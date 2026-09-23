.class Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaa;
.super Lcom/google/android/gms/internal/mlkit_vision_text_common/zzal;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbp;


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzal;->g:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaa;->e()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaa;->f(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/List;

    .line 20
    .line 21
    return-object p1
.end method

.method public bridge synthetic e()Ljava/util/Collection;
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public final f(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    instance-of v0, p1, Ljava/util/RandomAccess;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzag;

    .line 9
    .line 10
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzak;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzal;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzai;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzak;

    .line 15
    .line 16
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzak;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzal;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzai;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
