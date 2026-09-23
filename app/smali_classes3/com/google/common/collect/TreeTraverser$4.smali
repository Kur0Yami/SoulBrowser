.class Lcom/google/common/collect/TreeTraverser$4;
.super Lcom/google/common/collect/FluentIterable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/TreeTraverser$BreadthFirstIterator;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
