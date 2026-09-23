.class Lcom/mycompany/app/view/MyTabFrame$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyTabFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyTabFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame$10;->a:Lcom/mycompany/app/view/MyTabFrame;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame$10;->a:Lcom/mycompany/app/view/MyTabFrame;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

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
    iput-object v0, p1, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyTabFrame;->J:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyTabFrame;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lcom/mycompany/app/view/MyTabFrame;->H:Lcom/mycompany/app/view/MyFadeListener;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-interface {p1, v0}, Lcom/mycompany/app/view/MyFadeListener;->a(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame$10;->a:Lcom/mycompany/app/view/MyTabFrame;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

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
    new-instance v1, Lcom/mycompany/app/view/MyTabFrame$12;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/mycompany/app/view/MyTabFrame$12;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

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
