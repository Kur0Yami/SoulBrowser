.class final Lcom/google/common/collect/CollectCollectors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation build Lcom/google/common/collect/IgnoreJRERequirement;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;,
        Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/common/collect/a;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lcom/google/common/collect/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/google/common/collect/b;

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-direct {v1, v2}, Lcom/google/common/collect/b;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/google/common/collect/c;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v3}, Lcom/google/common/collect/c;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/google/common/collect/d;

    .line 20
    .line 21
    const/4 v4, 0x5

    .line 22
    invoke-direct {v3, v4}, Lcom/google/common/collect/d;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    new-array v5, v4, [Lj$/util/stream/Collector$Characteristics;

    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/google/common/collect/a;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-direct {v0, v1}, Lcom/google/common/collect/a;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/google/common/collect/b;

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    invoke-direct {v1, v2}, Lcom/google/common/collect/b;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/google/common/collect/c;

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-direct {v2, v3}, Lcom/google/common/collect/c;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/google/common/collect/d;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    invoke-direct {v3, v5}, Lcom/google/common/collect/d;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-array v5, v4, [Lj$/util/stream/Collector$Characteristics;

    .line 56
    .line 57
    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/google/common/collect/a;

    .line 61
    .line 62
    const/4 v1, 0x3

    .line 63
    invoke-direct {v0, v1}, Lcom/google/common/collect/a;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/google/common/collect/b;

    .line 67
    .line 68
    const/4 v2, 0x4

    .line 69
    invoke-direct {v1, v2}, Lcom/google/common/collect/b;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lcom/google/common/collect/c;

    .line 73
    .line 74
    const/4 v3, 0x4

    .line 75
    invoke-direct {v2, v3}, Lcom/google/common/collect/c;-><init>(I)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lcom/google/common/collect/d;

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    invoke-direct {v3, v5}, Lcom/google/common/collect/d;-><init>(I)V

    .line 82
    .line 83
    .line 84
    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    .line 85
    .line 86
    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    .line 87
    .line 88
    .line 89
    return-void
.end method
