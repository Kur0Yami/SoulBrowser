.class public Landroidx/mediarouter/app/MediaRouteControllerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;,
        Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;
    }
.end annotation


# static fields
.field public static final u0:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public final D:Z

.field public final E:Z

.field public F:Landroid/widget/LinearLayout;

.field public G:Landroid/widget/RelativeLayout;

.field public H:Landroid/widget/LinearLayout;

.field public I:Landroid/view/View;

.field public J:Landroidx/mediarouter/app/OverlayListView;

.field public K:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

.field public L:Ljava/util/ArrayList;

.field public M:Ljava/util/HashSet;

.field public N:Ljava/util/HashSet;

.field public O:Ljava/util/HashSet;

.field public P:Landroid/widget/SeekBar;

.field public Q:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

.field public R:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public S:I

.field public T:I

.field public U:I

.field public final V:I

.field public W:Ljava/util/HashMap;

.field public X:Landroid/support/v4/media/session/MediaControllerCompat;

.field public final Y:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

.field public Z:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public a0:Landroid/support/v4/media/MediaDescriptionCompat;

.field public b0:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

.field public c0:Landroid/graphics/Bitmap;

.field public d0:Landroid/net/Uri;

.field public e0:Z

.field public f0:Landroid/graphics/Bitmap;

.field public g0:I

.field public h0:Z

.field public i0:Z

.field public j0:Z

.field public final k:Landroidx/mediarouter/media/MediaRouter;

.field public k0:Z

.field public final l:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

.field public l0:Z

.field public final m:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public m0:I

.field public final n:Landroid/content/Context;

.field public n0:I

.field public o:Z

.field public o0:I

.field public p:Z

.field public p0:Landroid/view/animation/Interpolator;

.field public q:I

.field public final q0:Landroid/view/animation/Interpolator;

.field public r:Landroid/widget/Button;

.field public final r0:Landroid/view/animation/Interpolator;

.field public s:Landroid/widget/Button;

.field public final s0:Landroid/view/accessibility/AccessibilityManager;

.field public t:Landroid/widget/ImageButton;

.field public final t0:Ljava/lang/Runnable;

.field public u:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

.field public v:Landroid/widget/FrameLayout;

.field public w:Landroid/widget/LinearLayout;

.field public x:Landroid/widget/FrameLayout;

.field public y:Landroid/widget/FrameLayout;

