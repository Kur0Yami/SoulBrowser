.class public final Lcom/google/common/collect/ImmutableRangeSet;
.super Lcom/google/common/collect/AbstractRangeSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeSet$Builder;,
        Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;,
        Lcom/google/common/collect/ImmutableRangeSet$AsSet;,
        Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/AbstractRangeSet<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final f:Lcom/google/common/collect/ImmutableRangeSet;

.field public static final g:Lcom/google/common/collect/ImmutableRangeSet;


# instance fields
.field public final transient c:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/collect/ImmutableList;->f:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 4
    .line 5
    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->i:Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->f:Lcom/google/common/collect/ImmutableRangeSet;

    .line 11
    .line 12
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 13
    .line 14
    sget-object v1, Lcom/google/common/collect/Range;->g:Lcom/google/common/collect/Range;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->w(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->g:Lcom/google/common/collect/ImmutableRangeSet;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/google/common/collect/ImmutableSet;->g:I

    .line 10
    .line 11
    sget-object v0, Lcom/google/common/collect/RegularImmutableSet;->n:Lcom/google/common/collect/RegularImmutableSet;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 15
    .line 16
    sget-object v2, Lcom/google/common/collect/Range;->g:Lcom/google/common/collect/Range;

    .line 17
    .line 18
    sget-object v2, Lcom/google/common/collect/Range$RangeLexOrdering;->c:Lcom/google/common/collect/Ordering;

    .line 19
    .line 20
    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public final b(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/common/collect/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/common/collect/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/common/collect/Cut;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut$BelowValue;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    instance-of v3, v2, Ljava/util/RandomAccess;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    .line 18
    .line 19
    invoke-direct {v3, v2, v0}, Lcom/google/common/collect/Lists$TransformingRandomAccessList;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v3, Lcom/google/common/collect/Lists$TransformingSequentialList;

    .line 24
    .line 25
    invoke-direct {v3, v2, v0}, Lcom/google/common/collect/Lists$TransformingSequentialList;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    instance-of v0, v3, Ljava/util/RandomAccess;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    move-object v3, v0

    .line 38
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_1
    if-gt v4, v0, :cond_4

    .line 46
    .line 47
    add-int v5, v4, v0

    .line 48
    .line 49
    ushr-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    sget-object v7, Lcom/google/common/collect/NaturalOrdering;->g:Lcom/google/common/collect/NaturalOrdering;

    .line 56
    .line 57
    invoke-virtual {v7, v1, v6}, Lcom/google/common/collect/NaturalOrdering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-gez v6, :cond_2

    .line 62
    .line 63
    add-int/lit8 v5, v5, -0x1

    .line 64
    .line 65
    move v0, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-lez v6, :cond_3

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    move v4, v5

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    invoke-interface {v3, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sub-int/2addr v5, v4

    .line 80
    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->c:Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;

    .line 81
    .line 82
    invoke-virtual {v3, v1, v0, v5}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->a(Ljava/lang/Object;Ljava/util/List;I)I

    .line 83
    .line 84
    .line 85
    add-int/2addr v4, v5

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->c:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior$1;

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->a(I)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    :goto_2
    const/4 v0, -0x1

    .line 94
    if-eq v4, v0, :cond_5

    .line 95
    .line 96
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/google/common/collect/Range;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->a(Ljava/lang/Comparable;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_5
    const/4 p1, 0x0

    .line 110
    return-object p1
.end method

.method public final c()Lcom/google/common/collect/Range;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/google/common/collect/Range;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/common/collect/Range;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 31
    .line 32
    new-instance v2, Lcom/google/common/collect/Range;

    .line 33
    .line 34
    invoke-direct {v2, v1, v0}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw v0
.end method
