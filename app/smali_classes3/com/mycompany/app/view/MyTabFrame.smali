.class public Lcom/mycompany/app/view/MyTabFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public A:Landroid/graphics/Paint;

.field public B:Landroid/animation/ValueAnimator;

.field public C:Landroid/animation/ValueAnimator;

.field public D:F

.field public E:Z

.field public F:Landroid/view/View$OnClickListener;

.field public G:Landroid/view/View$OnLongClickListener;

.field public H:Lcom/mycompany/app/view/MyFadeListener;

.field public I:Landroid/animation/ValueAnimator;

.field public J:Z

.field public K:F

.field public L:Z

.field public final M:Ljava/lang/Runnable;

.field public N:F

.field public O:Z

.field public final P:Ljava/lang/Runnable;

.field public Q:F

.field public R:Z

.field public final S:Ljava/lang/Runnable;

.field public final c:Z

.field public f:Z

.field public final g:I

.field public h:Landroid/graphics/RectF;

.field public i:I

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/RectF;

.field public l:F

.field public m:F

.field public n:I

.field public o:Landroid/graphics/Paint;

.field public p:I

.field public q:I

.field public r:Landroid/graphics/RectF;

.field public s:I

.field public t:Landroid/graphics/Paint;

.field public u:F

.field public v:F

.field public w:Z

