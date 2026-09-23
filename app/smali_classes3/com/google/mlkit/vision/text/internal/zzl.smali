.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzub;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/mlkit/vision/text/internal/zzl;->a:Z

    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/zzl;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/mlkit/vision/text/internal/zzl;->a:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 14
    .line 15
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzot;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzru;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzl;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 23
    .line 24
    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzru;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 25
    .line 26
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrw;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzru;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzrw;

    .line 32
    .line 33
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;I)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method
