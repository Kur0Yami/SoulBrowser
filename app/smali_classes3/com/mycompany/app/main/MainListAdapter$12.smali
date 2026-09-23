.class Lcom/mycompany/app/main/MainListAdapter$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter;Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$GroupHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$12;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainListAdapter$12;->a:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainListAdapter$12;->b:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$12;->a:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$12;->b:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter$12;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 15
    .line 16
    iget v1, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->m:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListAdapter;->u(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
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
