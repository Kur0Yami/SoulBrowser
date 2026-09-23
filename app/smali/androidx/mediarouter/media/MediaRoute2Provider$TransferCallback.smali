.class Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;
.super Landroid/media/MediaRouter2$TransferCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransferCallback"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/media/MediaRoute2Provider;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaRouter2$TransferCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 3
    .line 4
    iput-object v0, v1, Landroidx/mediarouter/media/MediaRoute2Provider;->w:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, v1, Landroidx/mediarouter/media/MediaRoute2Provider;->o:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object p1, v1, Landroidx/mediarouter/media/MediaRoute2Provider;->n:Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->a:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->c()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->h()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eq v1, v0, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {p1, v0, v2, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->m(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :cond_1
    sget p1, Landroidx/mediarouter/media/GlobalMediaRouter;->F:I

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "onStop: No matching routeController found. routingController="

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "MR2Provider"

    .line 58
    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Landroidx/mediarouter/media/MediaRoute2Provider;->w:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRoute2Provider;->o:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRoute2Provider;->m:Landroid/media/MediaRouter2;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v2, 0x3

    .line 21
    if-ne p2, p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRoute2Provider;->n:Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->a:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->c()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->h()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eq v1, p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1, p2, v2, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->m(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const-string p1, "MR2Provider"

    .line 54
    .line 55
    const-string p2, "Selected routes are empty. This shouldn\'t happen."

    .line 56
    .line 57
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    const/4 v3, 0x0

    .line 62
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Landroidx/core/view/accessibility/a;->e(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v4, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    .line 75
    .line 76
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 77
    .line 78
    invoke-direct {v4, v5, p2, p1}, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;Landroid/media/MediaRouter2$RoutingController;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 82
    .line 83
    iget-object v5, v5, Landroidx/mediarouter/media/MediaRoute2Provider;->o:Landroid/util/ArrayMap;

    .line 84
    .line 85
    invoke-virtual {v5, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 89
    .line 90
    iget-object v4, v4, Landroidx/mediarouter/media/MediaRoute2Provider;->n:Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;

    .line 91
    .line 92
    iget-object v4, v4, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;->a:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 93
    .line 94
    iget-object v5, v4, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    :cond_3
    :goto_0
    if-ge v3, v6, :cond_5

    .line 101
    .line 102
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 109
    .line 110
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    iget-object v9, v4, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 115
    .line 116
    if-eq v8, v9, :cond_4

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    iget-object v8, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_3

    .line 126
    .line 127
    move-object v1, v7

    .line 128
    :cond_5
    if-nez v1, :cond_6

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v1, "onSelectRoute: The target RouteInfo is not found for descriptorId="

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string v0, "AxMediaRouter"

    .line 145
    .line 146
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    invoke-virtual {v4, v1, v2, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->m(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V

    .line 151
    .line 152
    .line 153
    :goto_1
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRoute2Provider;->l(Landroid/media/MediaRouter2$RoutingController;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final onTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->a:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Landroidx/mediarouter/media/MediaRoute2Provider;->w:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Transfer failed. requestedRoute="

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "MR2Provider"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method
