.class public Lcom/mycompany/app/view/MyRoundFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:I

.field public g:F

.field public h:I

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/RectF;

.field public k:Z

.field public l:Landroid/graphics/RectF;

.field public m:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->c:Z

    .line 6
    .line 7
    sget v0, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 11
    .line 12
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 34
    .line 35
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->j:Landroid/graphics/RectF;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->c:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->j:Landroid/graphics/RectF;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->m:Landroid/graphics/Paint;

    .line 12
    .line 13
    return-void
.end method

.method public final b(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->j:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->f:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v1, v2, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    int-to-float p1, p1

    .line 23
    int-to-float p2, p2

    .line 24
    invoke-virtual {v0, v3, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const/4 v2, 0x3

    .line 29
    if-ne v1, v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    int-to-float p1, p1

    .line 37
    int-to-float p2, p2

    .line 38
    iget v2, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 39
    .line 40
    add-float/2addr p2, v2

    .line 41
    invoke-virtual {v0, v3, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    const/4 v2, 0x4

    .line 46
    if-ne v1, v2, :cond_4

    .line 47
    .line 48
    iget v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 49
    .line 50
    neg-float v1, v1

    .line 51
    int-to-float p1, p1

    .line 52
    int-to-float p2, p2

    .line 53
    invoke-virtual {v0, v3, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    const/4 v2, 0x5

    .line 58
    if-ne v1, v2, :cond_6

    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->k:Z

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    iget v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 65
    .line 66
    neg-float v1, v1

    .line 67
    int-to-float p1, p1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sub-int/2addr p2, v2

    .line 73
    int-to-float p2, p2

    .line 74
    invoke-virtual {v0, v3, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    int-to-float p1, p1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sub-int/2addr p2, v1

    .line 84
    int-to-float p2, p2

    .line 85
    invoke-virtual {v0, v3, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    int-to-float p1, p1

    .line 90
    int-to-float p2, p2

    .line 91
    invoke-virtual {v0, v3, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final c(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->f:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->k:Z

    .line 5
    .line 6
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 11
    .line 12
    int-to-float v1, p2

    .line 13
    cmpl-float v0, v0, v1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 19
    .line 20
    int-to-float p2, p2

    .line 21
    iput p2, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    new-instance p1, Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 48
    .line 49
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 55
    .line 56
    iget p2, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final d(IZ)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->f:I

    .line 3
    .line 4
    sget v0, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 5
    .line 6
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    int-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 11
    .line 12
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 13
    .line 14
    if-ne v0, p1, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->k:Z

    .line 17
    .line 18
    if-ne v0, p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 22
    .line 23
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyRoundFrame;->k:Z

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 35
    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    new-instance p1, Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 50
    .line 51
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 57
    .line 58
    iget p2, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    if-nez p2, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyRoundFrame;->b(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->j:Landroid/graphics/RectF;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v2, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->m:Landroid/graphics/Paint;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget v2, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->c:Z

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

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget p3, p0, Lcom/mycompany/app/view/MyRoundFrame;->f:I

    .line 5
    .line 6
    const/4 p4, 0x2

    .line 7
    const/high16 v0, 0x40000000    # 2.0f

    .line 8
    .line 9
    if-ne p3, p4, :cond_0

    .line 10
    .line 11
    iget-object p4, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    sget p3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 16
    .line 17
    int-to-float p3, p3

    .line 18
    div-float/2addr p3, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    add-float/2addr v0, p3

    .line 25
    int-to-float p1, p1

    .line 26
    sub-float/2addr p1, p3

    .line 27
    int-to-float p2, p2

    .line 28
    sub-float/2addr p2, p3

    .line 29
    invoke-virtual {p4, p3, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 p4, 0x1

    .line 34
    if-ne p3, p4, :cond_1

    .line 35
    .line 36
    int-to-float p3, p1

    .line 37
    div-float/2addr p3, v0

    .line 38
    iput p3, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyRoundFrame;->b(II)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p3, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    sget p4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 49
    .line 50
    int-to-float p4, p4

    .line 51
    div-float/2addr p4, v0

    .line 52
    int-to-float p1, p1

    .line 53
    sub-float/2addr p1, p4

    .line 54
    int-to-float p2, p2

    .line 55
    sub-float/2addr p2, p4

    .line 56
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public setBgColor(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->f:I

    .line 3
    .line 4
    sget v1, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    iput v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->k:Z

    .line 10
    .line 11
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 43
    .line 44
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 50
    .line 51
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public setBgOutColor(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->m:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->m:Landroid/graphics/Paint;

    .line 20
    .line 21
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->m:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget v1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 29
    .line 30
    int-to-float v1, v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->m:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setCircle(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->f:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v1, v2

    .line 12
    iput v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->k:Z

    .line 16
    .line 17
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const v1, -0x70708

    .line 22
    .line 23
    .line 24
    if-eq p1, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const p1, -0xafafb0

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    iget v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 31
    .line 32
    if-ne v1, p1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iput p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    new-instance p1, Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 52
    .line 53
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 59
    .line 60
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setNewsAllowColor(I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->f:I

    .line 3
    .line 4
    sget v0, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 5
    .line 6
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    int-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->k:Z

    .line 14
    .line 15
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 16
    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 22
    .line 23
    const v0, -0x252526

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-ne p1, v0, :cond_3

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundFrame;->setBgOutColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz p1, :cond_6

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget v1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 57
    .line 58
    int-to-float v1, v1

    .line 59
    const/high16 v2, 0x40000000    # 2.0f

    .line 60
    .line 61
    div-float/2addr v1, v2

    .line 62
    iget-object v2, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    int-to-float v3, v3

    .line 69
    add-float/2addr v3, v1

    .line 70
    int-to-float p1, p1

    .line 71
    sub-float/2addr p1, v1

    .line 72
    int-to-float v0, v0

    .line 73
    sub-float/2addr v0, v1

    .line 74
    invoke-virtual {v2, v1, v3, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->l:Landroid/graphics/RectF;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/view/MyRoundFrame;->m:Landroid/graphics/Paint;

    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 86
    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    new-instance p1, Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 101
    .line 102
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 108
    .line 109
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyRoundFrame;->b(II)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 131
    .line 132
    .line 133
    :cond_6
    :goto_0
    return-void
.end method

.method public setNewsHeadColor(I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->f:I

    .line 3
    .line 4
    sget v0, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 5
    .line 6
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    int-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->k:Z

    .line 14
    .line 15
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 16
    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    new-instance p1, Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 54
    .line 55
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyRoundFrame;->b(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_0
    return-void
.end method

.method public setNewsNotiColor(I)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->f:I

    .line 3
    .line 4
    sget v0, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 5
    .line 6
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    int-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->g:F

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->k:Z

    .line 14
    .line 15
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 16
    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    new-instance p1, Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundFrame;->i:Landroid/graphics/Paint;

    .line 54
    .line 55
    iget v0, p0, Lcom/mycompany/app/view/MyRoundFrame;->h:I

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyRoundFrame;->b(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundFrame;->invalidate()V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_0
    return-void
.end method
