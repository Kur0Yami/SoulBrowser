.class public Lcom/mycompany/app/view/MyFadeRelative;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyFadeRelative$EventHandler;
    }
.end annotation


# instance fields
.field public c:Z

.field public f:I

.field public g:I

.field public h:Landroid/animation/ValueAnimator;

.field public i:Landroid/animation/ValueAnimator;

.field public j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lcom/mycompany/app/view/MyFadeListener;

.field public q:Lcom/mycompany/app/view/MyFadeLinear$MyVisibleListener;

.field public r:Lcom/mycompany/app/image/ImageSizeListener;

.field public s:F

.field public t:Z

.field public final u:Ljava/lang/Runnable;

.field public v:F

.field public w:Z

.field public final x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyFadeRelative$3;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeRelative$3;-><init>(Lcom/mycompany/app/view/MyFadeRelative;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->u:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyFadeRelative$7;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeRelative$7;-><init>(Lcom/mycompany/app/view/MyFadeRelative;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->x:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->c:Z

    .line 20
    .line 21
    const/16 p1, 0x190

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->f:I

    .line 24
    .line 25
    const/16 p1, 0xbb8

    .line 26
    .line 27
    iput p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->g:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->k:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->l:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->m:Z

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->n:Z

    .line 37
    .line 38
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyFadeRelative;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyFadeRelative;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/view/MyFadeRelative;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setValAnimShow(F)V

    return-void
.end method

.method private setOnlyVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimHide(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setOnlyVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-nez p1, :cond_2

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->n:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/16 p1, 0x8

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyFadeRelative;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->m:Z

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_6

    .line 48
    .line 49
    :goto_1
    return-void

    .line 50
    :cond_6
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->o:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->v:F

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->w:Z

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [F

    .line 62
    .line 63
    aput p1, v0, v1

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    const/4 v2, 0x1

    .line 67
    aput v1, v0, v2

    .line 68
    .line 69
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    iget v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->f:I

    .line 76
    .line 77
    int-to-float v1, v1

    .line 78
    mul-float/2addr p1, v1

    .line 79
    float-to-long v1, p1

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    new-instance v0, Lcom/mycompany/app/view/MyFadeRelative$5;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyFadeRelative$5;-><init>(Lcom/mycompany/app/view/MyFadeRelative;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    new-instance v0, Lcom/mycompany/app/view/MyFadeRelative$6;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyFadeRelative$6;-><init>(Lcom/mycompany/app/view/MyFadeRelative;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->o:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->h()V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public final e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v1
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v1
.end method

.method public g()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    .line 11
    .line 12
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    :cond_1
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeRelative;->p:Lcom/mycompany/app/view/MyFadeListener;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeRelative;->q:Lcom/mycompany/app/view/MyFadeLinear$MyVisibleListener;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeRelative;->r:Lcom/mycompany/app/image/ImageSizeListener;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->o:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->l:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 16
    .line 17
    iget v2, p0, Lcom/mycompany/app/view/MyFadeRelative;->g:I

    .line 18
    .line 19
    int-to-long v2, v2

    .line 20
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final i(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeRelative;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 15
    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->l:Z

    .line 19
    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->o:Z

    .line 23
    .line 24
    if-nez v0, :cond_6

    .line 25
    .line 26
    iget v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->g:I

    .line 27
    .line 28
    int-to-long v2, v0

    .line 29
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->l:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->m:Z

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_5

    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    .line 70
    .line 71
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->l:Z

    .line 72
    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->o:Z

    .line 76
    .line 77
    if-nez p1, :cond_6

    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 80
    .line 81
    iget v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->g:I

    .line 82
    .line 83
    int-to-long v2, v0

    .line 84
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    cmpl-float v2, p1, v0

    .line 101
    .line 102
    if-ltz v2, :cond_8

    .line 103
    .line 104
    :cond_6
    :goto_1
    return-void

    .line 105
    :cond_7
    const/4 p1, 0x0

    .line 106
    :cond_8
    iput p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->s:F

    .line 107
    .line 108
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->t:Z

    .line 109
    .line 110
    const/4 v2, 0x2

    .line 111
    new-array v2, v2, [F

    .line 112
    .line 113
    aput p1, v2, v1

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    aput v0, v2, v1

    .line 117
    .line 118
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    sub-float/2addr v0, p1

    .line 125
    iget p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->f:I

    .line 126
    .line 127
    int-to-float p1, p1

    .line 128
    mul-float/2addr v0, p1

    .line 129
    float-to-long v2, v0

    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 134
    .line 135
    new-instance v0, Lcom/mycompany/app/view/MyFadeRelative$1;

    .line 136
    .line 137
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyFadeRelative$1;-><init>(Lcom/mycompany/app/view/MyFadeRelative;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 144
    .line 145
    new-instance v0, Lcom/mycompany/app/view/MyFadeRelative$2;

    .line 146
    .line 147
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyFadeRelative$2;-><init>(Lcom/mycompany/app/view/MyFadeRelative;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyFadeRelative;->r:Lcom/mycompany/app/image/ImageSizeListener;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-interface {p3, p0, p1, p2}, Lcom/mycompany/app/image/ImageSizeListener;->a(Landroid/view/View;II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->q:Lcom/mycompany/app/view/MyFadeLinear$MyVisibleListener;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-interface {p1, p2}, Lcom/mycompany/app/view/MyFadeLinear$MyVisibleListener;->a(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public setAnimTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setAutoHide(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->l:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->l:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeRelative;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    new-instance p1, Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeRelative$EventHandler;-><init>(Lcom/mycompany/app/view/MyFadeRelative;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 35
    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeRelative;->e()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 49
    .line 50
    iget v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->g:I

    .line 51
    .line 52
    int-to-long v1, v1

    .line 53
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public setBlocking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInvisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/mycompany/app/view/MyFadeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->p:Lcom/mycompany/app/view/MyFadeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->r:Lcom/mycompany/app/image/ImageSizeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->h:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->i:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->j:Lcom/mycompany/app/view/MyFadeRelative$EventHandler;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eq v0, p1, :cond_4

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeRelative;->o:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeRelative;->p:Lcom/mycompany/app/view/MyFadeListener;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move v2, v1

    .line 50
    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/view/MyFadeListener;->b(ZZ)V

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public setVisibleListener(Lcom/mycompany/app/view/MyFadeLinear$MyVisibleListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeRelative;->q:Lcom/mycompany/app/view/MyFadeLinear$MyVisibleListener;

    .line 2
    .line 3
    return-void
.end method
