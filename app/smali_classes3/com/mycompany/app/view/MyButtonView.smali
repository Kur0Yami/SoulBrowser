.class public Lcom/mycompany/app/view/MyButtonView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:Landroid/view/View$OnLongClickListener;

.field public B:F

.field public C:Z

.field public final D:Ljava/lang/Runnable;

.field public E:F

.field public F:Z

.field public final G:Ljava/lang/Runnable;

.field public c:Z

.field public f:Z

.field public g:F

.field public h:I

.field public i:I

.field public j:Landroid/graphics/Paint;

.field public k:F

.field public l:I

.field public m:I

.field public n:Landroid/graphics/Paint;

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;

.field public q:F

.field public r:I

.field public s:I

.field public t:Landroid/graphics/Paint;

.field public u:Ljava/lang/String;

.field public v:Landroid/graphics/Paint;

.field public w:F

.field public x:F

.field public y:Z

.field public z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyButtonView$3;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonView$3;-><init>(Lcom/mycompany/app/view/MyButtonView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->D:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyButtonView$7;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonView$7;-><init>(Lcom/mycompany/app/view/MyButtonView;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->G:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonView;->c:Z

    .line 20
    .line 21
    sget v0, Lcom/mycompany/app/main/MainApp;->X0:I

    .line 22
    .line 23
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->h:I

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 38
    .line 39
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 45
    .line 46
    iget v1, p0, Lcom/mycompany/app/view/MyButtonView;->h:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/mycompany/app/view/MyButtonView;->i:I

    .line 58
    .line 59
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->l:I

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const v1, -0x1f1f20

    .line 68
    .line 69
    .line 70
    if-eq v0, v1, :cond_1

    .line 71
    .line 72
    const/high16 v1, 0x21000000

    .line 73
    .line 74
    if-ne v0, v1, :cond_2

    .line 75
    .line 76
    :cond_1
    const v0, -0xc0c0c1

    .line 77
    .line 78
    .line 79
    iput v0, p0, Lcom/mycompany/app/view/MyButtonView;->l:I

    .line 80
    .line 81
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 92
    .line 93
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 99
    .line 100
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->l:I

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->m:I

    .line 112
    .line 113
    :cond_3
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyButtonView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonView;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyButtonView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonView;->setValPreScaleUp(F)V

    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->q:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->q:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 8
    .line 9
    move v2, v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

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
    iput-object v3, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    move v2, v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->invalidate()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->s:I

    .line 2
    .line 3
    const v1, -0xc0c0c1

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->r:I

    .line 9
    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    iput v1, p0, Lcom/mycompany/app/view/MyButtonView;->s:I

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->r:I

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->t:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->t:Landroid/graphics/Paint;

    .line 32
    .line 33
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->t:Landroid/graphics/Paint;

    .line 39
    .line 40
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->r:I

    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->t:Landroid/graphics/Paint;

    .line 47
    .line 48
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->s:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->t:Landroid/graphics/Paint;

    .line 56
    .line 57
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->invalidate()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->q:F

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
    iput v0, p0, Lcom/mycompany/app/view/MyButtonView;->E:F

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonView;->F:Z

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v3, v3, [F

    .line 28
    .line 29
    aput v0, v3, v2

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput v1, v3, v0

    .line 33
    .line 34
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    const-wide/16 v1, 0xc8

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/view/MyButtonView$5;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonView$5;-><init>(Lcom/mycompany/app/view/MyButtonView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/view/MyButtonView$6;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonView$6;-><init>(Lcom/mycompany/app/view/MyButtonView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonView;->c:Z

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

.method public final isPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/view/View;->isPressed()Z

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

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

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
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setActivated(Z)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    move v0, v1

    .line 30
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/high16 v4, 0x40a00000    # 5.0f

    .line 33
    .line 34
    if-eqz v3, :cond_5

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    iget v3, p0, Lcom/mycompany/app/view/MyButtonView;->i:I

    .line 39
    .line 40
    int-to-float v3, v3

    .line 41
    const/high16 v5, 0x3f800000    # 1.0f

    .line 42
    .line 43
    iget v6, p0, Lcom/mycompany/app/view/MyButtonView;->q:F

    .line 44
    .line 45
    sub-float/2addr v5, v6

    .line 46
    mul-float/2addr v5, v3

    .line 47
    mul-float/2addr v5, v4

    .line 48
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget v5, p0, Lcom/mycompany/app/view/MyButtonView;->i:I

    .line 53
    .line 54
    if-le v3, v5, :cond_3

    .line 55
    .line 56
    move v3, v5

    .line 57
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    .line 61
    .line 62
    iget v3, p0, Lcom/mycompany/app/view/MyButtonView;->w:F

    .line 63
    .line 64
    iget v5, p0, Lcom/mycompany/app/view/MyButtonView;->x:F

    .line 65
    .line 66
    iget v6, p0, Lcom/mycompany/app/view/MyButtonView;->g:F

    .line 67
    .line 68
    iget-object v7, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget v5, p0, Lcom/mycompany/app/view/MyButtonView;->i:I

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    .line 78
    .line 79
    iget v3, p0, Lcom/mycompany/app/view/MyButtonView;->w:F

    .line 80
    .line 81
    iget v5, p0, Lcom/mycompany/app/view/MyButtonView;->x:F

    .line 82
    .line 83
    iget v6, p0, Lcom/mycompany/app/view/MyButtonView;->g:F

    .line 84
    .line 85
    iget-object v7, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iget v2, p0, Lcom/mycompany/app/view/MyButtonView;->m:I

    .line 97
    .line 98
    int-to-float v2, v2

    .line 99
    iget v3, p0, Lcom/mycompany/app/view/MyButtonView;->q:F

    .line 100
    .line 101
    const v5, 0x3f4ccccd    # 0.8f

    .line 102
    .line 103
    .line 104
    sub-float/2addr v3, v5

    .line 105
    mul-float/2addr v3, v2

    .line 106
    mul-float/2addr v3, v4

    .line 107
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    .line 116
    .line 117
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->q:F

    .line 118
    .line 119
    iget v2, p0, Lcom/mycompany/app/view/MyButtonView;->w:F

    .line 120
    .line 121
    iget v3, p0, Lcom/mycompany/app/view/MyButtonView;->x:F

    .line 122
    .line 123
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 124
    .line 125
    .line 126
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->w:F

    .line 127
    .line 128
    iget v2, p0, Lcom/mycompany/app/view/MyButtonView;->x:F

    .line 129
    .line 130
    iget v3, p0, Lcom/mycompany/app/view/MyButtonView;->k:F

    .line 131
    .line 132
    iget-object v4, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 133
    .line 134
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    move v1, v2

    .line 139
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->t:Landroid/graphics/Paint;

    .line 140
    .line 141
    const/high16 v2, 0x40000000    # 2.0f

    .line 142
    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    iget v3, p0, Lcom/mycompany/app/view/MyButtonView;->r:I

    .line 146
    .line 147
    int-to-float v3, v3

    .line 148
    div-float/2addr v3, v2

    .line 149
    iget v4, p0, Lcom/mycompany/app/view/MyButtonView;->w:F

    .line 150
    .line 151
    iget v5, p0, Lcom/mycompany/app/view/MyButtonView;->x:F

    .line 152
    .line 153
    if-eqz v1, :cond_7

    .line 154
    .line 155
    iget v6, p0, Lcom/mycompany/app/view/MyButtonView;->k:F

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_7
    iget v6, p0, Lcom/mycompany/app/view/MyButtonView;->g:F

    .line 159
    .line 160
    :goto_4
    sub-float/2addr v6, v3

    .line 161
    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 162
    .line 163
    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_8
    if-eqz v1, :cond_9

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 173
    .line 174
    .line 175
    :cond_9
    :goto_5
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 179
    .line 180
    if-eqz v0, :cond_a

    .line 181
    .line 182
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->u:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_a

    .line 189
    .line 190
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->x:F

    .line 191
    .line 192
    iget-object v1, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    add-float/2addr v3, v1

    .line 205
    div-float/2addr v3, v2

    .line 206
    sub-float/2addr v0, v3

    .line 207
    iget-object v1, p0, Lcom/mycompany/app/view/MyButtonView;->u:Ljava/lang/String;

    .line 208
    .line 209
    iget v2, p0, Lcom/mycompany/app/view/MyButtonView;->w:F

    .line 210
    .line 211
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 212
    .line 213
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 214
    .line 215
    .line 216
    :cond_a
    :goto_6
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    const/high16 p3, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p1, p3

    .line 8
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->w:F

    .line 9
    .line 10
    int-to-float p2, p2

    .line 11
    div-float/2addr p2, p3

    .line 12
    iput p2, p0, Lcom/mycompany/app/view/MyButtonView;->x:F

    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyButtonView;->f:Z

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    sub-float p2, p1, p2

    .line 20
    .line 21
    iput p2, p0, Lcom/mycompany/app/view/MyButtonView;->g:F

    .line 22
    .line 23
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->k:F

    .line 24
    .line 25
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->z:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_9

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    if-eq v0, v3, :cond_2

    .line 33
    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq v0, v2, :cond_3

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 42
    .line 43
    if-eqz v0, :cond_8

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    float-to-int v0, v0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    float-to-int v2, v2

    .line 55
    sget v3, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 56
    .line 57
    invoke-static {v0, v2, v3, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_8

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->e()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->z:Landroid/view/View$OnClickListener;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    new-instance v0, Lcom/mycompany/app/view/MyButtonView$11;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonView$11;-><init>(Lcom/mycompany/app/view/MyButtonView;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->e()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 98
    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    const v0, 0x3f4ccccd    # 0.8f

    .line 108
    .line 109
    .line 110
    iput v0, p0, Lcom/mycompany/app/view/MyButtonView;->q:F

    .line 111
    .line 112
    iput v0, p0, Lcom/mycompany/app/view/MyButtonView;->B:F

    .line 113
    .line 114
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonView;->C:Z

    .line 115
    .line 116
    new-array v0, v2, [F

    .line 117
    .line 118
    fill-array-data v0, :array_0

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 126
    .line 127
    const-wide/16 v1, 0xc8

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    new-instance v1, Lcom/mycompany/app/view/MyButtonView$1;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonView$1;-><init>(Lcom/mycompany/app/view/MyButtonView;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    new-instance v1, Lcom/mycompany/app/view/MyButtonView$2;

    .line 150
    .line 151
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonView$2;-><init>(Lcom/mycompany/app/view/MyButtonView;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 162
    .line 163
    .line 164
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 167
    .line 168
    .line 169
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    return p1

    .line 174
    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonView;->y:Z

    .line 175
    .line 176
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    return p1

    .line 181
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBgNorColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->h:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->h:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->h:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->i:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setBgNorRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->g:F

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonView;->f:Z

    .line 5
    .line 6
    return-void
.end method

.method public setBgPreColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->l:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->l:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyButtonView;->l:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyButtonView;->m:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->c()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

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
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->c()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->z:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonView$9;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->A:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonView$10;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonView$10;-><init>(Lcom/mycompany/app/view/MyButtonView;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 23
    .line 24
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/high16 v3, 0x41e00000    # 28.0f

    .line 43
    .line 44
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 52
    .line 53
    const v2, -0x8a8a8b

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 60
    .line 61
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 62
    .line 63
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->u:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->u:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonView;->u:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_3

    .line 99
    .line 100
    :cond_2
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonView;->u:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->invalidate()V

    .line 103
    .line 104
    .line 105
    :cond_3
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonView;->c()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
