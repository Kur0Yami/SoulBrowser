.class public final synthetic Lcom/google/mlkit/vision/text/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;

    .line 2
    .line 3
    new-instance v0, Lcom/google/mlkit/vision/text/Text$Symbol;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;->f:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvj;->g:Ljava/util/List;

    .line 10
    .line 11
    const-string v3, ""

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/mlkit/vision/text/Text$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
