.class public final Lj$/util/stream/p9;
.super Lj$/util/stream/r9;
.source "SourceFile"


# virtual methods
.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 990
    check-cast p1, Lj$/util/Spliterator$OfLong;

    .line 1028
    new-instance v0, Lj$/util/stream/p9;

    .line 938
    invoke-direct {v0, p1, p0}, Lj$/util/stream/t9;-><init>(Lj$/util/Spliterator;Lj$/util/stream/t9;)V

    return-object v0
.end method

.method public final tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 3

    .line 1001
    iget-boolean v0, p0, Lj$/util/stream/t9;->c:Z

    iget-object v1, p0, Lj$/util/stream/t9;->a:Lj$/util/Spliterator;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1002
    iput-boolean v0, p0, Lj$/util/stream/t9;->c:Z

    .line 1005
    check-cast v1, Lj$/util/Spliterator$OfLong;

    invoke-interface {v1, p0}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {p0}, Lj$/util/stream/t9;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lj$/util/stream/r9;->e:J

    const/4 p1, 0x0

    .line 1007
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongPredicate;->test(J)Z

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1017
    iget-wide v1, p0, Lj$/util/stream/r9;->e:J

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    :cond_2
    return v0

    .line 1022
    :cond_3
    check-cast v1, Lj$/util/Spliterator$OfLong;

    invoke-interface {v1, p1}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method
