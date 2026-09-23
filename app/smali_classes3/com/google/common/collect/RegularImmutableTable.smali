.class abstract Lcom/google/common/collect/RegularImmutableTable;
.super Lcom/google/common/collect/ImmutableTable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableTable$CellSet;,
        Lcom/google/common/collect/RegularImmutableTable$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# virtual methods
.method public final bridge synthetic d()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->g()Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic e()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->h()Lcom/google/common/collect/ImmutableCollection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/Table;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/google/common/collect/ImmutableSet;->g:I

    .line 8
    .line 9
    sget-object v0, Lcom/google/common/collect/RegularImmutableSet;->n:Lcom/google/common/collect/RegularImmutableSet;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$CellSet;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$CellSet;-><init>(Lcom/google/common/collect/RegularImmutableTable;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final h()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/Table;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/common/collect/ImmutableList;->f:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 8
    .line 9
    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->i:Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$Values;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$Values;-><init>(Lcom/google/common/collect/RegularImmutableTable;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public abstract k(I)Lcom/google/common/collect/Table$Cell;
.end method

.method public abstract l(I)Ljava/lang/Object;
.end method
