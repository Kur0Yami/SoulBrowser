.class final Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/collect/IgnoreJRERequirement;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumSetAccumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/EnumSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget v0, Lcom/google/common/collect/CollectCollectors;->a:I

    .line 2
    .line 3
    new-instance v0, Lcom/google/common/collect/a;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Lcom/google/common/collect/a;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/google/common/collect/b;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Lcom/google/common/collect/b;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/google/common/collect/c;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Lcom/google/common/collect/c;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lcom/google/common/collect/d;

    .line 20
    .line 21
    invoke-direct {v4, v1}, Lcom/google/common/collect/d;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    new-array v5, v5, [Lj$/util/stream/Collector$Characteristics;

    .line 26
    .line 27
    sget-object v6, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    .line 28
    .line 29
    aput-object v6, v5, v1

    .line 30
    .line 31
    invoke-static {v0, v2, v3, v4, v5}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    .line 32
    .line 33
    .line 34
    return-void
.end method
