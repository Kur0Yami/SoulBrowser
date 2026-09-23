.class abstract Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public c:I

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;

    .line 5
    .line 6
    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;->i:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->c:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, -0x1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    move p1, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->f:I

    .line 21
    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->g:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->f:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;->i:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->c:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->f:I

    .line 16
    .line 17
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->g:I

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->a(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->f:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;->j:I

    .line 28
    .line 29
    if-ge v2, v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, -0x1

    .line 33
    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->f:I

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;->i:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->c:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->g:I

    .line 10
    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-eqz v3, :cond_1

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x20

    .line 19
    .line 20
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->c:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;->b()[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    aget-object v1, v2, v1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzba;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->f:I

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    add-int/2addr v0, v1

    .line 35
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->f:I

    .line 36
    .line 37
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaw;->g:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v1, "no calls to next() since the last call to remove()"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw v0
.end method
