.class public final Lj$/util/stream/t2;
.super Lj$/util/stream/v2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/a2;


# virtual methods
.method public final a(I)Lj$/util/stream/b2;
    .locals 0

    .line 253
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic a(I)Lj$/util/stream/c2;
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lj$/util/stream/t2;->a(I)Lj$/util/stream/b2;

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 610
    sget-object v0, Lj$/util/stream/v3;->f:[J

    return-object v0
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/v3;->R(Lj$/util/stream/a2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic i(JJLjava/util/function/IntFunction;)Lj$/util/stream/c2;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/v3;->U(Lj$/util/stream/a2;JJ)Lj$/util/stream/a2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k([Ljava/lang/Object;I)V
    .locals 0

    .line 394
    check-cast p1, [Ljava/lang/Long;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/v3;->O(Lj$/util/stream/a2;[Ljava/lang/Long;I)V

    return-void
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 610
    sget-object v0, Lj$/util/Spliterators;->c:Lj$/util/i1;

    return-object v0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 610
    sget-object v0, Lj$/util/Spliterators;->c:Lj$/util/i1;

    return-object v0
.end method
