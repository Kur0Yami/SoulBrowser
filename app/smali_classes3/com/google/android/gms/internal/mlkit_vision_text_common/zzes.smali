.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

.field public final b:Ljava/lang/Boolean;

.field public final c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeq;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeq;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeq;->b:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->b:Ljava/lang/Boolean;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeq;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->b:Ljava/lang/Boolean;

    .line 31
    .line 32
    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->b:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-static {v1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 49
    .line 50
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v2, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->b:Ljava/lang/Boolean;

    .line 15
    .line 16
    aput-object v3, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzes;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsd;

    .line 23
    .line 24
    aput-object v2, v0, v1

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method
