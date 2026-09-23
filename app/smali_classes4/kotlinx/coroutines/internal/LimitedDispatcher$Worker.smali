.class final Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/LimitedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Worker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public c:Ljava/lang/Runnable;

.field public final synthetic f:Lkotlinx/coroutines/internal/LimitedDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->f:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->c:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->f:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 2
    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->f:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :cond_0
    :try_start_0
    iget-object v3, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->c:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v3

    .line 13
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 14
    .line 15
    invoke-static {v4, v3}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    sget-object v3, Lkotlinx/coroutines/internal/LimitedDispatcher;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->X()Ljava/lang/Runnable;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iput-object v3, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->c:Ljava/lang/Runnable;

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    const/16 v3, 0x10

    .line 32
    .line 33
    if-lt v2, v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->W(Lkotlin/coroutines/CoroutineContext;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->S(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
