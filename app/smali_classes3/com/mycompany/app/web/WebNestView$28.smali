.class Lcom/mycompany/app/web/WebNestView$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$28;->a:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestView$28;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebNestView;->F0:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/mycompany/app/web/WebNestView;->F0:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget v0, p1, Lcom/mycompany/app/web/WebNestView;->x2:I

    .line 12
    .line 13
    iget-boolean v1, p1, Lcom/mycompany/app/web/WebNestView;->y2:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/web/WebNestView;->l(IZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestView$28;->a:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebNestView;->F0:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/mycompany/app/web/WebNestView$30;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/mycompany/app/web/WebNestView$30;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
