.class public Lcom/mycompany/app/dialog/DialogMenuMain;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;,
        Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerAdapter;,
        Lcom/mycompany/app/dialog/DialogMenuMain$ViewPagerHolder;
    }
.end annotation


# static fields
.field public static final synthetic G0:I


# instance fields
.field public A0:I

.field public B0:I

.field public C0:Lcom/google/android/material/tabs/TabLayout;

.field public D0:Lcom/mycompany/app/view/MyBarView;

.field public E0:Lcom/mycompany/app/view/MyPopupMenu;

.field public F0:Z

.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

.field public d0:[I

.field public e0:[I

.field public final f0:I

.field public final g0:Z

.field public h0:I

.field public final i0:Z

.field public final j0:I

.field public k0:I

.field public l0:Lcom/mycompany/app/view/MyDialogMenu;

.field public m0:Lcom/mycompany/app/view/MyButtonImage;

.field public n0:Lcom/mycompany/app/view/MyButtonImage;

.field public o0:Landroidx/appcompat/widget/AppCompatTextView;

.field public p0:Lcom/mycompany/app/view/MyButtonImage;

.field public q0:Lcom/mycompany/app/view/MyButtonImage;

.field public r0:Lcom/mycompany/app/view/MyButtonImage;

.field public s0:Lcom/mycompany/app/view/MyRecyclerView;

.field public t0:Lcom/mycompany/app/main/MenuListAdapter;

.field public u0:Lcom/mycompany/app/view/MyRecyclerView;

.field public v0:Lcom/mycompany/app/main/MenuIconAdapter;

.field public w0:Landroid/widget/FrameLayout;

.field public x0:Landroidx/viewpager2/widget/ViewPager2;

.field public y0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public z0:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;I[I[IZZIZLcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p9, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->c0:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->d0:[I

    .line 15
    .line 16
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->e0:[I

    .line 17
    .line 18
    iput-boolean p6, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->g0:Z

    .line 19
    .line 20
    iput p7, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->h0:I

    .line 21
    .line 22
    iput-boolean p8, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->i0:Z

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    if-eqz p4, :cond_0

    .line 26
    .line 27
    array-length p2, p4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p2, p1

    .line 30
    :goto_0
    iput p2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->f0:I

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget p1, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 36
    .line 37
    :goto_1
    iput p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 38
    .line 39
    sget p1, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 40
    .line 41
    iput p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->j0:I

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    const/4 p1, 0x5

    .line 46
    iput p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->j0:I

    .line 47
    .line 48
    sput p1, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 49
    .line 50
    :cond_2
    sget p1, Lcom/mycompany/app/pref/PrefMain;->A:I

    .line 51
    .line 52
    iput p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->k0:I

    .line 53
    .line 54
    sget p1, Lcom/mycompany/app/pref/PrefMain;->y:I

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    if-eq p1, p2, :cond_4

    .line 58
    .line 59
    const/4 p3, 0x2

    .line 60
    if-ne p1, p3, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->D:Z

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    :goto_2
    if-nez p5, :cond_5

    .line 67
    .line 68
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->C:Z

    .line 69
    .line 70
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyDialogBottom;->x:Z

    .line 71
    .line 72
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 73
    .line 74
    if-nez p1, :cond_6

    .line 75
    .line 76
    return-void

    .line 77
    :cond_6
    new-instance p2, Lcom/mycompany/app/dialog/DialogMenuMain$1;

    .line 78
    .line 79
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogMenuMain$1;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

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
    new-instance v0, Landroid/view/View;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/view/View;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_b:I

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    .line 35
    .line 36
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_b:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_left_g:I

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->round_bot_right_g:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->f0:I

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 59
    .line 60
    :goto_1
    new-instance v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 61
    .line 62
    sget v4, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 63
    .line 64
    invoke-direct {v3, v4, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    const v4, 0x800053

    .line 68
    .line 69
    .line 70
    iput v4, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 71
    .line 72
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 73
    .line 74
    new-instance v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 75
    .line 76
    sget v5, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 77
    .line 78
    invoke-direct {v4, v5, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    const v5, 0x800055

    .line 82
    .line 83
    .line 84
    iput v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 85
    .line 86
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 87
    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 89
    .line 90
    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->t:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 94
    .line 95
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    :catch_0
    :goto_2
    return-void
.end method

.method public final C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->l0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogMenuMain$20;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogMenuMain$20;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final D(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->h0:I

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->F0:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->F0:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogMenuMain$9;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogMenuMain$9;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final dismiss()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget v2, Lcom/mycompany/app/pref/PrefMain;->A:I

    .line 10
    .line 11
    iget v3, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->k0:I

    .line 12
    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    sput v3, Lcom/mycompany/app/pref/PrefMain;->A:I

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    const-string v4, "mMenuPage"

    .line 19
    .line 20
    invoke-static {v1, v2, v3, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 34
    .line 35
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->y0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 38
    .line 39
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->x0:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    .line 41
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->y0:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    if-eqz v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->f(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->l0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyDialogMenu;->c:Z

    .line 59
    .line 60
    iput-object v2, v1, Lcom/mycompany/app/view/MyDialogMenu;->h:Landroid/graphics/Paint;

    .line 61
    .line 62
    iput-object v2, v1, Lcom/mycompany/app/view/MyDialogMenu;->i:Landroid/graphics/RectF;

    .line 63
    .line 64
    iput-object v2, v1, Lcom/mycompany/app/view/MyDialogMenu;->j:Landroid/graphics/Paint;

    .line 65
    .line 66
    iput-object v2, v1, Lcom/mycompany/app/view/MyDialogMenu;->k:Landroid/graphics/RectF;

    .line 67
    .line 68
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->l0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 69
    .line 70
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 89
    .line 90
    if-eqz v0, :cond_8

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    if-eqz v0, :cond_9

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 107
    .line 108
    if-eqz v0, :cond_a

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 111
    .line 112
    .line 113
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->s0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 116
    .line 117
    if-eqz v0, :cond_b

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 120
    .line 121
    .line 122
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->s0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 123
    .line 124
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->t0:Lcom/mycompany/app/main/MenuListAdapter;

    .line 125
    .line 126
    if-eqz v0, :cond_c

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuListAdapter;->d()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iput v1, v0, Lcom/mycompany/app/main/MenuListAdapter;->f:I

    .line 133
    .line 134
    iput-object v2, v0, Lcom/mycompany/app/main/MenuListAdapter;->d:[I

    .line 135
    .line 136
    iput-object v2, v0, Lcom/mycompany/app/main/MenuListAdapter;->e:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 137
    .line 138
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->t0:Lcom/mycompany/app/main/MenuListAdapter;

    .line 139
    .line 140
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 141
    .line 142
    if-eqz v0, :cond_d

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 145
    .line 146
    .line 147
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 148
    .line 149
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->v0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 150
    .line 151
    if-eqz v0, :cond_e

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->D()V

    .line 154
    .line 155
    .line 156
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->v0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 157
    .line 158
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->D0:Lcom/mycompany/app/view/MyBarView;

    .line 159
    .line 160
    if-eqz v0, :cond_f

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyBarView;->d()V

    .line 163
    .line 164
    .line 165
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->D0:Lcom/mycompany/app/view/MyBarView;

    .line 166
    .line 167
    :cond_f
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 168
    .line 169
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 170
    .line 171
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->c0:Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;

    .line 172
    .line 173
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->d0:[I

    .line 174
    .line 175
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->e0:[I

    .line 176
    .line 177
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->w0:Landroid/widget/FrameLayout;

    .line 180
    .line 181
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogMenuMain;->C0:Lcom/google/android/material/tabs/TabLayout;

    .line 182
    .line 183
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 184
    .line 185
    .line 186
    return-void
.end method
