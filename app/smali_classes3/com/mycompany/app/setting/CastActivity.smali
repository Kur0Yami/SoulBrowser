.class public Lcom/mycompany/app/setting/CastActivity;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/CastActivity$MyCastListener;,
        Lcom/mycompany/app/setting/CastActivity$MyCastCheckListener;,
        Lcom/mycompany/app/setting/CastActivity$MyStateListener;,
        Lcom/mycompany/app/setting/CastActivity$MySessionListener;
    }
.end annotation


# static fields
.field public static final synthetic B1:I


# instance fields
.field public A1:Lcom/mycompany/app/dialog/DialogListBook;

.field public f1:Landroid/content/Context;

.field public g1:Z

.field public h1:I

.field public i1:Z

.field public j1:Landroid/widget/FrameLayout;

.field public k1:Landroid/widget/FrameLayout;

.field public l1:Lcom/mycompany/app/setting/CastActivity$MyCastListener;

.field public m1:Lcom/mycompany/app/setting/CastActivity$MyCastCheckListener;

.field public n1:Ljava/util/concurrent/ExecutorService;

.field public o1:Lcom/google/android/gms/cast/framework/CastContext;

.field public p1:Lcom/google/android/gms/cast/framework/CastSession;

.field public q1:Lcom/mycompany/app/setting/CastActivity$MyStateListener;

.field public r1:Lcom/mycompany/app/setting/CastActivity$MySessionListener;

.field public s1:Z

.field public t1:Z

.field public u1:Landroid/widget/FrameLayout;

.field public v1:Lcom/mycompany/app/wview/WebCastView;

.field public w1:Landroidx/mediarouter/app/MediaRouteButton;

.field public x1:Landroid/widget/FrameLayout;

.field public y1:Landroid/view/View;

.field public z1:Lcom/google/android/gms/internal/cast/zzbk;


