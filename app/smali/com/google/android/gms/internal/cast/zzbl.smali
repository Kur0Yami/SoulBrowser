.class public final Lcom/google/android/gms/internal/cast/zzbl;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/zzbg;

.field public final b:Lcom/google/android/gms/internal/cast/zzbx;

.field public final c:Lcom/google/android/gms/internal/cast/zzce;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "MediaRouterCallback"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/zzbl;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzbg;Lcom/google/android/gms/internal/cast/zzbx;Lcom/google/android/gms/internal/cast/zzce;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/cast/zzbg;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbl;->a:Lcom/google/android/gms/internal/cast/zzbg;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbl;->b:Lcom/google/android/gms/internal/cast/zzbx;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbl;->c:Lcom/google/android/gms/internal/cast/zzce;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final d(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbl;->a:Lcom/google/android/gms/internal/cast/zzbg;

    .line 2
    .line 3
    iget-object v1, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzbg;->U1(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p2

    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v1, "onRouteAdded"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    const-string v1, "zzbg"

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    const-string v1, "Unable to call %s on %s."

    .line 26
    .line 27
    sget-object v2, Lcom/google/android/gms/internal/cast/zzbl;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 28
    .line 29
    invoke-virtual {v2, p2, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzbl;->o(Landroidx/mediarouter/media/MediaRouter;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final e(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbl;->a:Lcom/google/android/gms/internal/cast/zzbg;

    .line 9
    .line 10
    iget-object v1, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzbg;->t1(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p2

    .line 19
    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v1, "onRouteChanged"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    const-string v1, "zzbg"

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    const-string v1, "Unable to call %s on %s."

    .line 33
    .line 34
    sget-object v2, Lcom/google/android/gms/internal/cast/zzbl;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 35
    .line 36
    invoke-virtual {v2, p2, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzbl;->o(Landroidx/mediarouter/media/MediaRouter;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final f(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 7

    .line 1
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->l:I

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/cast/zzbl;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v0, v4, :cond_0

    .line 12
    .line 13
    new-array p1, v4, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object v1, p1, v2

    .line 16
    .line 17
    iget-object p2, v3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "ignore onRouteConnected for non-remote connected routeId: %s"

    .line 20
    .line 21
    invoke-virtual {v3, v0, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    iget-object v5, v3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string v6, "onRouteConnected with connectedRouteId = %s"

    .line 36
    .line 37
    invoke-virtual {v3, v6, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbl;->b:Lcom/google/android/gms/internal/cast/zzbx;

    .line 45
    .line 46
    iput-boolean v4, v0, Lcom/google/android/gms/internal/cast/zzbx;->k:Z

    .line 47
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbl;->a:Lcom/google/android/gms/internal/cast/zzbg;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzbg;->zze()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const v6, 0xeff1c80

    .line 55
    .line 56
    .line 57
    if-lt v5, v6, :cond_1

    .line 58
    .line 59
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 60
    .line 61
    invoke-interface {v0, p2, p1, v1}, Lcom/google/android/gms/internal/cast/zzbg;->E4(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-interface {v0, p2, p1, v1}, Lcom/google/android/gms/internal/cast/zzbg;->d4(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :goto_0
    const/4 p2, 0x2

    .line 74
    new-array p2, p2, [Ljava/lang/Object;

    .line 75
    .line 76
    const-string v0, "onRouteConnected"

    .line 77
    .line 78
    aput-object v0, p2, v2

    .line 79
    .line 80
    const-string v0, "zzbg"

    .line 81
    .line 82
    aput-object v0, p2, v4

    .line 83
    .line 84
    const-string v0, "Unable to call %s on %s."

    .line 85
    .line 86
    invoke-virtual {v3, p1, v0, p2}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final g(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 8

    .line 1
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/cast/zzbl;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget v3, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->l:I

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eq v3, v4, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 21
    .line 22
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/4 v6, 0x3

    .line 29
    new-array v6, v6, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v3, v6, v0

    .line 32
    .line 33
    aput-object p2, v6, v4

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    aput-object v5, v6, v3

    .line 37
    .line 38
    iget-object v5, v1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string v7, "onRouteDisconnected with disconnectedRouteId = %s, requestedRouteId = %s, reason = %d"

    .line 41
    .line 42
    invoke-virtual {v1, v7, v6}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzbl;->b:Lcom/google/android/gms/internal/cast/zzbx;

    .line 50
    .line 51
    iput-boolean v0, v5, Lcom/google/android/gms/internal/cast/zzbx;->k:Z

    .line 52
    .line 53
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzbl;->a:Lcom/google/android/gms/internal/cast/zzbg;

    .line 54
    .line 55
    invoke-interface {v5}, Lcom/google/android/gms/internal/cast/zzbg;->zze()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const v7, 0xeff1c80

    .line 60
    .line 61
    .line 62
    if-lt v6, v7, :cond_1

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-interface {v5, p3, p1, p2, v2}, Lcom/google/android/gms/internal/cast/zzbg;->N1(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception p1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-interface {v5, v2, p3, p1}, Lcom/google/android/gms/internal/cast/zzbg;->Y3(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_0
    new-array p2, v3, [Ljava/lang/Object;

    .line 79
    .line 80
    const-string p3, "onRouteDisconnected"

    .line 81
    .line 82
    aput-object p3, p2, v0

    .line 83
    .line 84
    const-string p3, "zzbg"

    .line 85
    .line 86
    aput-object p3, p2, v4

    .line 87
    .line 88
    const-string p3, "Unable to call %s on %s."

    .line 89
    .line 90
    invoke-virtual {v1, p1, p3, p2}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 95
    .line 96
    iget-object p2, v1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 97
    .line 98
    const-string p3, "ignore onRouteDisconnected for invalid or non-remote disconnected route"

    .line 99
    .line 100
    invoke-virtual {v1, p3, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final h(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbl;->a:Lcom/google/android/gms/internal/cast/zzbg;

    .line 2
    .line 3
    iget-object v1, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/cast/zzbg;->C0(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p2

    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v1, "onRouteRemoved"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    const-string v1, "zzbg"

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    const-string v1, "Unable to call %s on %s."

    .line 26
    .line 27
    sget-object v2, Lcom/google/android/gms/internal/cast/zzbl;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 28
    .line 29
    invoke-virtual {v2, p2, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzbl;->o(Landroidx/mediarouter/media/MediaRouter;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final j(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 7

    .line 1
    iget v0, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->l:I

    .line 2
    .line 3
    iget-object v1, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/cast/zzbl;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eq v0, v4, :cond_0

    .line 10
    .line 11
    new-array p1, v4, [Ljava/lang/Object;

    .line 12
    .line 13
    aput-object v1, p1, v2

    .line 14
    .line 15
    iget-object p2, v3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string p3, "ignore onRouteSelected for non-remote selected routeId: %s"

    .line 18
    .line 19
    invoke-virtual {v3, p3, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const/4 v0, 0x2

    .line 32
    new-array v5, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object p3, v5, v2

    .line 35
    .line 36
    aput-object v1, v5, v4

    .line 37
    .line 38
    iget-object p3, v3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string v6, "onRouteSelected with reason = %d, routeId = %s"

    .line 41
    .line 42
    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-static {p3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/cast/zzbl;->a:Lcom/google/android/gms/internal/cast/zzbg;

    .line 50
    .line 51
    invoke-interface {p3}, Lcom/google/android/gms/internal/cast/zzbg;->zze()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const v6, 0xd230980

    .line 56
    .line 57
    .line 58
    if-lt v5, v6, :cond_1

    .line 59
    .line 60
    iget-object p4, p4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 61
    .line 62
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-interface {p3, p4, p2, v1}, Lcom/google/android/gms/internal/cast/zzbg;->d4(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception p2

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p4, p4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 71
    .line 72
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-interface {p3, p4, p2}, Lcom/google/android/gms/internal/cast/zzbg;->I(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :goto_0
    new-array p3, v0, [Ljava/lang/Object;

    .line 79
    .line 80
    const-string p4, "onRouteSelected"

    .line 81
    .line 82
    aput-object p4, p3, v2

    .line 83
    .line 84
    const-string p4, "zzbg"

    .line 85
    .line 86
    aput-object p4, p3, v4

    .line 87
    .line 88
    const-string p4, "Unable to call %s on %s."

    .line 89
    .line 90
    invoke-virtual {v3, p2, p4, p3}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzbl;->o(Landroidx/mediarouter/media/MediaRouter;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final l(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V
    .locals 8

    .line 1
    iget v0, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->l:I

    .line 2
    .line 3
    iget-object v1, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/cast/zzbl;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eq v0, v4, :cond_0

    .line 10
    .line 11
    new-array p1, v4, [Ljava/lang/Object;

    .line 12
    .line 13
    aput-object v1, p1, v2

    .line 14
    .line 15
    iget-object p2, v3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string p3, "ignore onRouteUnselected for non-remote routeId: %s"

    .line 18
    .line 19
    invoke-virtual {v3, p3, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v5, 0x2

    .line 32
    new-array v6, v5, [Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v0, v6, v2

    .line 35
    .line 36
    aput-object v1, v6, v4

    .line 37
    .line 38
    iget-object v0, v3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string v7, "onRouteUnselected with reason = %d, routeId = %s"

    .line 41
    .line 42
    invoke-virtual {v3, v7, v6}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbl;->a:Lcom/google/android/gms/internal/cast/zzbg;

    .line 50
    .line 51
    iget-object p2, p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-interface {v0, v1, p3, p2}, Lcom/google/android/gms/internal/cast/zzbg;->Y3(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p2

    .line 58
    new-array p3, v5, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v0, "onRouteUnselected"

    .line 61
    .line 62
    aput-object v0, p3, v2

    .line 63
    .line 64
    const-string v0, "zzbg"

    .line 65
    .line 66
    aput-object v0, p3, v4

    .line 67
    .line 68
    const-string v0, "Unable to call %s on %s."

    .line 69
    .line 70
    invoke-virtual {v3, p2, v0, p3}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzbl;->o(Landroidx/mediarouter/media/MediaRouter;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final o(Landroidx/mediarouter/media/MediaRouter;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzbl;->c:Lcom/google/android/gms/internal/cast/zzce;

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/cast/zzce;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzce;->a:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->u:Z

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzce;->g:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    if-nez p1, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->s(Landroidx/mediarouter/media/RouteListingPreference;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->k()Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    move v3, v2

    .line 47
    :cond_2
    :goto_1
    if-ge v3, v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    check-cast v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 56
    .line 57
    iget-object v5, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->s:Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-static {v5}, Lcom/google/android/gms/cast/CastDevice;->F(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    new-instance v5, Landroidx/mediarouter/media/RouteListingPreference$Item$Builder;

    .line 66
    .line 67
    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v5, v4}, Landroidx/mediarouter/media/RouteListingPreference$Item$Builder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v4, Landroidx/mediarouter/media/RouteListingPreference$Item;

    .line 73
    .line 74
    invoke-direct {v4, v5}, Landroidx/mediarouter/media/RouteListingPreference$Item;-><init>(Landroidx/mediarouter/media/RouteListingPreference$Item$Builder;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzce;->i:Lcom/google/android/gms/cast/internal/Logger;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v3, 0x1

    .line 92
    new-array v4, v3, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v1, v4, v2

    .line 95
    .line 96
    const-string v1, "updateRouteListingPreference with %d available routes"

    .line 97
    .line 98
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Landroidx/mediarouter/media/RouteListingPreference$Builder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 107
    .line 108
    iput-object v1, v0, Landroidx/mediarouter/media/RouteListingPreference$Builder;->a:Ljava/util/List;

    .line 109
    .line 110
    iput-boolean v3, v0, Landroidx/mediarouter/media/RouteListingPreference$Builder;->b:Z

    .line 111
    .line 112
    new-instance v1, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, v0, Landroidx/mediarouter/media/RouteListingPreference$Builder;->a:Ljava/util/List;

    .line 122
    .line 123
    new-instance p1, Landroidx/mediarouter/media/RouteListingPreference;

    .line 124
    .line 125
    invoke-direct {p1, v0}, Landroidx/mediarouter/media/RouteListingPreference;-><init>(Landroidx/mediarouter/media/RouteListingPreference$Builder;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->s(Landroidx/mediarouter/media/RouteListingPreference;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    return-void
.end method
