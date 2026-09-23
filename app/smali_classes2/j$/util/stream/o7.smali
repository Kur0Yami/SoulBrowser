.class public abstract Lj$/util/stream/o7;
.super Lj$/util/stream/p7;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfPrimitive;


# virtual methods
.method public final forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    .line 573
    invoke-virtual {p0}, Lj$/util/stream/p7;->a()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 595
    invoke-virtual {p0, p1}, Lj$/util/stream/o7;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Lj$/util/stream/o7;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lj$/util/stream/o7;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    .line 568
    invoke-virtual {p0}, Lj$/util/stream/p7;->a()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 0

    .line 595
    invoke-virtual {p0, p1}, Lj$/util/stream/o7;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Lj$/util/stream/o7;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lj$/util/stream/o7;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
