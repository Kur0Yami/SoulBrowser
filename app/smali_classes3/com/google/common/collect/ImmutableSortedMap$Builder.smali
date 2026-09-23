.class public Lcom/google/common/collect/ImmutableSortedMap$Builder;
.super Lcom/google/common/collect/ImmutableMap$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient d:[Ljava/lang/Object;

.field public transient e:[Ljava/lang/Object;


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->f()Lcom/google/common/collect/ImmutableSortedMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic c()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->f()Lcom/google/common/collect/ImmutableSortedMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->d:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-le v0, v2, :cond_0

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->b(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->d:[Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->d:[Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->e:[Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->e:[Ljava/lang/Object;

    .line 30
    .line 31
    :cond_0
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->d:[Ljava/lang/Object;

    .line 35
    .line 36
    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 37
    .line 38
    aput-object p1, v0, v1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->e:[Ljava/lang/Object;

    .line 41
    .line 42
    aput-object p2, p1, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 47
    .line 48
    return-object p0
.end method

.method public final e(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->e(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final f()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v3, :cond_2

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->d:[Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    iget v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 20
    .line 21
    new-array v4, v3, [Ljava/lang/Object;

    .line 22
    .line 23
    :goto_0
    iget v5, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:I

    .line 24
    .line 25
    if-ge v2, v5, :cond_1

    .line 26
    .line 27
    if-gtz v2, :cond_0

    .line 28
    .line 29
    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->d:[Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v5, v5, v2

    .line 32
    .line 33
    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v5, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    iget-object v6, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->e:[Ljava/lang/Object;

    .line 41
    .line 42
    aget-object v6, v6, v2

    .line 43
    .line 44
    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    aput-object v6, v4, v5

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    add-int/lit8 v3, v2, -0x1

    .line 53
    .line 54
    aget-object v3, v0, v3

    .line 55
    .line 56
    aget-object v0, v0, v2

    .line 57
    .line 58
    throw v1

    .line 59
    :cond_1
    new-instance v2, Lcom/google/common/collect/ImmutableSortedMap;

    .line 60
    .line 61
    new-instance v5, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 62
    .line 63
    array-length v6, v0

    .line 64
    invoke-static {v6, v0}, Lcom/google/common/collect/ImmutableList;->q(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v5, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableList;->q(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v2, v5, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSortedMap;)V

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->d:[Ljava/lang/Object;

    .line 80
    .line 81
    aget-object v0, v0, v2

    .line 82
    .line 83
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap$Builder;->e:[Ljava/lang/Object;

    .line 87
    .line 88
    aget-object v2, v3, v2

    .line 89
    .line 90
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    new-instance v2, Lcom/google/common/collect/ImmutableSortedMap;

    .line 94
    .line 95
    new-instance v2, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->w(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :cond_3
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap;->o(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
