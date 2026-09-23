.class public final Lj$/util/stream/e9;
.super Lj$/util/stream/w;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/f9;


# virtual methods
.method public final E0(Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/c2;
    .locals 1

    .line 581
    new-instance v0, Lj$/util/stream/h9;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/h9;-><init>(Lj$/util/stream/a;Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 582
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/c2;

    return-object p1
.end method

.method public final F0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 567
    sget-object v0, Lj$/util/stream/c7;->ORDERED:Lj$/util/stream/c7;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 567
    invoke-virtual {v0, v1}, Lj$/util/stream/c7;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lj$/util/stream/c9;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 568
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/e9;->E0(Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/c2;

    move-result-object p1

    .line 569
    invoke-interface {p1}, Lj$/util/stream/c2;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 572
    :cond_0
    new-instance v0, Lj$/util/stream/j9;

    .line 573
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->x0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/Spliterator$OfDouble;

    .line 1038
    invoke-direct {v0, p1}, Lj$/util/stream/t9;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final H0(ILj$/util/stream/n5;)Lj$/util/stream/n5;
    .locals 1

    .line 619
    new-instance p1, Lj$/util/stream/d9;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/d9;-><init>(Lj$/util/stream/e9;Lj$/util/stream/n5;Z)V

    return-object p1
.end method

.method public final h(Lj$/util/stream/u1;Z)Lj$/util/stream/g9;
    .locals 1

    .line 619
    new-instance v0, Lj$/util/stream/d9;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/d9;-><init>(Lj$/util/stream/e9;Lj$/util/stream/n5;Z)V

    return-object v0
.end method
