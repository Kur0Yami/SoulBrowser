.class public final Lj$/util/stream/q9;
.super Lj$/util/stream/r9;
.source "SourceFile"


# virtual methods
.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 948
    check-cast p1, Lj$/util/Spliterator$OfLong;

    .line 986
    new-instance v0, Lj$/util/stream/q9;

    .line 938
    invoke-direct {v0, p1, p0}, Lj$/util/stream/t9;-><init>(Lj$/util/Spliterator;Lj$/util/stream/t9;)V

    return-object v0
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 948
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/q9;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 2

    .line 960
    iget-boolean p1, p0, Lj$/util/stream/t9;->c:Z

    if-eqz p1, :cond_1

    .line 961
    invoke-virtual {p0}, Lj$/util/stream/t9;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lj$/util/stream/t9;->a:Lj$/util/Spliterator;

    check-cast p1, Lj$/util/Spliterator$OfLong;

    .line 962
    invoke-interface {p1, p0}, Lj$/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lj$/util/stream/r9;->e:J

    const/4 p1, 0x0

    .line 963
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongPredicate;->test(J)Z

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 969
    iput-boolean p1, p0, Lj$/util/stream/t9;->c:Z

    return p1
.end method

.method public final trySplit()Lj$/util/Spliterator$OfLong;
    .locals 1

    .line 981
    iget-object v0, p0, Lj$/util/stream/t9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lj$/util/stream/t9;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lj$/util/stream/q9;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lj$/util/stream/q9;->trySplit()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
