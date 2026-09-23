.class Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;
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
.field public c:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

.field public f:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

.field public final g:I

.field public final synthetic h:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->h:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->f:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->c:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 9
    .line 10
    iget p1, p1, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->c:I

    .line 11
    .line 12
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->g:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->h:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->c:I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->g:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->c:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->h:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->c:I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->g:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->c:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->f:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->c:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 21
    .line 22
    return-object v1

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

    .line 29
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->h:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->c:I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->g:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->f:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->m(ZLjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->f:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->c(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    throw v0

    .line 32
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw v0
.end method
