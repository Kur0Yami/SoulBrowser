.class Lcom/mycompany/app/pull/MyPullView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/pull/MyPullView$3;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyPullView$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView$3$1;->c:Lcom/mycompany/app/pull/MyPullView$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView$3$1;->c:Lcom/mycompany/app/pull/MyPullView$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/pull/MyPullView$3;->a:Lcom/mycompany/app/pull/MyPullView;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/pull/MyPullView;->h:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/pull/MyPullView;->h:Z

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/pull/MyPullView;->A:Landroid/view/animation/Animation$AnimationListener;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    new-instance v2, Lcom/mycompany/app/pull/MyPullView$5;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/mycompany/app/pull/MyPullView$5;-><init>(Lcom/mycompany/app/pull/MyPullView;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, v0, Lcom/mycompany/app/pull/MyPullView;->t:Landroid/view/animation/Animation;

    .line 26
    .line 27
    const-wide/16 v3, 0x96

    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pull/MyPullView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/pull/MyPullView;->t:Landroid/view/animation/Animation;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
