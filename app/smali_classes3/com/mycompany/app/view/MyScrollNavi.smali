.class public Lcom/mycompany/app/view/MyScrollNavi;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:I

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Z

.field public j:I

.field public k:F

.field public l:F

.field public m:I

.field public n:I

.field public o:I

.field public p:Landroid/animation/ValueAnimator;

.field public q:F

.field public r:F

.field public s:F

.field public t:Z

.field public final u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyScrollNavi$3;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyScrollNavi$3;-><init>(Lcom/mycompany/app/view/MyScrollNavi;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->u:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyScrollNavi;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mycompany/app/view/MyScrollNavi;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyScrollNavi;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyScrollNavi;->setValAnimNormal(F)V

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

.method private setValAnimNormal(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->q:F

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->r:F

    .line 4
    .line 5
    sub-float v0, p1, v0

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    div-float/2addr v0, v1

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    sub-float/2addr v1, v0

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->m:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyScrollNavi;->i:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    neg-int v2, v0

    .line 23
    int-to-float v2, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    int-to-float v2, v0

    .line 26
    :goto_0
    sub-float v3, v2, v1

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-direct {p0, v0}, Lcom/mycompany/app/view/MyScrollNavi;->setOnlyVisibility(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iput v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->q:F

    .line 45
    .line 46
    iput v3, p0, Lcom/mycompany/app/view/MyScrollNavi;->r:F

    .line 47
    .line 48
    iput v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->s:F

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    iput-boolean v4, p0, Lcom/mycompany/app/view/MyScrollNavi;->t:Z

    .line 52
    .line 53
    const/4 v5, 0x2

    .line 54
    new-array v5, v5, [F

    .line 55
    .line 56
    aput v1, v5, v4

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    aput v2, v5, v1

    .line 60
    .line 61
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    const/high16 v2, 0x43480000    # 200.0f

    .line 68
    .line 69
    mul-float/2addr v3, v2

    .line 70
    int-to-float v0, v0

    .line 71
    div-float/2addr v3, v0

    .line 72
    float-to-long v2, v3

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    new-instance v1, Lcom/mycompany/app/view/MyScrollNavi$1;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyScrollNavi$1;-><init>(Lcom/mycompany/app/view/MyScrollNavi;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    new-instance v1, Lcom/mycompany/app/view/MyScrollNavi$2;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyScrollNavi$2;-><init>(Lcom/mycompany/app/view/MyScrollNavi;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v4}, Lcom/mycompany/app/view/MyScrollNavi;->setOnlyVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    return-void
.end method

.method public final d(ZZ)V
    .locals 1

    .line 1
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->i:Z

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->c:Z

    .line 5
    .line 6
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 7
    .line 8
    iput v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->j:I

    .line 9
    .line 10
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    iput v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->l:F

    .line 14
    .line 15
    sget v0, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 16
    .line 17
    iput v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->m:I

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->g:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->g:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->g:Landroid/graphics/Paint;

    .line 37
    .line 38
    const v0, -0x1e595616

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->i:Z

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_right_white_24:I

    .line 51
    .line 52
    iput p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->f:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_white_24:I

    .line 56
    .line 57
    iput p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->f:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->i:Z

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_white_24:I

    .line 65
    .line 66
    iput p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->f:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_right_white_24:I

    .line 70
    .line 71
    iput p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->f:I

    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->f:I

    .line 78
    .line 79
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->h:Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyScrollNavi;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->i:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    neg-float v0, v0

    .line 17
    iget v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->j:I

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    cmpg-float v0, v0, v1

    .line 21
    .line 22
    if-gez v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->j:I

    .line 30
    .line 31
    int-to-float v1, v1

    .line 32
    cmpg-float v0, v0, v1

    .line 33
    .line 34
    if-gez v0, :cond_2

    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 39
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

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
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_1
    return v1
.end method

.method public final g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->g:Landroid/graphics/Paint;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->h:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    return-void
.end method

.method public final h(FF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    iput p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->k:F

    .line 14
    .line 15
    :cond_1
    iget p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->m:I

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyScrollNavi;->i:Z

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    iget v2, p0, Lcom/mycompany/app/view/MyScrollNavi;->k:F

    .line 23
    .line 24
    sub-float v2, p2, v2

    .line 25
    .line 26
    int-to-float v4, p1

    .line 27
    sub-float/2addr v2, v4

    .line 28
    cmpl-float v5, v2, v3

    .line 29
    .line 30
    if-lez v5, :cond_2

    .line 31
    .line 32
    sub-float/2addr p2, v4

    .line 33
    iput p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->k:F

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    neg-int p1, p1

    .line 37
    int-to-float v3, p1

    .line 38
    cmpg-float p1, v2, v3

    .line 39
    .line 40
    if-gez p1, :cond_3

    .line 41
    .line 42
    iput p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->k:F

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move v3, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_4
    iget v2, p0, Lcom/mycompany/app/view/MyScrollNavi;->k:F

    .line 48
    .line 49
    sub-float v2, p2, v2

    .line 50
    .line 51
    int-to-float p1, p1

    .line 52
    add-float/2addr v2, p1

    .line 53
    cmpg-float v4, v2, v3

    .line 54
    .line 55
    if-gez v4, :cond_5

    .line 56
    .line 57
    add-float/2addr p2, p1

    .line 58
    iput p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->k:F

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    cmpl-float v3, v2, p1

    .line 62
    .line 63
    if-lez v3, :cond_3

    .line 64
    .line 65
    iput p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->k:F

    .line 66
    .line 67
    move v3, p1

    .line 68
    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 69
    .line 70
    .line 71
    if-nez v0, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyScrollNavi;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_6
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->c:Z

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->g:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->h:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget v1, p0, Lcom/mycompany/app/view/MyScrollNavi;->n:I

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    iget v2, p0, Lcom/mycompany/app/view/MyScrollNavi;->o:I

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    iget v3, p0, Lcom/mycompany/app/view/MyScrollNavi;->l:F

    .line 22
    .line 23
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->h:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

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
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->n:I

    .line 13
    .line 14
    int-to-float p1, p2

    .line 15
    div-float/2addr p1, p3

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/mycompany/app/view/MyScrollNavi;->o:I

    .line 21
    .line 22
    iget-object p2, p0, Lcom/mycompany/app/view/MyScrollNavi;->h:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    sget p3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 28
    .line 29
    iget p4, p0, Lcom/mycompany/app/view/MyScrollNavi;->n:I

    .line 30
    .line 31
    sub-int v0, p4, p3

    .line 32
    .line 33
    sub-int v1, p1, p3

    .line 34
    .line 35
    add-int/2addr p4, p3

    .line 36
    add-int/2addr p1, p3

    .line 37
    invoke-virtual {p2, v0, v1, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyScrollNavi;->p:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
