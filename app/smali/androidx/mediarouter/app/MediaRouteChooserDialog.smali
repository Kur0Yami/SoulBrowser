.class public Landroidx/mediarouter/app/MediaRouteChooserDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;,
        Landroidx/mediarouter/app/MediaRouteChooserDialog$ScreenOnOffReceiver;,
        Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;,
        Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;
    }
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public final A:Landroid/os/Handler;

.field public final j:Landroidx/mediarouter/media/MediaRouter;

.field public final k:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

.field public l:Landroidx/mediarouter/media/MediaRouteSelector;

.field public m:Ljava/util/ArrayList;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/RelativeLayout;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/LinearLayout;

.field public t:Landroid/widget/Button;

.field public u:Landroid/widget/ProgressBar;

.field public v:Landroid/widget/ListView;

.field public w:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

.field public final x:Landroidx/mediarouter/app/MediaRouteChooserDialog$ScreenOnOffReceiver;

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->a(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    sget v0, Landroidx/mediarouter/R$attr;->mediaRouteTheme:I

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->g(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->e(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->l:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 24
    .line 25
    new-instance p1, Landroidx/mediarouter/app/MediaRouteChooserDialog$1;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->A:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->j:Landroidx/mediarouter/media/MediaRouter;

    .line 41
    .line 42
    new-instance p1, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->k:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 48
    .line 49
    new-instance p1, Landroidx/mediarouter/app/MediaRouteChooserDialog$ScreenOnOffReceiver;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog$ScreenOnOffReceiver;-><init>(Landroidx/mediarouter/app/MediaRouteChooserDialog;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->x:Landroidx/mediarouter/app/MediaRouteChooserDialog$ScreenOnOffReceiver;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->x:Landroidx/mediarouter/app/MediaRouteChooserDialog$ScreenOnOffReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->z:J

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->m:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->m:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->w:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->A:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->h(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-wide/16 v2, 0x1388

    .line 47
    .line 48
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->h(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->j:Landroidx/mediarouter/media/MediaRouter;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->k()Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    iget-boolean v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g:Z

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->l:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->i(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_1
    move v1, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget-object v1, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;->c:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteComparator;

    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    iget-wide v3, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->z:J

    .line 67
    .line 68
    sub-long/2addr v1, v3

    .line 69
    const-wide/16 v3, 0x12c

    .line 70
    .line 71
    cmp-long v1, v1, v3

    .line 72
    .line 73
    if-ltz v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->e(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->A:Landroid/os/Handler;

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-wide v5, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->z:J

    .line 90
    .line 91
    add-long/2addr v5, v3

    .line 92
    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public final g(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->l:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->l:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->y:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->j:Landroidx/mediarouter/media/MediaRouter;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->k:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->a(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->f()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "selector must not be null"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final h(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v2, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq p1, v2, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq p1, v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget p1, Landroidx/mediarouter/R$string;->mr_chooser_zero_routes_found_title:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setTitle(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->v:Landroid/widget/ListView;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->o:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->u:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->s:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->t:Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->r:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->p:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    sget p1, Landroidx/mediarouter/R$string;->mr_chooser_title:I

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setTitle(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->v:Landroid/widget/ListView;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->o:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->u:Landroid/widget/ProgressBar;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->s:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->t:Landroid/widget/Button;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->r:Landroid/widget/TextView;

    .line 88
    .line 89
    const/4 v1, 0x4

    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->p:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    sget p1, Landroidx/mediarouter/R$string;->mr_chooser_title:I

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setTitle(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->v:Landroid/widget/ListView;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->o:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->u:Landroid/widget/ProgressBar;

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->s:Landroid/widget/LinearLayout;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->t:Landroid/widget/Button;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->r:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->p:Landroid/widget/RelativeLayout;

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_3
    sget p1, Landroidx/mediarouter/R$string;->mr_chooser_title:I

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setTitle(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->v:Landroid/widget/ListView;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->o:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->u:Landroid/widget/ProgressBar;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->s:Landroid/widget/LinearLayout;

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->t:Landroid/widget/Button;

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->r:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->p:Landroid/widget/RelativeLayout;

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->y:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->l:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->k:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->j:Landroidx/mediarouter/media/MediaRouter;

    .line 12
    .line 13
    invoke-virtual {v3, v1, v2, v0}, Landroidx/mediarouter/media/MediaRouter;->a(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->f()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->A:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-wide/16 v2, 0x1388

    .line 37
    .line 38
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroidx/mediarouter/R$layout;->mr_chooser_dialog:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->m:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance p1, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->m:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1, v0, v1}, Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->w:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 28
    .line 29
    sget p1, Landroidx/mediarouter/R$id;->mr_chooser_title:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->n:Landroid/widget/TextView;

    .line 38
    .line 39
    sget p1, Landroidx/mediarouter/R$id;->mr_chooser_searching:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->o:Landroid/widget/TextView;

    .line 48
    .line 49
    sget p1, Landroidx/mediarouter/R$id;->mr_chooser_wifi_warning_container:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->p:Landroid/widget/RelativeLayout;

    .line 58
    .line 59
    sget p1, Landroidx/mediarouter/R$id;->mr_chooser_wifi_warning_description:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->q:Landroid/widget/TextView;

    .line 68
    .line 69
    sget p1, Landroidx/mediarouter/R$id;->mr_chooser_wifi_learn_more:I

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->r:Landroid/widget/TextView;

    .line 78
    .line 79
    sget p1, Landroidx/mediarouter/R$id;->mr_chooser_ok_button_container:I

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->s:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    sget p1, Landroidx/mediarouter/R$id;->mr_chooser_ok_button:I

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Landroid/widget/Button;

    .line 96
    .line 97
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->t:Landroid/widget/Button;

    .line 98
    .line 99
    sget p1, Landroidx/mediarouter/R$id;->mr_chooser_search_progress_bar:I

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/ProgressBar;

    .line 106
    .line 107
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->u:Landroid/widget/ProgressBar;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-object v0, Landroidx/mediarouter/app/DeviceUtils;->a:Ljava/lang/Boolean;

    .line 114
    .line 115
    const-string v1, "android.hardware.type.watch"

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    const/4 v3, 0x1

    .line 119
    if-nez v0, :cond_2

    .line 120
    .line 121
    invoke-static {p1}, Landroidx/mediarouter/app/DeviceUtils;->c(Landroid/content/Context;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_1

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sget-object v4, Landroidx/mediarouter/app/DeviceUtils;->e:Ljava/lang/Boolean;

    .line 132
    .line 133
    if-nez v4, :cond_0

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Landroidx/mediarouter/app/DeviceUtils;->e:Ljava/lang/Boolean;

    .line 144
    .line 145
    :cond_0
    sget-object v0, Landroidx/mediarouter/app/DeviceUtils;->e:Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_1

    .line 152
    .line 153
    invoke-static {p1}, Landroidx/mediarouter/app/DeviceUtils;->a(Landroid/content/Context;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_1

    .line 158
    .line 159
    invoke-static {p1}, Landroidx/mediarouter/app/DeviceUtils;->d(Landroid/content/Context;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_1

    .line 164
    .line 165
    move v0, v3

    .line 166
    goto :goto_0

    .line 167
    :cond_1
    move v0, v2

    .line 168
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Landroidx/mediarouter/app/DeviceUtils;->a:Ljava/lang/Boolean;

    .line 173
    .line 174
    :cond_2
    sget-object v0, Landroidx/mediarouter/app/DeviceUtils;->a:Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_c

    .line 181
    .line 182
    sget-object v0, Landroidx/mediarouter/app/DeviceUtils;->c:Ljava/lang/Boolean;

    .line 183
    .line 184
    if-nez v0, :cond_4

    .line 185
    .line 186
    const-string v0, "sensor"

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Landroid/hardware/SensorManager;

    .line 193
    .line 194
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 195
    .line 196
    const/16 v5, 0x1e

    .line 197
    .line 198
    if-lt v4, v5, :cond_3

    .line 199
    .line 200
    if-eqz v0, :cond_3

    .line 201
    .line 202
    const/16 v4, 0x24

    .line 203
    .line 204
    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    if-eqz v0, :cond_3

    .line 209
    .line 210
    move v2, v3

    .line 211
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sput-object v0, Landroidx/mediarouter/app/DeviceUtils;->c:Ljava/lang/Boolean;

    .line 216
    .line 217
    :cond_4
    sget-object v0, Landroidx/mediarouter/app/DeviceUtils;->c:Ljava/lang/Boolean;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_5

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_5
    invoke-static {p1}, Landroidx/mediarouter/app/DeviceUtils;->c(Landroid/content/Context;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_b

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Landroidx/mediarouter/app/DeviceUtils;->b(Landroid/content/res/Resources;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_6

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_6
    invoke-static {p1}, Landroidx/mediarouter/app/DeviceUtils;->d(Landroid/content/Context;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_7

    .line 248
    .line 249
    sget v0, Landroidx/mediarouter/R$string;->mr_chooser_wifi_warning_description_tv:I

    .line 250
    .line 251
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    goto :goto_3

    .line 256
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    sget-object v2, Landroidx/mediarouter/app/DeviceUtils;->e:Ljava/lang/Boolean;

    .line 261
    .line 262
    if-nez v2, :cond_8

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    sput-object v0, Landroidx/mediarouter/app/DeviceUtils;->e:Ljava/lang/Boolean;

    .line 273
    .line 274
    :cond_8
    sget-object v0, Landroidx/mediarouter/app/DeviceUtils;->e:Ljava/lang/Boolean;

    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_9

    .line 281
    .line 282
    sget v0, Landroidx/mediarouter/R$string;->mr_chooser_wifi_warning_description_watch:I

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    goto :goto_3

    .line 289
    :cond_9
    invoke-static {p1}, Landroidx/mediarouter/app/DeviceUtils;->a(Landroid/content/Context;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_a

    .line 294
    .line 295
    sget v0, Landroidx/mediarouter/R$string;->mr_chooser_wifi_warning_description_car:I

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    goto :goto_3

    .line 302
    :cond_a
    sget v0, Landroidx/mediarouter/R$string;->mr_chooser_wifi_warning_description_unknown:I

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    goto :goto_3

    .line 309
    :cond_b
    :goto_1
    sget v0, Landroidx/mediarouter/R$string;->mr_chooser_wifi_warning_description_tablet:I

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    goto :goto_3

    .line 316
    :cond_c
    :goto_2
    sget v0, Landroidx/mediarouter/R$string;->mr_chooser_wifi_warning_description_phone:I

    .line 317
    .line 318
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    :goto_3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->q:Landroid/widget/TextView;

    .line 323
    .line 324
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->r:Landroid/widget/TextView;

    .line 328
    .line 329
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->t:Landroid/widget/Button;

    .line 337
    .line 338
    new-instance v0, Lcom/google/android/material/datepicker/d;

    .line 339
    .line 340
    const/4 v1, 0x3

    .line 341
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/datepicker/d;-><init>(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    .line 346
    .line 347
    sget p1, Landroidx/mediarouter/R$id;->mr_chooser_list:I

    .line 348
    .line 349
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Landroid/widget/ListView;

    .line 354
    .line 355
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->v:Landroid/widget/ListView;

    .line 356
    .line 357
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->w:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 358
    .line 359
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 360
    .line 361
    .line 362
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->v:Landroid/widget/ListView;

    .line 363
    .line 364
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->w:Landroidx/mediarouter/app/MediaRouteChooserDialog$RouteAdapter;

    .line 365
    .line 366
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->v:Landroid/widget/ListView;

    .line 370
    .line 371
    const v0, 0x1020004

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->a(Landroid/content/Context;)I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    const/4 v1, -0x2

    .line 394
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 395
    .line 396
    .line 397
    new-instance p1, Landroid/content/IntentFilter;

    .line 398
    .line 399
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 400
    .line 401
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->x:Landroidx/mediarouter/app/MediaRouteChooserDialog$ScreenOnOffReceiver;

    .line 409
    .line 410
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    .line 412
    .line 413
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->y:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->j:Landroidx/mediarouter/media/MediaRouter;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->k:Landroidx/mediarouter/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->A:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialog;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
