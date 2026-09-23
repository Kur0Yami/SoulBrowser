.class Lcom/google/common/collect/ObjectCountHashMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ObjectCountHashMap$MapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/jspecify/annotations/NullMarked;
.end annotation


# instance fields
.field public transient a:[Ljava/lang/Object;

.field public transient b:[I

.field public transient c:I

.field public transient d:I

.field public transient e:[I

.field public transient f:[J

.field public transient g:F

.field public transient h:I


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->d:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 19
    .line 20
    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 30
    .line 31
    const-wide/16 v1, -0x1

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 34
    .line 35
    .line 36
    iput v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 37
    .line 38
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->o(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->h:I

    .line 10
    .line 11
    if-lt p1, v0, :cond_1

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    shl-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->p(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->g(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 11
    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    return p1
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->g(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    return-object p1
.end method

.method public final f(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->g(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    .line 10
    return p1
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    add-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    and-int/2addr v2, v0

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    :goto_0
    const/4 v2, -0x1

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 17
    .line 18
    aget-wide v3, v2, v1

    .line 19
    .line 20
    const/16 v2, 0x20

    .line 21
    .line 22
    ushr-long v5, v3, v2

    .line 23
    .line 24
    long-to-int v2, v5

    .line 25
    if-ne v2, v0, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 28
    .line 29
    aget-object v2, v2, v1

    .line 30
    .line 31
    invoke-static {p1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    long-to-int v1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return v2
.end method

.method public h(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    const-string v2, "Initial capacity must be non-negative"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->e(ZLjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    float-to-double v2, v1

    .line 15
    invoke-static {v2, v3, p1}, Lcom/google/common/collect/Hashing;->a(DI)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    new-array v3, v2, [I

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 26
    .line 27
    iput v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->g:F

    .line 28
    .line 29
    new-array v3, p1, [Ljava/lang/Object;

    .line 30
    .line 31
    iput-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 32
    .line 33
    new-array v3, p1, [I

    .line 34
    .line 35
    iput-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 36
    .line 37
    new-array p1, p1, [J

    .line 38
    .line 39
    const-wide/16 v3, -0x1

    .line 40
    .line 41
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 45
    .line 46
    int-to-float p1, v2

    .line 47
    mul-float/2addr p1, v1

    .line 48
    float-to-int p1, p1

    .line 49
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->h:I

    .line 54
    .line 55
    return-void
.end method

.method public i(Ljava/lang/Object;III)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 2
    .line 3
    int-to-long v1, p4

    .line 4
    const/16 p4, 0x20

    .line 5
    .line 6
    shl-long/2addr v1, p4

    .line 7
    const-wide v3, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    or-long/2addr v1, v3

    .line 13
    aput-wide v1, v0, p2

    .line 14
    .line 15
    iget-object p4, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 16
    .line 17
    aput-object p1, p4, p2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 20
    .line 21
    aput p3, p1, p2

    .line 22
    .line 23
    return-void
.end method

.method public j(I)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-ge p1, v0, :cond_2

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 12
    .line 13
    aget-object v6, v5, v0

    .line 14
    .line 15
    aput-object v6, v5, p1

    .line 16
    .line 17
    iget-object v6, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 18
    .line 19
    aget v7, v6, v0

    .line 20
    .line 21
    aput v7, v6, p1

    .line 22
    .line 23
    aput-object v4, v5, v0

    .line 24
    .line 25
    aput v3, v6, v0

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 28
    .line 29
    aget-wide v4, v3, v0

    .line 30
    .line 31
    aput-wide v4, v3, p1

    .line 32
    .line 33
    aput-wide v1, v3, v0

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    ushr-long v1, v4, v1

    .line 38
    .line 39
    long-to-int v1, v1

    .line 40
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 41
    .line 42
    array-length v3, v2

    .line 43
    add-int/lit8 v3, v3, -0x1

    .line 44
    .line 45
    and-int/2addr v1, v3

    .line 46
    aget v3, v2, v1

    .line 47
    .line 48
    if-ne v3, v0, :cond_0

    .line 49
    .line 50
    aput p1, v2, v1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 54
    .line 55
    aget-wide v4, v1, v3

    .line 56
    .line 57
    long-to-int v2, v4

    .line 58
    if-ne v2, v0, :cond_1

    .line 59
    .line 60
    const-wide v6, -0x100000000L

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    and-long/2addr v4, v6

    .line 66
    const-wide v6, 0xffffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    int-to-long v8, p1

    .line 72
    and-long/2addr v6, v8

    .line 73
    or-long/2addr v4, v6

    .line 74
    aput-wide v4, v1, v3

    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    move v3, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v4, v0, p1

    .line 82
    .line 83
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 84
    .line 85
    aput v3, v0, p1

    .line 86
    .line 87
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 88
    .line 89
    aput-wide v1, v0, p1

    .line 90
    .line 91
    return-void
.end method

.method public k(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, -0x1

    .line 9
    return p1
.end method

.method public l(II)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final m(ILjava/lang/Object;)I
    .locals 12

    .line 1
    const-string v0, "count"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->c(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 17
    .line 18
    array-length v5, v4

    .line 19
    const/4 v6, 0x1

    .line 20
    sub-int/2addr v5, v6

    .line 21
    and-int/2addr v5, v3

    .line 22
    iget v7, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 23
    .line 24
    aget v8, v4, v5

    .line 25
    .line 26
    const/4 v9, -0x1

    .line 27
    if-ne v8, v9, :cond_0

    .line 28
    .line 29
    aput v7, v4, v5

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    aget-wide v4, v0, v8

    .line 33
    .line 34
    const/16 v10, 0x20

    .line 35
    .line 36
    ushr-long v10, v4, v10

    .line 37
    .line 38
    long-to-int v10, v10

    .line 39
    if-ne v10, v3, :cond_1

    .line 40
    .line 41
    aget-object v10, v1, v8

    .line 42
    .line 43
    invoke-static {p2, v10}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-eqz v10, :cond_1

    .line 48
    .line 49
    aget p2, v2, v8

    .line 50
    .line 51
    aput p1, v2, v8

    .line 52
    .line 53
    return p2

    .line 54
    :cond_1
    long-to-int v10, v4

    .line 55
    if-ne v10, v9, :cond_6

    .line 56
    .line 57
    const-wide v1, -0x100000000L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v1, v4

    .line 63
    const-wide v4, 0xffffffffL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    int-to-long v9, v7

    .line 69
    and-long/2addr v4, v9

    .line 70
    or-long/2addr v1, v4

    .line 71
    aput-wide v1, v0, v8

    .line 72
    .line 73
    :goto_1
    const v0, 0x7fffffff

    .line 74
    .line 75
    .line 76
    if-eq v7, v0, :cond_5

    .line 77
    .line 78
    add-int/lit8 v1, v7, 0x1

    .line 79
    .line 80
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 81
    .line 82
    array-length v2, v2

    .line 83
    if-le v1, v2, :cond_3

    .line 84
    .line 85
    ushr-int/lit8 v4, v2, 0x1

    .line 86
    .line 87
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    add-int/2addr v4, v2

    .line 92
    if-gez v4, :cond_2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move v0, v4

    .line 96
    :goto_2
    if-eq v0, v2, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ObjectCountHashMap;->o(I)V

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-virtual {p0, p2, v7, p1, v3}, Lcom/google/common/collect/ObjectCountHashMap;->i(Ljava/lang/Object;III)V

    .line 102
    .line 103
    .line 104
    iput v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 105
    .line 106
    iget p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->h:I

    .line 107
    .line 108
    if-lt v7, p1, :cond_4

    .line 109
    .line 110
    iget-object p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 111
    .line 112
    array-length p1, p1

    .line 113
    mul-int/lit8 p1, p1, 0x2

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ObjectCountHashMap;->p(I)V

    .line 116
    .line 117
    .line 118
    :cond_4
    iget p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->d:I

    .line 119
    .line 120
    add-int/2addr p1, v6

    .line 121
    iput p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->d:I

    .line 122
    .line 123
    const/4 p1, 0x0

    .line 124
    return p1

    .line 125
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string p2, "Cannot contain more than Integer.MAX_VALUE elements!"

    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_6
    move v8, v10

    .line 134
    goto :goto_0
.end method

.method public final n(I)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 6
    .line 7
    aget-wide v2, v1, p1

    .line 8
    .line 9
    const/16 p1, 0x20

    .line 10
    .line 11
    ushr-long v1, v2, p1

    .line 12
    .line 13
    long-to-int p1, v1

    .line 14
    iget-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    and-int/2addr v2, p1

    .line 20
    aget v1, v1, v2

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    move v4, v3

    .line 27
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 28
    .line 29
    aget-wide v6, v5, v1

    .line 30
    .line 31
    const/16 v5, 0x20

    .line 32
    .line 33
    ushr-long v5, v6, v5

    .line 34
    .line 35
    long-to-int v5, v5

    .line 36
    if-ne v5, p1, :cond_2

    .line 37
    .line 38
    iget-object v5, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 39
    .line 40
    aget-object v5, v5, v1

    .line 41
    .line 42
    invoke-static {v0, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 49
    .line 50
    aget p1, p1, v1

    .line 51
    .line 52
    if-ne v4, v3, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 55
    .line 56
    iget-object v3, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 57
    .line 58
    aget-wide v4, v3, v1

    .line 59
    .line 60
    long-to-int v3, v4

    .line 61
    aput v3, v0, v2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 65
    .line 66
    aget-wide v2, v0, v4

    .line 67
    .line 68
    aget-wide v5, v0, v1

    .line 69
    .line 70
    long-to-int v5, v5

    .line 71
    const-wide v6, -0x100000000L

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    and-long/2addr v2, v6

    .line 77
    const-wide v6, 0xffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    int-to-long v8, v5

    .line 83
    and-long/2addr v6, v8

    .line 84
    or-long/2addr v2, v6

    .line 85
    aput-wide v2, v0, v4

    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ObjectCountHashMap;->j(I)V

    .line 88
    .line 89
    .line 90
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 91
    .line 92
    add-int/lit8 v0, v0, -0x1

    .line 93
    .line 94
    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 95
    .line 96
    iget v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->d:I

    .line 97
    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->d:I

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 104
    .line 105
    aget-wide v5, v4, v1

    .line 106
    .line 107
    long-to-int v4, v5

    .line 108
    if-ne v4, v3, :cond_3

    .line 109
    .line 110
    :goto_2
    const/4 p1, 0x0

    .line 111
    :goto_3
    return p1

    .line 112
    :cond_3
    move v10, v4

    .line 113
    move v4, v1

    .line 114
    move v1, v10

    .line 115
    goto :goto_0
.end method

.method public o(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->b:[I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-le p1, v1, :cond_0

    .line 25
    .line 26
    const-wide/16 v2, -0x1

    .line 27
    .line 28
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 32
    .line 33
    return-void
.end method

.method public final p(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    const p1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    iput p1, p0, Lcom/google/common/collect/ObjectCountHashMap;->h:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    int-to-float v0, p1

    .line 15
    iget v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->g:F

    .line 16
    .line 17
    mul-float/2addr v0, v1

    .line 18
    float-to-int v0, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    new-array v1, p1, [I

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/common/collect/ObjectCountHashMap;->f:[J

    .line 28
    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    iget v4, p0, Lcom/google/common/collect/ObjectCountHashMap;->c:I

    .line 33
    .line 34
    if-ge v3, v4, :cond_1

    .line 35
    .line 36
    aget-wide v4, v2, v3

    .line 37
    .line 38
    const/16 v6, 0x20

    .line 39
    .line 40
    ushr-long/2addr v4, v6

    .line 41
    long-to-int v4, v4

    .line 42
    and-int v5, v4, p1

    .line 43
    .line 44
    aget v7, v1, v5

    .line 45
    .line 46
    aput v3, v1, v5

    .line 47
    .line 48
    int-to-long v4, v4

    .line 49
    shl-long/2addr v4, v6

    .line 50
    const-wide v8, 0xffffffffL

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    int-to-long v6, v7

    .line 56
    and-long/2addr v6, v8

    .line 57
    or-long/2addr v4, v6

    .line 58
    aput-wide v4, v2, v3

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iput v0, p0, Lcom/google/common/collect/ObjectCountHashMap;->h:I

    .line 64
    .line 65
    iput-object v1, p0, Lcom/google/common/collect/ObjectCountHashMap;->e:[I

    .line 66
    .line 67
    return-void
.end method
