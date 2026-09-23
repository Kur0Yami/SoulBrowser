.class public final synthetic Landroidx/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic c:Landroidx/activity/OnBackPressedDispatcher;

.field public final synthetic f:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/e;->c:Landroidx/activity/OnBackPressedDispatcher;

    iput-object p1, p0, Landroidx/activity/e;->f:Landroidx/activity/ComponentActivity;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 1
    sget v0, Landroidx/activity/ComponentActivity;->x:I

    .line 2
    .line 3
    const-string v0, "$dispatcher"

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/activity/e;->c:Landroidx/activity/OnBackPressedDispatcher;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "this$0"

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/activity/e;->f:Landroidx/activity/ComponentActivity;

    .line 13
    .line 14
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "<anonymous parameter 0>"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "event"

    .line 23
    .line 24
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 28
    .line 29
    if-ne p2, p1, :cond_0

    .line 30
    .line 31
    sget-object p1, Landroidx/activity/ComponentActivity$Api33Impl;->a:Landroidx/activity/ComponentActivity$Api33Impl;

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroidx/activity/ComponentActivity$Api33Impl;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "invoker"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, v1, Landroidx/activity/OnBackPressedDispatcher;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 43
    .line 44
    iget-boolean p1, v1, Landroidx/activity/OnBackPressedDispatcher;->g:Z

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroidx/activity/OnBackPressedDispatcher;->d(Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
