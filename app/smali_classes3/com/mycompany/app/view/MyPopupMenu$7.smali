.class Lcom/mycompany/app/view/MyPopupMenu$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu$7;->c:Lcom/mycompany/app/view/MyPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupMenu$7;->c:Lcom/mycompany/app/view/MyPopupMenu;

    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->g()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->q:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->u:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->r:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget v2, v0, Lcom/mycompany/app/view/MyPopupMenu;->s:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->w:F

    .line 42
    .line 43
    iput-boolean v3, v0, Lcom/mycompany/app/view/MyPopupMenu;->x:Z

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v1, v1, [F

    .line 47
    .line 48
    fill-array-data v1, :array_0

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    const-wide/16 v2, 0xc8

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu$8;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyPopupMenu$8;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu$9;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyPopupMenu$9;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v0, Lcom/mycompany/app/view/MyPopupMenu;->t:Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_0
    return-void

    .line 93
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
