.class Lcom/google/common/collect/StandardTable$Row$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic f:Lcom/google/common/collect/StandardTable$Row;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/StandardTable$Row;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Row$1;->c:Ljava/util/Iterator;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$1;->f:Lcom/google/common/collect/StandardTable$Row;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$1;->c:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$1;->c:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    .line 9
    new-instance v1, Lcom/google/common/collect/StandardTable$Row$2;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/google/common/collect/StandardTable$Row$2;-><init>(Ljava/util/Map$Entry;)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$1;->c:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$1;->f:Lcom/google/common/collect/StandardTable$Row;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable$Row;->c()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
