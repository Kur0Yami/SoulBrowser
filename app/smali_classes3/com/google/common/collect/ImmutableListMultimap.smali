.class public Lcom/google/common/collect/ImmutableListMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableListMultimap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public static l()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/EmptyImmutableListMultimap;->k:Lcom/google/common/collect/EmptyImmutableListMultimap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static m(Ljava/lang/String;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "charset"

    .line 7
    .line 8
    invoke-static {v1, p0}, Lcom/google/common/collect/CollectPreconditions;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/common/collect/ImmutableMultimap$Builder;->a:Ljava/util/Map;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/google/common/collect/CompactHashMap;->d()Lcom/google/common/collect/CompactHashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, v0, Lcom/google/common/collect/ImmutableMultimap$Builder;->a:Ljava/util/Map;

    .line 20
    .line 21
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    sget-object v2, Lcom/google/common/collect/ImmutableList;->f:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 30
    .line 31
    const-string v2, "expectedSize"

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-static {v3, v2}, Lcom/google/common/collect/CollectPreconditions;->b(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    .line 38
    .line 39
    invoke-direct {v2, v3}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Lcom/google/common/collect/ImmutableMultimap$Builder;->a:Ljava/util/Map;

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lcom/google/common/collect/CompactHashMap;->d()Lcom/google/common/collect/CompactHashMap;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, v0, Lcom/google/common/collect/ImmutableMultimap$Builder;->a:Ljava/util/Map;

    .line 51
    .line 52
    :cond_1
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v2, p0}, Lcom/google/common/collect/ImmutableCollection$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 56
    .line 57
    .line 58
    iget-object p0, v0, Lcom/google/common/collect/ImmutableMultimap$Builder;->a:Ljava/util/Map;

    .line 59
    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    sget-object p0, Lcom/google/common/collect/EmptyImmutableListMultimap;->k:Lcom/google/common/collect/EmptyImmutableListMultimap;

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_3
    check-cast p0, Lcom/google/common/collect/CompactHashMap;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->entrySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    move-object v0, p0

    .line 72
    check-cast v0, Ljava/util/AbstractCollection;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    sget-object p0, Lcom/google/common/collect/EmptyImmutableListMultimap;->k:Lcom/google/common/collect/EmptyImmutableListMultimap;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_4
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    .line 84
    .line 85
    check-cast p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$EntrySetView;->c:Lcom/google/common/collect/CompactHashMap;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/google/common/collect/CompactHashMap;->size()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$EntrySetView;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const/4 v1, 0x0

    .line 101
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Lcom/google/common/collect/ImmutableList$Builder;

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->f()Lcom/google/common/collect/ImmutableList;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 128
    .line 129
    .line 130
    check-cast v2, Lcom/google/common/collect/RegularImmutableList;

    .line 131
    .line 132
    iget v2, v2, Lcom/google/common/collect/RegularImmutableList;->h:I

    .line 133
    .line 134
    add-int/2addr v1, v2

    .line 135
    goto :goto_0

    .line 136
    :cond_5
    new-instance p0, Lcom/google/common/collect/ImmutableListMultimap;

    .line 137
    .line 138
    const/4 v2, 0x1

    .line 139
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->b(Z)Lcom/google/common/collect/ImmutableMap;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 144
    .line 145
    .line 146
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->i:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/google/common/collect/ImmutableList;->f:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 3
    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->i:Lcom/google/common/collect/ImmutableList;

    :cond_0
    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->i:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/google/common/collect/ImmutableList;->f:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 6
    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->i:Lcom/google/common/collect/ImmutableList;

    :cond_0
    return-object p1
.end method

.method public final j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->i:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/common/collect/ImmutableList;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/google/common/collect/ImmutableList;->f:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 12
    .line 13
    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->i:Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    :cond_0
    return-object p1
.end method

.method public final k()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
