.class public Lcom/mycompany/app/view/MyFadeImage;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyFadeImage$EventHandler;
    }
.end annotation


# instance fields
.field public c:Z

.field public f:I

.field public g:I

.field public h:Landroid/animation/ValueAnimator;

.field public i:Landroid/animation/ValueAnimator;

.field public j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lcom/mycompany/app/view/MyFadeListener;

.field public q:F

.field public r:Z

.field public final s:Ljava/lang/Runnable;

.field public t:Z

.field public u:F

.field public v:Z

.field public final w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyFadeImage$3;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeImage$3;-><init>(Lcom/mycompany/app/view/MyFadeImage;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->s:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyFadeImage$7;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeImage$7;-><init>(Lcom/mycompany/app/view/MyFadeImage;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->w:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeImage;->c:Z

    .line 20
    .line 21
    const/16 p1, 0x190

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/view/MyFadeImage;->f:I

    .line 24
    .line 25
    const/16 p1, 0xbb8

    .line 26
    .line 27
    iput p1, p0, Lcom/mycompany/app/view/MyFadeImage;->g:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeImage;->k:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeImage;->l:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeImage;->m:Z

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeImage;->n:Z

    .line 37
    .line 38
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyFadeImage;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeImage;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyFadeImage;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeImage;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/view/MyFadeImage;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeImage;->setValAnimShow(F)V

    return-void
.end method

.method private setOnlyVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

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
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeImage;->setOnlyVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

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
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeImage;->n:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyFadeImage;->m:Z

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_4
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeImage;->o:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyFadeImage;->t:Z

    .line 45
    .line 46
    iput v2, p0, Lcom/mycompany/app/view/MyFadeImage;->u:F

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeImage;->v:Z

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    new-array v0, v0, [F

    .line 52
    .line 53
    aput v2, v0, v1

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v3, 0x1

    .line 57
    aput v1, v0, v3

    .line 58
    .line 59
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    iget v1, p0, Lcom/mycompany/app/view/MyFadeImage;->f:I

    .line 66
    .line 67
    int-to-float v1, v1

    .line 68
    mul-float/2addr v2, v1

    .line 69
    float-to-long v1, v2

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    new-instance v1, Lcom/mycompany/app/view/MyFadeImage$5;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyFadeImage$5;-><init>(Lcom/mycompany/app/view/MyFadeImage;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    new-instance v1, Lcom/mycompany/app/view/MyFadeImage$6;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyFadeImage$6;-><init>(Lcom/mycompany/app/view/MyFadeImage;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeImage;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyFadeImage;->o:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-ne v0, v2, :cond_3

    .line 32
    .line 33
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeImage;->o:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeImage;->l:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 47
    .line 48
    iget v2, p0, Lcom/mycompany/app/view/MyFadeImage;->g:I

    .line 49
    .line 50
    int-to-long v2, v2

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyFadeImage;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

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
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    :cond_1
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeImage;->p:Lcom/mycompany/app/view/MyFadeListener;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyFadeImage;->l:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyFadeImage;->m:Z

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeImage;->l:Z

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeImage;->o:Z

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 56
    .line 57
    iget v2, p0, Lcom/mycompany/app/view/MyFadeImage;->g:I

    .line 58
    .line 59
    int-to-long v2, v2

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    cmpl-float v3, v0, v2

    .line 77
    .line 78
    if-ltz v3, :cond_7

    .line 79
    .line 80
    :cond_5
    :goto_1
    return-void

    .line 81
    :cond_6
    const/4 v0, 0x0

    .line 82
    :cond_7
    iput v0, p0, Lcom/mycompany/app/view/MyFadeImage;->q:F

    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeImage;->r:Z

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    new-array v3, v3, [F

    .line 88
    .line 89
    aput v0, v3, v1

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    aput v2, v3, v1

    .line 93
    .line 94
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    sub-float/2addr v2, v0

    .line 101
    iget v0, p0, Lcom/mycompany/app/view/MyFadeImage;->f:I

    .line 102
    .line 103
    int-to-float v0, v0

    .line 104
    mul-float/2addr v2, v0

    .line 105
    float-to-long v2, v2

    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    new-instance v1, Lcom/mycompany/app/view/MyFadeImage$1;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyFadeImage$1;-><init>(Lcom/mycompany/app/view/MyFadeImage;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    new-instance v1, Lcom/mycompany/app/view/MyFadeImage$2;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyFadeImage$2;-><init>(Lcom/mycompany/app/view/MyFadeImage;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeImage;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setAnimTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyFadeImage;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setAutoHide(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeImage;->l:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeImage;->l:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    new-instance p1, Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeImage$EventHandler;-><init>(Lcom/mycompany/app/view/MyFadeImage;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 35
    .line 36
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_6

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

    .line 59
    .line 60
    iget v1, p0, Lcom/mycompany/app/view/MyFadeImage;->g:I

    .line 61
    .line 62
    int-to-long v1, v1

    .line 63
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public setBlocking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeImage;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInvisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeImage;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/mycompany/app/view/MyFadeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeImage;->p:Lcom/mycompany/app/view/MyFadeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyFadeImage;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeImage;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeImage;->h:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeImage;->i:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->j:Lcom/mycompany/app/view/MyFadeImage$EventHandler;

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
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeImage;->o:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeImage;->p:Lcom/mycompany/app/view/MyFadeListener;

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
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
