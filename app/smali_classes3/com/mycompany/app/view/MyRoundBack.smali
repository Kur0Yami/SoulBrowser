.class public Lcom/mycompany/app/view/MyRoundBack;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:I

.field public g:I

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/RectF;

.field public j:Landroid/graphics/RectF;


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyRoundBack;->g:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundBack;->c:Z

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundBack;->g:I

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyRoundBack;->c:Z

    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/view/MyRoundBack;->f:I

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->h:Landroid/graphics/Paint;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    new-instance p1, Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->h:Landroid/graphics/Paint;

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->h:Landroid/graphics/Paint;

    .line 36
    .line 37
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->h:Landroid/graphics/Paint;

    .line 43
    .line 44
    iget p2, p0, Lcom/mycompany/app/view/MyRoundBack;->g:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->i:Landroid/graphics/RectF;

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Landroid/graphics/RectF;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->i:Landroid/graphics/RectF;

    .line 59
    .line 60
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->j:Landroid/graphics/RectF;

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    new-instance p1, Landroid/graphics/RectF;

    .line 65
    .line 66
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->j:Landroid/graphics/RectF;

    .line 70
    .line 71
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyRoundBack;->b(II)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->h:Landroid/graphics/Paint;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->i:Landroid/graphics/RectF;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundBack;->j:Landroid/graphics/RectF;

    .line 89
    .line 90
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final b(II)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundBack;->i:Landroid/graphics/RectF;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundBack;->j:Landroid/graphics/RectF;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyRoundBack;->c:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget v1, p0, Lcom/mycompany/app/view/MyRoundBack;->f:I

    .line 21
    .line 22
    neg-int v3, v1

    .line 23
    int-to-float v3, v3

    .line 24
    int-to-float p1, p1

    .line 25
    mul-int/lit8 v1, v1, 0x3

    .line 26
    .line 27
    sub-int v1, p2, v1

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundBack;->j:Landroid/graphics/RectF;

    .line 34
    .line 35
    iget v1, p0, Lcom/mycompany/app/view/MyRoundBack;->f:I

    .line 36
    .line 37
    sub-int v3, p2, v1

    .line 38
    .line 39
    int-to-float v3, v3

    .line 40
    add-int/2addr p2, v1

    .line 41
    int-to-float p2, p2

    .line 42
    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget v1, p0, Lcom/mycompany/app/view/MyRoundBack;->f:I

    .line 47
    .line 48
    neg-int v3, v1

    .line 49
    int-to-float v3, v3

    .line 50
    int-to-float p1, p1

    .line 51
    int-to-float v1, v1

    .line 52
    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundBack;->j:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget v1, p0, Lcom/mycompany/app/view/MyRoundBack;->f:I

    .line 58
    .line 59
    mul-int/lit8 v3, v1, 0x3

    .line 60
    .line 61
    int-to-float v3, v3

    .line 62
    add-int/2addr p2, v1

    .line 63
    int-to-float p2, p2

    .line 64
    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundBack;->h:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundBack;->i:Landroid/graphics/RectF;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/view/MyRoundBack;->f:I

    .line 10
    .line 11
    int-to-float v3, v2

    .line 12
    int-to-float v2, v2

    .line 13
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundBack;->j:Landroid/graphics/RectF;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v1, p0, Lcom/mycompany/app/view/MyRoundBack;->f:I

    .line 21
    .line 22
    int-to-float v2, v1

    .line 23
    int-to-float v1, v1

    .line 24
    iget-object v3, p0, Lcom/mycompany/app/view/MyRoundBack;->h:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyRoundBack;->b(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
