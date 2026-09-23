.class final Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;
.super Lcom/google/common/collect/AbstractNavigableMap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilteredEntryNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractNavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/NavigableMap;

.field public final f:Lcom/google/common/base/Predicate;

.field public final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 10
    .line 11
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryMap;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->g:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->d(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final b()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->d(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->g:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/AbstractMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->g:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final descendingMap()Ljava/util/NavigableMap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->d(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->g:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/Maps$ViewCachingAbstractMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->g:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->d(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method

.method public final navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;Ljava/util/NavigableMap;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->d(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Map$Entry;

    .line 14
    .line 15
    return-object v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->d(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Map$Entry;

    .line 18
    .line 19
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->g:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->g:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->putAll(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->g:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Lcom/google/common/collect/Maps$AbstractFilteredMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->g:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/AbstractMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->d(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->d(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/Maps$FilteredMapValues;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->c:Ljava/util/NavigableMap;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->f:Lcom/google/common/base/Predicate;

    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/collect/Maps$FilteredMapValues;-><init>(Ljava/util/AbstractMap;Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
