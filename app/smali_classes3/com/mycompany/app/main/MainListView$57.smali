.class Lcom/mycompany/app/main/MainListView$57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$57;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
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
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$57;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView;->q:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p1, Lcom/mycompany/app/main/MainListView;->s:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListAdapter;->u(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->q:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->q:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->q:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->q:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->q:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->q:Lcom/mycompany/app/main/MainListAdapter$GroupHolder;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter$GroupHolder;->f:Lcom/mycompany/app/view/MyButtonCheck;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
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
