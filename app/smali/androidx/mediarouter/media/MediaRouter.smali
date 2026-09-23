.class public final Landroidx/mediarouter/media/MediaRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouter$RouteInfo;,
        Landroidx/mediarouter/media/MediaRouter$Callback;,
        Landroidx/mediarouter/media/MediaRouter$CallbackRecord;,
        Landroidx/mediarouter/media/MediaRouter$OnPrepareTransferListener;,
        Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;,
        Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;,
        Landroidx/mediarouter/media/MediaRouter$ProviderInfo;,
        Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;
    }
.end annotation


# static fields
.field public static c:Landroidx/mediarouter/media/GlobalMediaRouter;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "AxMediaRouter"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter;->a:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static b(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 4

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a()Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "AxMediaRouter"

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p0, "Ignoring attempt to add a member route to a selected non-group route"

    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {v1, p0}, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->p(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Ignoring attempt to add a non-groupable member route: "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "Ignoring attempt to add an existing member route: "

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->h()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 87
    .line 88
    instance-of v1, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 93
    .line 94
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->m(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v0, "There is no currently selected dynamic group route."

    .line 103
    .line 104
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_4
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->o()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_5

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->f(Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;)Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;

    .line 115
    .line 116
    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v0, "Ignoring attempt to add a route to a non-available connected route: "

    .line 120
    .line 121
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v0, "Ignoring attempt to add a route to an unsupported group route:"

    .line 138
    .line 139
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 154
    .line 155
    const-string v0, "route must not be null"

    .line 156
    .line 157
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method public static c()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static d()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 9
    .line 10
    return-object v0
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->e()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static f()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public static g()Landroidx/mediarouter/media/GlobalMediaRouter;
    .locals 2

    .line 1
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "getGlobalRouter cannot be called when sGlobal is null"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public static h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;
    .locals 4

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroidx/mediarouter/media/MediaRouter;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 20
    .line 21
    :cond_0
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->h:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    if-ltz v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroidx/mediarouter/media/MediaRouter;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v3, v2, Landroidx/mediarouter/media/MediaRouter;->a:Landroid/content/Context;

    .line 52
    .line 53
    if-ne v3, p0, :cond_1

    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_3
    new-instance v1, Landroidx/mediarouter/media/MediaRouter;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Landroidx/mediarouter/media/MediaRouter;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v0, "context must not be null"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public static i()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2

    .line 1
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->C:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v0, v1, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->D:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public static j()Landroidx/mediarouter/media/MediaRouterParams;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->u:Landroidx/mediarouter/media/MediaRouterParams;

    .line 9
    .line 10
    return-object v0
.end method

.method public static k()Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-object v0
.end method

.method public static l()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->h()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static m()Z
    .locals 4

    .line 1
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->u:Landroidx/mediarouter/media/MediaRouterParams;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouterParams;->e:Landroid/os/Bundle;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const-string v3, "androidx.mediarouter.media.MediaRouterParams.ENABLE_GROUP_VOLUME_UX"

    .line 21
    .line 22
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v1

    .line 30
    :cond_2
    :goto_0
    return v2
.end method

.method public static n()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public static o(Landroidx/mediarouter/media/MediaRouteSelector;I)Z
    .locals 10

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_4

    .line 18
    :cond_0
    and-int/lit8 v2, p1, 0x2

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-boolean v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->p:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    iget-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->u:Landroidx/mediarouter/media/MediaRouterParams;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-boolean v2, v2, Landroidx/mediarouter/media/MediaRouterParams;->b:Z

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->i()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    move v2, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v2, v3

    .line 45
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    move v6, v3

    .line 50
    :goto_1
    if-ge v6, v5, :cond_6

    .line 51
    .line 52
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 57
    .line 58
    and-int/lit8 v8, p1, 0x1

    .line 59
    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_4

    .line 76
    .line 77
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    iget-object v9, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 82
    .line 83
    if-eq v8, v9, :cond_4

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    invoke-virtual {v7, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->i(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_5

    .line 91
    .line 92
    :goto_2
    return v4

    .line 93
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    :goto_4
    return v3
.end method

.method public static q(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a()Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "AxMediaRouter"

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p0, "Ignoring attempt to remove a member route from a selected non-group route"

    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->x:Landroidx/collection/ArrayMap;

    .line 27
    .line 28
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 35
    .line 36
    if-eqz v3, :cond_6

    .line 37
    .line 38
    iget-boolean v3, v3, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->c:Z

    .line 39
    .line 40
    if-eqz v3, :cond_6

    .line 41
    .line 42
    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Ignoring attempt to remove a non-in-group member route: "

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    const/4 v4, 0x1

    .line 83
    if-gt v3, v4, :cond_2

    .line 84
    .line 85
    const-string p0, "Ignoring attempt to remove the last member route."

    .line 86
    .line 87
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->h()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 98
    .line 99
    instance-of v1, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 100
    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 104
    .line 105
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->n(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    const-string v0, "There is no currently selected dynamic group route."

    .line 114
    .line 115
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_4
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->o()Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->f(Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;)Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;

    .line 126
    .line 127
    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v0, "Ignoring attempt to update routes for a non-available connected route: "

    .line 131
    .line 132
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v0, "Ignoring attempt to remove a route from an unsupported group route:"

    .line 149
    .line 150
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v1, "Ignoring attempt to remove a non-unselectable member route: "

    .line 167
    .line 168
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    .line 183
    .line 184
    const-string v0, "route must not be null"

    .line 185
    .line 186
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p0
.end method

.method public static r(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object p0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->D:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    .line 13
    .line 14
    invoke-direct {v1, v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object p0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->C:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iput-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->C:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->o()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public static s(Landroidx/mediarouter/media/RouteListingPreference;)V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x22

    .line 15
    .line 16
    if-lt v1, v2, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRoute2Provider;->m:Landroid/media/MediaRouter2;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/mediarouter/media/RouteListingPreference$Api34Impl;->a(Landroidx/mediarouter/media/RouteListingPreference;)Landroid/media/RouteListingPreference;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    invoke-static {v0, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$Api34Impl;->a(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public static t(Landroidx/mediarouter/media/MediaRouterParams;)V
    .locals 6

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->u:Landroidx/mediarouter/media/MediaRouterParams;

    .line 9
    .line 10
    iput-object p0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->u:Landroidx/mediarouter/media/MediaRouterParams;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->i()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    new-instance v2, Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 24
    .line 25
    iget-object v4, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->g:Landroid/content/Context;

    .line 26
    .line 27
    new-instance v5, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;

    .line 28
    .line 29
    invoke-direct {v5, v0}, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v4, v5}, Landroidx/mediarouter/media/MediaRoute2Provider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Landroidx/mediarouter/media/GlobalMediaRouter;->a(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->n()V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-boolean v2, p0, Landroidx/mediarouter/media/MediaRouterParams;->d:Z

    .line 44
    .line 45
    iget-object v4, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 46
    .line 47
    iput-boolean v2, v4, Landroidx/mediarouter/media/MediaRoute2Provider;->t:Z

    .line 48
    .line 49
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRoute2Provider;->k()V

    .line 50
    .line 51
    .line 52
    iget-object v4, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->c:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 53
    .line 54
    iput-boolean v2, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->f:Z

    .line 55
    .line 56
    iget-object v2, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->c:Landroid/os/Handler;

    .line 57
    .line 58
    iget-object v4, v4, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->i:Ljava/lang/Runnable;

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iget-boolean v1, v1, Landroidx/mediarouter/media/MediaRouterParams;->c:Z

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    move v1, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    :goto_0
    iget-boolean v2, p0, Landroidx/mediarouter/media/MediaRouterParams;->c:Z

    .line 73
    .line 74
    if-eq v1, v2, :cond_3

    .line 75
    .line 76
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 77
    .line 78
    iget-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->A:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 79
    .line 80
    iput-object v2, v1, Landroidx/mediarouter/media/MediaRouteProvider;->i:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 81
    .line 82
    iget-boolean v2, v1, Landroidx/mediarouter/media/MediaRouteProvider;->j:Z

    .line 83
    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    iput-boolean v3, v1, Landroidx/mediarouter/media/MediaRouteProvider;->j:Z

    .line 87
    .line 88
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouteProvider;->g:Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;

    .line 89
    .line 90
    const/4 v2, 0x2

    .line 91
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->k(Landroidx/mediarouter/media/MediaRouteProvider;)V

    .line 100
    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    iput-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 104
    .line 105
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->c:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 106
    .line 107
    iget-object v2, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->c:Landroid/os/Handler;

    .line 108
    .line 109
    iget-object v1, v1, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->i:Ljava/lang/Runnable;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 115
    .line 116
    const/16 v1, 0x301

    .line 117
    .line 118
    invoke-virtual {v0, v1, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static u(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a()Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "AxMediaRouter"

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p0, "Ignoring attempt to transfer for a selected non-group route"

    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 50
    .line 51
    iget-object v5, v1, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->x:Landroidx/collection/ArrayMap;

    .line 52
    .line 53
    iget-object v6, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 60
    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    iget-boolean v5, v5, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->e:Z

    .line 64
    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v6, "Ignoring attempt to update the group with a non-transferable route: "

    .line 76
    .line 77
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    const-string p0, "Ignoring attempt to update the group with non-transferable routes"

    .line 98
    .line 99
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->h()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_5

    .line 108
    .line 109
    iget-object p0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 110
    .line 111
    instance-of v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    check-cast p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 116
    .line 117
    invoke-virtual {p0, v3}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->o(Ljava/util/ArrayList;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string v0, "There is no currently selected dynamic group route."

    .line 124
    .line 125
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_5
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->o()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->f(Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;)Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;

    .line 136
    .line 137
    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v0, "Ignoring attempt to update routes for a non-available connected route: "

    .line 141
    .line 142
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v0, "Ignoring attempt to update routes for an unsupported group route:"

    .line 159
    .line 160
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    .line 175
    .line 176
    const-string v0, "route must not be null"

    .line 177
    .line 178
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
.end method

.method public static v(I)V
    .locals 3

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-gt p0, v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->c()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->h()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eq v2, v1, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, p0, v2}, Landroidx/mediarouter/media/GlobalMediaRouter;->l(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v0, "Unsupported reason to unselect route"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method


# virtual methods
.method public final a(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V
    .locals 6

    .line 1
    const-string v0, "selector must not be null"

    .line 2
    .line 3
    if-eqz p1, :cond_a

    .line 4
    .line 5
    if-eqz p2, :cond_9

    .line 6
    .line 7
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 25
    .line 26
    iget-object v5, v5, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->b:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 27
    .line 28
    if-ne v5, p2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v4, -0x1

    .line 35
    :goto_1
    if-gez v4, :cond_2

    .line 36
    .line 37
    new-instance v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 38
    .line 39
    invoke-direct {v2, p0, p2}, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;-><init>(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    move-object v2, p2

    .line 51
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 52
    .line 53
    :goto_2
    iget p2, v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->d:I

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    if-eq p3, p2, :cond_3

    .line 57
    .line 58
    iput p3, v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->d:I

    .line 59
    .line 60
    move v3, v1

    .line 61
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    and-int/lit8 p2, p3, 0x1

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    move v3, v1

    .line 70
    :cond_4
    iput-wide v4, v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->e:J

    .line 71
    .line 72
    iget-object p2, v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 73
    .line 74
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteSelector;->a()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->a()V

    .line 78
    .line 79
    .line 80
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouteSelector;->b:Ljava/util/List;

    .line 81
    .line 82
    iget-object p3, p1, Landroidx/mediarouter/media/MediaRouteSelector;->b:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p2, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_7

    .line 89
    .line 90
    new-instance p2, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    .line 91
    .line 92
    iget-object p3, v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    if-eqz p3, :cond_6

    .line 98
    .line 99
    invoke-virtual {p3}, Landroidx/mediarouter/media/MediaRouteSelector;->a()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p3, Landroidx/mediarouter/media/MediaRouteSelector;->b:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    .line 112
    iget-object p3, p3, Landroidx/mediarouter/media/MediaRouteSelector;->b:Ljava/util/List;

    .line 113
    .line 114
    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .line 116
    .line 117
    iput-object v0, p2, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->a:Ljava/util/ArrayList;

    .line 118
    .line 119
    :cond_5
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->c()Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->a(Ljava/util/ArrayList;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->c()Landroidx/mediarouter/media/MediaRouteSelector;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_7
    move v1, v3

    .line 140
    :goto_3
    if-eqz v1, :cond_8

    .line 141
    .line 142
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->n()V

    .line 147
    .line 148
    .line 149
    :cond_8
    return-void

    .line 150
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string p2, "callback must not be null"

    .line 153
    .line 154
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1
.end method

.method public final p(Landroidx/mediarouter/media/MediaRouter$Callback;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 20
    .line 21
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->b:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, -0x1

    .line 30
    :goto_1
    if-ltz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->n()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "callback must not be null"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method
