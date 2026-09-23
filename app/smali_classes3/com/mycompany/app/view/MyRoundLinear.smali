.class public Lcom/mycompany/app/view/MyRoundLinear;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Z

.field public g:I

.field public h:F

.field public i:Landroid/graphics/Paint;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:Landroid/graphics/RectF;

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->c:Z

    .line 6
    .line 7
    sget p1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 8
    .line 9
    iput p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->c:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->i:Landroid/graphics/Paint;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->o:Landroid/graphics/RectF;

    .line 8
    .line 9
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->q:Z

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 9
    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const v1, -0xdededf

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 v1, -0x1

    .line 17
    :goto_1
    sget v2, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 18
    .line 19
    iput v1, p0, Lcom/mycompany/app/view/MyRoundLinear;->n:I

    .line 20
    .line 21
    iput v2, p0, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/high16 v0, -0x1000000

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const v0, -0x70708

    .line 29
    .line 30
    .line 31
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyRoundLinear;->setBgOutColor(I)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final c(ZZ)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->j:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyRoundLinear;->k:Z

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v2, v0

    .line 15
    :goto_1
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyRoundLinear;->l:Z

    .line 16
    .line 17
    if-ne v3, v2, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyRoundLinear;->l:Z

    .line 21
    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    if-nez p2, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    new-instance p1, Lcom/mycompany/app/view/MyRoundLinear$1;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyRoundLinear$1;-><init>(Lcom/mycompany/app/view/MyRoundLinear;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->n:I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->p:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->q:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_3

    .line 24
    .line 25
    const v0, -0xdededf

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    const/4 v0, -0x1

    .line 30
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 31
    .line 32
    .line 33
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->j:Z

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->k:Z

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->o:Landroid/graphics/RectF;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundLinear;->i:Landroid/graphics/Paint;

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    iget v2, p0, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 53
    .line 54
    int-to-float v2, v2

    .line 55
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->f:Z

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->i:Landroid/graphics/Paint;

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_3
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyRoundLinear;->o:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget p4, p0, Lcom/mycompany/app/view/MyRoundLinear;->h:F

    .line 9
    .line 10
    int-to-float p1, p1

    .line 11
    sub-float/2addr p1, p4

    .line 12
    int-to-float p2, p2

    .line 13
    sub-float/2addr p2, p4

    .line 14
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setBgOutColor(I)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    div-float v1, v0, v1

    .line 7
    .line 8
    iput v1, p0, Lcom/mycompany/app/view/MyRoundLinear;->h:F

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/view/MyRoundLinear;->i:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundLinear;->i:Landroid/graphics/Paint;

    .line 22
    .line 23
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundLinear;->i:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->i:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Landroid/graphics/RectF;

    .line 39
    .line 40
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->o:Landroid/graphics/RectF;

    .line 44
    .line 45
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->n:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->n:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundLinear;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->p:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->q:Z

    .line 5
    .line 6
    return-void
.end method

.method public setDrawLine(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->f:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->f:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundLinear;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLinePad(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyRoundLinear;->g:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundLinear;->g:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundLinear;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setRound(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v2, 0x2

    .line 10
    if-ne p1, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v2, 0x3

    .line 17
    if-ne p1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v1, v1}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
