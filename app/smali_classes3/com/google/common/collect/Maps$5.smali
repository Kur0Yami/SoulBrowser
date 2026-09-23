.class Lcom/google/common/collect/Maps$5;
.super Lcom/google/common/collect/ForwardingSortedSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSortedSet<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>(Ljava/util/SortedSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/Maps$5;->c:Ljava/util/SortedSet;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final B0()Ljava/util/SortedSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$5;->c:Ljava/util/SortedSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final add(Ljava/lang/Object;)Z
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

.method public final addAll(Ljava/util/Collection;)Z
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

.method public final e0()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$5;->c:Ljava/util/SortedSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$5;->c:Ljava/util/SortedSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingSortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/google/common/collect/Maps$5;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/common/collect/Maps$5;-><init>(Ljava/util/SortedSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ForwardingSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/common/collect/Maps$5;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lcom/google/common/collect/Maps$5;-><init>(Ljava/util/SortedSet;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingSortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/google/common/collect/Maps$5;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/common/collect/Maps$5;-><init>(Ljava/util/SortedSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final y0()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$5;->c:Ljava/util/SortedSet;

    .line 2
    .line 3
    return-object v0
.end method
