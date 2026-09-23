.class public final Lcom/google/common/collect/ImmutableSortedSet$Builder;
.super Lcom/google/common/collect/ImmutableSet$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$Builder<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->e(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->e(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->e(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final f()Lcom/google/common/collect/ImmutableSet;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->b:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/common/collect/ImmutableSortedSet;->D(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget v4, Lcom/google/common/collect/ImmutableSortedSet;->j:I

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/google/common/collect/ObjectArrays;->a(I[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    if-lt v3, v1, :cond_2

    .line 24
    .line 25
    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    array-length v1, v0

    .line 29
    div-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    if-ge v3, v1, :cond_1

    .line 32
    .line 33
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_1
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 38
    .line 39
    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableList;->q(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 44
    .line 45
    .line 46
    move-object v0, v1

    .line 47
    :goto_0
    iget-object v1, v0, Lcom/google/common/collect/RegularImmutableSortedSet;->k:Lcom/google/common/collect/ImmutableList;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->b:I

    .line 54
    .line 55
    iput-boolean v3, p0, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->c:Z

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    aget-object v1, v0, v3

    .line 59
    .line 60
    aget-object v0, v0, v4

    .line 61
    .line 62
    throw v2
.end method

.method public final g(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->g(Lcom/google/common/collect/ImmutableSet$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
