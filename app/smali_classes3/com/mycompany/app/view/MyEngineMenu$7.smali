.class Lcom/mycompany/app/view/MyEngineMenu$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyEngineMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEngineMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu$7;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEngineMenu$7;->c:Lcom/mycompany/app/view/MyEngineMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->n:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->o:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->l:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->i:Lcom/mycompany/app/view/MyPopupList;

    .line 23
    .line 24
    iget v2, v0, Lcom/mycompany/app/view/MyEngineMenu;->m:I

    .line 25
    .line 26
    int-to-float v2, v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->q:F

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->r:Z

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    new-array v1, v1, [F

    .line 38
    .line 39
    fill-array-data v1, :array_0

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->n:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    const-wide/16 v2, 0xc8

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->n:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->n:Landroid/animation/ValueAnimator;

    .line 59
    .line 60
    new-instance v2, Lcom/mycompany/app/view/MyEngineMenu$8;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyEngineMenu$8;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/view/MyEngineMenu;->n:Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    new-instance v2, Lcom/mycompany/app/view/MyEngineMenu$9;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyEngineMenu$9;-><init>(Lcom/mycompany/app/view/MyEngineMenu;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v0, Lcom/mycompany/app/view/MyEngineMenu;->n:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    return-void

    .line 84
    nop

    .line 85
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
