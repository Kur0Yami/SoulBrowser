.class final Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
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


# static fields
.field public static final f:Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;->f:Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final S(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultScheduler;->g:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->h:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 7
    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final T(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultScheduler;->g:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->h:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->f:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 7
    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
