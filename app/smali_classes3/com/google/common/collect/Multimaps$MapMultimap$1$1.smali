.class Lcom/google/common/collect/Multimaps$MapMultimap$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/google/common/collect/Multimaps$MapMultimap$1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap$1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;->f:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;->g:Lcom/google/common/collect/Multimaps$MapMultimap$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;->g:Lcom/google/common/collect/Multimaps$MapMultimap$1;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap$1;->f:Lcom/google/common/collect/Multimaps$MapMultimap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;->hasNext()Z

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/CollectPreconditions;->d(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;->c:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$1$1;->g:Lcom/google/common/collect/Multimaps$MapMultimap$1;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap$1;->f:Lcom/google/common/collect/Multimaps$MapMultimap;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    throw v0
.end method
