.class Lcom/mycompany/app/main/MainListAdapter$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter;Landroid/view/View;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$13;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainListAdapter$13;->a:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainListAdapter$13;->b:Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

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
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$13;->a:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$13;->b:Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 6
    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    iget v1, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->v:I

    .line 15
    .line 16
    iget-object v2, p0, Lcom/mycompany/app/main/MainListAdapter$13;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter;->l:[Z

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    if-ltz v1, :cond_2

    .line 24
    .line 25
    array-length v5, v3

    .line 26
    if-lt v1, v5, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v2, v2, Lcom/mycompany/app/main/MainListAdapter;->n:I

    .line 30
    .line 31
    if-ge v1, v2, :cond_3

    .line 32
    .line 33
    :cond_2
    :goto_0
    move v1, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    aget-boolean v1, v3, v1

    .line 36
    .line 37
    :goto_1
    const/4 v2, 0x4

    .line 38
    const/high16 v3, 0x3f800000    # 1.0f

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 46
    .line 47
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 55
    .line 56
    :goto_2
    invoke-virtual {v0, v4, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->e:Lcom/mycompany/app/view/MyRoundImage;

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 90
    .line 91
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    :cond_6
    :goto_3
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
