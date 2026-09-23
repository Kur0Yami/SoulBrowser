.class final synthetic Lcom/google/android/gms/internal/cast/zzbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzbq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzbq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbp;->c:Lcom/google/android/gms/internal/cast/zzbq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbp;->c:Lcom/google/android/gms/internal/cast/zzbq;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzbq;->e:Lcom/google/android/gms/internal/cast/zzby;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzby;->b:Landroidx/mediarouter/media/MediaRouter;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzby;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter;->h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iput-object v2, v1, Lcom/google/android/gms/internal/cast/zzby;->b:Landroidx/mediarouter/media/MediaRouter;

    .line 16
    .line 17
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/zzby;->b:Landroidx/mediarouter/media/MediaRouter;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
