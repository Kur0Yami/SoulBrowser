.class Lcom/mycompany/app/dialog/DialogVideoMenu$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogVideoMenu$13;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoMenu$13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoMenu$13$1;->c:Lcom/mycompany/app/dialog/DialogVideoMenu$13;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoMenu$13$1;->c:Lcom/mycompany/app/dialog/DialogVideoMenu$13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogVideoMenu$13;->c:Lcom/mycompany/app/dialog/DialogVideoMenu;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->c:Lcom/mycompany/app/view/MyWebBody;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->p:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->q:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->n:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->g:Lcom/mycompany/app/view/MyRoundLinear;

    .line 30
    .line 31
    iget v2, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->o:I

    .line 32
    .line 33
    int-to-float v2, v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->r:F

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->s:Z

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    new-array v1, v1, [F

    .line 45
    .line 46
    fill-array-data v1, :array_0

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->p:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    const-wide/16 v2, 0xc8

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->p:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->p:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    new-instance v2, Lcom/mycompany/app/dialog/DialogVideoMenu$14;

    .line 68
    .line 69
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogVideoMenu$14;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->p:Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    new-instance v2, Lcom/mycompany/app/dialog/DialogVideoMenu$15;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogVideoMenu$15;-><init>(Lcom/mycompany/app/dialog/DialogVideoMenu;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogVideoMenu;->p:Landroid/animation/ValueAnimator;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_0
    return-void

    .line 91
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
