.class final Lorg/apache/commons/lang3/stream/LangCollectors$SimpleCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/stream/LangCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/stream/Collector<",
        "TT;TA;TR;>;"
    }
.end annotation


# virtual methods
.method public final accumulator()Ljava/util/function/BiConsumer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final characteristics()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final combiner()Ljava/util/function/BinaryOperator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final finisher()Ljava/util/function/Function;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final supplier()Ljava/util/function/Supplier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
