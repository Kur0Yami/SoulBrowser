.class public final synthetic Landroidx/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/activity/ComponentActivity;

.field public final synthetic f:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/h;->c:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Landroidx/activity/h;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/h;->c:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "$dispatcher"

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/activity/h;->f:Landroidx/activity/OnBackPressedDispatcher;

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget v0, Landroidx/activity/ComponentActivity;->x:I

    .line 16
    .line 17
    iget-object v0, v1, Landroidx/core/app/ComponentActivity;->c:Landroidx/lifecycle/LifecycleRegistry;

    .line 18
    .line 19
    new-instance v3, Landroidx/activity/e;

    .line 20
    .line 21
    invoke-direct {v3, v1, v2}, Landroidx/activity/e;-><init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroidx/lifecycle/LifecycleRegistry;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
