.class abstract Lcom/google/common/graph/EndpointPairIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/EndpointPairIterator$Directed;,
        Lcom/google/common/graph/EndpointPairIterator$Undirected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final g:Lcom/google/common/graph/BaseGraph;

.field public final h:Ljava/util/Iterator;

.field public i:Ljava/lang/Object;

.field public j:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/BaseGraph;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->i:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->w()Lcom/google/common/collect/ImmutableSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->j:Ljava/util/Iterator;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/common/graph/EndpointPairIterator;->g:Lcom/google/common/graph/BaseGraph;

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/google/common/graph/BaseGraph;->d()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/google/common/graph/EndpointPairIterator;->h:Ljava/util/Iterator;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->j:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->l(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->h:Ljava/util/Iterator;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->i:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/common/graph/EndpointPairIterator;->g:Lcom/google/common/graph/BaseGraph;

    .line 29
    .line 30
    invoke-interface {v2, v0}, Lcom/google/common/graph/BaseGraph;->k(Ljava/lang/Object;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/google/common/graph/EndpointPairIterator;->j:Ljava/util/Iterator;

    .line 39
    .line 40
    return v1
.end method
