.class final Lcom/google/common/collect/UnmodifiableSortedMultiset;
.super Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/SortedMultiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$UnmodifiableMultiset<",
        "TE;>;",
        "Lcom/google/common/collect/SortedMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public transient h:Lcom/google/common/collect/UnmodifiableSortedMultiset;


# virtual methods
.method public final B0()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->j()Ljava/util/NavigableSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/common/collect/Sets;->h(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final F0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/common/collect/SortedMultiset;->F0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 15
    .line 16
    .line 17
    return-object p2
.end method

.method public final L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 15
    .line 16
    .line 17
    return-object p2
.end method

.method public final a0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->a0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 15
    .line 16
    .line 17
    return-object p2
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final e0()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    return-object v0
.end method

.method public final firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final h0()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    return-object v0
.end method

.method public final j()Ljava/util/NavigableSet;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->j()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public final bridge synthetic j()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;->j()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
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

.method public final pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
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

.method public final y0()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    return-object v0
.end method

.method public final z()Lcom/google/common/collect/SortedMultiset;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->h:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->c:Lcom/google/common/collect/Multiset;

    .line 8
    .line 9
    check-cast v1, Lcom/google/common/collect/SortedMultiset;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/google/common/collect/SortedMultiset;->z()Lcom/google/common/collect/SortedMultiset;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 16
    .line 17
    .line 18
    iput-object p0, v0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->h:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/common/collect/UnmodifiableSortedMultiset;->h:Lcom/google/common/collect/UnmodifiableSortedMultiset;

    .line 21
    .line 22
    :cond_0
    return-object v0
.end method
