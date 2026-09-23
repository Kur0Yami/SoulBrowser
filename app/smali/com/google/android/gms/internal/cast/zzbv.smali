.class final synthetic Lcom/google/android/gms/internal/cast/zzbv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzbx;

.field public final synthetic f:Landroidx/mediarouter/media/MediaRouteSelector;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzbx;Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbv;->c:Lcom/google/android/gms/internal/cast/zzbx;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzbv;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbv;->c:Lcom/google/android/gms/internal/cast/zzbx;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbv;->f:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzbx;->r2(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