.field public x:Landroid/graphics/RectF;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/view/MyTabFrame$3;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyTabFrame$3;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->M:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/view/MyTabFrame$7;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyTabFrame$7;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->P:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/view/MyTabFrame$11;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyTabFrame$11;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->S:Ljava/lang/Runnable;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyTabFrame;->c:Z

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyTabFrame;->f:Z

    .line 33
    .line 34
    sget p1, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 35
    .line 36
    div-int/lit8 p1, p1, 0x2

    .line 37
    .line 38
    iput p1, p0, Lcom/mycompany/app/view/MyTabFrame;->g:I

    .line 39
    .line 40
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 41
    .line 42
    int-to-float p1, p1

    .line 43
    const/high16 v0, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float v0, p1, v0

    .line 46
    .line 47
    iput v0, p0, Lcom/mycompany/app/view/MyTabFrame;->l:F

    .line 48
    .line 49
    iput p1, p0, Lcom/mycompany/app/view/MyTabFrame;->m:F

    .line 50
    .line 51
    new-instance p1, Landroid/graphics/RectF;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->x:Landroid/graphics/RectF;

    .line 57
    .line 58
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyTabFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyTabFrame;->setValAnimShow(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyTabFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyTabFrame;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/view/MyTabFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyTabFrame;->setValPreScaleUp(F)V

    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyTabFrame;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->invalidate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyTabFrame;->D:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyTabFrame;->D:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->j:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->h:Landroid/graphics/RectF;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    :cond_2
    iget v1, p0, Lcom/mycompany/app/view/MyTabFrame;->z:I

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    iget v2, p0, Lcom/mycompany/app/view/MyTabFrame;->D:F

    .line 40
    .line 41
    const v3, 0x3f4ccccd    # 0.8f

    .line 42
    .line 43
    .line 44
    sub-float/2addr v2, v3

    .line 45
    mul-float/2addr v2, v1

    .line 46
    const/high16 v1, 0x40a00000    # 5.0f

    .line 47
    .line 48
    mul-float/2addr v2, v1

    .line 49
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->x:Landroid/graphics/RectF;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->D:F

    .line 64
    .line 65
    iget v1, p0, Lcom/mycompany/app/view/MyTabFrame;->u:F

    .line 66
    .line 67
    iget v2, p0, Lcom/mycompany/app/view/MyTabFrame;->v:F

    .line 68
    .line 69
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->x:Landroid/graphics/RectF;

    .line 73
    .line 74
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 75
    .line 76
    int-to-float v1, v1

    .line 77
    iget-object v2, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->k:Landroid/graphics/RectF;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->o:Landroid/graphics/Paint;

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 97
    .line 98
    int-to-float v2, v2

    .line 99
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->r:Landroid/graphics/RectF;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    iget-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->t:Landroid/graphics/Paint;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    iget v2, p0, Lcom/mycompany/app/view/MyTabFrame;->l:F

    .line 111
    .line 112
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 8
    .line 9
    move v2, v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

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
    iput-object v3, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    move v2, v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->invalidate()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public final f(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->h:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyTabFrame;->g:I

    .line 7
    .line 8
    sub-int v2, p2, v1

    .line 9
    .line 10
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 11
    .line 12
    if-lt v2, v3, :cond_1

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sub-int v1, p2, v1

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    const/high16 v2, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr v1, v2

    .line 24
    :goto_0
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 25
    .line 26
    int-to-float v3, v2

    .line 27
    sub-int/2addr p1, v2

    .line 28
    int-to-float p1, p1

    .line 29
    int-to-float p2, p2

    .line 30
    sub-float/2addr p2, v1

    .line 31
    invoke-virtual {v0, v3, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final g(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->k:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->g:I

    .line 7
    .line 8
    sub-int v1, p2, v0

    .line 9
    .line 10
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 11
    .line 12
    if-lt v1, v2, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->m:F

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sub-int v0, p2, v0

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    const/high16 v1, 0x40000000    # 2.0f

    .line 21
    .line 22
    div-float/2addr v0, v1

    .line 23
    iget v2, p0, Lcom/mycompany/app/view/MyTabFrame;->l:F

    .line 24
    .line 25
    div-float/2addr v2, v1

    .line 26
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->k:Landroid/graphics/RectF;

    .line 31
    .line 32
    iget v2, p0, Lcom/mycompany/app/view/MyTabFrame;->m:F

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    sub-float/2addr p1, v2

    .line 36
    int-to-float p2, p2

    .line 37
    sub-float/2addr p2, v0

    .line 38
    invoke-virtual {v1, v2, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final h(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->q:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/view/MyTabFrame;->r:Landroid/graphics/RectF;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 11
    .line 12
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    mul-int/lit8 v2, v1, 0x2

    .line 16
    .line 17
    sub-int v2, p1, v2

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    int-to-float v0, v0

    .line 21
    div-float/2addr v2, v0

    .line 22
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v2, p0, Lcom/mycompany/app/view/MyTabFrame;->p:I

    .line 27
    .line 28
    mul-int/2addr v2, v0

    .line 29
    add-int/2addr v2, v1

    .line 30
    const/4 v3, 0x2

    .line 31
    if-ge v0, v3, :cond_1

    .line 32
    .line 33
    move v0, v3

    .line 34
    :cond_1
    add-int v3, v2, v0

    .line 35
    .line 36
    sub-int v1, p1, v1

    .line 37
    .line 38
    if-le v3, v1, :cond_2

    .line 39
    .line 40
    sub-int v2, v1, v0

    .line 41
    .line 42
    move v3, v1

    .line 43
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->c:Z

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    sub-int v2, p1, v2

    .line 48
    .line 49
    sub-int v3, p1, v3

    .line 50
    .line 51
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyTabFrame;->g:I

    .line 52
    .line 53
    sub-int v0, p2, p1

    .line 54
    .line 55
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 56
    .line 57
    if-lt v0, v1, :cond_4

    .line 58
    .line 59
    iget p1, p0, Lcom/mycompany/app/view/MyTabFrame;->m:F

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    sub-int p1, p2, p1

    .line 63
    .line 64
    int-to-float p1, p1

    .line 65
    const/high16 v0, 0x40000000    # 2.0f

    .line 66
    .line 67
    div-float/2addr p1, v0

    .line 68
    iget v1, p0, Lcom/mycompany/app/view/MyTabFrame;->l:F

    .line 69
    .line 70
    div-float/2addr v1, v0

    .line 71
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    :goto_0
    int-to-float p2, p2

    .line 76
    sub-float/2addr p2, p1

    .line 77
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->r:Landroid/graphics/RectF;

    .line 78
    .line 79
    int-to-float v0, v2

    .line 80
    iget v1, p0, Lcom/mycompany/app/view/MyTabFrame;->l:F

    .line 81
    .line 82
    sub-float v2, p2, v1

    .line 83
    .line 84
    int-to-float v3, v3

    .line 85
    add-float/2addr p2, v1

    .line 86
    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_1
    return-void
.end method

.method public final i(IZZ)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->n:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyTabFrame;->n:I

    .line 8
    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    sget p2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 14
    .line 15
    int-to-float p2, p2

    .line 16
    iput p2, p0, Lcom/mycompany/app/view/MyTabFrame;->l:F

    .line 17
    .line 18
    div-float/2addr p2, v0

    .line 19
    iput p2, p0, Lcom/mycompany/app/view/MyTabFrame;->m:F

    .line 20
    .line 21
    :cond_1
    const/4 p2, 0x1

    .line 22
    if-eqz p1, :cond_5

    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->k:Landroid/graphics/RectF;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    new-instance p1, Landroid/graphics/RectF;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->k:Landroid/graphics/RectF;

    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    int-to-float v2, p1

    .line 48
    div-float/2addr v2, v0

    .line 49
    iput v2, p0, Lcom/mycompany/app/view/MyTabFrame;->u:F

    .line 50
    .line 51
    int-to-float v2, v1

    .line 52
    div-float/2addr v2, v0

    .line 53
    iput v2, p0, Lcom/mycompany/app/view/MyTabFrame;->v:F

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/view/MyTabFrame;->g(II)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->o:Landroid/graphics/Paint;

    .line 59
    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    new-instance p1, Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->o:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->o:Landroid/graphics/Paint;

    .line 73
    .line 74
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->o:Landroid/graphics/Paint;

    .line 80
    .line 81
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->l:F

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->o:Landroid/graphics/Paint;

    .line 87
    .line 88
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->n:I

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->k:Landroid/graphics/RectF;

    .line 96
    .line 97
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->o:Landroid/graphics/Paint;

    .line 98
    .line 99
    :goto_0
    if-eqz p3, :cond_6

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->invalidate()V

    .line 102
    .line 103
    .line 104
    :cond_6
    return p2
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final isPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/FrameLayout;->isPressed()Z

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

.method public final j(IIZLcom/mycompany/app/view/MyFadeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    xor-int/lit8 v0, p3, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->J:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/view/MyTabFrame;->H:Lcom/mycompany/app/view/MyFadeListener;

    .line 11
    .line 12
    int-to-float p1, p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 14
    .line 15
    .line 16
    int-to-float p1, p2

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    const/4 p2, 0x0

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    iput p3, p0, Lcom/mycompany/app/view/MyTabFrame;->Q:F

    .line 26
    .line 27
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyTabFrame;->R:Z

    .line 28
    .line 29
    new-array p1, p1, [F

    .line 30
    .line 31
    fill-array-data p1, :array_0

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    .line 45
    .line 46
    iput p3, p0, Lcom/mycompany/app/view/MyTabFrame;->Q:F

    .line 47
    .line 48
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyTabFrame;->R:Z

    .line 49
    .line 50
    new-array p1, p1, [F

    .line 51
    .line 52
    fill-array-data p1, :array_1

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    const-wide/16 p2, 0xc8

    .line 67
    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    new-instance p2, Lcom/mycompany/app/view/MyTabFrame$9;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyTabFrame$9;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    new-instance p2, Lcom/mycompany/app/view/MyTabFrame$10;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyTabFrame$10;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->I:Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->D:F

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
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyTabFrame;->w:Z

    .line 22
    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    iput v1, p0, Lcom/mycompany/app/view/MyTabFrame;->D:F

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    iput v0, p0, Lcom/mycompany/app/view/MyTabFrame;->N:F

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyTabFrame;->O:Z

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
    iput-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    const-wide/16 v1, 0xc8

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    new-instance v1, Lcom/mycompany/app/view/MyTabFrame$5;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyTabFrame$5;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    new-instance v1, Lcom/mycompany/app/view/MyTabFrame$6;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyTabFrame$6;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->d()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p3, p1

    .line 5
    const/high16 p4, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float v0, p3, p4

    .line 8
    .line 9
    iput v0, p0, Lcom/mycompany/app/view/MyTabFrame;->u:F

    .line 10
    .line 11
    int-to-float v0, p2

    .line 12
    div-float p4, v0, p4

    .line 13
    .line 14
    iput p4, p0, Lcom/mycompany/app/view/MyTabFrame;->v:F

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyTabFrame;->f(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyTabFrame;->g(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyTabFrame;->h(II)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->x:Landroid/graphics/RectF;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->F:Landroid/view/View$OnClickListener;

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

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
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 42
    .line 43
    if-eqz v0, :cond_a

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->x:Landroid/graphics/RectF;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    float-to-int v2, v2

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    float-to-int v3, v3

    .line 57
    invoke-static {v0, v2, v3}, Lcom/mycompany/app/main/MainUtil;->B5(Landroid/graphics/RectF;II)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_a

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->k()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->F:Landroid/view/View$OnClickListener;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    new-instance v0, Lcom/mycompany/app/view/MyTabFrame$15;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyTabFrame$15;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 87
    .line 88
    if-eqz v0, :cond_a

    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->k()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->x:Landroid/graphics/RectF;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    float-to-int v4, v4

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    float-to-int v5, v5

    .line 108
    invoke-static {v0, v4, v5}, Lcom/mycompany/app/main/MainUtil;->B5(Landroid/graphics/RectF;II)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 118
    .line 119
    if-nez v0, :cond_6

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_7
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTabFrame;->w:Z

    .line 128
    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    const/high16 v0, 0x3f800000    # 1.0f

    .line 132
    .line 133
    iput v0, p0, Lcom/mycompany/app/view/MyTabFrame;->D:F

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->invalidate()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_8
    const v0, 0x3f4ccccd    # 0.8f

    .line 140
    .line 141
    .line 142
    iput v0, p0, Lcom/mycompany/app/view/MyTabFrame;->D:F

    .line 143
    .line 144
    iput v0, p0, Lcom/mycompany/app/view/MyTabFrame;->K:F

    .line 145
    .line 146
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyTabFrame;->L:Z

    .line 147
    .line 148
    new-array v0, v2, [F

    .line 149
    .line 150
    fill-array-data v0, :array_0

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

    .line 158
    .line 159
    const-wide/16 v1, 0xc8

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

    .line 165
    .line 166
    new-instance v1, Lcom/mycompany/app/view/MyTabFrame$1;

    .line 167
    .line 168
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyTabFrame$1;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

    .line 175
    .line 176
    new-instance v1, Lcom/mycompany/app/view/MyTabFrame$2;

    .line 177
    .line 178
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyTabFrame$2;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->C:Landroid/animation/ValueAnimator;

    .line 185
    .line 186
    if-eqz v0, :cond_9

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 189
    .line 190
    .line 191
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/view/MyTabFrame;->B:Landroid/animation/ValueAnimator;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 194
    .line 195
    .line 196
    :cond_a
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    return p1

    .line 201
    :cond_b
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyTabFrame;->E:Z

    .line 202
    .line 203
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    return p1

    .line 208
    nop

    .line 209
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBgPreColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->y:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyTabFrame;->y:I

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyTabFrame;->y:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyTabFrame;->z:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->A:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->e()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->e()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setNoAnim(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyTabFrame;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->F:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyTabFrame$13;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyTabFrame;->G:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyTabFrame$14;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyTabFrame$14;-><init>(Lcom/mycompany/app/view/MyTabFrame;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTabFrame;->e()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
