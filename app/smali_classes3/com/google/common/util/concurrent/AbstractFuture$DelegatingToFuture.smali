.class final Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelegatingToFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/util/concurrent/AbstractFuture;

.field public final f:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFutureState;->c:Ljava/lang/Object;

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->i(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 15
    .line 16
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFutureState;->k:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    .line 17
    .line 18
    invoke-virtual {v2, v1, p0, v0}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->b(Lcom/google/common/util/concurrent/AbstractFutureState;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->c:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->f(Lcom/google/common/util/concurrent/AbstractFuture;Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
