.class public Lcom/mycompany/app/view/MyPopupMenu;
.super Lcom/mycompany/app/view/MyPopupWrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;
    }
.end annotation


# instance fields
.field public A:Z

.field public final B:Ljava/lang/Runnable;

.field public a:Lcom/mycompany/app/main/MainActivity;

.field public final b:Landroid/os/Handler;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:I

.field public f:I

.field public g:Ljava/util/ArrayList;

.field public final h:Z

.field public i:Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;

.field public j:Landroid/widget/FrameLayout;

.field public k:Lcom/mycompany/app/view/MyPopupList;

.field public l:Lcom/mycompany/app/view/MyPopupAdapter;

.field public m:I

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:Landroid/animation/ValueAnimator;

.field public u:Landroid/animation/ValueAnimator;

.field public v:Landroid/widget/PopupWindow;

.field public w:F

.field public x:Z

.field public final y:Ljava/lang/Runnable;

.field public z:F

# When true, popup items forward long-press to MyPopupListener with id+1000
.field public C:Z

# Optional header above the item list (favicon / title / action)
.field public D:Landroid/view/View;

# Header height in px when D is set
.field public E:I

# Root content view used for show/hide animation (list or header+list)
.field public F:Landroid/view/View;

# Extra string included in popup width measurement (e.g. header title)
.field public G:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu$10;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyPopupMenu$10;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->y:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu$15;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyPopupMenu$15;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->B:Ljava/lang/Runnable;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu;->b:Landroid/os/Handler;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/mycompany/app/view/MyPopupMenu;->c:Landroid/view/View;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/mycompany/app/view/MyPopupMenu;->d:Landroid/view/View;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/mycompany/app/view/MyPopupMenu;->g:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-boolean p5, p0, Lcom/mycompany/app/view/MyPopupMenu;->h:Z

    .line 34
    .line 35
    iput-object p6, p0, Lcom/mycompany/app/view/MyPopupMenu;->i:Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance p2, Lcom/mycompany/app/view/MyPopupMenu$1;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyPopupMenu$1;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static c(Lcom/mycompany/app/view/MyPopupMenu;F)V
    .locals 1

    invoke-virtual {p0}, Lcom/mycompany/app/view/MyPopupMenu;->g()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final f(Lcom/mycompany/app/view/MyPopupList;)Landroid/view/View;
    .locals 5

    if-nez p1, :cond_null

    const/4 p1, 0x0

    return-object p1

    :cond_null
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->D:Landroid/view/View;

    if-eqz v0, :cond_plain

    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    if-nez v0, :cond_wrap

    :cond_plain
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu;->F:Landroid/view/View;

    return-object p1

    :cond_wrap
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v2, p0, Lcom/mycompany/app/view/MyPopupMenu;->E:I

    if-lez v2, :cond_h

    goto :goto_h

    :cond_h
    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v0

    float-to-int v2, v0

    iput v2, p0, Lcom/mycompany/app/view/MyPopupMenu;->E:I

    :goto_h
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/mycompany/app/view/MyPopupMenu;->D:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setElevation(F)V

    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v1, v0, v0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->F:Landroid/view/View;

    return-object v1
.end method

.method public final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->F:Landroid/view/View;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->k:Lcom/mycompany/app/view/MyPopupList;

    return-object v0
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->k:Lcom/mycompany/app/view/MyPopupList;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->k:Lcom/mycompany/app/view/MyPopupList;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->v:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->v:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->i:Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;->a()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->i:Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->l:Lcom/mycompany/app/view/MyPopupAdapter;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iput-object v1, v0, Lcom/mycompany/app/view/MyPopupAdapter;->d:Ljava/util/ArrayList;

    .line 41
    .line 42
    iput-object v1, v0, Lcom/mycompany/app/view/MyPopupAdapter;->j:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->l:Lcom/mycompany/app/view/MyPopupAdapter;

    .line 45
    .line 46
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->c:Landroid/view/View;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->d:Landroid/view/View;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->g:Ljava/util/ArrayList;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->j:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->D:Landroid/view/View;

    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->F:Landroid/view/View;

    iput-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->G:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->E:I

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Lcom/mycompany/app/view/MyPopupMenu;->g()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->q:Z

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->b:Landroid/os/Handler;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu$12;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyPopupMenu$12;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->u:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_3
    iget v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->r:I

    .line 30
    .line 31
    int-to-float v1, v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget v1, p0, Lcom/mycompany/app/view/MyPopupMenu;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 41
    .line 42
    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    .line 45
    iput v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->z:F

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->A:Z

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    new-array v0, v0, [F

    .line 52
    .line 53
    fill-array-data v0, :array_0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->u:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    const-wide/16 v1, 0xc8

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->u:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->u:Landroid/animation/ValueAnimator;

    .line 73
    .line 74
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu$13;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyPopupMenu$13;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->u:Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu$14;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyPopupMenu$14;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->u:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final d(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->g:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    move v3, v1

    .line 20
    :cond_1
    if-ge v3, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    check-cast v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 29
    .line 30
    iget v5, v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 31
    .line 32
    if-ne v5, p1, :cond_1

    .line 33
    .line 34
    iget-boolean p1, v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->e:Z

    .line 35
    .line 36
    return p1

    .line 37
    :cond_2
    :goto_0
    return v1
.end method

.method public final e(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_ret

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_scan

    :cond_ret
    return-void

    :cond_scan
    const/4 v2, 0x0

    :goto_i
    if-ge v2, v1, :cond_ret

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    if-nez v3, :cond_next

    goto :goto_inc

    :cond_next
    iget v4, v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    if-ne v4, p1, :cond_inc

    iput-boolean p2, v3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->e:Z

    iget-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu;->l:Lcom/mycompany/app/view/MyPopupAdapter;

    if-eqz p1, :cond_ret

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    return-void

    :cond_inc
    :goto_inc
    add-int/lit8 v2, v2, 0x1

    goto :goto_i
.end method
