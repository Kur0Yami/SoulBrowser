.class Lcom/google/common/collect/ImmutableRangeSet$1;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Lcom/google/common/collect/Range<",
        "Ljava/lang/Comparable;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lcom/google/common/collect/Range;

.field public final synthetic j:Lcom/google/common/collect/ImmutableRangeSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/Range;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->g:I

    .line 2
    .line 3
    iput p3, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->h:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->i:Lcom/google/common/collect/Range;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->j:Lcom/google/common/collect/ImmutableRangeSet;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->j:Lcom/google/common/collect/ImmutableRangeSet;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    iget v1, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->g:I

    .line 6
    .line 7
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->g(II)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->h:I

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/2addr p1, v2

    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/google/common/collect/Range;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    :goto_0
    add-int/2addr p1, v2

    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/google/common/collect/Range;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->i:Lcom/google/common/collect/Range;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->d(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeSet$1;->g:I

    .line 2
    .line 3
    return v0
.end method
