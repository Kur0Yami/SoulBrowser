.class Lcom/google/common/collect/TreeMultiset$2;
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
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$2;->g:Lcom/google/common/collect/TreeMultiset;

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
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-boolean v3, v2, Lcom/google/common/collect/GeneralRange;->f:Z

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    iget-object v3, v2, Lcom/google/common/collect/GeneralRange;->g:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p1, v1, v3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v4, v2, Lcom/google/common/collect/GeneralRange;->h:Lcom/google/common/collect/BoundType;

    .line 35
    .line 36
    sget-object v5, Lcom/google/common/collect/BoundType;->c:Lcom/google/common/collect/BoundType;

    .line 37
    .line 38
    if-ne v4, v5, :cond_3

    .line 39
    .line 40
    iget-object v4, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {v1, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 49
    .line 50
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 55
    .line 56
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    if-eq p1, v0, :cond_4

    .line 60
    .line 61
    iget-object v0, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Lcom/google/common/collect/GeneralRange;->a(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 70
    :cond_5
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$2;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

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
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->g:Lcom/google/common/collect/TreeMultiset;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/google/common/collect/TreeMultiset;->j:Lcom/google/common/collect/GeneralRange;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/google/common/collect/GeneralRange;->c(Ljava/lang/Object;)Z

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
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

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
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$2;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    sget v1, Lcom/google/common/collect/TreeMultiset;->l:I

    .line 13
    .line 14
    new-instance v1, Lcom/google/common/collect/TreeMultiset$1;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$2;->g:Lcom/google/common/collect/TreeMultiset;

    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/TreeMultiset$1;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->f:Lcom/google/common/collect/Multiset$Entry;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

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
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->i:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 41
    .line 42
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->c:Lcom/google/common/collect/TreeMultiset$AvlNode;

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
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->f:Lcom/google/common/collect/Multiset$Entry;

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
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->f:Lcom/google/common/collect/Multiset$Entry;

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
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$2;->g:Lcom/google/common/collect/TreeMultiset;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/google/common/collect/TreeMultiset;->G0(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$2;->f:Lcom/google/common/collect/Multiset$Entry;

    .line 28
    .line 29
    return-void
.end method
