.class Lcom/google/common/collect/SortedMultisets$NavigableElementSet;
.super Lcom/google/common/collect/SortedMultisets$ElementSet;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedMultisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigableElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/SortedMultisets$ElementSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/BoundType;->f:Lcom/google/common/collect/BoundType;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->a0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/common/collect/SortedMultisets;->a(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;->descendingSet()Ljava/util/NavigableSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/common/collect/SortedMultisets$ElementSet;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/SortedMultisets$ElementSet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final descendingSet()Ljava/util/NavigableSet;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/google/common/collect/SortedMultiset;->z()Lcom/google/common/collect/SortedMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/common/collect/SortedMultisets$ElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/BoundType;->f:Lcom/google/common/collect/BoundType;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/common/collect/SortedMultisets;->a(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/SortedMultiset;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Lcom/google/common/collect/SortedMultisets$ElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->a0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/common/collect/SortedMultisets;->a(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/SortedMultiset;->L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/google/common/collect/SortedMultisets;->a(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->a(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->pollLastEntry()Lcom/google/common/collect/Multiset$Entry;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/SortedMultisets;->a(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    iget-object v1, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 12
    .line 13
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/common/collect/SortedMultiset;->F0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lcom/google/common/collect/SortedMultisets$ElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/SortedMultisets$NavigableElementSet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/SortedMultisets$ElementSet;->c:Lcom/google/common/collect/SortedMultiset;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/SortedMultiset;->a0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Lcom/google/common/collect/SortedMultisets$ElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
