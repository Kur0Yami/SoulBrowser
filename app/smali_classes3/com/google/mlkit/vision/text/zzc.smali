.class public final synthetic Lcom/google/mlkit/vision/text/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvb;

    .line 2
    .line 3
    new-instance v0, Lcom/google/mlkit/vision/text/Text$Element;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvb;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvb;->f:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvb;->g:Ljava/util/List;

    .line 10
    .line 11
    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvb;->h:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/mlkit/vision/text/Text$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvb;->k:Ljava/util/List;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v1, Lcom/google/mlkit/vision/text/zzb;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->a(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/AbstractList;

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
