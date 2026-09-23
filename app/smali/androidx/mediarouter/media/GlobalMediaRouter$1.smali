.class Landroidx/mediarouter/media/GlobalMediaRouter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/media/GlobalMediaRouter;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$1;->a:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V
    .locals 8

    .line 1
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$1;->a:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->y:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 4
    .line 5
    if-ne p1, v0, :cond_4

    .line 6
    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    iget-object p1, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->x:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteDescriptor;->f()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, p1, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->b(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move-object v3, v2

    .line 22
    new-instance v2, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 23
    .line 24
    invoke-direct {v2, p1, v0, v3}, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->j(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 28
    .line 29
    .line 30
    iget-object p1, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 31
    .line 32
    if-ne p1, v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v3, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->y:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 36
    .line 37
    iget-object v6, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->x:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 38
    .line 39
    iget-object p1, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->f:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->a:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 45
    .line 46
    iget-boolean v4, p1, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->i:Z

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    iget-boolean v4, p1, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->j:Z

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v4, 0x1

    .line 56
    iput-boolean v4, p1, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->j:Z

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->h(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->d()V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    iput-object p2, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->f:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 68
    .line 69
    :cond_3
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 70
    .line 71
    const/4 v4, 0x3

    .line 72
    const/4 v5, 0x1

    .line 73
    move-object v7, p3

    .line 74
    invoke-direct/range {v0 .. v7}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;IZLandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->f:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->a()V

    .line 80
    .line 81
    .line 82
    iput-object p2, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->x:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 83
    .line 84
    iput-object p2, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->y:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    move-object v7, p3

    .line 88
    iget-object p3, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 89
    .line 90
    if-ne p1, p3, :cond_6

    .line 91
    .line 92
    if-eqz p2, :cond_5

    .line 93
    .line 94
    iget-object p1, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 95
    .line 96
    invoke-virtual {v1, p1, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->q(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 97
    .line 98
    .line 99
    :cond_5
    iget-object p1, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a()Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    invoke-virtual {p1, v7}, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->q(Ljava/util/Collection;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    :goto_1
    return-void
.end method
