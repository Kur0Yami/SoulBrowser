.class final Lcom/google/common/collect/RegularImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final m:[J

.field public static final n:Lcom/google/common/collect/ImmutableSortedMultiset;


# instance fields
.field public final transient i:Lcom/google/common/collect/RegularImmutableSortedSet;

.field public final transient j:[J

.field public final transient k:I

.field public final transient l:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-wide v1, v0, v3

    .line 8
    .line 9
    sput-object v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->m:[J

    .line 10
    .line 11
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    .line 12
    .line 13
    sget-object v1, Lcom/google/common/collect/NaturalOrdering;->g:Lcom/google/common/collect/NaturalOrdering;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->n:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;[JII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->j:[J

    .line 4
    iput p3, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->k:I

    .line 5
    iput p4, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->l:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->D(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 8
    sget-object p1, Lcom/google/common/collect/RegularImmutableSortedMultiset;->m:[J

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->j:[J

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->k:I

    .line 10
    iput p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->l:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic L(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->w(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final Q(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/common/collect/RegularImmutableSortedSet;->k:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/common/collect/ImmutableSortedSet;->h:Ljava/util/Comparator;

    .line 13
    .line 14
    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    if-ltz p1, :cond_1

    .line 19
    .line 20
    move v1, p1

    .line 21
    :catch_0
    :cond_1
    :goto_0
    if-ltz v1, :cond_2

    .line 22
    .line 23
    iget p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->k:I

    .line 24
    .line 25
    add-int/2addr p1, v1

    .line 26
    add-int/lit8 v0, p1, 0x1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->j:[J

    .line 29
    .line 30
    aget-wide v2, v1, v0

    .line 31
    .line 32
    aget-wide v0, v1, p1

    .line 33
    .line 34
    sub-long/2addr v2, v0

    .line 35
    long-to-int p1, v2

    .line 36
    return p1

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public final bridge synthetic a0(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->x(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->t(I)Lcom/google/common/collect/Multiset$Entry;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final j()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public final j()Ljava/util/Set;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public final lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->l:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->t(I)Lcom/google/common/collect/Multiset$Entry;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final m()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->k:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gtz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->j:[J

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    sub-int/2addr v0, v1

    .line 10
    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->l:I

    .line 11
    .line 12
    if-ge v2, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    return v1
.end method

.method public final r()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final size()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->l:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->k:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->j:[J

    .line 7
    .line 8
    aget-wide v3, v2, v0

    .line 9
    .line 10
    aget-wide v0, v2, v1

    .line 11
    .line 12
    sub-long/2addr v3, v0

    .line 13
    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->c(J)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final t(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableSortedSet;->k:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->k:I

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    add-int/lit8 p1, v1, 0x1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->j:[J

    .line 15
    .line 16
    aget-wide v3, v2, p1

    .line 17
    .line 18
    aget-wide v1, v2, v1

    .line 19
    .line 20
    sub-long/2addr v3, v1

    .line 21
    long-to-int p1, v3

    .line 22
    new-instance v1, Lcom/google/common/collect/Multisets$ImmutableEntry;

    .line 23
    .line 24
    invoke-direct {v1, p1, v0}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public final v()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/collect/BoundType;->f:Lcom/google/common/collect/BoundType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p2, v1

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->P(Ljava/lang/Object;Z)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, v1, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->y(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final x(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/BoundType;->f:Lcom/google/common/collect/BoundType;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->R(Ljava/lang/Object;Z)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->l:I

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->y(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final y(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->l:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->j(III)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->i:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 7
    .line 8
    if-ne p1, p2, :cond_1

    .line 9
    .line 10
    iget-object p1, v1, Lcom/google/common/collect/ImmutableSortedSet;->h:Ljava/util/Comparator;

    .line 11
    .line 12
    sget-object p2, Lcom/google/common/collect/NaturalOrdering;->g:Lcom/google/common/collect/NaturalOrdering;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    sget-object p1, Lcom/google/common/collect/RegularImmutableSortedMultiset;->n:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p2, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 26
    .line 27
    .line 28
    move-object p1, p2

    .line 29
    :goto_0
    return-object p1

    .line 30
    :cond_1
    if-nez p1, :cond_2

    .line 31
    .line 32
    if-ne p2, v0, :cond_2

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->O(II)Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    .line 40
    .line 41
    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->k:I

    .line 42
    .line 43
    add-int/2addr v2, p1

    .line 44
    sub-int/2addr p2, p1

    .line 45
    iget-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->j:[J

    .line 46
    .line 47
    invoke-direct {v1, v0, p1, v2, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;[JII)V

    .line 48
    .line 49
    .line 50
    return-object v1
.end method
