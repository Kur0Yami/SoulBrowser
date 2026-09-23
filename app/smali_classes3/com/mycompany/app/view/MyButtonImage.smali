.class public Lcom/mycompany/app/view/MyButtonImage;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:F

.field public C:Z

.field public D:F

.field public E:F

.field public F:Z

.field public G:Landroid/view/View$OnClickListener;

.field public H:Landroid/view/View$OnLongClickListener;

.field public I:Landroid/animation/ValueAnimator;

.field public J:Landroid/animation/ValueAnimator;

.field public K:Z

.field public L:Z

.field public M:Lcom/mycompany/app/view/MyProgressDrawable;

.field public N:F

.field public O:F

.field public P:Z

.field public final Q:Ljava/lang/Runnable;

.field public R:F

.field public S:Z

.field public final T:Ljava/lang/Runnable;

.field public U:F

.field public V:Z

.field public final W:Ljava/lang/Runnable;

.field public a0:Z

.field public b0:F

.field public c:Z

.field public c0:Z

.field public final d0:Ljava/lang/Runnable;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:F

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Paint;

.field public m:Z

.field public n:F

.field public o:F

.field public p:I

.field public q:I

.field public r:Landroid/graphics/Paint;

.field public s:Landroid/animation/ValueAnimator;

.field public t:Landroid/animation/ValueAnimator;

.field public u:F

.field public v:I

.field public w:I

.field public x:Landroid/graphics/Paint;

.field public y:I

