.class public final Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/activity/ComponentActivity$4",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->c:Landroidx/activity/ComponentActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p1, Landroidx/activity/ComponentActivity;->x:I

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->c:Landroidx/activity/ComponentActivity;

    .line 14
    .line 15
    iget-object p2, p1, Landroidx/activity/ComponentActivity;->i:Landroidx/lifecycle/ViewModelStore;

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Landroidx/activity/ComponentActivity$NonConfigurationInstances;

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object p2, p2, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->a:Landroidx/lifecycle/ViewModelStore;

    .line 28
    .line 29
    iput-object p2, p1, Landroidx/activity/ComponentActivity;->i:Landroidx/lifecycle/ViewModelStore;

    .line 30
    .line 31
    :cond_0
    iget-object p2, p1, Landroidx/activity/ComponentActivity;->i:Landroidx/lifecycle/ViewModelStore;

    .line 32
    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    new-instance p2, Landroidx/lifecycle/ViewModelStore;

    .line 36
    .line 37
    invoke-direct {p2}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p2, p1, Landroidx/activity/ComponentActivity;->i:Landroidx/lifecycle/ViewModelStore;

    .line 41
    .line 42
    :cond_1
    iget-object p1, p1, Landroidx/core/app/ComponentActivity;->c:Landroidx/lifecycle/LifecycleRegistry;

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;->c(Landroidx/lifecycle/LifecycleObserver;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
