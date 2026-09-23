.class Lcom/google/api/core/ApiFutures$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/api/core/ApiFuture<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/api/core/ApiFuture;

    .line 2
    .line 3
    instance-of v0, p1, Lcom/google/api/core/AbstractApiFuture;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Lcom/google/api/core/ApiFutureToListenableFuture;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/google/api/core/ApiFutureToListenableFuture;-><init>(Lcom/google/api/core/ApiFuture;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
