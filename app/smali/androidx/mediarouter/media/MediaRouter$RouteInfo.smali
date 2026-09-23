.class public Landroidx/mediarouter/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouter$RouteInfo$DeviceType;
    }
.end annotation


# instance fields
.field public final a:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/net/Uri;

.field public g:Z

.field public final h:Z

.field public i:I

.field public j:Z

.field public final k:Ljava/util/ArrayList;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/os/Bundle;

.field public t:Landroid/content/IntentSender;

.field public u:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field public v:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;Z)V
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
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->r:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 22
    .line 23
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 26
    .line 27
    iput-boolean p4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->h:Z

    .line 28
    .line 29
    return-void
.end method

.method public static c()Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
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
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 9
    .line 10
    instance-of v1, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return-object v0
.end method

.method public final b()V
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
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->j:Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    throw v0
.end method

.method public final d()Landroidx/mediarouter/media/MediaRouteProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->a:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 10
    .line 11
    return-object v0
.end method

.method public final e()Z
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
    if-eqz v0, :cond_3

    .line 11
    .line 12
    if-ne v0, p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n:I

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProvider;->f:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->a:Landroid/content/ComponentName;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "android"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    :goto_0
    const/4 v0, 0x1

    .line 58
    return v0

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    return v0

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->u:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final h()Z
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
    if-ne v0, p0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final i(Landroidx/mediarouter/media/MediaRouteSelector;)Z
    .locals 7

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->k:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->a()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouteSelector;->b:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    move v3, v0

    .line 29
    :cond_2
    :goto_0
    if-ge v3, v2, :cond_5

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    check-cast v4, Landroid/content/IntentFilter;

    .line 38
    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget-object v5, p1, Landroidx/mediarouter/media/MediaRouteSelector;->b:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    return p1

    .line 68
    :cond_5
    :goto_1
    return v0

    .line 69
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string v0, "selector must not be null"

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public final j(Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->u:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_20

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->u:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 7
    .line 8
    if-eqz p1, :cond_20

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouteDescriptor;->a:Landroid/os/Bundle;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->g()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->g()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    .line 30
    .line 31
    move v2, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v1

    .line 34
    :goto_0
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e:Ljava/lang/String;

    .line 35
    .line 36
    const-string v5, "status"

    .line 37
    .line 38
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {v4, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iput-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e:Ljava/lang/String;

    .line 53
    .line 54
    move v2, v3

    .line 55
    :cond_1
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->f:Landroid/net/Uri;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->e()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->e()Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->f:Landroid/net/Uri;

    .line 72
    .line 73
    move v2, v3

    .line 74
    :cond_2
    iget-boolean v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g:Z

    .line 75
    .line 76
    const-string v5, "enabled"

    .line 77
    .line 78
    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eq v4, v6, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput-boolean v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g:Z

    .line 89
    .line 90
    move v2, v3

    .line 91
    :cond_3
    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->i:I

    .line 92
    .line 93
    const-string v5, "connectionState"

    .line 94
    .line 95
    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eq v4, v6, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iput v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->i:I

    .line 106
    .line 107
    move v2, v3

    .line 108
    :cond_4
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->b()Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    iget-object v5, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->k:Ljava/util/ArrayList;

    .line 113
    .line 114
    if-ne v5, v4, :cond_5

    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :cond_5
    if-eqz v5, :cond_f

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_e

    .line 133
    .line 134
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_e

    .line 139
    .line 140
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    check-cast v7, Landroid/content/IntentFilter;

    .line 145
    .line 146
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    check-cast v8, Landroid/content/IntentFilter;

    .line 151
    .line 152
    if-ne v7, v8, :cond_7

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_7
    if-eqz v7, :cond_f

    .line 156
    .line 157
    if-nez v8, :cond_8

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_8
    invoke-virtual {v7}, Landroid/content/IntentFilter;->countActions()I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eq v9, v10, :cond_9

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_9
    move v10, v1

    .line 172
    :goto_2
    if-ge v10, v9, :cond_b

    .line 173
    .line 174
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    if-nez v11, :cond_a

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_b
    invoke-virtual {v7}, Landroid/content/IntentFilter;->countCategories()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    invoke-virtual {v8}, Landroid/content/IntentFilter;->countCategories()I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    if-eq v9, v10, :cond_c

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_c
    move v10, v1

    .line 204
    :goto_3
    if-ge v10, v9, :cond_6

    .line 205
    .line 206
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-nez v11, :cond_d

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_e
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-nez v6, :cond_f

    .line 229
    .line 230
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_f

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_f
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->b()Ljava/util/ArrayList;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 245
    .line 246
    .line 247
    move v2, v3

    .line 248
    :goto_5
    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->l:I

    .line 249
    .line 250
    const-string v5, "playbackType"

    .line 251
    .line 252
    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eq v4, v6, :cond_10

    .line 257
    .line 258
    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    iput v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->l:I

    .line 263
    .line 264
    move v2, v3

    .line 265
    :cond_10
    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->m:I

    .line 266
    .line 267
    const-string v5, "playbackStream"

    .line 268
    .line 269
    const/4 v6, -0x1

    .line 270
    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    if-eq v4, v7, :cond_11

    .line 275
    .line 276
    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    iput v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->m:I

    .line 281
    .line 282
    move v2, v3

    .line 283
    :cond_11
    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n:I

    .line 284
    .line 285
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->c()I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eq v4, v5, :cond_12

    .line 290
    .line 291
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->c()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    iput v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n:I

    .line 296
    .line 297
    move v2, v3

    .line 298
    :cond_12
    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->o:I

    .line 299
    .line 300
    const-string v5, "volumeHandling"

    .line 301
    .line 302
    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    const/4 v8, 0x3

    .line 307
    if-eq v4, v7, :cond_13

    .line 308
    .line 309
    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    iput v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->o:I

    .line 314
    .line 315
    move v2, v8

    .line 316
    :cond_13
    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->p:I

    .line 317
    .line 318
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->h()I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eq v4, v5, :cond_14

    .line 323
    .line 324
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->h()I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    iput v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->p:I

    .line 329
    .line 330
    move v2, v8

    .line 331
    :cond_14
    iget v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->q:I

    .line 332
    .line 333
    const-string v5, "volumeMax"

    .line 334
    .line 335
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    if-eq v4, v7, :cond_15

    .line 340
    .line 341
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    iput v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->q:I

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_15
    move v8, v2

    .line 349
    :goto_6
    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->r:I

    .line 350
    .line 351
    const-string v4, "presentationDisplayId"

    .line 352
    .line 353
    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    if-eq v2, v5, :cond_16

    .line 358
    .line 359
    invoke-virtual {v0, v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    iput v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->r:I

    .line 364
    .line 365
    or-int/lit8 v8, v8, 0x5

    .line 366
    .line 367
    :cond_16
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 368
    .line 369
    const-string v4, "extras"

    .line 370
    .line 371
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-static {v2, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-nez v2, :cond_17

    .line 380
    .line 381
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    iput-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 386
    .line 387
    or-int/lit8 v8, v8, 0x1

    .line 388
    .line 389
    :cond_17
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->t:Landroid/content/IntentSender;

    .line 390
    .line 391
    const-string v4, "settingsIntent"

    .line 392
    .line 393
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    check-cast v5, Landroid/content/IntentSender;

    .line 398
    .line 399
    invoke-static {v2, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-nez v2, :cond_18

    .line 404
    .line 405
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Landroid/content/IntentSender;

    .line 410
    .line 411
    iput-object v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->t:Landroid/content/IntentSender;

    .line 412
    .line 413
    or-int/lit8 v8, v8, 0x1

    .line 414
    .line 415
    :cond_18
    iget-boolean v2, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->j:Z

    .line 416
    .line 417
    const-string v4, "canDisconnect"

    .line 418
    .line 419
    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    if-eq v2, v5, :cond_19

    .line 424
    .line 425
    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->j:Z

    .line 430
    .line 431
    or-int/lit8 v8, v8, 0x5

    .line 432
    .line 433
    :cond_19
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDescriptor;->d()Ljava/util/ArrayList;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    if-eq v2, v4, :cond_1a

    .line 453
    .line 454
    move v2, v3

    .line 455
    goto :goto_7

    .line 456
    :cond_1a
    move v2, v1

    .line 457
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-nez v4, :cond_1e

    .line 462
    .line 463
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 468
    .line 469
    .line 470
    move-result v5

    .line 471
    move v6, v1

    .line 472
    :cond_1b
    :goto_8
    if-ge v6, v5, :cond_1e

    .line 473
    .line 474
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v7

    .line 478
    add-int/lit8 v6, v6, 0x1

    .line 479
    .line 480
    check-cast v7, Ljava/lang/String;

    .line 481
    .line 482
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    iget-object v9, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 486
    .line 487
    iget-object v9, v9, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->d:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 488
    .line 489
    iget-object v9, v9, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->a:Landroid/content/ComponentName;

    .line 490
    .line 491
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v9

    .line 495
    iget-object v10, v4, Landroidx/mediarouter/media/GlobalMediaRouter;->k:Ljava/util/HashMap;

    .line 496
    .line 497
    new-instance v11, Landroidx/core/util/Pair;

    .line 498
    .line 499
    invoke-direct {v11, v9, v7}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    check-cast v7, Ljava/lang/String;

    .line 507
    .line 508
    iget-object v9, v4, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 511
    .line 512
    .line 513
    move-result v10

    .line 514
    move v11, v1

    .line 515
    :cond_1c
    if-ge v11, v10, :cond_1d

    .line 516
    .line 517
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v12

    .line 521
    add-int/lit8 v11, v11, 0x1

    .line 522
    .line 523
    check-cast v12, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 524
    .line 525
    iget-object v13, v12, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v13

    .line 531
    if-eqz v13, :cond_1c

    .line 532
    .line 533
    goto :goto_9

    .line 534
    :cond_1d
    const/4 v12, 0x0

    .line 535
    :goto_9
    if-eqz v12, :cond_1b

    .line 536
    .line 537
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    if-nez v2, :cond_1b

    .line 541
    .line 542
    iget-object v7, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v7

    .line 548
    if-nez v7, :cond_1b

    .line 549
    .line 550
    move v2, v3

    .line 551
    goto :goto_8

    .line 552
    :cond_1e
    if-eqz v2, :cond_1f

    .line 553
    .line 554
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 555
    .line 556
    or-int/lit8 p1, v8, 0x1

    .line 557
    .line 558
    return p1

    .line 559
    :cond_1f
    return v8

    .line 560
    :cond_20
    return v1
.end method

.method public final k(I)V
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
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->q:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->g(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->f(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->g(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->i(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final m(Z)V
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
    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, p0, v1, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->l(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :cond_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    check-cast v4, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaRouter.RouteInfo{ uniqueId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", description="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", iconUri="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->f:Landroid/net/Uri;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", enabled="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", isSystemRoute="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->h:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", connectionState="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->i:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", canDisconnect="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->j:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", playbackType="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->l:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", playbackStream="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->m:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", deviceType="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", volumeHandling="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->o:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", volume="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->p:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", volumeMax="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->q:I

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", presentationDisplayId="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->r:I

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v1, ", extras="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", settingsIntent="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->t:Landroid/content/IntentSender;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, ", providerPackageName="

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 179
    .line 180
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->d:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 181
    .line 182
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->a:Landroid/content/ComponentName;

    .line 183
    .line 184
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->f()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_3

    .line 196
    .line 197
    const-string v1, ", members=["

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    const/4 v2, 0x0

    .line 209
    :goto_0
    if-ge v2, v1, :cond_2

    .line 210
    .line 211
    if-lez v2, :cond_0

    .line 212
    .line 213
    const-string v3, ", "

    .line 214
    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    :cond_0
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    if-eq v3, p0, :cond_1

    .line 225
    .line 226
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 233
    .line 234
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_2
    const/16 v1, 0x5d

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    :cond_3
    const-string v1, " }"

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    return-object v0
.end method
