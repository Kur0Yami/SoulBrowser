.class Landroidx/mediarouter/app/MediaRouteControllerDialog$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->a:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 7

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$9;->a:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/mediarouter/app/OverlayListView;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    check-cast v4, Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    .line 21
    .line 22
    iget-boolean v5, v4, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->j:Z

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    iput-wide v5, v4, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->i:J

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    iput-boolean v5, v4, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->j:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 37
    .line 38
    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t0:Ljava/lang/Runnable;

    .line 39
    .line 40
    iget p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m0:I

    .line 41
    .line 42
    int-to-long v2, p1

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method
