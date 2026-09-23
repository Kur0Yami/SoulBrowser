.class Lcom/mycompany/app/view/MySnackbar$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$15;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$15;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->V:Lcom/mycompany/app/view/MySnackbar$EventHandler;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    :cond_2
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->c()V

    .line 22
    .line 23
    .line 24
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 25
    .line 26
    int-to-float v1, v1

    .line 27
    const/4 v3, 0x0

    .line 28
    cmpg-float v4, v1, v3

    .line 29
    .line 30
    if-gtz v4, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MySnackbar;->n()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iput v1, v0, Lcom/mycompany/app/view/MySnackbar;->h0:F

    .line 37
    .line 38
    iput-boolean v2, v0, Lcom/mycompany/app/view/MySnackbar;->i0:Z

    .line 39
    .line 40
    const/4 v4, 0x2

    .line 41
    new-array v4, v4, [F

    .line 42
    .line 43
    aput v1, v4, v2

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    aput v3, v4, v1

    .line 47
    .line 48
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    const-wide/16 v2, 0xb4

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$23;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$23;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$24;

    .line 72
    .line 73
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySnackbar$24;-><init>(Lcom/mycompany/app/view/MySnackbar;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 84
    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    iput-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->Q:Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    :cond_4
    iget-object v0, v0, Lcom/mycompany/app/view/MySnackbar;->P:Landroid/animation/ValueAnimator;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
