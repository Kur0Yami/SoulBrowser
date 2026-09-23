.class Lcom/mycompany/app/pull/MyPullView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/pull/MyPullView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyPullView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView$1;->a:Lcom/mycompany/app/pull/MyPullView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView$1;->a:Lcom/mycompany/app/pull/MyPullView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/mycompany/app/pull/MyPullView$5;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/mycompany/app/pull/MyPullView$5;-><init>(Lcom/mycompany/app/pull/MyPullView;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p1, Lcom/mycompany/app/pull/MyPullView;->t:Landroid/view/animation/Animation;

    .line 14
    .line 15
    const-wide/16 v1, 0x96

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/pull/MyPullView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Lcom/mycompany/app/pull/MyPullView;->t:Landroid/view/animation/Animation;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
