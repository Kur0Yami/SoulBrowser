.class Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$1;->a:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$1;->a:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 5
    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->A:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->A:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->m()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void

    .line 23
    :cond_2
    invoke-virtual {v1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->l()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
