.class public Lcom/mycompany/app/view/MyFadeView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyFadeView$EventHandler;
    }
.end annotation


# instance fields
.field public c:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:Landroid/animation/ValueAnimator;

.field public j:Landroid/animation/ValueAnimator;

.field public k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lcom/mycompany/app/view/MyFadeListener;

.field public r:F

.field public s:Z

.field public final t:Ljava/lang/Runnable;

.field public u:F

.field public v:Z

.field public final w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyFadeView$3;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeView$3;-><init>(Lcom/mycompany/app/view/MyFadeView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->t:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyFadeView$7;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeView$7;-><init>(Lcom/mycompany/app/view/MyFadeView;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->w:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->c:Z

    .line 20
    .line 21
    const/16 p1, 0x190

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/view/MyFadeView;->g:I

    .line 24
    .line 25
    const/16 p1, 0xbb8

    .line 26
    .line 27
    iput p1, p0, Lcom/mycompany/app/view/MyFadeView;->h:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->l:Z

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->m:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->n:Z

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->o:Z

    .line 37
    .line 38
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyFadeView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeView;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyFadeView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeView;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/view/MyFadeView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeView;->setValAnimShow(F)V

    return-void
.end method

.method private setOnlyVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

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
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeView;->setOnlyVisibility(I)V

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

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
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->f:Z

    .line 10
    .line 11
    if-nez v0, :cond_6

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    if-eqz p1, :cond_4

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->n:Z

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_5
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeView;->p:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lcom/mycompany/app/view/MyFadeView;->u:F

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeView;->v:Z

    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [F

    .line 55
    .line 56
    aput p1, v0, v1

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    const/4 v2, 0x1

    .line 60
    aput v1, v0, v2

    .line 61
    .line 62
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    iget v1, p0, Lcom/mycompany/app/view/MyFadeView;->g:I

    .line 69
    .line 70
    int-to-float v1, v1

    .line 71
    mul-float/2addr p1, v1

    .line 72
    float-to-long v1, p1

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    new-instance v0, Lcom/mycompany/app/view/MyFadeView$5;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyFadeView$5;-><init>(Lcom/mycompany/app/view/MyFadeView;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 87
    .line 88
    new-instance v0, Lcom/mycompany/app/view/MyFadeView$6;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyFadeView$6;-><init>(Lcom/mycompany/app/view/MyFadeView;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->o:Z

    .line 103
    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    const/4 p1, 0x4

    .line 107
    goto :goto_2

    .line 108
    :cond_7
    const/16 p1, 0x8

    .line 109
    .line 110
    :goto_2
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyFadeView;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeView;->p:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public final e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->p:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyFadeView;->m:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 16
    .line 17
    iget v2, p0, Lcom/mycompany/app/view/MyFadeView;->h:I

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

.method public final f(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

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
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->f:Z

    .line 10
    .line 11
    if-nez v0, :cond_8

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->m:Z

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->n:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_5

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 51
    .line 52
    if-eqz p1, :cond_9

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->m:Z

    .line 58
    .line 59
    if-eqz p1, :cond_9

    .line 60
    .line 61
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->p:Z

    .line 62
    .line 63
    if-nez p1, :cond_9

    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 66
    .line 67
    iget v0, p0, Lcom/mycompany/app/view/MyFadeView;->h:I

    .line 68
    .line 69
    int-to-long v2, v0

    .line 70
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    .line 80
    if-nez p1, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    cmpl-float v2, p1, v0

    .line 87
    .line 88
    if-ltz v2, :cond_7

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    const/4 p1, 0x0

    .line 92
    :cond_7
    iput p1, p0, Lcom/mycompany/app/view/MyFadeView;->r:F

    .line 93
    .line 94
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeView;->s:Z

    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    new-array v2, v2, [F

    .line 98
    .line 99
    aput p1, v2, v1

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    aput v0, v2, v1

    .line 103
    .line 104
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 109
    .line 110
    sub-float/2addr v0, p1

    .line 111
    iget p1, p0, Lcom/mycompany/app/view/MyFadeView;->g:I

    .line 112
    .line 113
    int-to-float p1, p1

    .line 114
    mul-float/2addr v0, p1

    .line 115
    float-to-long v2, v0

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    new-instance v0, Lcom/mycompany/app/view/MyFadeView$1;

    .line 122
    .line 123
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyFadeView$1;-><init>(Lcom/mycompany/app/view/MyFadeView;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 130
    .line 131
    new-instance v0, Lcom/mycompany/app/view/MyFadeView$2;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyFadeView$2;-><init>(Lcom/mycompany/app/view/MyFadeView;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_8
    :goto_1
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeView;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 149
    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->m:Z

    .line 153
    .line 154
    if-eqz v0, :cond_9

    .line 155
    .line 156
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->p:Z

    .line 157
    .line 158
    if-nez v0, :cond_9

    .line 159
    .line 160
    iget v0, p0, Lcom/mycompany/app/view/MyFadeView;->h:I

    .line 161
    .line 162
    int-to-long v2, v0

    .line 163
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    .line 165
    .line 166
    :cond_9
    :goto_2
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setAnimTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyFadeView;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setAutoHide(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->m:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->m:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    new-instance p1, Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeView$EventHandler;-><init>(Lcom/mycompany/app/view/MyFadeView;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 35
    .line 36
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

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
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 59
    .line 60
    iget v1, p0, Lcom/mycompany/app/view/MyFadeView;->h:I

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
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInvisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/mycompany/app/view/MyFadeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeView;->q:Lcom/mycompany/app/view/MyFadeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyFadeView;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeView;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

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
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeView;->p:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeView;->q:Lcom/mycompany/app/view/MyFadeListener;

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
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
