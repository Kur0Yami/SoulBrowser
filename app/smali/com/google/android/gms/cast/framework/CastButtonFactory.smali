.class public final Lcom/google/android/gms/cast/framework/CastButtonFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/util/ArrayList;

.field public static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "CastButtonFactory"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/cast/framework/CastButtonFactory;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/cast/framework/CastButtonFactory;->b:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/google/android/gms/cast/framework/CastButtonFactory;->c:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/google/android/gms/cast/framework/CastButtonFactory;->d:Ljava/lang/Object;

    .line 36
    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const-string v0, "Must be called from the main thread."

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->h(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastContext;->c()Landroidx/mediarouter/media/MediaRouteSelector;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteButton;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p0, Lcom/google/android/gms/cast/framework/CastButtonFactory;->d:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/framework/CastButtonFactory;->c:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p1

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/cast/zzpm;->M:Lcom/google/android/gms/internal/cast/zzpm;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/zzr;->a(Lcom/google/android/gms/internal/cast/zzpm;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static b(Lcom/mycompany/app/cast/ExpandedControlsActivity;Landroid/view/MenuItem;)V
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroidx/core/internal/view/SupportMenuItem;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroidx/core/internal/view/SupportMenuItem;

    .line 12
    .line 13
    invoke-interface {p1}, Landroidx/core/internal/view/SupportMenuItem;->b()Landroidx/core/view/ActionProvider;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "MenuItemCompat"

    .line 19
    .line 20
    const-string v0, "getActionProvider: item does not implement SupportMenuItem; returning null"

    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-object p1, v1

    .line 26
    :goto_0
    check-cast p1, Landroidx/mediarouter/app/MediaRouteActionProvider;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v1, p1

    .line 32
    :goto_1
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->h(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastContext;->c()Landroidx/mediarouter/media/MediaRouteSelector;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    iget-object p1, v1, Landroidx/mediarouter/app/MediaRouteActionProvider;->d:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    iput-object p0, v1, Landroidx/mediarouter/app/MediaRouteActionProvider;->d:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 55
    .line 56
    iget-object p1, v1, Landroidx/mediarouter/app/MediaRouteActionProvider;->f:Landroidx/mediarouter/app/MediaRouteButton;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroidx/mediarouter/app/MediaRouteButton;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string p1, "cannot refreshButtonSelector with null mediaRouteActionProvider"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method
