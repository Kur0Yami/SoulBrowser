.class final Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public c:I

.field public f:I

.field public g:I

.field public h:Z

.field public final synthetic i:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->i:Lcom/google/common/collect/MinMaxPriorityQueue;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->c:I

    .line 8
    .line 9
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->f:I

    .line 10
    .line 11
    iget p1, p1, Lcom/google/common/collect/MinMaxPriorityQueue;->g:I

    .line 12
    .line 13
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->g:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->i:Lcom/google/common/collect/MinMaxPriorityQueue;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->g:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->g:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->c:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    add-int/2addr v1, v2

    .line 13
    iget v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->f:I

    .line 14
    .line 15
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->f:I

    .line 18
    .line 19
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->f:I

    .line 20
    .line 21
    iget v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 22
    .line 23
    if-lt v1, v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1
    return v2

    .line 28
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->i:Lcom/google/common/collect/MinMaxPriorityQueue;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->g:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->g:I

    .line 6
    .line 7
    if-ne v1, v2, :cond_2

    .line 8
    .line 9
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->c:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    add-int/2addr v1, v2

    .line 13
    iget v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->f:I

    .line 14
    .line 15
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->f:I

    .line 18
    .line 19
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->f:I

    .line 20
    .line 21
    iget v3, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 22
    .line 23
    if-ge v1, v3, :cond_1

    .line 24
    .line 25
    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->c:I

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->h:Z

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:[Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v0, v0, v1

    .line 32
    .line 33
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 38
    .line 39
    const-string v1, "iterator moved past last element in queue."

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->h:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->d(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->i:Lcom/google/common/collect/MinMaxPriorityQueue;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->g:I

    .line 9
    .line 10
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->g:I

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->h:Z

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    iput v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->g:I

    .line 20
    .line 21
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->c:I

    .line 22
    .line 23
    iget v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 24
    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->c:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->c:I

    .line 35
    .line 36
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->f:I

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->f:I

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw v0
.end method
