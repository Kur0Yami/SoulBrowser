.class Lcom/mycompany/app/web/WebNestFrame$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebNestFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestFrame$16;->a:Lcom/mycompany/app/web/WebNestFrame;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebNestFrame$16;->a:Lcom/mycompany/app/web/WebNestFrame;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

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
    iput-object v0, p1, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p1, Lcom/mycompany/app/web/WebNestFrame;->E:I

    .line 13
    .line 14
    iget v0, p1, Lcom/mycompany/app/web/WebNestFrame;->e0:I

    .line 15
    .line 16
    iget-boolean v1, p1, Lcom/mycompany/app/web/WebNestFrame;->f0:Z

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/web/WebNestFrame;->s(IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestFrame$16;->a:Lcom/mycompany/app/web/WebNestFrame;

    .line 3
    .line 4
    iput p1, v0, Lcom/mycompany/app/web/WebNestFrame;->E:I

    .line 5
    .line 6
    iget-object p1, v0, Lcom/mycompany/app/web/WebNestFrame;->z:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lcom/mycompany/app/web/WebNestFrame$18;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebNestFrame$18;-><init>(Lcom/mycompany/app/web/WebNestFrame;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
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
