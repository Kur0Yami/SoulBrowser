.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->k:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/mlkit/vision/text/internal/zza;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    new-instance v2, Lcom/google/mlkit/vision/text/Text$Line;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->i:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzy;->b(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    :cond_0
    move-object v3, v0

    .line 24
    invoke-static {v5}, Lcom/google/mlkit/vision/text/internal/zza;->a(Ljava/util/List;)Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzy;->b(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v1, "und"

    .line 35
    .line 36
    :cond_1
    move-object v6, v1

    .line 37
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->c:[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzr;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/google/mlkit/vision/text/internal/zzj;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->a(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/AbstractList;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    iget v8, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->j:F

    .line 53
    .line 54
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    .line 55
    .line 56
    iget v9, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->i:F

    .line 57
    .line 58
    invoke-direct/range {v2 .. v9}, Lcom/google/mlkit/vision/text/Text$Line;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/AbstractList;FF)V

    .line 59
    .line 60
    .line 61
    return-object v2
.end method
