.class public Lcom/mycompany/app/main/MainListView2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainListView2$ListPos;
    }
.end annotation


# instance fields
.field public A:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public A0:Lcom/mycompany/app/view/MyEditPure;

.field public B:Z

.field public B0:Lcom/mycompany/app/view/MyButtonImage;

.field public C:I

.field public C0:Lcom/mycompany/app/view/MyButtonImage;

.field public D:I

.field public D0:Lcom/mycompany/app/view/MyRoundView;

.field public E:Lcom/mycompany/app/view/MyScrollBar;

.field public E0:Z

.field public F:Lcom/mycompany/app/view/MyFadeImage;

.field public F0:Z

.field public G:Landroidx/appcompat/widget/AppCompatTextView;

.field public G0:Ljava/lang/CharSequence;

.field public H:Landroid/widget/RelativeLayout;

.field public H0:Landroid/widget/FrameLayout;

.field public I:Landroid/widget/FrameLayout;

.field public I0:Landroid/widget/FrameLayout;

.field public J:Landroid/view/View;

.field public J0:Landroid/widget/FrameLayout;

.field public K:Landroid/view/View;

.field public K0:Lcom/mycompany/app/wview/WebCastView;

.field public L:Landroid/widget/LinearLayout;

.field public L0:Landroidx/mediarouter/app/MediaRouteButton;

.field public M:Lcom/mycompany/app/view/MyLineText;

.field public M0:Landroid/widget/FrameLayout;

.field public N:Lcom/mycompany/app/view/MyLineText;

.field public N0:Landroid/view/View;

.field public O:Lcom/mycompany/app/view/MyLineText;

.field public O0:Z

.field public P:Landroid/animation/ValueAnimator;

.field public P0:I

.field public Q:Landroid/animation/ValueAnimator;

.field public Q0:Z

.field public R:Lcom/mycompany/app/view/MyCoverView;

.field public final R0:Ljava/lang/Runnable;

.field public S:Lcom/mycompany/app/list/ListTask;

.field public S0:I

.field public T:Lcom/mycompany/app/main/MainListAdapter2;

.field public T0:Z

.field public U:Z

.field public final U0:Ljava/lang/Runnable;

.field public V:I

.field public V0:Z

.field public W:I

.field public W0:Z

.field public X:I

.field public final X0:Ljava/lang/Runnable;

.field public Y:Ljava/util/HashMap;

.field public Y0:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:I

.field public a0:Z

.field public final b:Lcom/mycompany/app/main/MainActivity;

.field public b0:Z

.field public final c:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/view/MyPopupMenu;

.field public d:Z

.field public d0:Lcom/mycompany/app/view/MyPopupMenu;

.field public final e:I

.field public e0:Z

.field public final f:Z

.field public f0:Z

.field public g:Landroid/widget/RelativeLayout;

.field public g0:I

.field public final h:I

.field public h0:Z

.field public final i:I

.field public i0:Lcom/mycompany/app/dialog/DialogSetSort2;

.field public final j:Z

.field public j0:Lcom/mycompany/app/dialog/DialogWebBookEdit;

.field public final k:Z

.field public k0:Lcom/mycompany/app/dialog/DialogWebBookList;

.field public l:Lcom/mycompany/app/main/MainListListener;

.field public l0:Lcom/mycompany/app/dialog/DialogWebBookMove;

.field public m:Lcom/mycompany/app/fragment/FragmentTabPath;

.field public m0:Z

.field public n:Landroid/widget/FrameLayout;

.field public n0:Z

.field public o:Lcom/mycompany/app/view/MyHeaderView;

.field public o0:Lcom/mycompany/app/dialog/DialogDeleteBook;

.field public p:Lcom/mycompany/app/view/MyButtonImage;

.field public p0:Z

.field public q:Landroidx/appcompat/widget/AppCompatTextView;

.field public q0:Lcom/mycompany/app/dialog/DialogEditMemo;

.field public r:Landroid/widget/LinearLayout;

.field public r0:Lcom/mycompany/app/dialog/DialogSetDown;

.field public s:Lcom/mycompany/app/view/MyButtonImage;

.field public s0:Lcom/mycompany/app/dialog/DialogInfo;

.field public t:Lcom/mycompany/app/view/MyButtonImage;

.field public t0:Ljava/lang/String;

.field public u:Lcom/mycompany/app/view/MyButtonImage;

.field public u0:Ljava/lang/String;

.field public v:Lcom/mycompany/app/view/MyButtonImage;

.field public v0:Ljava/util/List;

.field public w:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Z

.field public x:Lcom/mycompany/app/view/MyButtonCheck;

.field public x0:Z

.field public y:Lcom/mycompany/app/view/MyRecyclerView;

.field public y0:Lcom/mycompany/app/view/MyDialogNormal;

.field public z:Lcom/mycompany/app/view/MyManagerLinear;

