.class final Lcom/google/android/gms/internal/cast/zzbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzaw;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cast/zzbq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzbq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbn;->a:Lcom/google/android/gms/internal/cast/zzbq;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->a:Lcom/google/android/gms/internal/cast/zzbq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzbq;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbn;->a:Lcom/google/android/gms/internal/cast/zzbq;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/cast/zzbq;->f:Lcom/google/android/gms/cast/internal/Logger;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v3, "Stopping RouteDiscovery."

    .line 12
    .line 13
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzbq;->c:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzbq;->e:Lcom/google/android/gms/internal/cast/zzby;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzby;->b:Landroidx/mediarouter/media/MediaRouter;

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzby;->a:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter;->h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, v1, Lcom/google/android/gms/internal/cast/zzby;->b:Landroidx/mediarouter/media/MediaRouter;

    .line 44
    .line 45
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/zzby;->b:Landroidx/mediarouter/media/MediaRouter;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/cast/zzfk;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/google/android/gms/internal/cast/zzbp;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/cast/zzbp;-><init>(Lcom/google/android/gms/internal/cast/zzbq;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method
