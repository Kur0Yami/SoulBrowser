.class public Lcom/mycompany/app/view/MyGesNoti;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/animation/ValueAnimator;

.field public i:Landroid/animation/ValueAnimator;

.field public j:Z

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Z

.field public n:F

.field public o:Z

.field public final p:Ljava/lang/Runnable;

.field public q:F

.field public r:Z

.field public final s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyGesNoti$4;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyGesNoti$4;-><init>(Lcom/mycompany/app/view/MyGesNoti;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyGesNoti;->p:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyGesNoti$8;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyGesNoti$8;-><init>(Lcom/mycompany/app/view/MyGesNoti;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyGesNoti;->s:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyGesNoti;->c:Z

    .line 20
    .line 21
    new-instance v0, Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->f:Landroid/graphics/RectF;

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->g:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->g:Landroid/graphics/Paint;

    .line 39
    .line 40
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->g:Landroid/graphics/Paint;

    .line 46
    .line 47
    const v1, -0x1e595616

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    iput v0, p0, Lcom/mycompany/app/view/MyGesNoti;->k:I

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_subdirectory_arrow_right_white_24:I

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->l:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyGesNoti;->m:Z

    .line 69
    .line 70
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyGesNoti;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mycompany/app/view/MyGesNoti;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyGesNoti;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyGesNoti;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/view/MyGesNoti;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyGesNoti;->setValAnimShow(F)V

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
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyGesNoti;->setOnlyVisibility(I)V

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
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyGesNoti;->j:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lcom/mycompany/app/view/MyGesNoti;->q:F

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyGesNoti;->r:Z

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    new-array v2, v2, [F

    .line 26
    .line 27
    aput v1, v2, v0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    aput v0, v2, v3

    .line 32
    .line 33
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    const/high16 v2, 0x43c80000    # 400.0f

    .line 40
    .line 41
    mul-float/2addr v1, v2

    .line 42
    float-to-long v1, v1

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    new-instance v1, Lcom/mycompany/app/view/MyGesNoti$6;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyGesNoti$6;-><init>(Lcom/mycompany/app/view/MyGesNoti;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    new-instance v1, Lcom/mycompany/app/view/MyGesNoti$7;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyGesNoti$7;-><init>(Lcom/mycompany/app/view/MyGesNoti;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyGesNoti;->j:Z

    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/view/MyGesNoti$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyGesNoti$1;-><init>(Lcom/mycompany/app/view/MyGesNoti;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-wide/16 v1, 0x190

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v1, 0x320

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyGesNoti;->j:Z

    .line 3
    .line 4
    iget v1, p0, Lcom/mycompany/app/view/MyGesNoti;->k:I

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/view/MyGesNoti;->k:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyGesNoti;->invalidate()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    cmpl-float v2, p1, v1

    .line 42
    .line 43
    if-ltz v2, :cond_4

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_3
    const/4 p1, 0x0

    .line 47
    :cond_4
    iput p1, p0, Lcom/mycompany/app/view/MyGesNoti;->n:F

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyGesNoti;->o:Z

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    new-array v2, v2, [F

    .line 53
    .line 54
    aput p1, v2, v0

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    aput v1, v2, v0

    .line 58
    .line 59
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    sub-float/2addr v1, p1

    .line 66
    const/high16 p1, 0x43c80000    # 400.0f

    .line 67
    .line 68
    mul-float/2addr v1, p1

    .line 69
    float-to-long v1, v1

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    new-instance v0, Lcom/mycompany/app/view/MyGesNoti$2;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyGesNoti$2;-><init>(Lcom/mycompany/app/view/MyGesNoti;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    new-instance v0, Lcom/mycompany/app/view/MyGesNoti$3;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyGesNoti$3;-><init>(Lcom/mycompany/app/view/MyGesNoti;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 98
    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 102
    .line 103
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyGesNoti;->c:Z

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

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyGesNoti;->h:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyGesNoti;->i:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyGesNoti;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->f:Landroid/graphics/RectF;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/view/MyGesNoti;->g:Landroid/graphics/Paint;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->l:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyGesNoti;->m:Z

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyGesNoti;->m:Z

    .line 32
    .line 33
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    sub-int/2addr v3, v1

    .line 40
    div-int/2addr v3, v2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    sub-int/2addr v4, v1

    .line 46
    div-int/2addr v4, v2

    .line 47
    add-int v5, v3, v1

    .line 48
    .line 49
    add-int/2addr v1, v4

    .line 50
    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget v0, p0, Lcom/mycompany/app/view/MyGesNoti;->k:I

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    const/high16 v3, -0x40800000    # -1.0f

    .line 57
    .line 58
    if-ne v0, v1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    div-int/2addr v0, v2

    .line 65
    int-to-float v0, v0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    div-int/2addr v1, v2

    .line 71
    int-to-float v1, v1

    .line 72
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 77
    .line 78
    if-ne v0, v2, :cond_5

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    div-int/2addr v0, v2

    .line 85
    int-to-float v0, v0

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    div-int/2addr v4, v2

    .line 91
    int-to-float v2, v4

    .line 92
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    const/4 v4, 0x3

    .line 97
    if-ne v0, v4, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    div-int/2addr v0, v2

    .line 104
    int-to-float v0, v0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    div-int/2addr v4, v2

    .line 110
    int-to-float v2, v4

    .line 111
    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyGesNoti;->l:Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyGesNoti;->f:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    int-to-float p2, p2

    .line 10
    const/4 p4, 0x0

    .line 11
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyGesNoti;->m:Z

    .line 16
    .line 17
    return-void
.end method
