.class Lcom/mycompany/app/web/WebTransOcrCtrl$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebTransOcrCtrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl$13;->a:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl$13;->a:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebTransOcrCtrl;->z:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lcom/mycompany/app/web/WebTransOcrCtrl;->g:Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/mycompany/app/web/WebTransOcrCtrl$OcrCtrlListener;->a()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTransOcrCtrl$13;->a:Lcom/mycompany/app/web/WebTransOcrCtrl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebTransOcrCtrl;->y:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebTransOcrCtrl;->f:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v1, Lcom/mycompany/app/web/WebTransOcrCtrl$15;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/mycompany/app/web/WebTransOcrCtrl$15;-><init>(Lcom/mycompany/app/web/WebTransOcrCtrl;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
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
