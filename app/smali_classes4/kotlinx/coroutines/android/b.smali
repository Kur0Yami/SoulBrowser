.class public final synthetic Lkotlinx/coroutines/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# virtual methods
.method public final doFrame(J)V
    .locals 0

    .line 1
    sget p1, Lkotlinx/coroutines/android/HandlerDispatcherKt;->a:I

    .line 2
    .line 3
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 4
    .line 5
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
