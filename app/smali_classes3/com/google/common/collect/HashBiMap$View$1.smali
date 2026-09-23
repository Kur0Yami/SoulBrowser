.class Lcom/google/common/collect/HashBiMap$View$1;
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

.field public h:I

.field public final synthetic i:Lcom/google/common/collect/HashBiMap$View;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap$View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$View$1;->i:Lcom/google/common/collect/HashBiMap$View;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$View;->c:Lcom/google/common/collect/HashBiMap;

    .line 7
    .line 8
    iget v0, p1, Lcom/google/common/collect/HashBiMap;->m:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->c:I

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->f:I

    .line 14
    .line 15
    iget v0, p1, Lcom/google/common/collect/HashBiMap;->h:I

    .line 16
    .line 17
    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->g:I

    .line 18
    .line 19
    iget p1, p1, Lcom/google/common/collect/HashBiMap;->g:I

    .line 20
    .line 21
    iput p1, p0, Lcom/google/common/collect/HashBiMap$View$1;->h:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->i:Lcom/google/common/collect/HashBiMap$View;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$View;->c:Lcom/google/common/collect/HashBiMap;

    .line 4
    .line 5
    iget v0, v0, Lcom/google/common/collect/HashBiMap;->h:I

    .line 6
    .line 7
    iget v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->g:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->c:I

    .line 12
    .line 13
    const/4 v1, -0x2

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->h:I

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$View$1;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->c:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->i:Lcom/google/common/collect/HashBiMap$View;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/google/common/collect/HashBiMap$View;->a(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v2, p0, Lcom/google/common/collect/HashBiMap$View$1;->c:I

    .line 16
    .line 17
    iput v2, p0, Lcom/google/common/collect/HashBiMap$View$1;->f:I

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$View;->c:Lcom/google/common/collect/HashBiMap;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->p:[I

    .line 22
    .line 23
    aget v1, v1, v2

    .line 24
    .line 25
    iput v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->c:I

    .line 26
    .line 27
    iget v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->h:I

    .line 28
    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    iput v1, p0, Lcom/google/common/collect/HashBiMap$View$1;->h:I

    .line 32
    .line 33
    return-object v0

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
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->i:Lcom/google/common/collect/HashBiMap$View;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$View;->c:Lcom/google/common/collect/HashBiMap;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$View;->c:Lcom/google/common/collect/HashBiMap;

    .line 6
    .line 7
    iget v0, v0, Lcom/google/common/collect/HashBiMap;->h:I

    .line 8
    .line 9
    iget v2, p0, Lcom/google/common/collect/HashBiMap$View$1;->g:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_2

    .line 12
    .line 13
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->f:I

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->d(Z)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->f:I

    .line 25
    .line 26
    iget-object v3, v1, Lcom/google/common/collect/HashBiMap;->c:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v3, v3, v0

    .line 29
    .line 30
    invoke-static {v3}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v1, v0, v3}, Lcom/google/common/collect/HashBiMap;->j(II)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->c:I

    .line 38
    .line 39
    iget v3, v1, Lcom/google/common/collect/HashBiMap;->g:I

    .line 40
    .line 41
    if-ne v0, v3, :cond_1

    .line 42
    .line 43
    iget v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->f:I

    .line 44
    .line 45
    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->c:I

    .line 46
    .line 47
    :cond_1
    iput v2, p0, Lcom/google/common/collect/HashBiMap$View$1;->f:I

    .line 48
    .line 49
    iget v0, v1, Lcom/google/common/collect/HashBiMap;->h:I

    .line 50
    .line 51
    iput v0, p0, Lcom/google/common/collect/HashBiMap$View$1;->g:I

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0
.end method
