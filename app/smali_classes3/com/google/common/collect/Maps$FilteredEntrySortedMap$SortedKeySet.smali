.class final Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;
.super Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$FilteredEntrySortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SortedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$FilteredEntryMap<",
        "TK;TV;>.KeySet;",
        "Ljava/util/SortedSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$FilteredEntrySortedMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->g:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->g:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;->h:Ljava/util/Map;

    .line 4
    .line 5
    check-cast v0, Ljava/util/SortedMap;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->g:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->firstKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->g:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/SortedSet;

    .line 14
    .line 15
    return-object p1
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->g:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->lastKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->g:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/SortedSet;

    .line 14
    .line 15
    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->g:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/SortedSet;

    .line 14
    .line 15
    return-object p1
.end method
