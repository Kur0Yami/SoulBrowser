.class public final synthetic Lcom/google/mlkit/vision/text/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuz;

    .line 2
    .line 3
    new-instance v0, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/text/Text$TextBlock;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuz;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