# virtual methods
.method public final A0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    iget v1, p0, Lcom/mycompany/app/setting/CastActivity;->h1:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/high16 v3, -0x1000000

    .line 14
    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const/high16 v1, -0x5f000000

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const v1, -0x70708

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    :goto_1
    iget v0, p0, Lcom/mycompany/app/setting/CastActivity;->h1:I

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    const v3, -0x50506

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    const/4 v3, -0x1

    .line 48
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 51
    .line 52
    invoke-static {v3, v0, v1}, Lcom/mycompany/app/main/MainUtil;->h7(ILandroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 53
    .line 54
    .line 55
    :cond_5
    :goto_3
    return-void
.end method

.method public final B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->j1:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->k1:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->setMainInsetView(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final C0(Lcom/mycompany/app/dialog/DialogListBook;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->A1:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->u0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainActivity;->u0:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->f0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 16
    .line 17
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->j1:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->k1:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->l1:Lcom/mycompany/app/setting/CastActivity$MyCastListener;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->n1:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->v1:Lcom/mycompany/app/wview/WebCastView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->x1:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->y1:Landroid/view/View;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->z1:Lcom/google/android/gms/internal/cast/zzbk;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->A1:Lcom/mycompany/app/dialog/DialogListBook;

    .line 32
    .line 33
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->g1:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->y0()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->x0()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->g1:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/mycompany/app/setting/CastActivity;->h1:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->j1:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->k1:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v0, v1, v2}, Lcom/mycompany/app/setting/CastActivity;->v0(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/mycompany/app/setting/CastActivity$MyCastListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v1, Lcom/mycompany/app/setting/CastActivity$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/CastActivity$1;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final u0()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->z0()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->j1:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_12

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->k1:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    const/4 v1, -0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->T()Landroidx/fragment/app/FragmentManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget v3, Lnet/kaki87/soul2/testing/R$id;->cast_mini_controller:I

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->B(I)Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->T()Landroidx/fragment/app/FragmentManager;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentTransaction;->g(Landroidx/fragment/app/Fragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->j1:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->k1:Landroid/widget/FrameLayout;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->x1:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v3, Lcom/mycompany/app/wview/WebCastView;

    .line 64
    .line 65
    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->v1:Lcom/mycompany/app/wview/WebCastView;

    .line 69
    .line 70
    sget v4, Lnet/kaki87/soul2/testing/R$layout;->cast_icon_layout:I

    .line 71
    .line 72
    invoke-virtual {v0, v4, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroidx/mediarouter/app/MediaRouteButton;

    .line 77
    .line 78
    iput-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 79
    .line 80
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    const/16 v4, 0x11

    .line 86
    .line 87
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    .line 89
    iget-object v4, p0, Lcom/mycompany/app/setting/CastActivity;->v1:Lcom/mycompany/app/wview/WebCastView;

    .line 90
    .line 91
    iget-object v5, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 92
    .line 93
    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    sget v3, Lnet/kaki87/soul2/testing/R$layout;->cast_mini_control:I

    .line 97
    .line 98
    iget-object v4, p0, Lcom/mycompany/app/setting/CastActivity;->x1:Landroid/widget/FrameLayout;

    .line 99
    .line 100
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->y1:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->z0()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->v1:Lcom/mycompany/app/wview/WebCastView;

    .line 112
    .line 113
    if-eqz v0, :cond_11

    .line 114
    .line 115
    iget-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 116
    .line 117
    if-eqz v3, :cond_11

    .line 118
    .line 119
    iget-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->y1:Landroid/view/View;

    .line 120
    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_4
    new-instance v3, Lcom/mycompany/app/setting/CastActivity$4;

    .line 126
    .line 127
    invoke-direct {v3, p0}, Lcom/mycompany/app/setting/CastActivity$4;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3}, Lcom/mycompany/app/wview/WebCastView;->setAvailListener(Lcom/mycompany/app/wview/WebCastView$MyCastAvailListener;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->A1:Lcom/mycompany/app/dialog/DialogListBook;

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    if-eqz v0, :cond_a

    .line 137
    .line 138
    iput-boolean v2, p0, Lcom/mycompany/app/setting/CastActivity;->t1:Z

    .line 139
    .line 140
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->v1:Lcom/mycompany/app/wview/WebCastView;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 143
    .line 144
    iget-object v4, p0, Lcom/mycompany/app/setting/CastActivity;->y1:Landroid/view/View;

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    if-nez v4, :cond_5

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 154
    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2, v4}, Lcom/mycompany/app/main/MainListView;->k(Lcom/mycompany/app/wview/WebCastView;Landroidx/mediarouter/app/MediaRouteButton;Landroid/view/View;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->z1:Lcom/google/android/gms/internal/cast/zzbk;

    .line 161
    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzbk;->a()V

    .line 165
    .line 166
    .line 167
    iput-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->z1:Lcom/google/android/gms/internal/cast/zzbk;

    .line 168
    .line 169
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 170
    .line 171
    if-nez v0, :cond_8

    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 176
    .line 177
    if-nez v0, :cond_9

    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :cond_9
    new-instance v1, Lcom/mycompany/app/setting/CastActivity$8;

    .line 182
    .line 183
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/CastActivity$8;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :cond_a
    iget-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->t1:Z

    .line 192
    .line 193
    if-eqz v0, :cond_b

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_b
    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->t1:Z

    .line 198
    .line 199
    :try_start_2
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->v1:Lcom/mycompany/app/wview/WebCastView;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 210
    .line 211
    iget-object v4, p0, Lcom/mycompany/app/setting/CastActivity;->v1:Lcom/mycompany/app/wview/WebCastView;

    .line 212
    .line 213
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 214
    .line 215
    const/4 v6, -0x1

    .line 216
    invoke-virtual {v0, v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->y1:Landroid/view/View;

    .line 225
    .line 226
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->x1:Landroid/widget/FrameLayout;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->x1:Landroid/widget/FrameLayout;

    .line 235
    .line 236
    iget-object v4, p0, Lcom/mycompany/app/setting/CastActivity;->y1:Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {v0, v4, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->x1:Landroid/widget/FrameLayout;

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->A0()V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 250
    .line 251
    if-nez v0, :cond_c

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_c
    :try_start_3
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 255
    .line 256
    invoke-static {v1, v0}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->a(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 257
    .line 258
    .line 259
    :catch_2
    :try_start_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 260
    .line 261
    if-nez v0, :cond_d

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_d
    new-instance v1, Lcom/mycompany/app/setting/CastActivity$5;

    .line 265
    .line 266
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/CastActivity$5;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    .line 271
    .line 272
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->z1:Lcom/google/android/gms/internal/cast/zzbk;

    .line 273
    .line 274
    if-eqz v0, :cond_e

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzbk;->a()V

    .line 277
    .line 278
    .line 279
    iput-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->z1:Lcom/google/android/gms/internal/cast/zzbk;

    .line 280
    .line 281
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 282
    .line 283
    if-nez v0, :cond_f

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 287
    .line 288
    if-nez v0, :cond_10

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_10
    new-instance v1, Lcom/mycompany/app/setting/CastActivity$8;

    .line 292
    .line 293
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/CastActivity$8;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :catch_3
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->z0()V

    .line 301
    .line 302
    .line 303
    :goto_3
    return-void

    .line 304
    :cond_11
    :goto_4
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->z0()V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :cond_12
    :goto_5
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->z0()V

    .line 309
    .line 310
    .line 311
    return-void
.end method

.method public final v0(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/mycompany/app/setting/CastActivity$MyCastListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->j1:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->k1:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->l1:Lcom/mycompany/app/setting/CastActivity$MyCastListener;

    .line 6
    .line 7
    sget-boolean p1, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->y0()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->z0()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->x0()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance p2, Lcom/mycompany/app/setting/CastActivity$3;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/CastActivity$3;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->n1:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->n1:Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->n1:Ljava/util/concurrent/ExecutorService;

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/google/android/gms/cast/framework/CastContext;->f(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/tasks/Task;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance p2, Lcom/mycompany/app/setting/CastActivity$2;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/CastActivity$2;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catch_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->x0()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final w0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Lcom/mycompany/app/setting/CastActivity$7;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/CastActivity$7;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final x0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->m1:Lcom/mycompany/app/setting/CastActivity$MyCastCheckListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast v0, Lcom/mycompany/app/setting/SettingCast$3;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingCast$3;->a:Lcom/mycompany/app/setting/SettingCast;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v2, Lcom/mycompany/app/setting/SettingCast$3$1;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingCast$3$1;-><init>(Lcom/mycompany/app/setting/SettingCast$3;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->m1:Lcom/mycompany/app/setting/CastActivity$MyCastCheckListener;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final y0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->q1:Lcom/mycompany/app/setting/CastActivity$MyStateListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->r1:Lcom/mycompany/app/setting/CastActivity$MySessionListener;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->o1:Lcom/google/android/gms/cast/framework/CastContext;

    .line 9
    .line 10
    iput-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 11
    .line 12
    iput-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->q1:Lcom/mycompany/app/setting/CastActivity$MyStateListener;

    .line 13
    .line 14
    iput-object v3, p0, Lcom/mycompany/app/setting/CastActivity;->r1:Lcom/mycompany/app/setting/CastActivity$MySessionListener;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/CastContext;->g(Lcom/google/android/gms/cast/framework/CastStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_1
    if-eqz v2, :cond_2

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/SessionManager;->e(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    .line 33
    :catch_1
    :cond_2
    :goto_0
    return-void
.end method

.method public final z0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->A1:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->T()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->s1:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/setting/CastActivity;->t1:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->u1:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->x1:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .line 44
    .line 45
    :catch_1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->x1:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->x1:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->v1:Lcom/mycompany/app/wview/WebCastView;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->w1:Landroidx/mediarouter/app/MediaRouteButton;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->y1:Landroid/view/View;

    .line 59
    .line 60
    :try_start_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->T()Landroidx/fragment/app/FragmentManager;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget v1, Lnet/kaki87/soul2/testing/R$id;->cast_mini_controller:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->B(I)Landroidx/fragment/app/Fragment;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->T()Landroidx/fragment/app/FragmentManager;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->g(Landroidx/fragment/app/Fragment;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    .line 85
    .line 86
    :catch_2
    :cond_3
    return-void
.end method
