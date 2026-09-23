.class Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener$1;->c:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener$1;->c:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;->b:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->R:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->R:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 11
    .line 12
    iget-boolean v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->h0:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-boolean v1, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->i0:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
