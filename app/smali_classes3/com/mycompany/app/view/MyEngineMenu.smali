.class public Lcom/mycompany/app/view/MyEngineMenu;
.super Lcom/mycompany/app/view/MyPopupWrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;
    }
.end annotation


# instance fields
.field public a:Lcom/mycompany/app/main/MainActivity;

.field public final b:Landroid/os/Handler;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Ljava/util/ArrayList;

.field public final f:Z

.field public g:Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;

.field public h:Landroid/widget/FrameLayout;

.field public i:Lcom/mycompany/app/view/MyPopupList;

.field public j:Lcom/mycompany/app/view/MyEngineAdapter;

.field public k:I

.field public l:I

.field public m:I

.field public n:Landroid/animation/ValueAnimator;

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/widget/PopupWindow;

.field public q:F

.field public r:Z

.field public final s:Ljava/lang/Runnable;

.field public t:F

.field public u:Z

.field public final v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;ZLcom/mycompany/app/view/MyEngineMenu$MyEngineListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/view/MyEngineMenu$10;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyEngineMenu$10;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->s:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/view/MyEngineMenu$14;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyEngineMenu$14;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->v:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->b:Landroid/os/Handler;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/mycompany/app/view/MyEngineMenu;->c:Landroid/view/View;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/mycompany/app/view/MyEngineMenu;->d:Landroid/view/View;

    .line 27
    .line 28
    iput-boolean p4, p0, Lcom/mycompany/app/view/MyEngineMenu;->f:Z

    .line 29
    .line 30
    iput-object p5, p0, Lcom/mycompany/app/view/MyEngineMenu;->g:Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;

    .line 31
    .line 32
    new-instance p2, Lcom/mycompany/app/view/MyEngineMenu$1;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyEngineMenu$1;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static c(Lcom/mycompany/app/view/MyEngineMenu;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->p:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->p:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->g:Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;->a()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->g:Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->j:Lcom/mycompany/app/view/MyEngineAdapter;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iput-object v1, v0, Lcom/mycompany/app/view/MyEngineAdapter;->d:Ljava/util/ArrayList;

    .line 41
    .line 42
    iput-object v1, v0, Lcom/mycompany/app/view/MyEngineAdapter;->h:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->j:Lcom/mycompany/app/view/MyEngineAdapter;

    .line 45
    .line 46
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->c:Landroid/view/View;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->d:Landroid/view/View;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->e:Ljava/util/ArrayList;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->h:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->o:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->l:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 17
    .line 18
    iget v1, p0, Lcom/mycompany/app/view/MyEngineMenu;->m:I

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 22
    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->t:F

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->u:Z

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [F

    .line 33
    .line 34
    fill-array-data v0, :array_0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->o:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    const-wide/16 v1, 0xc8

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->o:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->o:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    new-instance v1, Lcom/mycompany/app/view/MyEngineMenu$12;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyEngineMenu$12;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->o:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    new-instance v1, Lcom/mycompany/app/view/MyEngineMenu$13;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyEngineMenu$13;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->n:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->n:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu;->o:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    return-void

    .line 89
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
