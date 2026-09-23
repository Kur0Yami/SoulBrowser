.class Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/Cut<",
        "Ljava/lang/Comparable<",
        "*>;>;",
        "Lcom/google/common/collect/Range<",
        "Ljava/lang/Comparable<",
        "*>;>;>;>;"
    }
.end annotation


# instance fields
.field public g:Lcom/google/common/collect/Cut;

.field public final synthetic h:Lcom/google/common/collect/PeekingIterator;

.field public final synthetic i:Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lcom/google/common/collect/Cut;Lcom/google/common/collect/PeekingIterator;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->h:Lcom/google/common/collect/PeekingIterator;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->i:Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->g:Lcom/google/common/collect/Cut;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->i:Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->f:Lcom/google/common/collect/Range;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->g:Lcom/google/common/collect/Cut;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->g(Ljava/lang/Comparable;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->g:Lcom/google/common/collect/Cut;

    .line 16
    .line 17
    sget-object v1, Lcom/google/common/collect/Cut$AboveAll;->f:Lcom/google/common/collect/Cut$AboveAll;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->h:Lcom/google/common/collect/PeekingIterator;

    .line 23
    .line 24
    check-cast v0, Lcom/google/common/collect/Iterators$PeekingImpl;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/common/collect/Iterators$PeekingImpl;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/common/collect/Iterators$PeekingImpl;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/google/common/collect/Range;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->g:Lcom/google/common/collect/Cut;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 41
    .line 42
    new-instance v3, Lcom/google/common/collect/Range;

    .line 43
    .line 44
    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lcom/google/common/collect/Range;->f:Lcom/google/common/collect/Cut;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->g:Lcom/google/common/collect/Cut;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->g:Lcom/google/common/collect/Cut;

    .line 53
    .line 54
    new-instance v3, Lcom/google/common/collect/Range;

    .line 55
    .line 56
    invoke-direct {v3, v0, v1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;->g:Lcom/google/common/collect/Cut;

    .line 60
    .line 61
    :goto_0
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 62
    .line 63
    iget-object v1, v3, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Cut;

    .line 64
    .line 65
    invoke-direct {v0, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    :goto_1
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->g:Lcom/google/common/collect/AbstractIterator$State;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->c:Lcom/google/common/collect/AbstractIterator$State;

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    return-object v0
.end method