.field public z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage$3;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonImage$3;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->Q:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage$7;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonImage$7;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->T:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage$11;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonImage$11;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->W:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage$15;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonImage$15;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->d0:Ljava/lang/Runnable;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonImage;->c:Z

    .line 34
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    .line 37
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->N:F

    .line 38
    .line 39
    sget v0, Lcom/mycompany/app/main/MainApp;->X0:I

    .line 40
    .line 41
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->j:I

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    if-ne v0, v1, :cond_0

    .line 51
    .line 52
    const/high16 v0, -0x1000000

    .line 53
    .line 54
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->j:I

    .line 55
    .line 56
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 67
    .line 68
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 74
    .line 75
    iget v1, p0, Lcom/mycompany/app/view/MyButtonImage;->j:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->k:I

    .line 87
    .line 88
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->p:I

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    const v1, -0x1f1f20

    .line 97
    .line 98
    .line 99
    if-eq v0, v1, :cond_2

    .line 100
    .line 101
    const/high16 v1, 0x21000000

    .line 102
    .line 103
    if-ne v0, v1, :cond_3

    .line 104
    .line 105
    :cond_2
    const v0, -0xc0c0c1

    .line 106
    .line 107
    .line 108
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->p:I

    .line 109
    .line 110
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    .line 111
    .line 112
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 121
    .line 122
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 128
    .line 129
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->p:I

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->q:I

    .line 141
    .line 142
    :cond_4
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyButtonImage;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyButtonImage;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/view/MyButtonImage;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setValAnimShow(F)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/mycompany/app/view/MyButtonImage;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/mycompany/app/view/MyButtonImage;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setValPreScaleUp(F)V

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
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

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
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setOnlyVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->u:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->u:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonImage;->a0:Z

    .line 28
    .line 29
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->b0:F

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonImage;->c0:Z

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [F

    .line 36
    .line 37
    aput v0, v1, p1

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    const/4 v2, 0x1

    .line 41
    aput p1, v1, v2

    .line 42
    .line 43
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    const/high16 v1, 0x43c80000    # 400.0f

    .line 50
    .line 51
    mul-float/2addr v0, v1

    .line 52
    float-to-long v0, v0

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage$13;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonImage$13;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage$14;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonImage$14;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/4 v0, 0x0

    .line 36
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget v1, p0, Lcom/mycompany/app/view/MyButtonImage;->N:F

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    const v1, 0x3ecccccd    # 0.4f

    .line 46
    .line 47
    .line 48
    :goto_2
    cmpl-float v2, v0, v1

    .line 49
    .line 50
    if-ltz v2, :cond_5

    .line 51
    .line 52
    :goto_3
    return-void

    .line 53
    :cond_5
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->U:F

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonImage;->V:Z

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    new-array v3, v3, [F

    .line 60
    .line 61
    aput v0, v3, v2

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    aput v1, v3, v2

    .line 65
    .line 66
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    iget v2, p0, Lcom/mycompany/app/view/MyButtonImage;->N:F

    .line 73
    .line 74
    sub-float/2addr v2, v0

    .line 75
    const/high16 v0, 0x43c80000    # 400.0f

    .line 76
    .line 77
    mul-float/2addr v2, v0

    .line 78
    float-to-long v2, v2

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage$9;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonImage$9;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage$10;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonImage$10;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 46
    .line 47
    :cond_4
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->L:Z

    .line 49
    .line 50
    return-void
.end method

.method public final i()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 8
    .line 9
    move v2, v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v3, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    move v2, v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v1, v2

    .line 32
    :goto_0
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return v1
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->c:Z

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

.method public final isPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/ImageView;->isPressed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final j()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->h()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->x:Landroid/graphics/Paint;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->z:Landroid/graphics/Paint;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->G:Landroid/view/View$OnClickListener;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->H:Landroid/view/View$OnLongClickListener;

    .line 19
    .line 20
    return-void
.end method

.method public final k(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, p1, :cond_2

    .line 6
    .line 7
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->j:I

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 28
    .line 29
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 35
    .line 36
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->j:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->k:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 51
    .line 52
    :goto_0
    move p1, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    :goto_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->p:I

    .line 56
    .line 57
    if-eq v0, p2, :cond_5

    .line 58
    .line 59
    iput p2, p0, Lcom/mycompany/app/view/MyButtonImage;->p:I

    .line 60
    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    new-instance p1, Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 73
    .line 74
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 80
    .line 81
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 87
    .line 88
    iget p2, p0, Lcom/mycompany/app/view/MyButtonImage;->p:I

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->q:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move v2, p1

    .line 106
    :goto_2
    if-eqz v2, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 109
    .line 110
    .line 111
    :cond_6
    return-void
.end method

.method public final l(FZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->i:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonImage;->g:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyButtonImage;->h:Z

    .line 7
    .line 8
    return-void
.end method

.method public final m(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->w:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->v:I

    .line 6
    .line 7
    if-eq v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->w:I

    .line 12
    .line 13
    iput p2, p0, Lcom/mycompany/app/view/MyButtonImage;->v:I

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->x:Landroid/graphics/Paint;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->x:Landroid/graphics/Paint;

    .line 29
    .line 30
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->x:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->x:Landroid/graphics/Paint;

    .line 37
    .line 38
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->x:Landroid/graphics/Paint;

    .line 44
    .line 45
    iget p2, p0, Lcom/mycompany/app/view/MyButtonImage;->v:I

    .line 46
    .line 47
    int-to-float p2, p2

    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->x:Landroid/graphics/Paint;

    .line 52
    .line 53
    iget p2, p0, Lcom/mycompany/app/view/MyButtonImage;->w:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->x:Landroid/graphics/Paint;

    .line 61
    .line 62
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final n(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->i:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonImage;->g:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/view/MyButtonImage;->n:F

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonImage;->m:Z

    .line 9
    .line 10
    iput p2, p0, Lcom/mycompany/app/view/MyButtonImage;->o:F

    .line 11
    .line 12
    return-void
.end method

.method public final o(IZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->L:Z

    .line 2
    .line 3
    if-ne v0, p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyButtonImage;->L:Z

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    iget-object p2, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    new-instance p2, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/high16 v1, 0x40000000    # 2.0f

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-direct {p2, p0, v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sget p2, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 36
    .line 37
    sub-int/2addr p1, p2

    .line 38
    div-int/lit8 p1, p1, 0x2

    .line 39
    .line 40
    add-int/2addr p2, p1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sget v1, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 46
    .line 47
    sub-int/2addr v0, v1

    .line 48
    div-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    add-int/2addr v1, v0

    .line 51
    iget-object v2, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 52
    .line 53
    invoke-virtual {v2, p1, v0, p2, v1}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    iput-boolean p2, p1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 68
    .line 69
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->h()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    move v0, v1

    .line 25
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v4, 0x40a00000    # 5.0f

    .line 28
    .line 29
    if-eqz v3, :cond_5

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget-boolean v5, p0, Lcom/mycompany/app/view/MyButtonImage;->h:Z

    .line 34
    .line 35
    if-nez v5, :cond_4

    .line 36
    .line 37
    iget v3, p0, Lcom/mycompany/app/view/MyButtonImage;->k:I

    .line 38
    .line 39
    int-to-float v3, v3

    .line 40
    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    .line 42
    iget v6, p0, Lcom/mycompany/app/view/MyButtonImage;->u:F

    .line 43
    .line 44
    sub-float/2addr v5, v6

    .line 45
    mul-float/2addr v5, v3

    .line 46
    mul-float/2addr v5, v4

    .line 47
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget v5, p0, Lcom/mycompany/app/view/MyButtonImage;->k:I

    .line 52
    .line 53
    if-le v3, v5, :cond_3

    .line 54
    .line 55
    move v3, v5

    .line 56
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    .line 60
    .line 61
    iget v3, p0, Lcom/mycompany/app/view/MyButtonImage;->D:F

    .line 62
    .line 63
    iget v5, p0, Lcom/mycompany/app/view/MyButtonImage;->E:F

    .line 64
    .line 65
    iget v6, p0, Lcom/mycompany/app/view/MyButtonImage;->i:F

    .line 66
    .line 67
    iget-object v7, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget v5, p0, Lcom/mycompany/app/view/MyButtonImage;->k:I

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    .line 77
    .line 78
    iget v3, p0, Lcom/mycompany/app/view/MyButtonImage;->D:F

    .line 79
    .line 80
    iget v5, p0, Lcom/mycompany/app/view/MyButtonImage;->E:F

    .line 81
    .line 82
    iget v6, p0, Lcom/mycompany/app/view/MyButtonImage;->i:F

    .line 83
    .line 84
    iget-object v7, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    iget v2, p0, Lcom/mycompany/app/view/MyButtonImage;->q:I

    .line 96
    .line 97
    int-to-float v2, v2

    .line 98
    iget v3, p0, Lcom/mycompany/app/view/MyButtonImage;->u:F

    .line 99
    .line 100
    const v5, 0x3f4ccccd    # 0.8f

    .line 101
    .line 102
    .line 103
    sub-float/2addr v3, v5

    .line 104
    mul-float/2addr v3, v2

    .line 105
    mul-float/2addr v3, v4

    .line 106
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    .line 115
    .line 116
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->u:F

    .line 117
    .line 118
    iget v2, p0, Lcom/mycompany/app/view/MyButtonImage;->D:F

    .line 119
    .line 120
    iget v3, p0, Lcom/mycompany/app/view/MyButtonImage;->E:F

    .line 121
    .line 122
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 123
    .line 124
    .line 125
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->D:F

    .line 126
    .line 127
    iget v2, p0, Lcom/mycompany/app/view/MyButtonImage;->E:F

    .line 128
    .line 129
    iget v3, p0, Lcom/mycompany/app/view/MyButtonImage;->n:F

    .line 130
    .line 131
    iget-object v4, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 132
    .line 133
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    move v1, v2

    .line 138
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->x:Landroid/graphics/Paint;

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    iget v2, p0, Lcom/mycompany/app/view/MyButtonImage;->v:I

    .line 143
    .line 144
    int-to-float v2, v2

    .line 145
    const/high16 v3, 0x40000000    # 2.0f

    .line 146
    .line 147
    div-float/2addr v2, v3

    .line 148
    iget v3, p0, Lcom/mycompany/app/view/MyButtonImage;->D:F

    .line 149
    .line 150
    iget v4, p0, Lcom/mycompany/app/view/MyButtonImage;->E:F

    .line 151
    .line 152
    if-eqz v1, :cond_7

    .line 153
    .line 154
    iget v5, p0, Lcom/mycompany/app/view/MyButtonImage;->n:F

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    iget v5, p0, Lcom/mycompany/app/view/MyButtonImage;->i:F

    .line 158
    .line 159
    :goto_4
    sub-float/2addr v5, v2

    .line 160
    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_8
    if-eqz v1, :cond_9

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    .line 173
    .line 174
    :cond_9
    :goto_5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->L:Z

    .line 175
    .line 176
    if-eqz v0, :cond_a

    .line 177
    .line 178
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 179
    .line 180
    if-eqz v0, :cond_c

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_a
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    .line 189
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->z:Landroid/graphics/Paint;

    .line 190
    .line 191
    if-eqz v0, :cond_c

    .line 192
    .line 193
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyButtonImage;->C:Z

    .line 194
    .line 195
    if-eqz v1, :cond_b

    .line 196
    .line 197
    iget v1, p0, Lcom/mycompany/app/view/MyButtonImage;->D:F

    .line 198
    .line 199
    iget v2, p0, Lcom/mycompany/app/view/MyButtonImage;->B:F

    .line 200
    .line 201
    add-float/2addr v1, v2

    .line 202
    iget v3, p0, Lcom/mycompany/app/view/MyButtonImage;->E:F

    .line 203
    .line 204
    sub-float/2addr v3, v2

    .line 205
    iget v2, p0, Lcom/mycompany/app/view/MyButtonImage;->A:F

    .line 206
    .line 207
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_b
    iget v1, p0, Lcom/mycompany/app/view/MyButtonImage;->D:F

    .line 212
    .line 213
    iget v2, p0, Lcom/mycompany/app/view/MyButtonImage;->B:F

    .line 214
    .line 215
    sub-float/2addr v1, v2

    .line 216
    iget v3, p0, Lcom/mycompany/app/view/MyButtonImage;->E:F

    .line 217
    .line 218
    sub-float/2addr v3, v2

    .line 219
    iget v2, p0, Lcom/mycompany/app/view/MyButtonImage;->A:F

    .line 220
    .line 221
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 222
    .line 223
    .line 224
    :cond_c
    :goto_6
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p3, p1

    .line 5
    const/high16 p4, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p3, p4

    .line 8
    iput p3, p0, Lcom/mycompany/app/view/MyButtonImage;->D:F

    .line 9
    .line 10
    int-to-float v0, p2

    .line 11
    div-float/2addr v0, p4

    .line 12
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->E:F

    .line 13
    .line 14
    iget-boolean p4, p0, Lcom/mycompany/app/view/MyButtonImage;->g:Z

    .line 15
    .line 16
    if-nez p4, :cond_0

    .line 17
    .line 18
    const/4 p4, 0x0

    .line 19
    sub-float p4, p3, p4

    .line 20
    .line 21
    iput p4, p0, Lcom/mycompany/app/view/MyButtonImage;->i:F

    .line 22
    .line 23
    :cond_0
    iget-boolean p4, p0, Lcom/mycompany/app/view/MyButtonImage;->m:Z

    .line 24
    .line 25
    if-nez p4, :cond_1

    .line 26
    .line 27
    iput p3, p0, Lcom/mycompany/app/view/MyButtonImage;->n:F

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget p4, p0, Lcom/mycompany/app/view/MyButtonImage;->o:F

    .line 31
    .line 32
    invoke-static {p4, p3}, Ljava/lang/Math;->min(FF)F

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    iput p3, p0, Lcom/mycompany/app/view/MyButtonImage;->n:F

    .line 37
    .line 38
    :goto_0
    iget-object p3, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 39
    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    sget p4, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 43
    .line 44
    sub-int/2addr p1, p4

    .line 45
    div-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    add-int v0, p1, p4

    .line 48
    .line 49
    sub-int/2addr p2, p4

    .line 50
    div-int/lit8 p2, p2, 0x2

    .line 51
    .line 52
    add-int/2addr p4, p2

    .line 53
    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->G:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_b

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_b

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_b

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->K:Z

    .line 19
    .line 20
    if-nez v0, :cond_b

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    if-eq v0, v3, :cond_2

    .line 37
    .line 38
    if-eq v0, v2, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    if-eq v0, v2, :cond_3

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 46
    .line 47
    if-eqz v0, :cond_a

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    float-to-int v0, v0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    float-to-int v2, v2

    .line 59
    sget v3, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 60
    .line 61
    invoke-static {v0, v2, v3, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_a

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->q()V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->G:Landroid/view/View$OnClickListener;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage$19;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonImage$19;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->q()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 105
    .line 106
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 107
    .line 108
    if-nez v0, :cond_6

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_7
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->f:Z

    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    .line 121
    .line 122
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->u:F

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    const v0, 0x3f4ccccd    # 0.8f

    .line 129
    .line 130
    .line 131
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->u:F

    .line 132
    .line 133
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->O:F

    .line 134
    .line 135
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonImage;->P:Z

    .line 136
    .line 137
    new-array v0, v2, [F

    .line 138
    .line 139
    fill-array-data v0, :array_0

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 147
    .line 148
    const-wide/16 v1, 0xc8

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 159
    .line 160
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage$1;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonImage$1;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 169
    .line 170
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage$2;

    .line 171
    .line 172
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonImage$2;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 179
    .line 180
    if-eqz v0, :cond_9

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 183
    .line 184
    .line 185
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 188
    .line 189
    .line 190
    :cond_a
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    return p1

    .line 195
    :cond_b
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 196
    .line 197
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    return p1

    .line 202
    nop

    .line 203
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->u:F

    .line 12
    .line 13
    const v1, 0x3f4ccccd    # 0.8f

    .line 14
    .line 15
    .line 16
    cmpg-float v2, v0, v1

    .line 17
    .line 18
    if-gtz v2, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyButtonImage;->f:Z

    .line 22
    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    iput v1, p0, Lcom/mycompany/app/view/MyButtonImage;->u:F

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->R:F

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonImage;->S:Z

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    new-array v3, v3, [F

    .line 38
    .line 39
    aput v0, v3, v2

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    aput v1, v3, v0

    .line 43
    .line 44
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    const-wide/16 v1, 0xc8

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage$5;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonImage$5;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage$6;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonImage$6;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->s:Landroid/animation/ValueAnimator;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->t:Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final r(ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->g()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    if-eqz p2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyButtonImage;->f(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    const/16 p1, 0x8

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->N:F

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setBgNorColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->j:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->j:I

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 34
    .line 35
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->j:I

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->k:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->l:Landroid/graphics/Paint;

    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public setBgNorRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->i:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonImage;->g:Z

    .line 5
    .line 6
    return-void
.end method

.method public setBgPreColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->p:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->p:I

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 34
    .line 35
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->p:I

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->q:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->r:Landroid/graphics/Paint;

    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public setBgPreRadius(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->n:F

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->m:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->o:F

    .line 7
    .line 8
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->N:F

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->y:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->y:I

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setLoad(Z)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->o(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setMaxAlpha(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->N:F

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->N:F

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setNoAnim(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonImage;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNoClickable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->K:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonImage;->K:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public setNoti(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->z:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->z:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->z:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->z:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v0, -0x10000

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->C:Z

    .line 41
    .line 42
    const/high16 v0, 0x40400000    # 3.0f

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/mycompany/app/view/MyButtonImage;->A:F

    .line 49
    .line 50
    const/high16 v0, 0x41100000    # 9.0f

    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/mycompany/app/view/MyButtonImage;->B:F

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->z:Landroid/graphics/Paint;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->z:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->invalidate()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->G:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage$17;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonImage;->H:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage$18;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonImage$18;-><init>(Lcom/mycompany/app/view/MyButtonImage;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->L:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonImage;->L:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->M:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->I:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonImage;->J:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget v0, p0, Lcom/mycompany/app/view/MyButtonImage;->N:F

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const v0, 0x3ecccccd    # 0.4f

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

    .line 46
    .line 47
    .line 48
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonImage;->i()Z

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method
