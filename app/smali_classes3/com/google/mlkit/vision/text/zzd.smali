.class public final synthetic Lcom/google/mlkit/vision/text/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;

    .line 2
    .line 3
    new-instance v0, Lcom/google/mlkit/vision/text/Text$Line;

    .line 4
    .line 5
    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;->j:F

    .line 6
    .line 7
    iget v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;->k:F

    .line 8
    .line 9
    invoke-direct {v0, p1, v1, v2}, Lcom/google/mlkit/vision/text/Text$Line;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;FF)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
