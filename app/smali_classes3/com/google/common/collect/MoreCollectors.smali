.class public final Lcom/google/common/collect/MoreCollectors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation build Lcom/google/common/collect/IgnoreJRERequirement;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MoreCollectors$ToOptionalState;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/common/collect/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/google/common/collect/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/google/common/collect/b;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Lcom/google/common/collect/b;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/google/common/collect/c;

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-direct {v3, v4}, Lcom/google/common/collect/c;-><init>(I)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Lcom/google/common/collect/d;

    .line 19
    .line 20
    invoke-direct {v5, v4}, Lcom/google/common/collect/d;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sget-object v6, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    .line 24
    .line 25
    new-array v7, v1, [Lj$/util/stream/Collector$Characteristics;

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    aput-object v6, v7, v8

    .line 29
    .line 30
    invoke-static {v0, v2, v3, v5, v7}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/Object;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/google/common/collect/MoreCollectors;->a:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v0, Lcom/google/common/collect/a;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/google/common/collect/a;-><init>(I)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lcom/google/common/collect/b;

    .line 46
    .line 47
    invoke-direct {v2, v4}, Lcom/google/common/collect/b;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/google/common/collect/c;

    .line 51
    .line 52
    invoke-direct {v3, v4}, Lcom/google/common/collect/c;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v4, Lcom/google/common/collect/d;

    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    invoke-direct {v4, v5}, Lcom/google/common/collect/d;-><init>(I)V

    .line 59
    .line 60
    .line 61
    new-array v1, v1, [Lj$/util/stream/Collector$Characteristics;

    .line 62
    .line 63
    aput-object v6, v1, v8

    .line 64
    .line 65
    invoke-static {v0, v2, v3, v4, v1}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    .line 66
    .line 67
    .line 68
    return-void
.end method
