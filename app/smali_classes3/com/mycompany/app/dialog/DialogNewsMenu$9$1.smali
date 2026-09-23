.class Lcom/mycompany/app/dialog/DialogNewsMenu$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsMenu$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsMenu$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$9$1;->c:Lcom/mycompany/app/dialog/DialogNewsMenu$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsMenu$9$1;->c:Lcom/mycompany/app/dialog/DialogNewsMenu$9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsMenu$9;->c:Lcom/mycompany/app/dialog/DialogNewsMenu;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->p:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->m:I

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->h:Lcom/mycompany/app/view/MyRoundLinear;

    .line 25
    .line 26
    iget v2, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->n:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->q:F

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->r:Z

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    new-array v1, v1, [F

    .line 40
    .line 41
    fill-array-data v1, :array_0

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    const-wide/16 v2, 0xc8

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsMenu$11;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsMenu$11;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsMenu$12;

    .line 73
    .line 74
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsMenu$12;-><init>(Lcom/mycompany/app/dialog/DialogNewsMenu;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogNewsMenu;->o:Landroid/animation/ValueAnimator;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-void

    .line 86
    nop

    .line 87
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
