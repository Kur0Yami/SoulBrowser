.class Lcom/google/common/collect/TreeMultiset$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public c:Lcom/google/common/collect/TreeMultiset$AvlNode;

.field public f:Lcom/google/common/collect/Multiset$Entry;

.field public final synthetic g:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$3;->g:Lcom/google/common/collect/TreeMultiset;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/common/collect/TreeMultiset;->k:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/google/common/collect/AbstractSortedMultiset;->g:Ljava/util/Comparator;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/common/collect/TreeMultiset;->i:Lcom/google/common/collect/TreeMultiset$Reference;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/google/common/collect/TreeMultiset$Reference;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-boolean v4, v2, Lcom/google/common/collect/GeneralRange;->i:Z

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    iget-object v4, v2, Lcom/google/common/collect/GeneralRange;->j:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p1, v1, v4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->f(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v5, v2, Lcom/google/common/collect/GeneralRange;->k:Lcom/google/common/collect/BoundType;

    .line 36
    .line 37
    sget-object v6, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 38
    .line 39
    if-ne v5, v6, :cond_3

    .line 40
    .line 41
    iget-object v5, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-interface {v1, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    iget-object p1, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->h:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 50
    .line 51
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object p1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->h:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 56
    .line 57
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    if-eq p1, v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lcom/google/common/collect/GeneralRange;->a(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    :cond_4
    :goto_1
    move-object p1, v3

    .line 71
    :cond_5
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 72
    .line 73
    iput-object v3, p0, Lcom/google/common/collect/TreeMultiset$3;->f:Lcom/google/common/collect/Multiset$Entry;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$3;->g:Lcom/google/common/collect/TreeMultiset;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/google/common/collect/GeneralRange;->d(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$3;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 13
    .line 14
    sget v1, Lcom/google/common/collect/TreeMultiset;->l:I

    .line 15
    .line 16
    new-instance v1, Lcom/google/common/collect/TreeMultiset$1;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$3;->g:Lcom/google/common/collect/TreeMultiset;

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/TreeMultiset$1;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->f:Lcom/google/common/collect/Multiset$Entry;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->h:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 26
    .line 27
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v2, v2, Lcom/google/common/collect/TreeMultiset;->k:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 31
    .line 32
    if-ne v0, v2, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->h:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 41
    .line 42
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->f:Lcom/google/common/collect/Multiset$Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->m(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->f:Lcom/google/common/collect/Multiset$Entry;

    .line 14
    .line 15
    check-cast v0, Lcom/google/common/collect/TreeMultiset$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$1;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->g:Lcom/google/common/collect/TreeMultiset;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/google/common/collect/TreeMultiset;->G0(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->f:Lcom/google/common/collect/Multiset$Entry;

    .line 28
    .line 29
    return-void
.end method
