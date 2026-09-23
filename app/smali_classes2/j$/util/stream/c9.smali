.class public final synthetic Lj$/util/stream/c9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;
.implements Ljava/util/function/ObjDoubleConsumer;


# virtual methods
.method public accept(Ljava/lang/Object;D)V
    .locals 5

    check-cast p1, [D

    const/4 v0, 0x2

    .line 469
    aget-wide v1, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    .line 470
    invoke-static {p1, p2, p3}, Lj$/util/stream/Collectors;->a([DD)V

    const/4 v0, 0x3

    .line 471
    aget-wide v1, p1, v0

    add-double/2addr v1, p2

    aput-wide v1, p1, v0

    return-void
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0

    .line 568
    new-array p1, p1, [Ljava/lang/Double;

    return-object p1
.end method
