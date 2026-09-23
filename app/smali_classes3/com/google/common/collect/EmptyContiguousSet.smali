.class final Lcom/google/common/collect/EmptyContiguousSet;
.super Lcom/google/common/collect/ContiguousSet;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/EmptyContiguousSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/ContiguousSet<",
        "TC;>;"
    }
.end annotation


# virtual methods
.method public final B()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/Iterators$ArrayItr;->h:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final J(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    .line 3
    check-cast p3, Ljava/lang/Comparable;

    .line 4
    .line 5
    return-object p0
.end method

.method public final N(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final O(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final P()Lcom/google/common/collect/Range;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final R(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final U(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/ImmutableList;->f:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 2
    .line 3
    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->i:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/Iterators$ArrayItr;->h:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/Iterators$ArrayItr;->h:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/Iterators$ArrayItr;->h:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "[]"

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/ReverseNaturalOrdering;->c:Lcom/google/common/collect/ReverseNaturalOrdering;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->D(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
