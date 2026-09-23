.class Lcom/google/common/graph/AbstractBaseGraph$1;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/graph/EndpointPair<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/graph/AbstractBaseGraph;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/AbstractBaseGraph;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->c:Lcom/google/common/graph/AbstractBaseGraph;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/common/graph/EndpointPair;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/google/common/graph/EndpointPair;->c:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->c:Lcom/google/common/graph/AbstractBaseGraph;

    .line 16
    .line 17
    invoke-interface {v3}, Lcom/google/common/graph/BaseGraph;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ne v2, v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v3}, Lcom/google/common/graph/BaseGraph;->d()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v3, v0}, Lcom/google/common/graph/BaseGraph;->k(Ljava/lang/Object;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object p1, p1, Lcom/google/common/graph/EndpointPair;->f:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_1
    :goto_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->c:Lcom/google/common/graph/AbstractBaseGraph;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/graph/BaseGraph;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/google/common/graph/EndpointPairIterator$Directed;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/google/common/graph/EndpointPairIterator;-><init>(Lcom/google/common/graph/BaseGraph;)V

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    new-instance v1, Lcom/google/common/graph/EndpointPairIterator$Undirected;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/google/common/graph/EndpointPairIterator;-><init>(Lcom/google/common/graph/BaseGraph;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/common/graph/BaseGraph;->d()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    new-instance v2, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/common/collect/Maps;->c(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object v2, v1, Lcom/google/common/graph/EndpointPairIterator$Undirected;->k:Ljava/util/HashSet;

    .line 40
    .line 41
    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->c:Lcom/google/common/graph/AbstractBaseGraph;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/graph/AbstractBaseGraph;->n()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->c(J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
