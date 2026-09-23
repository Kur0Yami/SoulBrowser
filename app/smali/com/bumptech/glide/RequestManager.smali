.class public Lcom/bumptech/glide/RequestManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/LifecycleListener;
.implements Lcom/bumptech/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;,
        Lcom/bumptech/glide/RequestManager$ClearTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcom/bumptech/glide/manager/LifecycleListener;",
        "Lcom/bumptech/glide/ModelTypes<",
        "Lcom/bumptech/glide/RequestBuilder<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final o:Lcom/bumptech/glide/request/RequestOptions;


# instance fields
.field public final c:Lcom/bumptech/glide/Glide;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/bumptech/glide/manager/Lifecycle;

.field public final h:Lcom/bumptech/glide/manager/RequestTracker;

.field public final i:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field public final j:Lcom/bumptech/glide/manager/TargetTracker;

.field public final k:Ljava/lang/Runnable;

.field public final l:Lcom/bumptech/glide/manager/ConnectivityMonitor;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public n:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->d(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->i()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 19
    .line 20
    sput-object v0, Lcom/bumptech/glide/RequestManager;->o:Lcom/bumptech/glide/request/RequestOptions;

    .line 21
    .line 22
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    .line 25
    .line 26
    .line 27
    const-class v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->d(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->i()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 40
    .line 41
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->b:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->o()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->t(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/manager/RequestTracker;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/manager/RequestTracker;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/bumptech/glide/Glide;->k:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/bumptech/glide/manager/TargetTracker;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/bumptech/glide/manager/TargetTracker;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/bumptech/glide/RequestManager;->j:Lcom/bumptech/glide/manager/TargetTracker;

    .line 17
    .line 18
    new-instance v2, Lcom/bumptech/glide/RequestManager$1;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/bumptech/glide/RequestManager$1;-><init>(Lcom/bumptech/glide/RequestManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/bumptech/glide/RequestManager;->k:Ljava/lang/Runnable;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/Glide;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->g:Lcom/bumptech/glide/manager/Lifecycle;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->i:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->h:Lcom/bumptech/glide/manager/RequestTracker;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/bumptech/glide/RequestManager;->f:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance p4, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;

    .line 40
    .line 41
    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/RequestTracker;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, p3, p4}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->l:Lcom/bumptech/glide/manager/ConnectivityMonitor;

    .line 49
    .line 50
    iget-object p4, p1, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 51
    .line 52
    monitor-enter p4

    .line 53
    :try_start_0
    iget-object v0, p1, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p1, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-object p4, Lcom/bumptech/glide/util/Util;->a:[C

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-ne p4, v0, :cond_0

    .line 78
    .line 79
    const/4 p4, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 p4, 0x0

    .line 82
    :goto_0
    if-nez p4, :cond_1

    .line 83
    .line 84
    invoke-static {}, Lcom/bumptech/glide/util/Util;->f()Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    invoke-virtual {p4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/Lifecycle;->c(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/Lifecycle;->c(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 96
    .line 97
    .line 98
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    .line 100
    iget-object p3, p1, Lcom/bumptech/glide/Glide;->h:Lcom/bumptech/glide/GlideContext;

    .line 101
    .line 102
    iget-object p3, p3, Lcom/bumptech/glide/GlideContext;->e:Ljava/util/List;

    .line 103
    .line 104
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .line 106
    .line 107
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/bumptech/glide/Glide;->h:Lcom/bumptech/glide/GlideContext;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/bumptech/glide/GlideContext;->a()Lcom/bumptech/glide/request/RequestOptions;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->x(Lcom/bumptech/glide/request/RequestOptions;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string p2, "Cannot register already registered manager"

    .line 124
    .line 125
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :goto_2
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    throw p1
.end method


# virtual methods
.method public b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .locals 3

    .line 1
    new-instance v0, Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/Glide;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public d()Lcom/bumptech/glide/RequestBuilder;
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bumptech/glide/RequestManager;->o:Lcom/bumptech/glide/request/RequestOptions;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->z(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->j:Lcom/bumptech/glide/manager/TargetTracker;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public k()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final declared-synchronized m()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->w()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->j:Lcom/bumptech/glide/manager/TargetTracker;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public n()Lcom/bumptech/glide/RequestBuilder;
    .locals 3

    .line 1
    const-class v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bumptech/glide/request/RequestOptions;->u:Lcom/bumptech/glide/request/RequestOptions;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->t(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->b()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    .line 28
    .line 29
    sput-object v1, Lcom/bumptech/glide/request/RequestOptions;->u:Lcom/bumptech/glide/request/RequestOptions;

    .line 30
    .line 31
    :cond_0
    sget-object v1, Lcom/bumptech/glide/request/RequestOptions;->u:Lcom/bumptech/glide/request/RequestOptions;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->z(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public final o(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/RequestManager$ClearTarget;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onDestroy()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->j:Lcom/bumptech/glide/manager/TargetTracker;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/TargetTracker;->onDestroy()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->q()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->h:Lcom/bumptech/glide/manager/RequestTracker;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    check-cast v4, Lcom/bumptech/glide/request/Request;

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Lcom/bumptech/glide/manager/RequestTracker;->a(Lcom/bumptech/glide/request/Request;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, v0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->g:Lcom/bumptech/glide/manager/Lifecycle;

    .line 43
    .line 44
    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/Lifecycle;->e(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->g:Lcom/bumptech/glide/manager/Lifecycle;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->l:Lcom/bumptech/glide/manager/ConnectivityMonitor;

    .line 50
    .line 51
    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/Lifecycle;->e(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->k:Ljava/lang/Runnable;

    .line 55
    .line 56
    invoke-static {}, Lcom/bumptech/glide/util/Util;->f()Landroid/os/Handler;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/Glide;

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/Glide;->c(Lcom/bumptech/glide/RequestManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw v0
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final p(Lcom/bumptech/glide/request/target/Target;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->y(Lcom/bumptech/glide/request/target/Target;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->j()Lcom/bumptech/glide/request/Request;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/Glide;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    :cond_1
    if-ge v4, v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    check-cast v5, Lcom/bumptech/glide/RequestManager;

    .line 35
    .line 36
    invoke-virtual {v5, p1}, Lcom/bumptech/glide/RequestManager;->y(Lcom/bumptech/glide/request/target/Target;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    monitor-exit v2

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->e(Lcom/bumptech/glide/request/Request;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p1

    .line 59
    :cond_3
    :goto_1
    return-void
.end method

.method public final declared-synchronized q()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->j:Lcom/bumptech/glide/manager/TargetTracker;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/manager/TargetTracker;->c:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    check-cast v3, Lcom/bumptech/glide/request/target/Target;

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->j:Lcom/bumptech/glide/manager/TargetTracker;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/bumptech/glide/manager/TargetTracker;->c:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v0
.end method

.method public r(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->k()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->J(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->k()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->L(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->k()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->M(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "{tracker="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->h:Lcom/bumptech/glide/manager/RequestTracker;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", treeNode="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->i:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "}"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v0
.end method

.method public u(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->k()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->N(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final declared-synchronized v()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->h:Lcom/bumptech/glide/manager/RequestTracker;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/RequestTracker;->c:Z

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    check-cast v4, Lcom/bumptech/glide/request/Request;

    .line 27
    .line 28
    invoke-interface {v4}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    invoke-interface {v4}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 35
    .line 36
    .line 37
    iget-object v5, v0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw v0
.end method

.method public final declared-synchronized w()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->h:Lcom/bumptech/glide/manager/RequestTracker;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/RequestTracker;->c:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->e(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    :cond_0
    :goto_0
    if-ge v1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    check-cast v4, Lcom/bumptech/glide/request/Request;

    .line 26
    .line 27
    invoke-interface {v4}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    invoke-interface {v4}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    invoke-interface {v4}, Lcom/bumptech/glide/request/Request;->g()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, v0, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v0
.end method

.method public declared-synchronized x(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->b()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/bumptech/glide/request/RequestOptions;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager;->n:Lcom/bumptech/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p1
.end method

.method public final declared-synchronized y(Lcom/bumptech/glide/request/target/Target;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->j()Lcom/bumptech/glide/request/Request;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->h:Lcom/bumptech/glide/manager/RequestTracker;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/RequestTracker;->a(Lcom/bumptech/glide/request/Request;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->j:Lcom/bumptech/glide/manager/TargetTracker;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bumptech/glide/manager/TargetTracker;->c:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->e(Lcom/bumptech/glide/request/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return v1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p1
.end method
