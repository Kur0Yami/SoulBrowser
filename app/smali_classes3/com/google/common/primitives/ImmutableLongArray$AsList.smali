.class final Lcom/google/common/primitives/ImmutableLongArray$AsList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;
.implements Lj$/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/ImmutableLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;",
        "Lj$/util/List;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/primitives/ImmutableLongArray;


# direct methods
.method public constructor <init>(Lcom/google/common/primitives/ImmutableLongArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/google/common/primitives/ImmutableLongArray;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/google/common/primitives/ImmutableLongArray;->a()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eq v0, v3, :cond_2

    .line 33
    .line 34
    return v2

    .line 35
    :cond_2
    iget v0, v1, Lcom/google/common/primitives/ImmutableLongArray;->f:I

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_5

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    instance-of v4, v3, Ljava/lang/Long;

    .line 52
    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    iget-object v4, v1, Lcom/google/common/primitives/ImmutableLongArray;->c:[J

    .line 56
    .line 57
    add-int/lit8 v5, v0, 0x1

    .line 58
    .line 59
    aget-wide v6, v4, v0

    .line 60
    .line 61
    check-cast v3, Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    cmp-long v0, v6, v3

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v0, v5

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    :goto_1
    return v2

    .line 75
    :cond_5
    const/4 p1, 0x1

    .line 76
    return p1
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/lang/Iterable$-CC;->$default$forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->g(II)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/common/primitives/ImmutableLongArray;->c:[J

    .line 11
    .line 12
    iget v0, v0, Lcom/google/common/primitives/ImmutableLongArray;->f:I

    .line 13
    .line 14
    add-int/2addr v0, p1

    .line 15
    aget-wide v0, v1, v0

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 8

    .line 1
    instance-of v0, p1, Ljava/lang/Long;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 13
    .line 14
    iget v0, p1, Lcom/google/common/primitives/ImmutableLongArray;->f:I

    .line 15
    .line 16
    move v4, v0

    .line 17
    :goto_0
    iget v5, p1, Lcom/google/common/primitives/ImmutableLongArray;->g:I

    .line 18
    .line 19
    if-ge v4, v5, :cond_1

    .line 20
    .line 21
    iget-object v5, p1, Lcom/google/common/primitives/ImmutableLongArray;->c:[J

    .line 22
    .line 23
    aget-wide v6, v5, v4

    .line 24
    .line 25
    cmp-long v5, v6, v2

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    sub-int/2addr v4, v0

    .line 30
    return v4

    .line 31
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 8

    .line 1
    instance-of v0, p1, Ljava/lang/Long;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-object p1, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 13
    .line 14
    iget v0, p1, Lcom/google/common/primitives/ImmutableLongArray;->g:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    :goto_0
    iget v4, p1, Lcom/google/common/primitives/ImmutableLongArray;->f:I

    .line 19
    .line 20
    if-lt v0, v4, :cond_1

    .line 21
    .line 22
    iget-object v5, p1, Lcom/google/common/primitives/ImmutableLongArray;->c:[J

    .line 23
    .line 24
    aget-wide v6, v5, v0

    .line 25
    .line 26
    cmp-long v5, v6, v2

    .line 27
    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    sub-int/2addr v0, v4

    .line 31
    return v0

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v1
.end method

.method public synthetic parallelStream()Lj$/util/stream/Stream;
    .locals 1

    .line 2
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->parallelStream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic removeIf(Ljava/util/function/Predicate;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public synthetic replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/List$-CC;->$default$replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public synthetic sort(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/List$-CC;->$default$sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    iget-object v1, v0, Lcom/google/common/primitives/ImmutableLongArray;->c:[J

    .line 3
    iget v2, v0, Lcom/google/common/primitives/ImmutableLongArray;->f:I

    iget v0, v0, Lcom/google/common/primitives/ImmutableLongArray;->g:I

    const/16 v3, 0x410

    invoke-static {v1, v2, v0, v3}, Lj$/util/Spliterators;->spliterator([JIII)Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Lj$/util/stream/Stream;
    .locals 1

    .line 2
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/primitives/ImmutableLongArray$AsList;->stream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, p2, v1}, Lcom/google/common/base/Preconditions;->j(III)V

    .line 8
    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/google/common/primitives/ImmutableLongArray;->h:Lcom/google/common/primitives/ImmutableLongArray;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lcom/google/common/primitives/ImmutableLongArray;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/google/common/primitives/ImmutableLongArray;->c:[J

    .line 18
    .line 19
    iget v0, v0, Lcom/google/common/primitives/ImmutableLongArray;->f:I

    .line 20
    .line 21
    add-int/2addr p1, v0

    .line 22
    add-int/2addr v0, p2

    .line 23
    invoke-direct {v1, v2, p1, v0}, Lcom/google/common/primitives/ImmutableLongArray;-><init>([JII)V

    .line 24
    .line 25
    .line 26
    move-object p1, v1

    .line 27
    :goto_0
    new-instance p2, Lcom/google/common/primitives/ImmutableLongArray$AsList;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Lcom/google/common/primitives/ImmutableLongArray$AsList;-><init>(Lcom/google/common/primitives/ImmutableLongArray;)V

    .line 30
    .line 31
    .line 32
    return-object p2
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/primitives/ImmutableLongArray$AsList;->c:Lcom/google/common/primitives/ImmutableLongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/primitives/ImmutableLongArray;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
