.class public final Lj$/util/stream/j9;
.super Lj$/util/stream/l9;
.source "SourceFile"


# virtual methods
.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    .line 1095
    check-cast p1, Lj$/util/Spliterator$OfDouble;

    .line 1133
    new-instance v0, Lj$/util/stream/j9;

    .line 1043
    invoke-direct {v0, p1, p0}, Lj$/util/stream/t9;-><init>(Lj$/util/Spliterator;Lj$/util/stream/t9;)V

    return-object v0
.end method

.method public final tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 3

    .line 1106
    iget-boolean v0, p0, Lj$/util/stream/t9;->c:Z

    iget-object v1, p0, Lj$/util/stream/t9;->a:Lj$/util/Spliterator;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1107
    iput-boolean v0, p0, Lj$/util/stream/t9;->c:Z

    .line 1110
    check-cast v1, Lj$/util/Spliterator$OfDouble;

    invoke-interface {v1, p0}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    invoke-virtual {p0}, Lj$/util/stream/t9;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lj$/util/stream/l9;->e:D

    const/4 p1, 0x0

    .line 1112
    invoke-interface {p1, v0, v1}, Ljava/util/function/DoublePredicate;->test(D)Z

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1122
    iget-wide v1, p0, Lj$/util/stream/l9;->e:D

    invoke-interface {p1, v1, v2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    :cond_2
    return v0

    .line 1127
    :cond_3
    check-cast v1, Lj$/util/Spliterator$OfDouble;

    invoke-interface {v1, p1}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method
