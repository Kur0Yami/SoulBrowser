.class public Lorg/apache/commons/lang3/Streams$ArrayCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/stream/Collector<",
        "TO;",
        "Ljava/util/List<",
        "TO;>;[TO;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 2
    .line 3
    sput-object v0, Lorg/apache/commons/lang3/Streams$ArrayCollector;->a:Ljava/util/Set;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final accumulator()Ljava/util/function/BiConsumer;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/f;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final characteristics()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/Streams$ArrayCollector;->a:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public final combiner()Ljava/util/function/BinaryOperator;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/i;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final finisher()Ljava/util/function/Function;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/h;-><init>(Lorg/apache/commons/lang3/Streams$ArrayCollector;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final supplier()Ljava/util/function/Supplier;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/g;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/g;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
