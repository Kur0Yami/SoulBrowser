.class public final Lj$/util/stream/u6;
.super Lj$/util/stream/w6;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfLong;


# instance fields
.field public final synthetic g:Lj$/util/stream/v6;


# direct methods
.method public constructor <init>(Lj$/util/stream/v6;IIII)V
    .locals 0

    .line 932
    iput-object p1, p0, Lj$/util/stream/u6;->g:Lj$/util/stream/v6;

    .line 933
    invoke-direct/range {p0 .. p5}, Lj$/util/stream/w6;-><init>(Lj$/util/stream/x6;IIII)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 929
    check-cast p2, [J

    check-cast p3, Ljava/util/function/LongConsumer;

    .line 946
    aget-wide p1, p2, p1

    invoke-interface {p3, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public final b(Ljava/lang/Object;II)Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 929
    check-cast p1, [J

    add-int/2addr p3, p2

    const/16 v0, 0x410

    .line 5581
    invoke-static {p1, p2, p3, v0}, Lj$/util/Spliterators;->spliterator([JIII)Lj$/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public final c(IIII)Lj$/util/Spliterator$OfPrimitive;
    .locals 6

    .line 940
    new-instance v0, Lj$/util/stream/u6;

    iget-object v1, p0, Lj$/util/stream/u6;->g:Lj$/util/stream/v6;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/u6;-><init>(Lj$/util/stream/v6;IIII)V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->g(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->u(Lj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
