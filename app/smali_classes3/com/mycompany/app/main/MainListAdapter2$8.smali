.class Lcom/mycompany/app/main/MainListAdapter2$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter2;Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter2$8;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainListAdapter2$8;->a:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainListAdapter2$8;->b:Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

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
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter2$8;->a:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter2$8;->b:Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2$8;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 15
    .line 16
    iget v1, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->H:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListAdapter2;->C(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 34
    .line 35
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->y:Lcom/mycompany/app/view/MyRoundImage;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter2$MainListHolder;->z:Lcom/mycompany/app/view/MyRoundImage;

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
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