.field public z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "MediaRouteCtrlDialog"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v1, 0x1e

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    long-to-int v0, v0

    .line 16
    sput v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->u0:I

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->a(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    sget v1, Landroidx/mediarouter/R$attr;->mediaRouteTheme:I

    .line 7
    .line 8
    invoke-static {p1, v1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->g(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->e(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :cond_0
    invoke-direct {p0, p1, v1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 19
    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->D:Z

    .line 22
    .line 23
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t0:Ljava/lang/Runnable;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->n:Landroid/content/Context;

    .line 35
    .line 36
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Y:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->h(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->k:Landroidx/mediarouter/media/MediaRouter;

    .line 48
    .line 49
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->m()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->E:Z

    .line 54
    .line 55
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->l:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 61
    .line 62
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->l()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 67
    .line 68
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->i()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->p(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget v2, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_padding_top:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->V:I

    .line 86
    .line 87
    const-string v1, "accessibility"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 94
    .line 95
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->s0:Landroid/view/accessibility/AccessibilityManager;

    .line 96
    .line 97
    sget v0, Landroidx/mediarouter/R$interpolator;->mr_linear_out_slow_in:I

    .line 98
    .line 99
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q0:Landroid/view/animation/Interpolator;

    .line 104
    .line 105
    sget v0, Landroidx/mediarouter/R$interpolator;->mr_fast_out_slow_in:I

    .line 106
    .line 107
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->r0:Landroid/view/animation/Interpolator;

    .line 112
    .line 113
    return-void
.end method

.method public static o(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;

    .line 8
    .line 9
    invoke-direct {v1, p1, v0, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;-><init>(Landroid/view/View;II)V

    .line 10
    .line 11
    .line 12
    iget p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m0:I

    .line 13
    .line 14
    int-to-long v2, p2

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->p0:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->a0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public final i(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    add-int v5, v0, v2

    .line 25
    .line 26
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->K:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 27
    .line 28
    invoke-interface {v6, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->M:Ljava/util/HashSet;

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    sget v5, Landroidx/mediarouter/R$id;->volume_item_container:I

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Landroid/view/animation/AnimationSet;

    .line 59
    .line 60
    invoke-direct {v5, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    .line 64
    .line 65
    const/high16 v7, 0x3f800000    # 1.0f

    .line 66
    .line 67
    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v7, 0x0

    .line 71
    .line 72
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 76
    .line 77
    .line 78
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-direct {v6, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 103
    .line 104
    iget-object v0, v0, Landroidx/mediarouter/app/OverlayListView;->c:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    move v3, v1

    .line 111
    :cond_2
    :goto_2
    if-ge v3, v2, :cond_3

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    check-cast v5, Landroidx/mediarouter/app/OverlayListView$OverlayObject;

    .line 120
    .line 121
    iput-boolean v4, v5, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->j:Z

    .line 122
    .line 123
    iput-boolean v4, v5, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->k:Z

    .line 124
    .line 125
    iget-object v5, v5, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->l:Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    .line 126
    .line 127
    if-eqz v5, :cond_2

    .line 128
    .line 129
    check-cast v5, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;

    .line 130
    .line 131
    invoke-virtual {v5}, Landroidx/mediarouter/app/MediaRouteControllerDialog$10;->a()V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    if-nez p1, :cond_4

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->j(Z)V

    .line 138
    .line 139
    .line 140
    :cond_4
    return-void
.end method

.method public final j(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->M:Ljava/util/HashSet;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->N:Ljava/util/HashSet;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->k0:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->l0:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->l0:Z

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final k(II)I
    .locals 2

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    if-lt p1, p2, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    int-to-float p2, p2

    .line 9
    mul-float/2addr v1, p2

    .line 10
    int-to-float p1, p1

    .line 11
    div-float/2addr v1, p1

    .line 12
    add-float/2addr v1, v0

    .line 13
    float-to-int p1, v1

    .line 14
    return p1

    .line 15
    :cond_0
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q:I

    .line 16
    .line 17
    int-to-float p1, p1

    .line 18
    const/high16 p2, 0x41100000    # 9.0f

    .line 19
    .line 20
    mul-float/2addr p1, p2

    .line 21
    const/high16 p2, 0x41800000    # 16.0f

    .line 22
    .line 23
    div-float/2addr p1, p2

    .line 24
    add-float/2addr p1, v0

    .line 25
    float-to-int p1, p1

    .line 26
    return p1
.end method

.method public final l(Z)I
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->G:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    add-int/2addr v1, v0

    .line 51
    :cond_3
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->I:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    add-int/2addr p1, v1

    .line 68
    return p1

    .line 69
    :cond_4
    return v1
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-le v0, v1, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
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
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->p:Z

    .line 6
    .line 7
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->l:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->k:Landroidx/mediarouter/media/MediaRouter;

    .line 13
    .line 14
    invoke-virtual {v3, v0, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->a(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->i()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->p(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x106000d

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 12
    .line 13
    .line 14
    sget p1, Landroidx/mediarouter/R$layout;->mr_controller_material_dialog_b:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    const p1, 0x102001b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 34
    .line 35
    .line 36
    sget v1, Landroidx/mediarouter/R$id;->mr_expandable_area:I

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/FrameLayout;

    .line 43
    .line 44
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->v:Landroid/widget/FrameLayout;

    .line 45
    .line 46
    new-instance v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$2;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$2;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    sget v1, Landroidx/mediarouter/R$id;->mr_dialog_area:I

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->w:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    new-instance v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$3;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    sget v1, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->n:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v2, v1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->f(Landroid/content/Context;I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const v3, 0x1010031

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->f(Landroid/content/Context;I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->f(II)D

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    .line 92
    .line 93
    cmpg-double v3, v3, v5

    .line 94
    .line 95
    if-gez v3, :cond_0

    .line 96
    .line 97
    sget v1, Landroidx/appcompat/R$attr;->colorAccent:I

    .line 98
    .line 99
    invoke-static {v2, v1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->f(Landroid/content/Context;I)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :cond_0
    const v3, 0x102001a

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroid/widget/Button;

    .line 111
    .line 112
    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->r:Landroid/widget/Button;

    .line 113
    .line 114
    sget v4, Landroidx/mediarouter/R$string;->mr_controller_disconnect:I

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->r:Landroid/widget/Button;

    .line 120
    .line 121
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->r:Landroid/widget/Button;

    .line 125
    .line 126
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    const v3, 0x1020019

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Landroid/widget/Button;

    .line 137
    .line 138
    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->s:Landroid/widget/Button;

    .line 139
    .line 140
    sget v4, Landroidx/mediarouter/R$string;->mr_controller_stop_casting:I

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->s:Landroid/widget/Button;

    .line 146
    .line 147
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->s:Landroid/widget/Button;

    .line 151
    .line 152
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    sget v1, Landroidx/mediarouter/R$id;->mr_name:I

    .line 156
    .line 157
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroid/widget/TextView;

    .line 162
    .line 163
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->C:Landroid/widget/TextView;

    .line 164
    .line 165
    sget v1, Landroidx/mediarouter/R$id;->mr_close:I

    .line 166
    .line 167
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Landroid/widget/ImageButton;

    .line 172
    .line 173
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    sget v1, Landroidx/mediarouter/R$id;->mr_custom_control:I

    .line 177
    .line 178
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Landroid/widget/FrameLayout;

    .line 183
    .line 184
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->y:Landroid/widget/FrameLayout;

    .line 185
    .line 186
    sget v1, Landroidx/mediarouter/R$id;->mr_default_control:I

    .line 187
    .line 188
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Landroid/widget/FrameLayout;

    .line 193
    .line 194
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->x:Landroid/widget/FrameLayout;

    .line 195
    .line 196
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$4;

    .line 197
    .line 198
    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$4;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 199
    .line 200
    .line 201
    sget v3, Landroidx/mediarouter/R$id;->mr_art:I

    .line 202
    .line 203
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Landroid/widget/ImageView;

    .line 208
    .line 209
    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->z:Landroid/widget/ImageView;

    .line 210
    .line 211
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    sget v3, Landroidx/mediarouter/R$id;->mr_control_title_container:I

    .line 215
    .line 216
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    sget v1, Landroidx/mediarouter/R$id;->mr_media_main_control:I

    .line 224
    .line 225
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Landroid/widget/LinearLayout;

    .line 230
    .line 231
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 232
    .line 233
    sget v1, Landroidx/mediarouter/R$id;->mr_control_divider:I

    .line 234
    .line 235
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->I:Landroid/view/View;

    .line 240
    .line 241
    sget v1, Landroidx/mediarouter/R$id;->mr_playback_control:I

    .line 242
    .line 243
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 248
    .line 249
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->G:Landroid/widget/RelativeLayout;

    .line 250
    .line 251
    sget v1, Landroidx/mediarouter/R$id;->mr_control_title:I

    .line 252
    .line 253
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Landroid/widget/TextView;

    .line 258
    .line 259
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->A:Landroid/widget/TextView;

    .line 260
    .line 261
    sget v1, Landroidx/mediarouter/R$id;->mr_control_subtitle:I

    .line 262
    .line 263
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Landroid/widget/TextView;

    .line 268
    .line 269
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->B:Landroid/widget/TextView;

    .line 270
    .line 271
    sget v1, Landroidx/mediarouter/R$id;->mr_control_playback_ctrl:I

    .line 272
    .line 273
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Landroid/widget/ImageButton;

    .line 278
    .line 279
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t:Landroid/widget/ImageButton;

    .line 280
    .line 281
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    sget p1, Landroidx/mediarouter/R$id;->mr_volume_control:I

    .line 285
    .line 286
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    check-cast p1, Landroid/widget/LinearLayout;

    .line 291
    .line 292
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 293
    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    sget p1, Landroidx/mediarouter/R$id;->mr_volume_slider:I

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Landroid/widget/SeekBar;

    .line 304
    .line 305
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->P:Landroid/widget/SeekBar;

    .line 306
    .line 307
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    new-instance p1, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 313
    .line 314
    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 315
    .line 316
    .line 317
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Q:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 318
    .line 319
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->P:Landroid/widget/SeekBar;

    .line 320
    .line 321
    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 322
    .line 323
    .line 324
    sget p1, Landroidx/mediarouter/R$id;->mr_volume_group_list:I

    .line 325
    .line 326
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    check-cast p1, Landroidx/mediarouter/app/OverlayListView;

    .line 331
    .line 332
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 333
    .line 334
    new-instance p1, Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .line 338
    .line 339
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->L:Ljava/util/ArrayList;

    .line 340
    .line 341
    new-instance p1, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 342
    .line 343
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 344
    .line 345
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->L:Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {p1, p0, v1, v3}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 352
    .line 353
    .line 354
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->K:Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 355
    .line 356
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 357
    .line 358
    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 359
    .line 360
    .line 361
    new-instance p1, Ljava/util/HashSet;

    .line 362
    .line 363
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 364
    .line 365
    .line 366
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->O:Ljava/util/HashSet;

    .line 367
    .line 368
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 369
    .line 370
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 371
    .line 372
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m()Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 377
    .line 378
    invoke-static {v2, v4}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->f(Landroid/content/Context;I)I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    sget v5, Landroidx/appcompat/R$attr;->colorPrimaryDark:I

    .line 383
    .line 384
    invoke-static {v2, v5}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->f(Landroid/content/Context;I)I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-eqz v3, :cond_1

    .line 389
    .line 390
    invoke-static {v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->b(Landroid/content/Context;)I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    const/high16 v6, -0x22000000

    .line 395
    .line 396
    if-ne v3, v6, :cond_1

    .line 397
    .line 398
    const/4 v3, -0x1

    .line 399
    move v5, v4

    .line 400
    move v4, v3

    .line 401
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 405
    .line 406
    .line 407
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->P:Landroid/widget/SeekBar;

    .line 422
    .line 423
    check-cast p1, Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    .line 424
    .line 425
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 426
    .line 427
    invoke-static {v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->b(Landroid/content/Context;)I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    const/16 v5, 0xff

    .line 436
    .line 437
    if-eq v4, v5, :cond_2

    .line 438
    .line 439
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Ljava/lang/Integer;

    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->i(II)I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    :cond_2
    invoke-virtual {p1, v3, v3}, Landroidx/mediarouter/app/MediaRouteVolumeSlider;->a(II)V

    .line 454
    .line 455
    .line 456
    new-instance p1, Ljava/util/HashMap;

    .line 457
    .line 458
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 459
    .line 460
    .line 461
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->W:Ljava/util/HashMap;

    .line 462
    .line 463
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->P:Landroid/widget/SeekBar;

    .line 464
    .line 465
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    sget p1, Landroidx/mediarouter/R$id;->mr_group_expand_collapse:I

    .line 469
    .line 470
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    check-cast p1, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 475
    .line 476
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->u:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 477
    .line 478
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;

    .line 479
    .line 480
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$5;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 481
    .line 482
    .line 483
    iput-object v0, p1, Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;->m:Landroid/view/View$OnClickListener;

    .line 484
    .line 485
    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->j0:Z

    .line 486
    .line 487
    if-eqz p1, :cond_3

    .line 488
    .line 489
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q0:Landroid/view/animation/Interpolator;

    .line 490
    .line 491
    goto :goto_0

    .line 492
    :cond_3
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->r0:Landroid/view/animation/Interpolator;

    .line 493
    .line 494
    :goto_0
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->p0:Landroid/view/animation/Interpolator;

    .line 495
    .line 496
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    sget v0, Landroidx/mediarouter/R$integer;->mr_controller_volume_group_list_animation_duration_ms:I

    .line 501
    .line 502
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 503
    .line 504
    .line 505
    move-result p1

    .line 506
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m0:I

    .line 507
    .line 508
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    sget v0, Landroidx/mediarouter/R$integer;->mr_controller_volume_group_list_fade_in_duration_ms:I

    .line 513
    .line 514
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 515
    .line 516
    .line 517
    move-result p1

    .line 518
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->n0:I

    .line 519
    .line 520
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    sget v0, Landroidx/mediarouter/R$integer;->mr_controller_volume_group_list_fade_out_duration_ms:I

    .line 525
    .line 526
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 527
    .line 528
    .line 529
    move-result p1

    .line 530
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o0:I

    .line 531
    .line 532
    const/4 p1, 0x1

    .line 533
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o:Z

    .line 534
    .line 535
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->s()V

    .line 536
    .line 537
    .line 538
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->k:Landroidx/mediarouter/media/MediaRouter;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->l:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->p(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->p:Z

    .line 14
    .line 15
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->E:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez p2, :cond_2

    .line 19
    .line 20
    iget-boolean p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->j0:Z

    .line 21
    .line 22
    if-nez p2, :cond_4

    .line 23
    .line 24
    :cond_2
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move p1, v1

    .line 29
    :goto_1
    iget-object p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->l(I)V

    .line 32
    .line 33
    .line 34
    :cond_4
    return v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public final p(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->X:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Y:Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->X:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 12
    .line 13
    :cond_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->p:Z

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->n:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v3, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->X:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->X:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_1
    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->a0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->X:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->r()V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q(Z)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final q(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->R:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->h0:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->i0:Z

    .line 9
    .line 10
    or-int/2addr p1, v0

    .line 11
    iput-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->i0:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->h0:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->i0:Z

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->h()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_23

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    goto/16 :goto_16

    .line 34
    .line 35
    :cond_1
    iget-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->o:Z

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->C:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v4, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->r:Landroid/widget/Button;

    .line 48
    .line 49
    iget-boolean v4, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->j:Z

    .line 50
    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    move v4, v0

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v4, v5

    .line 58
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->e0:Z

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->f0:Landroid/graphics/Bitmap;

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v6, "Can\'t set artwork image with recycled bitmap: "

    .line 79
    .line 80
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->f0:Landroid/graphics/Bitmap;

    .line 84
    .line 85
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string v6, "MediaRouteCtrlDialog"

    .line 93
    .line 94
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->z:Landroid/widget/ImageView;

    .line 99
    .line 100
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->f0:Landroid/graphics/Bitmap;

    .line 101
    .line 102
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->z:Landroid/widget/ImageView;

    .line 106
    .line 107
    iget v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->g0:I

    .line 108
    .line 109
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    .line 111
    .line 112
    :goto_1
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->e0:Z

    .line 113
    .line 114
    iput-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->f0:Landroid/graphics/Bitmap;

    .line 115
    .line 116
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->g0:I

    .line 117
    .line 118
    :cond_5
    iget-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->E:Z

    .line 119
    .line 120
    if-nez v3, :cond_7

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_7

    .line 127
    .line 128
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iput-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->j0:Z

    .line 134
    .line 135
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->J:Landroidx/mediarouter/app/OverlayListView;

    .line 136
    .line 137
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->j0:Z

    .line 141
    .line 142
    if-eqz v3, :cond_6

    .line 143
    .line 144
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q0:Landroid/view/animation/Interpolator;

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->r0:Landroid/view/animation/Interpolator;

    .line 148
    .line 149
    :goto_2
    iput-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->p0:Landroid/view/animation/Interpolator;

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t(Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_7
    iget-boolean v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->j0:Z

    .line 156
    .line 157
    if-eqz v6, :cond_8

    .line 158
    .line 159
    if-eqz v3, :cond_b

    .line 160
    .line 161
    :cond_8
    iget-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->D:Z

    .line 162
    .line 163
    if-eqz v3, :cond_a

    .line 164
    .line 165
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->f()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_9

    .line 170
    .line 171
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->m()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_9

    .line 176
    .line 177
    move v3, v0

    .line 178
    goto :goto_3

    .line 179
    :cond_9
    iget v3, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->o:I

    .line 180
    .line 181
    :goto_3
    if-ne v3, v1, :cond_a

    .line 182
    .line 183
    move v3, v1

    .line 184
    goto :goto_4

    .line 185
    :cond_a
    move v3, v0

    .line 186
    :goto_4
    if-nez v3, :cond_c

    .line 187
    .line 188
    :cond_b
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_c
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 195
    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-ne v3, v5, :cond_e

    .line 201
    .line 202
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 203
    .line 204
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->P:Landroid/widget/SeekBar;

    .line 208
    .line 209
    iget v6, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->q:I

    .line 210
    .line 211
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 212
    .line 213
    .line 214
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->P:Landroid/widget/SeekBar;

    .line 215
    .line 216
    iget v6, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->p:I

    .line 217
    .line 218
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 219
    .line 220
    .line 221
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->u:Landroidx/mediarouter/app/MediaRouteExpandCollapseButton;

    .line 222
    .line 223
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m()Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-eqz v6, :cond_d

    .line 228
    .line 229
    move v6, v0

    .line 230
    goto :goto_5

    .line 231
    :cond_d
    move v6, v5

    .line 232
    :goto_5
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    :cond_e
    :goto_6
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->h()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_22

    .line 240
    .line 241
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->a0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 242
    .line 243
    if-nez v3, :cond_f

    .line 244
    .line 245
    move-object v3, v4

    .line 246
    goto :goto_7

    .line 247
    :cond_f
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    :goto_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    iget-object v7, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->a0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 256
    .line 257
    if-nez v7, :cond_10

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_10
    invoke-virtual {v7}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    :goto_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    iget v2, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->r:I

    .line 269
    .line 270
    const/4 v8, -0x1

    .line 271
    if-eq v2, v8, :cond_11

    .line 272
    .line 273
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->A:Landroid/widget/TextView;

    .line 274
    .line 275
    sget v3, Landroidx/mediarouter/R$string;->mr_controller_casting_screen:I

    .line 276
    .line 277
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 278
    .line 279
    .line 280
    :goto_9
    move v3, v0

    .line 281
    move v2, v1

    .line 282
    goto :goto_c

    .line 283
    :cond_11
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 284
    .line 285
    if-eqz v2, :cond_16

    .line 286
    .line 287
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-nez v2, :cond_12

    .line 292
    .line 293
    goto :goto_b

    .line 294
    :cond_12
    if-eqz v6, :cond_13

    .line 295
    .line 296
    if-eqz v7, :cond_13

    .line 297
    .line 298
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->A:Landroid/widget/TextView;

    .line 299
    .line 300
    sget v3, Landroidx/mediarouter/R$string;->mr_controller_no_info_available:I

    .line 301
    .line 302
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 303
    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_13
    if-nez v6, :cond_14

    .line 307
    .line 308
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->A:Landroid/widget/TextView;

    .line 309
    .line 310
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    move v2, v1

    .line 314
    goto :goto_a

    .line 315
    :cond_14
    move v2, v0

    .line 316
    :goto_a
    if-nez v7, :cond_15

    .line 317
    .line 318
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->B:Landroid/widget/TextView;

    .line 319
    .line 320
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .line 322
    .line 323
    move v3, v1

    .line 324
    goto :goto_c

    .line 325
    :cond_15
    move v3, v0

    .line 326
    goto :goto_c

    .line 327
    :cond_16
    :goto_b
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->A:Landroid/widget/TextView;

    .line 328
    .line 329
    sget v3, Landroidx/mediarouter/R$string;->mr_controller_no_media_selected:I

    .line 330
    .line 331
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 332
    .line 333
    .line 334
    goto :goto_9

    .line 335
    :goto_c
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->A:Landroid/widget/TextView;

    .line 336
    .line 337
    if-eqz v2, :cond_17

    .line 338
    .line 339
    move v2, v0

    .line 340
    goto :goto_d

    .line 341
    :cond_17
    move v2, v5

    .line 342
    :goto_d
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    .line 344
    .line 345
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->B:Landroid/widget/TextView;

    .line 346
    .line 347
    if-eqz v3, :cond_18

    .line 348
    .line 349
    move v3, v0

    .line 350
    goto :goto_e

    .line 351
    :cond_18
    move v3, v5

    .line 352
    :goto_e
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 356
    .line 357
    if-eqz v2, :cond_22

    .line 358
    .line 359
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    const/4 v3, 0x6

    .line 364
    if-eq v2, v3, :cond_1a

    .line 365
    .line 366
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 367
    .line 368
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    const/4 v3, 0x3

    .line 373
    if-ne v2, v3, :cond_19

    .line 374
    .line 375
    goto :goto_f

    .line 376
    :cond_19
    move v2, v0

    .line 377
    goto :goto_10

    .line 378
    :cond_1a
    :goto_f
    move v2, v1

    .line 379
    :goto_10
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t:Landroid/widget/ImageButton;

    .line 380
    .line 381
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    const-wide/16 v6, 0x0

    .line 386
    .line 387
    if-eqz v2, :cond_1c

    .line 388
    .line 389
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 390
    .line 391
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 392
    .line 393
    .line 394
    move-result-wide v8

    .line 395
    const-wide/16 v10, 0x202

    .line 396
    .line 397
    and-long/2addr v8, v10

    .line 398
    cmp-long v4, v8, v6

    .line 399
    .line 400
    if-eqz v4, :cond_1b

    .line 401
    .line 402
    move v4, v1

    .line 403
    goto :goto_11

    .line 404
    :cond_1b
    move v4, v0

    .line 405
    :goto_11
    if-eqz v4, :cond_1c

    .line 406
    .line 407
    sget v2, Landroidx/mediarouter/R$attr;->mediaRoutePauseDrawable:I

    .line 408
    .line 409
    sget v4, Landroidx/mediarouter/R$string;->mr_controller_pause:I

    .line 410
    .line 411
    goto :goto_14

    .line 412
    :cond_1c
    if-eqz v2, :cond_1e

    .line 413
    .line 414
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 415
    .line 416
    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 417
    .line 418
    .line 419
    move-result-wide v8

    .line 420
    const-wide/16 v10, 0x1

    .line 421
    .line 422
    and-long/2addr v8, v10

    .line 423
    cmp-long v4, v8, v6

    .line 424
    .line 425
    if-eqz v4, :cond_1d

    .line 426
    .line 427
    move v4, v1

    .line 428
    goto :goto_12

    .line 429
    :cond_1d
    move v4, v0

    .line 430
    :goto_12
    if-eqz v4, :cond_1e

    .line 431
    .line 432
    sget v2, Landroidx/mediarouter/R$attr;->mediaRouteStopDrawable:I

    .line 433
    .line 434
    sget v4, Landroidx/mediarouter/R$string;->mr_controller_stop:I

    .line 435
    .line 436
    goto :goto_14

    .line 437
    :cond_1e
    if-nez v2, :cond_20

    .line 438
    .line 439
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->Z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 440
    .line 441
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    .line 442
    .line 443
    .line 444
    move-result-wide v8

    .line 445
    const-wide/16 v10, 0x204

    .line 446
    .line 447
    and-long/2addr v8, v10

    .line 448
    cmp-long v2, v8, v6

    .line 449
    .line 450
    if-eqz v2, :cond_1f

    .line 451
    .line 452
    move v2, v1

    .line 453
    goto :goto_13

    .line 454
    :cond_1f
    move v2, v0

    .line 455
    :goto_13
    if-eqz v2, :cond_20

    .line 456
    .line 457
    sget v2, Landroidx/mediarouter/R$attr;->mediaRoutePlayDrawable:I

    .line 458
    .line 459
    sget v4, Landroidx/mediarouter/R$string;->mr_controller_play:I

    .line 460
    .line 461
    goto :goto_14

    .line 462
    :cond_20
    move v1, v0

    .line 463
    move v2, v1

    .line 464
    move v4, v2

    .line 465
    :goto_14
    iget-object v6, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t:Landroid/widget/ImageButton;

    .line 466
    .line 467
    if-eqz v1, :cond_21

    .line 468
    .line 469
    goto :goto_15

    .line 470
    :cond_21
    move v0, v5

    .line 471
    :goto_15
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 472
    .line 473
    .line 474
    if-eqz v1, :cond_22

    .line 475
    .line 476
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t:Landroid/widget/ImageButton;

    .line 477
    .line 478
    invoke-static {v3, v2}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->g(Landroid/content/Context;I)I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    .line 484
    .line 485
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t:Landroid/widget/ImageButton;

    .line 486
    .line 487
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    .line 497
    .line 498
    :cond_22
    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->t(Z)V

    .line 499
    .line 500
    .line 501
    return-void

    .line 502
    :cond_23
    :goto_16
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 503
    .line 504
    .line 505
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->a0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->a0:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_1
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->b0:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->c0:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object v3, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->a:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    :goto_2
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->d0:Landroid/net/Uri;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;->b:Landroid/net/Uri;

    .line 36
    .line 37
    :goto_3
    if-eq v3, v0, :cond_4

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_4
    if-nez v3, :cond_9

    .line 41
    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_5
    if-nez v2, :cond_6

    .line 52
    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->m()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->E:Z

    .line 63
    .line 64
    if-nez v0, :cond_7

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_7
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->b0:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 68
    .line 69
    if-eqz v0, :cond_8

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 73
    .line 74
    .line 75
    :cond_8
    new-instance v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->b0:Landroidx/mediarouter/app/MediaRouteControllerDialog$FetchArtTask;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    new-array v1, v1, [Ljava/lang/Void;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    .line 87
    .line 88
    :cond_9
    :goto_5
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->n:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->a(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v1, v3

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_item_icon_size:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->S:I

    .line 46
    .line 47
    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_item_height:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->T:I

    .line 54
    .line 55
    sget v1, Landroidx/mediarouter/R$dimen;->mr_controller_volume_group_list_max_height:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->U:I

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->c0:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->d0:Landroid/net/Uri;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->r()V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->q(Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->x:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->x:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$6;-><init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final u(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->I:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->F:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->H:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ne v1, v3, :cond_1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
