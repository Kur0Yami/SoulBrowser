.class public Lcom/mycompany/app/dialog/DialogCast;
.super Lcom/mycompany/app/view/MyDialogNormal;
.source "SourceFile"


# instance fields
.field public A:Landroid/widget/FrameLayout;

.field public B:Lcom/mycompany/app/wview/WebCastView;

.field public C:Landroidx/mediarouter/app/MediaRouteButton;

.field public D:Landroid/widget/FrameLayout;

.field public E:Landroid/view/View;

.field public F:Lcom/mycompany/app/view/MyButtonImage;

.field public w:Landroid/content/Context;

.field public x:Lcom/mycompany/app/view/MyMainRelative;

.field public y:Landroid/widget/FrameLayout;

.field public z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mycompany/app/view/MyDialogNormal;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->w:Landroid/content/Context;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->w:Landroid/content/Context;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->w:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogCast;->q()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->w:Landroid/content/Context;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->x:Lcom/mycompany/app/view/MyMainRelative;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->y:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->z:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogNormal;->dismiss()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    return v1
.end method

.method public final o(Lcom/mycompany/app/wview/WebCastView;Landroidx/mediarouter/app/MediaRouteButton;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->j:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->y:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_d

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->z:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_1
    if-eqz p1, :cond_c

    .line 22
    .line 23
    if-eqz p2, :cond_c

    .line 24
    .line 25
    if-nez p3, :cond_2

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->B:Lcom/mycompany/app/wview/WebCastView;

    .line 30
    .line 31
    if-nez v0, :cond_c

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->x:Lcom/mycompany/app/view/MyMainRelative;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_3
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->B:Lcom/mycompany/app/wview/WebCastView;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogCast;->C:Landroidx/mediarouter/app/MediaRouteButton;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogCast;->E:Landroid/view/View;

    .line 44
    .line 45
    :try_start_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->B:Lcom/mycompany/app/wview/WebCastView;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Lcom/mycompany/app/wview/WebCastView;->setMovable(Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->y:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->A:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogCast;->B:Lcom/mycompany/app/wview/WebCastView;

    .line 59
    .line 60
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 61
    .line 62
    const/4 v1, -0x1

    .line 63
    invoke-virtual {p1, p3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->A:Landroid/widget/FrameLayout;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->E:Landroid/view/View;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->z:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->D:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogCast;->E:Landroid/view/View;

    .line 81
    .line 82
    const/4 v0, -0x2

    .line 83
    invoke-virtual {p1, p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->D:Landroid/widget/FrameLayout;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->A:Landroid/widget/FrameLayout;

    .line 99
    .line 100
    if-eqz p1, :cond_a

    .line 101
    .line 102
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogCast;->C:Landroidx/mediarouter/app/MediaRouteButton;

    .line 103
    .line 104
    if-nez p2, :cond_5

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogCast;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 108
    .line 109
    const/high16 p3, -0x1000000

    .line 110
    .line 111
    if-eqz p2, :cond_7

    .line 112
    .line 113
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    move v1, p3

    .line 118
    :cond_6
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 123
    .line 124
    if-eqz p2, :cond_8

    .line 125
    .line 126
    move p2, p3

    .line 127
    goto :goto_0

    .line 128
    :cond_8
    const p2, -0x70708

    .line 129
    .line 130
    .line 131
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    .line 133
    .line 134
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->w:Landroid/content/Context;

    .line 135
    .line 136
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogCast;->C:Landroidx/mediarouter/app/MediaRouteButton;

    .line 137
    .line 138
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 139
    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    const p3, -0x50506

    .line 143
    .line 144
    .line 145
    :cond_9
    invoke-static {p3, p1, p2}, Lcom/mycompany/app/main/MainUtil;->h7(ILandroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 146
    .line 147
    .line 148
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->C:Landroidx/mediarouter/app/MediaRouteButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .line 150
    if-nez p1, :cond_b

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_b
    :try_start_1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogCast;->w:Landroid/content/Context;

    .line 154
    .line 155
    invoke-static {p2, p1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->a(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .line 157
    .line 158
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->C:Landroidx/mediarouter/app/MediaRouteButton;

    .line 159
    .line 160
    new-instance p2, Lcom/mycompany/app/dialog/DialogCast$1;

    .line 161
    .line 162
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogCast$1;-><init>(Lcom/mycompany/app/dialog/DialogCast;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :catch_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogCast;->q()V

    .line 170
    .line 171
    .line 172
    :cond_c
    :goto_3
    return-void

    .line 173
    :cond_d
    :goto_4
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogCast;->q()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogCast;->q()V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final p(Lcom/mycompany/app/view/MyMainRelative;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCast;->x:Lcom/mycompany/app/view/MyMainRelative;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogCast;->y:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogCast;->z:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->A:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->A:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->A:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCast;->A:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->D:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    .line 31
    :catch_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->D:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCast;->D:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCast;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCast;->B:Lcom/mycompany/app/wview/WebCastView;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCast;->C:Landroidx/mediarouter/app/MediaRouteButton;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogCast;->E:Landroid/view/View;

    .line 50
    .line 51
    return-void
.end method
