.class final Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProviderHandler"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/media/MediaRouteProvider;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;->a:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;->a:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v1, v2, Landroidx/mediarouter/media/MediaRouteProvider;->j:Z

    .line 14
    .line 15
    iget-object p1, v2, Landroidx/mediarouter/media/MediaRouteProvider;->i:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Landroidx/mediarouter/media/MediaRouteProvider;->e(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput-boolean v1, v2, Landroidx/mediarouter/media/MediaRouteProvider;->l:Z

    .line 22
    .line 23
    iget-object p1, v2, Landroidx/mediarouter/media/MediaRouteProvider;->h:Landroidx/mediarouter/media/MediaRouteProvider$Callback;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object v0, v2, Landroidx/mediarouter/media/MediaRouteProvider;->k:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 28
    .line 29
    invoke-virtual {p1, v2, v0}, Landroidx/mediarouter/media/MediaRouteProvider$Callback;->a(Landroidx/mediarouter/media/MediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method
