.class final Lcom/google/common/collect/LinkedListMultimap$NodeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public c:I

.field public f:Lcom/google/common/collect/LinkedListMultimap$Node;

.field public g:Lcom/google/common/collect/LinkedListMultimap$Node;

.field public h:Lcom/google/common/collect/LinkedListMultimap$Node;

.field public final synthetic i:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->i:Lcom/google/common/collect/LinkedListMultimap;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->i(II)V

    .line 8
    .line 9
    .line 10
    if-ltz p2, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap;->j:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->h:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 15
    .line 16
    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 17
    .line 18
    :goto_0
    add-int/lit8 p1, p2, 0x1

    .line 19
    .line 20
    if-gez p2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a()V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->h:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->g:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->h:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 36
    .line 37
    iget p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 38
    .line 39
    add-int/lit8 p2, p2, -0x1

    .line 40
    .line 41
    iput p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 42
    .line 43
    move p2, p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    iget-object p1, p1, Lcom/google/common/collect/LinkedListMultimap;->i:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 54
    .line 55
    :goto_1
    add-int/lit8 p1, p2, -0x1

    .line 56
    .line 57
    if-lez p2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a()V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 63
    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->g:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->h:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 71
    .line 72
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 73
    .line 74
    iget p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 75
    .line 76
    add-int/lit8 p2, p2, 0x1

    .line 77
    .line 78
    iput p2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 79
    .line 80
    move p2, p1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_3
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->g:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->h:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->g:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->h:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 15
    .line 16
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->h:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->g:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->h:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 15
    .line 16
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    return v0
.end method

.method public final remove()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->g:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->m(ZLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->g:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    iget-object v2, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->h:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 26
    .line 27
    iget v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 28
    .line 29
    sub-int/2addr v2, v1

    .line 30
    iput v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->c:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 36
    .line 37
    :goto_1
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->i:Lcom/google/common/collect/LinkedListMultimap;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v3, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 44
    .line 45
    iput-object v3, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object v3, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 49
    .line 50
    iput-object v3, v2, Lcom/google/common/collect/LinkedListMultimap;->i:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 51
    .line 52
    :goto_2
    iget-object v3, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->c:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iput-object v1, v3, Lcom/google/common/collect/LinkedListMultimap$Node;->f:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    iput-object v1, v2, Lcom/google/common/collect/LinkedListMultimap;->j:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 60
    .line 61
    :goto_3
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
