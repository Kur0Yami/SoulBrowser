.class Lcom/google/common/collect/CompactHashSet$1;
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

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/google/common/collect/CompactHashSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/CompactHashSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/CompactHashSet$1;->h:Lcom/google/common/collect/CompactHashSet;

    .line 5
    .line 6
    iget v0, p1, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/common/collect/CompactHashSet;->k()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/google/common/collect/CompactHashSet$1;->f:I

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/google/common/collect/CompactHashSet$1;->g:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/CompactHashSet$1;->f:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->h:Lcom/google/common/collect/CompactHashSet;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet$1;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->f:I

    .line 16
    .line 17
    iput v1, p0, Lcom/google/common/collect/CompactHashSet$1;->g:I

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aget-object v1, v2, v1

    .line 24
    .line 25
    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->f:I

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/google/common/collect/CompactHashSet;->m(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->f:I

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->h:Lcom/google/common/collect/CompactHashSet;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/common/collect/CompactHashSet;->h:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->g:I

    .line 10
    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/CollectPreconditions;->d(Z)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x20

    .line 22
    .line 23
    iput v1, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    .line 24
    .line 25
    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->g:I

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashSet;->t()[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    aget-object v1, v2, v1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->f:I

    .line 37
    .line 38
    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->g:I

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/CompactHashSet;->a(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->f:I

    .line 45
    .line 46
    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->g:I

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw v0
.end method
