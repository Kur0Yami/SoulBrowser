.class public Lcom/mycompany/app/view/MyCircleView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Landroid/content/Context;

.field public g:I

.field public h:I

.field public i:I

.field public j:F

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/RectF;

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/RectF;

.field public o:F

.field public p:F

.field public q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyCircleView;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->f:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(IIIZ)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyCircleView;->g:I

    .line 2
    .line 3
    iput p2, p0, Lcom/mycompany/app/view/MyCircleView;->h:I

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 26
    .line 27
    iget v0, p0, Lcom/mycompany/app/view/MyCircleView;->g:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 33
    .line 34
    iget v0, p0, Lcom/mycompany/app/view/MyCircleView;->h:I

    .line 35
    .line 36
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b3(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 41
    .line 42
    .line 43
    if-eqz p4, :cond_0

    .line 44
    .line 45
    new-instance p1, Landroid/graphics/RectF;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->l:Landroid/graphics/RectF;

    .line 51
    .line 52
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->m:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->m:Landroid/graphics/Paint;

    .line 63
    .line 64
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->m:Landroid/graphics/Paint;

    .line 70
    .line 71
    const/high16 p2, 0x40800000    # 4.0f

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->m:Landroid/graphics/Paint;

    .line 77
    .line 78
    iget p2, p0, Lcom/mycompany/app/view/MyCircleView;->g:I

    .line 79
    .line 80
    if-nez p2, :cond_1

    .line 81
    .line 82
    const/4 p2, -0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const p2, -0xc0c0c1

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .line 89
    .line 90
    if-eqz p4, :cond_2

    .line 91
    .line 92
    new-instance p1, Landroid/graphics/RectF;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->n:Landroid/graphics/RectF;

    .line 98
    .line 99
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 100
    .line 101
    int-to-float p1, p1

    .line 102
    iput p1, p0, Lcom/mycompany/app/view/MyCircleView;->o:F

    .line 103
    .line 104
    :cond_2
    invoke-virtual {p0, p3}, Lcom/mycompany/app/view/MyCircleView;->setSize(I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final b(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyCircleView;->g:I

    .line 7
    .line 8
    if-eq v1, p1, :cond_1

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/view/MyCircleView;->g:I

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/view/MyCircleView;->h:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 18
    .line 19
    iget p2, p0, Lcom/mycompany/app/view/MyCircleView;->h:I

    .line 20
    .line 21
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->b3(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyCircleView;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget p1, p0, Lcom/mycompany/app/view/MyCircleView;->h:I

    .line 33
    .line 34
    if-eq p1, p2, :cond_2

    .line 35
    .line 36
    iput p2, p0, Lcom/mycompany/app/view/MyCircleView;->h:I

    .line 37
    .line 38
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->b3(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyCircleView;->invalidate()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyCircleView;->c:Z

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

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyCircleView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/view/MyCircleView;->l:Landroid/graphics/RectF;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget v2, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v1, p0, Lcom/mycompany/app/view/MyCircleView;->p:F

    .line 22
    .line 23
    iget v2, p0, Lcom/mycompany/app/view/MyCircleView;->q:F

    .line 24
    .line 25
    iget v3, p0, Lcom/mycompany/app/view/MyCircleView;->j:F

    .line 26
    .line 27
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyCircleView;->m:Landroid/graphics/Paint;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-object v1, p0, Lcom/mycompany/app/view/MyCircleView;->n:Landroid/graphics/RectF;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    sget v2, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 39
    .line 40
    int-to-float v2, v2

    .line 41
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget v1, p0, Lcom/mycompany/app/view/MyCircleView;->p:F

    .line 46
    .line 47
    iget v2, p0, Lcom/mycompany/app/view/MyCircleView;->q:F

    .line 48
    .line 49
    iget v3, p0, Lcom/mycompany/app/view/MyCircleView;->j:F

    .line 50
    .line 51
    const/high16 v4, 0x40000000    # 2.0f

    .line 52
    .line 53
    add-float/2addr v3, v4

    .line 54
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_1
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
    iput p1, p0, Lcom/mycompany/app/view/MyCircleView;->p:F

    .line 9
    .line 10
    int-to-float p1, p2

    .line 11
    div-float/2addr p1, p3

    .line 12
    iput p1, p0, Lcom/mycompany/app/view/MyCircleView;->q:F

    .line 13
    .line 14
    iget p1, p0, Lcom/mycompany/app/view/MyCircleView;->i:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyCircleView;->setSize(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyCircleView;->g:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyCircleView;->g:I

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 26
    .line 27
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 33
    .line 34
    iget v0, p0, Lcom/mycompany/app/view/MyCircleView;->g:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->k:Landroid/graphics/Paint;

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyCircleView;->invalidate()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setSize(I)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/mycompany/app/view/MyCircleView;->p:F

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyCircleView;->j:F

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyCircleView;->i:I

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/view/MyCircleView;->p:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    cmpl-float v0, v0, v1

    .line 14
    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget v0, p0, Lcom/mycompany/app/view/MyCircleView;->q:F

    .line 18
    .line 19
    cmpl-float v0, v0, v1

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyCircleView;->f:Landroid/content/Context;

    .line 25
    .line 26
    int-to-float p1, p1

    .line 27
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    .line 32
    .line 33
    div-float/2addr p1, v0

    .line 34
    iput p1, p0, Lcom/mycompany/app/view/MyCircleView;->j:F

    .line 35
    .line 36
    iget-object v1, p0, Lcom/mycompany/app/view/MyCircleView;->l:Landroid/graphics/RectF;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget v2, p0, Lcom/mycompany/app/view/MyCircleView;->o:F

    .line 41
    .line 42
    iget v3, p0, Lcom/mycompany/app/view/MyCircleView;->q:F

    .line 43
    .line 44
    sub-float/2addr v3, p1

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    int-to-float p1, p1

    .line 50
    iget v4, p0, Lcom/mycompany/app/view/MyCircleView;->o:F

    .line 51
    .line 52
    sub-float/2addr p1, v4

    .line 53
    iget v4, p0, Lcom/mycompany/app/view/MyCircleView;->q:F

    .line 54
    .line 55
    iget v5, p0, Lcom/mycompany/app/view/MyCircleView;->j:F

    .line 56
    .line 57
    add-float/2addr v4, v5

    .line 58
    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyCircleView;->n:Landroid/graphics/RectF;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget v1, p0, Lcom/mycompany/app/view/MyCircleView;->o:F

    .line 66
    .line 67
    sub-float/2addr v1, v0

    .line 68
    iget v2, p0, Lcom/mycompany/app/view/MyCircleView;->q:F

    .line 69
    .line 70
    iget v3, p0, Lcom/mycompany/app/view/MyCircleView;->j:F

    .line 71
    .line 72
    sub-float/2addr v2, v3

    .line 73
    sub-float/2addr v2, v0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    int-to-float v3, v3

    .line 79
    iget v4, p0, Lcom/mycompany/app/view/MyCircleView;->o:F

    .line 80
    .line 81
    sub-float/2addr v3, v4

    .line 82
    add-float/2addr v3, v0

    .line 83
    iget v4, p0, Lcom/mycompany/app/view/MyCircleView;->q:F

    .line 84
    .line 85
    iget v5, p0, Lcom/mycompany/app/view/MyCircleView;->j:F

    .line 86
    .line 87
    add-float/2addr v4, v5

    .line 88
    add-float/2addr v4, v0

    .line 89
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyCircleView;->invalidate()V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_0
    return-void
.end method