.field public z0:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/main/MainListView$ListViewConfig;Lcom/mycompany/app/main/MainListListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/main/MainListView2$20;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListView2$20;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->R0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/main/MainListView2$24;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListView2$24;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->U0:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/main/MainListView2$43;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListView2$43;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->X0:Ljava/lang/Runnable;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 28
    .line 29
    iget p1, p3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 32
    .line 33
    iget-boolean p2, p3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->d:Z

    .line 34
    .line 35
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainListView2;->f:Z

    .line 36
    .line 37
    iget v0, p3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 38
    .line 39
    iput v0, p0, Lcom/mycompany/app/main/MainListView2;->h:I

    .line 40
    .line 41
    iget v0, p3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->g:I

    .line 42
    .line 43
    iput v0, p0, Lcom/mycompany/app/main/MainListView2;->i:I

    .line 44
    .line 45
    iget-boolean v0, p3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->j:Z

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->j:Z

    .line 48
    .line 49
    iget-boolean v0, p3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->k:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->k:Z

    .line 52
    .line 53
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 54
    .line 55
    sget-boolean p4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 56
    .line 57
    iput-boolean p4, p0, Lcom/mycompany/app/main/MainListView2;->d:Z

    .line 58
    .line 59
    const/4 p4, 0x1

    .line 60
    iput-boolean p4, p0, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 61
    .line 62
    const/4 p4, -0x1

    .line 63
    iput p4, p0, Lcom/mycompany/app/main/MainListView2;->X:I

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->a0:Z

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->b0:Z

    .line 69
    .line 70
    iput p4, p0, Lcom/mycompany/app/main/MainListView2;->g0:I

    .line 71
    .line 72
    iget-object p3, p3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->e:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 73
    .line 74
    if-nez p3, :cond_0

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 78
    .line 79
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 80
    .line 81
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 82
    .line 83
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->n:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 86
    .line 87
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 88
    .line 89
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 98
    .line 99
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 100
    .line 101
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 102
    .line 103
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 104
    .line 105
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 106
    .line 107
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->F:Lcom/mycompany/app/view/MyFadeImage;

    .line 108
    .line 109
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 110
    .line 111
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 112
    .line 113
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->y:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->r:Landroid/widget/LinearLayout;

    .line 116
    .line 117
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->p:Lcom/mycompany/app/view/MyButtonCheck;

    .line 130
    .line 131
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 132
    .line 133
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->v:Landroid/widget/FrameLayout;

    .line 134
    .line 135
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->H0:Landroid/widget/FrameLayout;

    .line 136
    .line 137
    iget-object p4, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->w:Landroid/widget/FrameLayout;

    .line 138
    .line 139
    iput-object p4, p0, Lcom/mycompany/app/main/MainListView2;->I0:Landroid/widget/FrameLayout;

    .line 140
    .line 141
    const/16 p4, 0x25

    .line 142
    .line 143
    if-ne p1, p4, :cond_1

    .line 144
    .line 145
    iget-object p1, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->B:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 151
    .line 152
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    iget-object p1, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->z:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 155
    .line 156
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->m:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 157
    .line 158
    iget-object p1, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->A:Landroid/widget/RelativeLayout;

    .line 159
    .line 160
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->H:Landroid/widget/RelativeLayout;

    .line 161
    .line 162
    :goto_0
    if-nez p2, :cond_2

    .line 163
    .line 164
    iget-object p1, p3, Lcom/mycompany/app/main/MainListView$ListViewHolder;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 167
    .line 168
    if-eqz p1, :cond_2

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Lcom/mycompany/app/main/MainListView2;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/mycompany/app/view/MyRoundView;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyRoundView;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sget v3, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 32
    .line 33
    const/4 v4, -0x1

    .line 34
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 48
    .line 49
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 50
    .line 51
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 52
    .line 53
    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 57
    .line 58
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    .line 71
    .line 72
    const/4 v5, 0x4

    .line 73
    invoke-virtual {v6, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    .line 78
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 79
    .line 80
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 81
    .line 82
    invoke-direct {v5, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    const v7, 0x800005

    .line 86
    .line 87
    .line 88
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    .line 90
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 91
    .line 92
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    new-instance v5, Lcom/mycompany/app/view/MyEditPure;

    .line 99
    .line 100
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    const/16 v0, 0x10

    .line 104
    .line 105
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 110
    .line 111
    .line 112
    const/4 v7, 0x3

    .line 113
    invoke-virtual {v5, v7}, Landroid/view/View;->setTextDirection(I)V

    .line 114
    .line 115
    .line 116
    const/high16 v7, 0x41800000    # 16.0f

    .line 117
    .line 118
    invoke-virtual {v5, v0, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    .line 120
    .line 121
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 122
    .line 123
    const/16 v8, 0x1d

    .line 124
    .line 125
    if-lt v7, v8, :cond_2

    .line 126
    .line 127
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 128
    .line 129
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 130
    .line 131
    .line 132
    :cond_2
    const v7, 0x10000003

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    .line 147
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 148
    .line 149
    invoke-direct {v0, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 150
    .line 151
    .line 152
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 153
    .line 154
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 155
    .line 156
    add-int/2addr v4, v7

    .line 157
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 158
    .line 159
    .line 160
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 161
    .line 162
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 163
    .line 164
    add-int/2addr v4, v7

    .line 165
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 172
    .line 173
    iput-object v5, p0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 174
    .line 175
    iput-object v3, p0, Lcom/mycompany/app/main/MainListView2;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 176
    .line 177
    iput-object v6, p0, Lcom/mycompany/app/main/MainListView2;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 178
    .line 179
    iput-object v2, p0, Lcom/mycompany/app/main/MainListView2;->D0:Lcom/mycompany/app/view/MyRoundView;

    .line 180
    .line 181
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 182
    .line 183
    if-nez v0, :cond_3

    .line 184
    .line 185
    :goto_0
    return-void

    .line 186
    :cond_3
    new-instance v1, Lcom/mycompany/app/main/MainListView2$27;

    .line 187
    .line 188
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainListView2$27;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->V0:Z

    .line 197
    .line 198
    return-void
.end method

.method public static b(Lcom/mycompany/app/main/MainListView2;Ljava/util/List;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->f()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 17
    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    if-eqz p1, :cond_5

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListAdapter2;->B()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ne v0, v2, :cond_3

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move v0, v1

    .line 49
    :goto_0
    move v7, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move v7, v1

    .line 52
    :goto_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 55
    .line 56
    iget v4, p0, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 57
    .line 58
    new-instance v9, Lcom/mycompany/app/main/MainListView2$56;

    .line 59
    .line 60
    invoke-direct {v9, p0}, Lcom/mycompany/app/main/MainListView2$56;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v8, 0x1

    .line 65
    move-object v5, p1

    .line 66
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/dialog/DialogDeleteBook;-><init>(Landroid/app/Activity;ILjava/util/List;Ljava/lang/String;ZZLcom/mycompany/app/dialog/DialogDeleteBook$DeleteBookListener;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/mycompany/app/main/MainListView2;->o0:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 70
    .line 71
    new-instance p1, Lcom/mycompany/app/main/MainListView2$57;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainListView2$57;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainListView2;->p0:Z

    .line 80
    .line 81
    :cond_5
    :goto_2
    return-void
.end method

.method public static c(Lcom/mycompany/app/main/MainListView2;Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->g()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/list/ListTask;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    new-instance v6, Lcom/mycompany/app/main/MainListView2$52;

    .line 30
    .line 31
    invoke-direct {v6, p0, v3, p1}, Lcom/mycompany/app/main/MainListView2$52;-><init>(Lcom/mycompany/app/main/MainListView2;Ljava/lang/String;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    move-object v4, p1

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/dialog/DialogWebBookList;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/util/List;ILcom/mycompany/app/dialog/DialogWebBookList$BookListListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->k0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 40
    .line 41
    new-instance p1, Lcom/mycompany/app/main/MainListView2$53;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainListView2$53;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static d(Lcom/mycompany/app/main/MainListView2;Ljava/util/List;Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->h()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p3, v0, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq p3, v1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-eq p3, v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    if-eqz p1, :cond_6

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    if-nez p2, :cond_4

    .line 36
    .line 37
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/list/ListTask;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :cond_4
    move-object v4, p2

    .line 46
    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2;->t0:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 52
    .line 53
    new-instance v6, Lcom/mycompany/app/main/MainListView2$54;

    .line 54
    .line 55
    invoke-direct {v6, p0}, Lcom/mycompany/app/main/MainListView2$54;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 56
    .line 57
    .line 58
    move-object v3, p1

    .line 59
    move v5, p3

    .line 60
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/dialog/DialogWebBookMove;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->l0:Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 64
    .line 65
    new-instance p1, Lcom/mycompany/app/main/MainListView2$55;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainListView2$55;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainListView2;->m0:Z

    .line 75
    .line 76
    if-ne v5, v0, :cond_5

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    :cond_5
    iput-boolean p1, p0, Lcom/mycompany/app/main/MainListView2;->n0:Z

    .line 80
    .line 81
    :cond_6
    :goto_0
    return-void
.end method

.method public static v(Landroid/widget/TextView;Z)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const p1, -0x50506

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const p1, -0xe19938

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    const p1, -0x7f7f80

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const p1, -0x252526

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget v0, v0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v1

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2;->M:Lcom/mycompany/app/view/MyLineText;

    .line 23
    .line 24
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainListView2;->v(Landroid/widget/TextView;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2;->N:Lcom/mycompany/app/view/MyLineText;

    .line 28
    .line 29
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainListView2;->v(Landroid/widget/TextView;Z)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListAdapter2;->y()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 55
    .line 56
    iget-boolean v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v1, v0

    .line 62
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->O:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainListView2;->v(Landroid/widget/TextView;Z)V

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_2
    return-void
.end method

.method public final B(IZZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 8
    .line 9
    if-ne p2, v1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_1
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->B()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    const/16 v4, 0x8

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_3
    iget-boolean v6, v0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 37
    .line 38
    if-ne v6, p2, :cond_4

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_4
    iput-boolean p2, v0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    move v6, v5

    .line 48
    :goto_0
    if-ge v6, v1, :cond_b

    .line 49
    .line 50
    iget-object v7, v0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 51
    .line 52
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    if-nez v7, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    if-nez v7, :cond_6

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_6
    instance-of v8, v7, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 67
    .line 68
    if-eqz v8, :cond_a

    .line 69
    .line 70
    check-cast v7, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 71
    .line 72
    iget-object v8, v0, Lcom/mycompany/app/main/MainListAdapter2;->r:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 73
    .line 74
    if-eqz v8, :cond_a

    .line 75
    .line 76
    iget-object v8, v7, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    if-nez v8, :cond_7

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_7
    iget v8, v7, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 82
    .line 83
    invoke-virtual {v0, v8}, Lcom/mycompany/app/main/MainListAdapter2;->E(I)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_8

    .line 88
    .line 89
    iget-object v7, v7, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 90
    .line 91
    invoke-virtual {v7, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_8
    iget-object v7, v7, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    if-nez p2, :cond_9

    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/mycompany/app/view/MyButtonImage;->g()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_9
    invoke-virtual {v7, p2}, Lcom/mycompany/app/view/MyButtonImage;->f(Z)V

    .line 104
    .line 105
    .line 106
    :cond_a
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_b
    if-eqz p2, :cond_c

    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    new-array v1, v1, [Z

    .line 118
    .line 119
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 120
    .line 121
    iput v5, v0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 122
    .line 123
    invoke-virtual {v0, p1, v3}, Lcom/mycompany/app/main/MainListAdapter2;->G(IZ)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_c
    iput-object v2, v0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 128
    .line 129
    iput v5, v0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 130
    .line 131
    invoke-virtual {v0, v5}, Lcom/mycompany/app/main/MainListAdapter2;->H(Z)V

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->A()V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 138
    .line 139
    if-eqz p2, :cond_1e

    .line 140
    .line 141
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    if-eqz p2, :cond_d

    .line 144
    .line 145
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 146
    .line 147
    iget v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->B()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    :cond_d
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 161
    .line 162
    if-eqz p2, :cond_e

    .line 163
    .line 164
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->D()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {p2, v0, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 171
    .line 172
    .line 173
    :cond_e
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 174
    .line 175
    if-eqz p2, :cond_12

    .line 176
    .line 177
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    if-eqz p2, :cond_f

    .line 180
    .line 181
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2;->G0:Ljava/lang/CharSequence;

    .line 186
    .line 187
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 190
    .line 191
    invoke-static {p3, v5}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    :cond_f
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 199
    .line 200
    if-eqz p2, :cond_10

    .line 201
    .line 202
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    :cond_10
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 206
    .line 207
    if-eqz p2, :cond_11

    .line 208
    .line 209
    new-instance p3, Lcom/mycompany/app/main/MainListView2$44;

    .line 210
    .line 211
    invoke-direct {p3, p0}, Lcom/mycompany/app/main/MainListView2$44;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 215
    .line 216
    .line 217
    :cond_11
    move p3, v5

    .line 218
    :cond_12
    if-eqz p3, :cond_16

    .line 219
    .line 220
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->r:Landroid/widget/LinearLayout;

    .line 221
    .line 222
    if-eqz p2, :cond_13

    .line 223
    .line 224
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_out:I

    .line 225
    .line 226
    invoke-static {p1, p2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 227
    .line 228
    .line 229
    :cond_13
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 230
    .line 231
    if-eqz p2, :cond_14

    .line 232
    .line 233
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_out:I

    .line 234
    .line 235
    invoke-static {p1, p2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 236
    .line 237
    .line 238
    :cond_14
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 239
    .line 240
    if-eqz p2, :cond_15

    .line 241
    .line 242
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_in:I

    .line 243
    .line 244
    invoke-static {p1, p2, v0, v5}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 245
    .line 246
    .line 247
    :cond_15
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 248
    .line 249
    if-eqz p2, :cond_1a

    .line 250
    .line 251
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_in:I

    .line 252
    .line 253
    invoke-static {p1, p2, v0, v5}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_16
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->r:Landroid/widget/LinearLayout;

    .line 258
    .line 259
    if-eqz p1, :cond_17

    .line 260
    .line 261
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    :cond_17
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 265
    .line 266
    if-eqz p1, :cond_18

    .line 267
    .line 268
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    :cond_18
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 272
    .line 273
    if-eqz p1, :cond_19

    .line 274
    .line 275
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    :cond_19
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 279
    .line 280
    if-eqz p1, :cond_1a

    .line 281
    .line 282
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 283
    .line 284
    .line 285
    :cond_1a
    :goto_3
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainListView2;->k:Z

    .line 286
    .line 287
    if-eqz p1, :cond_2f

    .line 288
    .line 289
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->n:Landroid/widget/FrameLayout;

    .line 290
    .line 291
    if-nez p1, :cond_1b

    .line 292
    .line 293
    goto/16 :goto_5

    .line 294
    .line 295
    :cond_1b
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 296
    .line 297
    if-eqz p1, :cond_1c

    .line 298
    .line 299
    invoke-virtual {p0, p3}, Lcom/mycompany/app/main/MainListView2;->I(Z)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_1c
    iput-boolean p3, p0, Lcom/mycompany/app/main/MainListView2;->O0:Z

    .line 304
    .line 305
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 306
    .line 307
    if-nez p1, :cond_1d

    .line 308
    .line 309
    goto/16 :goto_5

    .line 310
    .line 311
    :cond_1d
    new-instance p2, Lcom/mycompany/app/main/MainListView2$12;

    .line 312
    .line 313
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainListView2$12;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_1e
    iget-boolean p2, p0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 321
    .line 322
    if-eqz p2, :cond_21

    .line 323
    .line 324
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 325
    .line 326
    if-eqz p2, :cond_1f

    .line 327
    .line 328
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView2;->G0:Ljava/lang/CharSequence;

    .line 329
    .line 330
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    :cond_1f
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 334
    .line 335
    if-eqz p2, :cond_20

    .line 336
    .line 337
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    :cond_20
    move p3, v5

    .line 341
    :cond_21
    if-eqz p3, :cond_25

    .line 342
    .line 343
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->r:Landroid/widget/LinearLayout;

    .line 344
    .line 345
    if-eqz p2, :cond_22

    .line 346
    .line 347
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_in:I

    .line 348
    .line 349
    invoke-static {p1, p2, v0, v5}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 350
    .line 351
    .line 352
    :cond_22
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 353
    .line 354
    if-eqz p2, :cond_23

    .line 355
    .line 356
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_in:I

    .line 357
    .line 358
    invoke-static {p1, p2, v0, v5}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 359
    .line 360
    .line 361
    :cond_23
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 362
    .line 363
    if-eqz p2, :cond_24

    .line 364
    .line 365
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_out:I

    .line 366
    .line 367
    invoke-static {p1, p2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 368
    .line 369
    .line 370
    :cond_24
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 371
    .line 372
    if-eqz p2, :cond_29

    .line 373
    .line 374
    sget v0, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_out:I

    .line 375
    .line 376
    invoke-static {p1, p2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 377
    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_25
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->r:Landroid/widget/LinearLayout;

    .line 381
    .line 382
    if-eqz p1, :cond_26

    .line 383
    .line 384
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    :cond_26
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 388
    .line 389
    if-eqz p1, :cond_27

    .line 390
    .line 391
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    :cond_27
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 395
    .line 396
    if-eqz p1, :cond_28

    .line 397
    .line 398
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    :cond_28
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 402
    .line 403
    if-eqz p1, :cond_29

    .line 404
    .line 405
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 406
    .line 407
    .line 408
    :cond_29
    :goto_4
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->H:Landroid/widget/RelativeLayout;

    .line 409
    .line 410
    if-nez p1, :cond_30

    .line 411
    .line 412
    if-nez p3, :cond_2a

    .line 413
    .line 414
    goto :goto_6

    .line 415
    :cond_2a
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 416
    .line 417
    if-eqz p1, :cond_2f

    .line 418
    .line 419
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 420
    .line 421
    if-eqz p1, :cond_2b

    .line 422
    .line 423
    goto :goto_5

    .line 424
    :cond_2b
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 425
    .line 426
    if-eqz p1, :cond_2c

    .line 427
    .line 428
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 429
    .line 430
    .line 431
    iput-object v2, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 432
    .line 433
    :cond_2c
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 434
    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    if-eqz p1, :cond_2d

    .line 440
    .line 441
    goto :goto_5

    .line 442
    :cond_2d
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 443
    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    sget p2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 453
    .line 454
    sget p3, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 455
    .line 456
    add-int/2addr p2, p3

    .line 457
    if-ne p1, p2, :cond_2e

    .line 458
    .line 459
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 460
    .line 461
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :cond_2e
    iput p1, p0, Lcom/mycompany/app/main/MainListView2;->S0:I

    .line 466
    .line 467
    iput-boolean v5, p0, Lcom/mycompany/app/main/MainListView2;->T0:Z

    .line 468
    .line 469
    filled-new-array {p1, p2}, [I

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 478
    .line 479
    const-wide/16 p2, 0xc8

    .line 480
    .line 481
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 482
    .line 483
    .line 484
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 485
    .line 486
    new-instance p2, Lcom/mycompany/app/main/MainListView2$22;

    .line 487
    .line 488
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainListView2$22;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 492
    .line 493
    .line 494
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 495
    .line 496
    new-instance p2, Lcom/mycompany/app/main/MainListView2$23;

    .line 497
    .line 498
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainListView2$23;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    .line 503
    .line 504
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 505
    .line 506
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 507
    .line 508
    .line 509
    :cond_2f
    :goto_5
    return-void

    .line 510
    :cond_30
    :goto_6
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->w()V

    .line 511
    .line 512
    .line 513
    return-void
.end method

.method public final C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    const/high16 v2, -0x1000000

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 16
    .line 17
    const v1, -0x50506

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    const v1, -0xc0c0c1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const v1, -0x70708

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    const v1, -0x1f1f20

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 87
    .line 88
    .line 89
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->D0:Lcom/mycompany/app/view/MyRoundView;

    .line 90
    .line 91
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 92
    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    const v1, -0xdededf

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    const/4 v1, -0x1

    .line 100
    :goto_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final D(IIZZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->m:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 7
    .line 8
    iget v2, p0, Lcom/mycompany/app/main/MainListView2;->i:I

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget v1, p0, Lcom/mycompany/app/main/MainListView2;->a:I

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const/high16 v1, 0x42000000    # 32.0f

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    float-to-int v0, v0

    .line 23
    iput v0, p0, Lcom/mycompany/app/main/MainListView2;->a:I

    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lcom/mycompany/app/main/MainListView2;->a:I

    .line 26
    .line 27
    add-int/2addr v2, v0

    .line 28
    :cond_2
    move-object v3, p0

    .line 29
    move v4, p1

    .line 30
    move v8, p2

    .line 31
    move v5, p3

    .line 32
    move v6, p4

    .line 33
    move v7, v2

    .line 34
    invoke-virtual/range {v3 .. v8}, Lcom/mycompany/app/main/MainListView2;->E(IZZII)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final E(IZZII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-gez p1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-nez p1, :cond_2

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 20
    .line 21
    new-instance p4, Lcom/mycompany/app/main/MainListView2$41;

    .line 22
    .line 23
    invoke-direct {p4, p0, p3, p2, p5}, Lcom/mycompany/app/main/MainListView2$41;-><init>(Lcom/mycompany/app/main/MainListView2;ZZI)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    new-instance v1, Lcom/mycompany/app/main/MainListView2$42;

    .line 31
    .line 32
    move-object v2, p0

    .line 33
    move v3, p1

    .line 34
    move v6, p2

    .line 35
    move v5, p3

    .line 36
    move v4, p4

    .line 37
    move v7, p5

    .line 38
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/main/MainListView2$42;-><init>(Lcom/mycompany/app/main/MainListView2;IIZZI)V

    .line 39
    .line 40
    .line 41
    const-wide/16 p1, 0xc8

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    return-void
.end method

.method public final F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const v1, -0xdededf

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, -0x1

    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainListView2;->f:Z

    .line 20
    .line 21
    if-eqz v0, :cond_b

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    const v2, -0x50506

    .line 26
    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    const v2, -0xc0c0c1

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 62
    .line 63
    .line 64
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_20:I

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 76
    .line 77
    .line 78
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    if-eqz v1, :cond_7

    .line 83
    .line 84
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_create_new_folder_dark_20:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_7
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_20:I

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 98
    .line 99
    .line 100
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    if-eqz v0, :cond_9

    .line 103
    .line 104
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_20:I

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 112
    .line 113
    .line 114
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 126
    .line 127
    .line 128
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 129
    .line 130
    if-eqz v0, :cond_15

    .line 131
    .line 132
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 133
    .line 134
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 135
    .line 136
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    const/high16 v2, -0x1000000

    .line 148
    .line 149
    if-eqz v0, :cond_c

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    .line 153
    .line 154
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    if-eqz v0, :cond_d

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    if-eqz v0, :cond_e

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    .line 167
    .line 168
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 169
    .line 170
    const/high16 v2, 0x21000000

    .line 171
    .line 172
    if-eqz v0, :cond_f

    .line 173
    .line 174
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 175
    .line 176
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 182
    .line 183
    .line 184
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 185
    .line 186
    if-eqz v0, :cond_10

    .line 187
    .line 188
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_20:I

    .line 189
    .line 190
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 196
    .line 197
    .line 198
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 199
    .line 200
    if-eqz v0, :cond_12

    .line 201
    .line 202
    if-eqz v1, :cond_11

    .line 203
    .line 204
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_create_new_folder_black_20:I

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_11
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_20:I

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 213
    .line 214
    .line 215
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 218
    .line 219
    .line 220
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 221
    .line 222
    if-eqz v0, :cond_13

    .line 223
    .line 224
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_20:I

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 232
    .line 233
    .line 234
    :cond_13
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    if-eqz v0, :cond_14

    .line 237
    .line 238
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 246
    .line 247
    .line 248
    :cond_14
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 249
    .line 250
    if-eqz v0, :cond_15

    .line 251
    .line 252
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 253
    .line 254
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 255
    .line 256
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 262
    .line 263
    .line 264
    :cond_15
    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainListView2;->f:Z

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const-string v0, "/"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final H(JZ)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3, v1}, Landroid/view/View;->setActivated(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {p3, v0, v2, p1, p2}, Lcom/mycompany/app/view/MyCoverView;->n(ZFJ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public final I(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->H:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 49
    .line 50
    sget v0, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 51
    .line 52
    add-int/2addr p1, v0

    .line 53
    :cond_4
    iput p1, p0, Lcom/mycompany/app/main/MainListView2;->P0:I

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->Q0:Z

    .line 57
    .line 58
    filled-new-array {p1, v0}, [I

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    const-wide/16 v0, 0xc8

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    new-instance v0, Lcom/mycompany/app/main/MainListView2$18;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListView2$18;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    new-instance v0, Lcom/mycompany/app/main/MainListView2$19;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListView2$19;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    .line 97
    .line 98
    :cond_5
    :goto_0
    return-void

    .line 99
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->w()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final J()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 16
    .line 17
    new-instance v1, Lcom/mycompany/app/main/MainListView2$37;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainListView2$37;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v2, 0x190

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final K(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainListView2;->G(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->b0:Z

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 23
    .line 24
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/mycompany/app/list/ListTask;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final L(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MainListView2;->G(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, p2, p1, v1}, Lcom/mycompany/app/list/ListTask;->m(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(Lcom/mycompany/app/wview/WebCastView;Landroidx/mediarouter/app/MediaRouteButton;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefMain;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->j:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_7

    .line 12
    .line 13
    if-eqz p2, :cond_7

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->K0:Lcom/mycompany/app/wview/WebCastView;

    .line 20
    .line 21
    if-nez v0, :cond_7

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->H0:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->I0:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_2
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->K0:Lcom/mycompany/app/wview/WebCastView;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2;->L0:Landroidx/mediarouter/app/MediaRouteButton;

    .line 36
    .line 37
    iput-object p3, p0, Lcom/mycompany/app/main/MainListView2;->N0:Landroid/view/View;

    .line 38
    .line 39
    :try_start_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->K0:Lcom/mycompany/app/wview/WebCastView;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, p2}, Lcom/mycompany/app/wview/WebCastView;->setMovable(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->H0:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->J0:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView2;->K0:Lcom/mycompany/app/wview/WebCastView;

    .line 53
    .line 54
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    invoke-virtual {p1, p3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->J0:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->N0:Landroid/view/View;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->I0:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2;->M0:Landroid/widget/FrameLayout;

    .line 73
    .line 74
    iget-object p3, p0, Lcom/mycompany/app/main/MainListView2;->N0:Landroid/view/View;

    .line 75
    .line 76
    const/4 v0, -0x2

    .line 77
    invoke-virtual {p1, p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->M0:Landroid/widget/FrameLayout;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->x()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->L0:Landroidx/mediarouter/app/MediaRouteButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {p2, p1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->a(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->L0:Landroidx/mediarouter/app/MediaRouteButton;

    .line 99
    .line 100
    new-instance p2, Lcom/mycompany/app/main/MainListView2$36;

    .line 101
    .line 102
    invoke-direct {p2, p0}, Lcom/mycompany/app/main/MainListView2$36;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->i0:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 109
    .line 110
    const/4 p2, 0x0

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetSort2;->dismiss()V

    .line 114
    .line 115
    .line 116
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2;->i0:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 117
    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->g()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->h()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->f()V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->q0:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 128
    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditMemo;->dismiss()V

    .line 132
    .line 133
    .line 134
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2;->q0:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 135
    .line 136
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->r0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 137
    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 141
    .line 142
    .line 143
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2;->r0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 144
    .line 145
    :cond_6
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2;->Y0:Ljava/lang/String;

    .line 146
    .line 147
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->s0:Lcom/mycompany/app/dialog/DialogInfo;

    .line 148
    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogInfo;->dismiss()V

    .line 152
    .line 153
    .line 154
    iput-object p2, p0, Lcom/mycompany/app/main/MainListView2;->s0:Lcom/mycompany/app/dialog/DialogInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :catch_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->r()V

    .line 158
    .line 159
    .line 160
    :cond_7
    :goto_1
    return-void

    .line 161
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->r()V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->p0:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->o0:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDeleteBook;->dismiss()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->o0:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->k0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookList;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->k0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->n0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->m0:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->J()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->m0:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->n0:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->l0:Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebBookMove;->dismiss()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->l0:Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->d0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->y0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object v2, v1, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 18
    .line 19
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/mycompany/app/main/MainListView2;->d0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->c0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->y0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-object v2, v1, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->b:Lcom/mycompany/app/main/MainActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 18
    .line 19
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/mycompany/app/main/MainListView2;->c0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->F()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v2, Lcom/mycompany/app/main/MainListView2$2;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    new-instance v2, Lcom/mycompany/app/main/MainListView2$3;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainListView2$3;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget v2, p0, Lcom/mycompany/app/main/MainListView2;->h:I

    .line 41
    .line 42
    if-lez v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    new-instance v2, Lcom/mycompany/app/main/MainListView2$4;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainListView2$4;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    new-instance v2, Lcom/mycompany/app/main/MainListView2$5;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainListView2$5;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    new-instance v2, Lcom/mycompany/app/main/MainListView2$6;

    .line 76
    .line 77
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainListView2$6;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    if-eqz v0, :cond_8

    .line 86
    .line 87
    const/16 v2, 0x25

    .line 88
    .line 89
    if-eq v1, v2, :cond_7

    .line 90
    .line 91
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainListView2;->f:Z

    .line 92
    .line 93
    if-nez v2, :cond_7

    .line 94
    .line 95
    sget-boolean v2, Lcom/mycompany/app/pref/PrefAlbum;->q:Z

    .line 96
    .line 97
    if-eqz v2, :cond_7

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 101
    .line 102
    .line 103
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    new-instance v2, Lcom/mycompany/app/main/MainListView2$7;

    .line 106
    .line 107
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainListView2$7;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 114
    .line 115
    if-eqz v0, :cond_9

    .line 116
    .line 117
    new-instance v2, Lcom/mycompany/app/main/MainListView2$8;

    .line 118
    .line 119
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainListView2$8;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 126
    .line 127
    new-instance v2, Lcom/mycompany/app/main/MainListView2$9;

    .line 128
    .line 129
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainListView2$9;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 136
    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    new-instance v2, Lcom/mycompany/app/main/MainListView2$10;

    .line 140
    .line 141
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainListView2$10;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 145
    .line 146
    .line 147
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->m:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 148
    .line 149
    if-eqz v0, :cond_b

    .line 150
    .line 151
    new-instance v2, Lcom/mycompany/app/main/MainListView2$11;

    .line 152
    .line 153
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainListView2$11;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lcom/mycompany/app/fragment/FragmentTabPath;->setListener(Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;)V

    .line 157
    .line 158
    .line 159
    :cond_b
    :goto_0
    new-instance v0, Lcom/mycompany/app/main/MainListView2$1;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListView2$1;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 165
    .line 166
    invoke-static {v2, v1, v0}, Lcom/mycompany/app/list/ListTask;->c(Landroid/content/Context;ILcom/mycompany/app/list/ListTask$ListTaskListener;)Lcom/mycompany/app/list/ListTask;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 171
    .line 172
    return-void
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    if-nez v0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_3
    :goto_1
    return v1
.end method

.method public final m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->i0:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->k0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->l0:Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->o0:Lcom/mycompany/app/dialog/DialogDeleteBook;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->q0:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->r0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    return v1

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->s0:Lcom/mycompany/app/dialog/DialogInfo;

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    return v1

    .line 37
    :cond_6
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->r()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->q()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->m:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-object v1, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->c:[Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->f:Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->m:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->t:Lcom/mycompany/app/view/MyButtonImage;

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 77
    .line 78
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 86
    .line 87
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 88
    .line 89
    if-eqz v0, :cond_9

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 95
    .line 96
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->F:Lcom/mycompany/app/view/MyFadeImage;

    .line 97
    .line 98
    if-eqz v0, :cond_a

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeImage;->e()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->F:Lcom/mycompany/app/view/MyFadeImage;

    .line 104
    .line 105
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->M:Lcom/mycompany/app/view/MyLineText;

    .line 106
    .line 107
    if-eqz v0, :cond_b

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->M:Lcom/mycompany/app/view/MyLineText;

    .line 113
    .line 114
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->N:Lcom/mycompany/app/view/MyLineText;

    .line 115
    .line 116
    if-eqz v0, :cond_c

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 119
    .line 120
    .line 121
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->N:Lcom/mycompany/app/view/MyLineText;

    .line 122
    .line 123
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->O:Lcom/mycompany/app/view/MyLineText;

    .line 124
    .line 125
    if-eqz v0, :cond_d

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 128
    .line 129
    .line 130
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->O:Lcom/mycompany/app/view/MyLineText;

    .line 131
    .line 132
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    if-eqz v0, :cond_e

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 137
    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 140
    .line 141
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 142
    .line 143
    if-eqz v0, :cond_f

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 146
    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 149
    .line 150
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 151
    .line 152
    if-eqz v0, :cond_10

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 155
    .line 156
    .line 157
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 158
    .line 159
    :cond_10
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->y0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->l:Lcom/mycompany/app/main/MainListListener;

    .line 162
    .line 163
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 164
    .line 165
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->n:Landroid/widget/FrameLayout;

    .line 166
    .line 167
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 168
    .line 169
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->r:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->G:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->H:Landroid/widget/RelativeLayout;

    .line 178
    .line 179
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 180
    .line 181
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->J:Landroid/view/View;

    .line 182
    .line 183
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->K:Landroid/view/View;

    .line 184
    .line 185
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->L:Landroid/widget/LinearLayout;

    .line 186
    .line 187
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->H0:Landroid/widget/FrameLayout;

    .line 188
    .line 189
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->I0:Landroid/widget/FrameLayout;

    .line 190
    .line 191
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 192
    .line 193
    if-eqz v0, :cond_12

    .line 194
    .line 195
    const/4 v2, 0x0

    .line 196
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainListAdapter2;->u:Z

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->d()I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iput v3, v0, Lcom/mycompany/app/main/MainListAdapter2;->v:I

    .line 203
    .line 204
    iget-object v3, v0, Lcom/mycompany/app/main/MainListAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    .line 205
    .line 206
    if-eqz v3, :cond_11

    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 209
    .line 210
    .line 211
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    .line 212
    .line 213
    :cond_11
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 214
    .line 215
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 216
    .line 217
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->h:[Z

    .line 218
    .line 219
    iput v2, v0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 220
    .line 221
    iput v2, v0, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 222
    .line 223
    iput v2, v0, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 224
    .line 225
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->q:Lcom/mycompany/app/main/MainListAdapter2$List2Listener;

    .line 226
    .line 227
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->r:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 228
    .line 229
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->o:Ljava/lang/String;

    .line 230
    .line 231
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->s:Ljava/lang/String;

    .line 232
    .line 233
    iput-object v1, v0, Lcom/mycompany/app/main/MainListAdapter2;->t:Ljava/util/regex/Pattern;

    .line 234
    .line 235
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 236
    .line 237
    :cond_12
    return-void
.end method

.method public final o(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-nez p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->k0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainListView2;->o(Z)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->i0:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetSort2;->dismiss()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->i0:Lcom/mycompany/app/dialog/DialogSetSort2;

    .line 33
    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->g()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->h()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->f()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->q0:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditMemo;->dismiss()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->q0:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 51
    .line 52
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->r0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->r0:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 60
    .line 61
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->Y0:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->s0:Lcom/mycompany/app/dialog/DialogInfo;

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogInfo;->dismiss()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/mycompany/app/main/MainListView2;->s0:Lcom/mycompany/app/dialog/DialogInfo;

    .line 71
    .line 72
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->j()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->i()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 79
    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/mycompany/app/list/ListTask;->a()V

    .line 83
    .line 84
    .line 85
    :cond_7
    iput-boolean v1, p0, Lcom/mycompany/app/main/MainListView2;->U:Z

    .line 86
    .line 87
    return-void
.end method

.method public final p(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->R:Lcom/mycompany/app/view/MyCoverView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->y:Lcom/mycompany/app/view/MyRecyclerView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2, v1, v1, v1}, Lcom/mycompany/app/list/ListTask;->i(ZZZ)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/main/MainListView2;->k0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/mycompany/app/dialog/DialogWebBookList;->w(Z)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->m:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainListAdapter2;->n:Z

    .line 27
    .line 28
    iput-object v3, v1, Lcom/mycompany/app/main/MainListAdapter2;->o:Ljava/lang/String;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v3, v0, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 40
    .line 41
    iput-object v3, v0, Lcom/mycompany/app/data/book/DataBookSearch;->b:Ljava/util/List;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/list/ListTask;->n()V

    .line 48
    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iput-object v3, p0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 66
    .line 67
    .line 68
    iput-object v3, p0, Lcom/mycompany/app/main/MainListView2;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 75
    .line 76
    .line 77
    iput-object v3, p0, Lcom/mycompany/app/main/MainListView2;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->D0:Lcom/mycompany/app/view/MyRoundView;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundView;->a()V

    .line 84
    .line 85
    .line 86
    iput-object v3, p0, Lcom/mycompany/app/main/MainListView2;->D0:Lcom/mycompany/app/view/MyRoundView;

    .line 87
    .line 88
    :cond_8
    iput-object v3, p0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 89
    .line 90
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->J0:Landroid/widget/FrameLayout;

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
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->J0:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->J0:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->J0:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->M0:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    :catch_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->M0:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->M0:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->K0:Lcom/mycompany/app/wview/WebCastView;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->L0:Landroidx/mediarouter/app/MediaRouteButton;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->N0:Landroid/view/View;

    .line 43
    .line 44
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/list/ListTask;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iget-object v3, p0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->N:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    sput-object v0, Lcom/mycompany/app/pref/PrefAlbum;->N:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "mWebBookSec"

    .line 28
    .line 29
    invoke-static {v2, v3, v1, v0}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->M:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    sput-object v0, Lcom/mycompany/app/pref/PrefAlbum;->M:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "mWebBookDir"

    .line 44
    .line 45
    invoke-static {v2, v3, v1, v0}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final t()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Lcom/mycompany/app/main/MainListView2;->B(IZZ)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->q()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v3, v1, v1}, Lcom/mycompany/app/list/ListTask;->l(Ljava/lang/String;ZZ)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return v2

    .line 32
    :cond_2
    return v1
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->J:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_b:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->K:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_b:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->L:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    const/high16 v1, -0x1000000

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->M:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->N:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 51
    .line 52
    .line 53
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->O:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    if-eqz v0, :cond_a

    .line 56
    .line 57
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->J:Landroid/view/View;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_g:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->K:Landroid/view/View;

    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_g:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->L:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    const v1, -0x70708

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->M:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->N:Lcom/mycompany/app/view/MyLineText;

    .line 99
    .line 100
    if-eqz v0, :cond_9

    .line 101
    .line 102
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 105
    .line 106
    .line 107
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->O:Lcom/mycompany/app/view/MyLineText;

    .line 108
    .line 109
    if-eqz v0, :cond_a

    .line 110
    .line 111
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 114
    .line 115
    .line 116
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->A()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 30
    .line 31
    iget-boolean v0, v0, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->I:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->J0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->L0:Landroidx/mediarouter/app/MediaRouteButton;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    const/high16 v2, -0x1000000

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const v1, -0x70708

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->L0:Landroidx/mediarouter/app/MediaRouteButton;

    .line 25
    .line 26
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const v2, -0x50506

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->c:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v2, v1, v0}, Lcom/mycompany/app/main/MainUtil;->h7(ILandroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_1
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget v2, v0, Lcom/mycompany/app/main/MainListAdapter2;->i:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->B()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2;->x:Lcom/mycompany/app/view/MyButtonCheck;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListAdapter2;->D()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public final z(Landroid/content/res/Configuration;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sput-boolean v2, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/mycompany/app/main/MainListView2;->d:Z

    .line 16
    .line 17
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    iput-boolean v3, p0, Lcom/mycompany/app/main/MainListView2;->d:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->j()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->i()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->F()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->u()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->C()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView2;->x()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->E:Lcom/mycompany/app/view/MyScrollBar;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyScrollBar;->l()V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/main/MainListView2;->k0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Lcom/mycompany/app/dialog/DialogWebBookList;->v(Landroid/content/res/Configuration;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return v0
.end method
