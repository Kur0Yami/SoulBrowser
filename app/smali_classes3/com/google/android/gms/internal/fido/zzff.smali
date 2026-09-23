.class final Lcom/google/android/gms/internal/fido/zzff;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final synthetic f:Lcom/google/android/gms/internal/fido/zzfg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fido/zzfg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzff;->f:Lcom/google/android/gms/internal/fido/zzfg;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/fido/zzff;->c:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/fido/zzff;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzff;->f:Lcom/google/android/gms/internal/fido/zzfg;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzfg;->f:[I

    .line 11
    .line 12
    aget v0, v0, v2

    .line 13
    .line 14
    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzff;->f:Lcom/google/android/gms/internal/fido/zzfg;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzfg;->c:[Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzff;->a()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzfg;->f:[I

    .line 10
    .line 11
    iget v3, p0, Lcom/google/android/gms/internal/fido/zzff;->c:I

    .line 12
    .line 13
    add-int/lit8 v4, v3, 0x1

    .line 14
    .line 15
    aget v0, v0, v4

    .line 16
    .line 17
    const/4 v4, -0x1

    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    sget-object v3, Lcom/google/android/gms/internal/fido/zzfg;->j:Ljava/util/Comparator;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/fido/zzfi;->a:Ljava/util/Comparator;

    .line 24
    .line 25
    :goto_0
    invoke-static {v1, v2, v0, p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ltz p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzfe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzfe;-><init>(Lcom/google/android/gms/internal/fido/zzff;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzff;->f:Lcom/google/android/gms/internal/fido/zzfg;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzfg;->f:[I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/fido/zzff;->c:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzff;->a()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method
