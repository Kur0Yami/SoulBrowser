.class public final Lj$/util/stream/z8;
.super Lj$/util/stream/e1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/f9;


# virtual methods
.method public final E0(Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/c2;
    .locals 1

    .line 506
    new-instance v0, Lj$/util/stream/h9;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/h9;-><init>(Lj$/util/stream/a;Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 507
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/c2;

    return-object p1
.end method

.method public final F0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 492
    sget-object v0, Lj$/util/stream/c7;->ORDERED:Lj$/util/stream/c7;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 492
    invoke-virtual {v0, v1}, Lj$/util/stream/c7;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Lj$/util/stream/y0;

    const/16 v1, 0x1c

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/y0;-><init>(I)V

    .line 493
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/z8;->E0(Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/c2;

    move-result-object p1

    .line 494
    invoke-interface {p1}, Lj$/util/stream/c2;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 497
    :cond_0
    new-instance v0, Lj$/util/stream/p9;

    .line 498
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->x0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/Spliterator$OfLong;

    .line 933
    invoke-direct {v0, p1}, Lj$/util/stream/t9;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final H0(ILj$/util/stream/n5;)Lj$/util/stream/n5;
    .locals 1

    .line 544
    new-instance p1, Lj$/util/stream/y8;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/y8;-><init>(Lj$/util/stream/z8;Lj$/util/stream/n5;Z)V

    return-object p1
.end method

.method public final h(Lj$/util/stream/u1;Z)Lj$/util/stream/g9;
    .locals 1

    .line 544
    new-instance v0, Lj$/util/stream/y8;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/y8;-><init>(Lj$/util/stream/z8;Lj$/util/stream/n5;Z)V

    return-object v0
.end method
