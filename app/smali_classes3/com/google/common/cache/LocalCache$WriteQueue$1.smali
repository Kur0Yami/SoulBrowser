.class Lcom/google/common/cache/LocalCache$WriteQueue$1;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public c:Lcom/google/common/cache/ReferenceEntry;

.field public f:Lcom/google/common/cache/ReferenceEntry;


# virtual methods
.method public final f()J
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final h()Lcom/google/common/cache/ReferenceEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->c:Lcom/google/common/cache/ReferenceEntry;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final n(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->c:Lcom/google/common/cache/ReferenceEntry;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->f:Lcom/google/common/cache/ReferenceEntry;

    .line 2
    .line 3
    return-void
.end method

.method public final q()Lcom/google/common/cache/ReferenceEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->f:Lcom/google/common/cache/ReferenceEntry;

    .line 2
    .line 3
    return-object v0
.end method
