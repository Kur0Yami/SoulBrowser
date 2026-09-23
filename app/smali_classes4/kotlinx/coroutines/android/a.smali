.class public final synthetic Lkotlinx/coroutines/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic c:Lkotlinx/coroutines/android/HandlerContext;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/a;->c:Lkotlinx/coroutines/android/HandlerContext;

    iput-object p2, p0, Lkotlinx/coroutines/android/a;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/android/a;->f:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/android/a;->c:Lkotlinx/coroutines/android/HandlerContext;

    .line 4
    .line 5
    iget-object v1, v1, Lkotlinx/coroutines/android/HandlerContext;->f:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
