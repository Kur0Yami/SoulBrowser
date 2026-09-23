.class Lcom/mycompany/app/view/MyGesNoti$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyGesNoti;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyGesNoti;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyGesNoti$7;->a:Lcom/mycompany/app/view/MyGesNoti;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyGesNoti$7;->a:Lcom/mycompany/app/view/MyGesNoti;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

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
    iput-object v0, p1, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyGesNoti;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti$7;->a:Lcom/mycompany/app/view/MyGesNoti;

    .line 3
    .line 4
    iput-boolean p1, v0, Lcom/mycompany/app/view/MyGesNoti;->j:Z

    .line 5
    .line 6
    iget-object p1, v0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

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
    new-instance v1, Lcom/mycompany/app/view/MyGesNoti$9;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyGesNoti$9;-><init>(Lcom/mycompany/app/view/MyGesNoti;)V

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
