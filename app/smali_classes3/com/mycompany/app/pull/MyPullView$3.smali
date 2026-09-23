.class Lcom/mycompany/app/pull/MyPullView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/pull/MyPullView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView$3;->a:Lcom/mycompany/app/pull/MyPullView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView$3;->a:Lcom/mycompany/app/pull/MyPullView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/pull/MyPullView;->h:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/mycompany/app/pull/MyPullView;->e()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/16 v1, 0xff

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 19
    .line 20
    iput v1, v2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->u:I

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->start()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/pull/MyPullView;->g:Lcom/mycompany/app/pull/MyPullView$OnRefreshListener;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/mycompany/app/pull/MyPullView$OnRefreshListener;->a()V

    .line 30
    .line 31
    .line 32
    :cond_2
    new-instance v0, Lcom/mycompany/app/pull/MyPullView$3$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/pull/MyPullView$3$1;-><init>(Lcom/mycompany/app/pull/MyPullView$3;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0x258

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
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
