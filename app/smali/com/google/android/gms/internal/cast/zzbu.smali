.class final synthetic Lcom/google/android/gms/internal/cast/zzbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzbx;

.field public final synthetic f:Landroidx/mediarouter/media/MediaRouteSelector;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzbx;Landroidx/mediarouter/media/MediaRouteSelector;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbu;->c:Lcom/google/android/gms/internal/cast/zzbx;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbu;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzbu;->g:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbu;->c:Lcom/google/android/gms/internal/cast/zzbx;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbu;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/cast/zzbu;->g:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/zzbx;->g:Ljava/util/HashMap;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzbx;->f2(Landroidx/mediarouter/media/MediaRouteSelector;I)V

    .line 11
    .line 12
    .line 13
    monitor-exit v3

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v0
.end method
