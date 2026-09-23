.class Landroidx/mediarouter/app/MediaRouteChooserDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/MediaRouteChooserDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$1;->a:Landroidx/mediarouter/app/MediaRouteChooserDialog;

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
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog$1;->a:Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v0, v2, :cond_3

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_1

    .line 11
    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteChooserDialog;->A:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v4, v1, Landroidx/mediarouter/app/MediaRouteChooserDialog;->m:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->h(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v1, Landroidx/mediarouter/app/MediaRouteChooserDialog;->j:Landroidx/mediarouter/media/MediaRouter;

    .line 38
    .line 39
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteChooserDialog;->k:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v0, v1, Landroidx/mediarouter/app/MediaRouteChooserDialog;->A:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v2, v1, Landroidx/mediarouter/app/MediaRouteChooserDialog;->m:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->h(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-wide/16 v1, 0x3a98

    .line 69
    .line 70
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    return-void

    .line 74
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Ljava/util/List;

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->e(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
