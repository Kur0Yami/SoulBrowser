.class final Lcom/google/android/gms/internal/fido/zzfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public c:I

.field public final synthetic f:Lcom/google/android/gms/internal/fido/zzff;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fido/zzff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzfe;->f:Lcom/google/android/gms/internal/fido/zzff;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/fido/zzfe;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzfe;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzfe;->f:Lcom/google/android/gms/internal/fido/zzff;

    .line 4
    .line 5
    iget v2, v1, Lcom/google/android/gms/internal/fido/zzff;->c:I

    .line 6
    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/fido/zzff;->f:Lcom/google/android/gms/internal/fido/zzfg;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/google/android/gms/internal/fido/zzfg;->f:[I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    add-int/2addr v2, v4

    .line 13
    aget v2, v3, v2

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzff;->a()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-int/2addr v2, v1

    .line 20
    if-ge v0, v2, :cond_0

    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzfe;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzfe;->f:Lcom/google/android/gms/internal/fido/zzff;

    .line 4
    .line 5
    iget v2, v1, Lcom/google/android/gms/internal/fido/zzff;->c:I

    .line 6
    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/fido/zzff;->f:Lcom/google/android/gms/internal/fido/zzfg;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/google/android/gms/internal/fido/zzfg;->f:[I

    .line 10
    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    aget v2, v4, v2

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzff;->a()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sub-int/2addr v2, v4

    .line 20
    if-ge v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v3, Lcom/google/android/gms/internal/fido/zzfg;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzff;->a()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    aget-object v1, v2, v1

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/fido/zzfe;->c:I

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
