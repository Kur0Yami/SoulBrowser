.class public Landroidx/mediarouter/app/MediaRouteActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "SourceFile"


# instance fields
.field public d:Landroidx/mediarouter/media/MediaRouteSelector;

.field public final e:Landroidx/mediarouter/app/MediaRouteDialogFactory;

.field public f:Landroidx/mediarouter/app/MediaRouteButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->d:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 7
    .line 8
    sget-object v0, Landroidx/mediarouter/app/MediaRouteDialogFactory;->a:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final c()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MRActionProvider"

    .line 6
    .line 7
    const-string v1, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old menu item..."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/core/view/ActionProvider;->a:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v0, v1, v2}, Landroidx/mediarouter/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Landroidx/mediarouter/app/MediaRouteButton;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setCheatSheetEnabled(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Landroidx/mediarouter/app/MediaRouteButton;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->d:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Landroidx/mediarouter/app/MediaRouteButton;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->e:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteButton;->setDialogFactory(Landroidx/mediarouter/app/MediaRouteDialogFactory;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Landroidx/mediarouter/app/MediaRouteButton;

    .line 41
    .line 42
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    const/4 v2, -0x2

    .line 45
    const/4 v3, -0x1

    .line 46
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Landroidx/mediarouter/app/MediaRouteButton;

    .line 53
    .line 54
    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteButton;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method
