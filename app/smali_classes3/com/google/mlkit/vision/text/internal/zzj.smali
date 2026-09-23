.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzr;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzr;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzr;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/mlkit/vision/text/internal/zza;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    new-instance v2, Lcom/google/mlkit/vision/text/Text$Element;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzr;->h:Ljava/lang/String;

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
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzr;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    .line 38
    .line 39
    iget p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->i:F

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;->q()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-direct/range {v2 .. v7}, Lcom/google/mlkit/vision/text/Text$Element;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    return-object v2
.end method
