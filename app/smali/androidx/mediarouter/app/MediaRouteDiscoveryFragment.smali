.class public Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public c:Landroidx/mediarouter/media/MediaRouter;

.field public f:Landroidx/mediarouter/media/MediaRouteSelector;

.field public g:Landroidx/mediarouter/media/MediaRouter$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string v0, "selector"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 47
    .line 48
    :cond_2
    new-instance p1, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment$1;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->g:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, p1, v2}, Landroidx/mediarouter/media/MediaRouter;->a(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->g:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->g:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    invoke-virtual {v1, v2, v0, v3}, Landroidx/mediarouter/media/MediaRouter;->a(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->g:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDiscoveryFragment;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v0, v3}, Landroidx/mediarouter/media/MediaRouter;->a(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
