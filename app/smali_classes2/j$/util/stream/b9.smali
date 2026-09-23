.class public final Lj$/util/stream/b9;
.super Lj$/util/stream/w;
.source "SourceFile"


# virtual methods
.method public final E0(Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/c2;
    .locals 1

    .line 253
    new-instance v0, Lj$/util/stream/i9;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/i9;-><init>(Lj$/util/stream/a;Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 254
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/c2;

    return-object p1
.end method

.method public final F0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 239
    sget-object v0, Lj$/util/stream/c7;->ORDERED:Lj$/util/stream/c7;

    .line 509
    iget v1, p1, Lj$/util/stream/a;->m:I

    .line 239
    invoke-virtual {v0, v1}, Lj$/util/stream/c7;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lj$/util/stream/y0;

    const/16 v1, 0x1d

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/y0;-><init>(I)V

    .line 240
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/b9;->E0(Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/c2;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Lj$/util/stream/c2;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 244
    :cond_0
    new-instance v0, Lj$/util/stream/k9;

    .line 245
    invoke-virtual {p1, p2}, Lj$/util/stream/a;->x0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/Spliterator$OfDouble;

    .line 1038
    invoke-direct {v0, p1}, Lj$/util/stream/t9;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final H0(ILj$/util/stream/n5;)Lj$/util/stream/n5;
    .locals 0

    .line 259
    new-instance p1, Lj$/util/stream/a9;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/a9;-><init>(Lj$/util/stream/b9;Lj$/util/stream/n5;)V

    return-object p1
.end method
