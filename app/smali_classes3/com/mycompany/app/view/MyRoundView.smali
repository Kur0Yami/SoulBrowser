.class public Lcom/mycompany/app/view/MyRoundView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public c:I

.field public f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/Paint;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const p1, -0xdededf

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const p1, -0x70708

    .line 13
    .line 14
    .line 15
    :goto_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundView;->c:I

    .line 16
    .line 17
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 18
    .line 19
    iput p1, p0, Lcom/mycompany/app/view/MyRoundView;->h:I

    .line 20
    .line 21
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/view/MyRoundView;->i:I

    .line 24
    .line 25
    new-instance p1, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundView;->f:Landroid/graphics/RectF;

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundView;->g:Landroid/graphics/Paint;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundView;->g:Landroid/graphics/Paint;

    .line 44
    .line 45
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundView;->g:Landroid/graphics/Paint;

    .line 51
    .line 52
    iget v0, p0, Lcom/mycompany/app/view/MyRoundView;->c:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundView;->f:Landroid/graphics/RectF;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundView;->g:Landroid/graphics/Paint;

    .line 5
    .line 6
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundView;->f:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundView;->g:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/view/MyRoundView;->h:I

    .line 10
    .line 11
    int-to-float v3, v2

    .line 12
    int-to-float v2, v2

    .line 13
    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p3, p0, Lcom/mycompany/app/view/MyRoundView;->f:Landroid/graphics/RectF;

    .line 10
    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget p4, p0, Lcom/mycompany/app/view/MyRoundView;->i:I

    .line 15
    .line 16
    int-to-float v0, p4

    .line 17
    sub-int/2addr p1, p4

    .line 18
    int-to-float p1, p1

    .line 19
    sub-int/2addr p2, p4

    .line 20
    int-to-float p2, p2

    .line 21
    invoke-virtual {p3, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_0
    return-void
.end method

.method public setBackColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundView;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyRoundView;->c:I

    .line 7
    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/view/MyRoundView;->c:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setBackPad(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyRoundView;->i:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundView;->i:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundView;->f:Landroid/graphics/RectF;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget v2, p0, Lcom/mycompany/app/view/MyRoundView;->i:I

    .line 27
    .line 28
    int-to-float v3, v2

    .line 29
    sub-int/2addr p1, v2

    .line 30
    int-to-float p1, p1

    .line 31
    sub-int/2addr v0, v2

    .line 32
    int-to-float v0, v0

    .line 33
    invoke-virtual {v1, v3, v3, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
