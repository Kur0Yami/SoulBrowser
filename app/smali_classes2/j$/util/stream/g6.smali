.class public final Lj$/util/stream/g6;
.super Lj$/util/stream/w;
.source "SourceFile"


# virtual methods
.method public final E0(Lj$/util/stream/v3;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/c2;
    .locals 2

    .line 273
    sget-object v0, Lj$/util/stream/c7;->SORTED:Lj$/util/stream/c7;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    .line 509
    iget v1, v1, Lj$/util/stream/a;->m:I

    .line 273
    invoke-virtual {v0, v1}, Lj$/util/stream/c7;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/v3;->g0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/c2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/v3;->g0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/c2;

    move-result-object p1

    check-cast p1, Lj$/util/stream/w1;

    .line 279
    invoke-interface {p1}, Lj$/util/stream/b2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    .line 282
    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    .line 275
    new-instance p2, Lj$/util/stream/o2;

    invoke-direct {p2, p1}, Lj$/util/stream/o2;-><init>([D)V

    return-object p2
.end method

.method public final H0(ILj$/util/stream/n5;)Lj$/util/stream/n5;
    .locals 1

    .line 259
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lj$/util/stream/c7;->SORTED:Lj$/util/stream/c7;

    invoke-virtual {v0, p1}, Lj$/util/stream/c7;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 263
    :cond_0
    sget-object v0, Lj$/util/stream/c7;->SIZED:Lj$/util/stream/c7;

    invoke-virtual {v0, p1}, Lj$/util/stream/c7;->i(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    new-instance p1, Lj$/util/stream/l6;

    .line 627
    invoke-direct {p1, p2}, Lj$/util/stream/g5;-><init>(Lj$/util/stream/n5;)V

    return-object p1

    .line 266
    :cond_1
    new-instance p1, Lj$/util/stream/d6;

    .line 627
    invoke-direct {p1, p2}, Lj$/util/stream/g5;-><init>(Lj$/util/stream/n5;)V

    return-object p1
.end method
