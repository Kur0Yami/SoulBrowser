.class final Lcom/google/android/gms/internal/cast/zzkh;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final synthetic f:Lcom/google/android/gms/internal/cast/zzki;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzki;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzkh;->f:Lcom/google/android/gms/internal/cast/zzki;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzkh;->c:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzkh;->c:I

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
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzkh;->f:Lcom/google/android/gms/internal/cast/zzki;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzki;->f:[I

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzkh;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzkh;->f:Lcom/google/android/gms/internal/cast/zzki;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzki;->f:[I

    .line 8
    .line 9
    iget v3, p0, Lcom/google/android/gms/internal/cast/zzkh;->c:I

    .line 10
    .line 11
    add-int/lit8 v4, v3, 0x1

    .line 12
    .line 13
    aget v2, v2, v4

    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    sget-object v3, Lcom/google/android/gms/internal/cast/zzki;->j:Ljava/util/Comparator;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/cast/zzkk;->a:Ljava/util/Comparator;

    .line 22
    .line 23
    :goto_0
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/zzki;->c:[Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v1, v0, v2, p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

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

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzkg;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzkg;-><init>(Lcom/google/android/gms/internal/cast/zzkh;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzkh;->f:Lcom/google/android/gms/internal/cast/zzki;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzki;->f:[I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzkh;->c:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzkh;->a()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method
