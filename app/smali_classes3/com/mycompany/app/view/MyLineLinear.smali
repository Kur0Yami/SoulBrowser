.class public Lcom/mycompany/app/view/MyLineLinear;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:F

.field public k:Landroid/graphics/Paint;

.field public l:I


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
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineLinear;->c:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineLinear;->c:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 6
    .line 7
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyLineLinear;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyLineLinear;->f:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyLineLinear;->g:Z

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget v3, v0, Lcom/mycompany/app/view/MyLineLinear;->i:I

    .line 32
    .line 33
    int-to-float v5, v3

    .line 34
    iget v6, v0, Lcom/mycompany/app/view/MyLineLinear;->j:F

    .line 35
    .line 36
    sub-int v3, v1, v3

    .line 37
    .line 38
    int-to-float v7, v3

    .line 39
    iget-object v9, v0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 40
    .line 41
    move v8, v6

    .line 42
    move-object/from16 v4, p1

    .line 43
    .line 44
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyLineLinear;->h:Z

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    iget v3, v0, Lcom/mycompany/app/view/MyLineLinear;->i:I

    .line 52
    .line 53
    int-to-float v11, v3

    .line 54
    int-to-float v2, v2

    .line 55
    iget v4, v0, Lcom/mycompany/app/view/MyLineLinear;->j:F

    .line 56
    .line 57
    sub-float v12, v2, v4

    .line 58
    .line 59
    sub-int/2addr v1, v3

    .line 60
    int-to-float v13, v1

    .line 61
    iget-object v15, v0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 62
    .line 63
    move v14, v12

    .line 64
    move-object/from16 v10, p1

    .line 65
    .line 66
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget v1, v0, Lcom/mycompany/app/view/MyLineLinear;->l:I

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    move-object/from16 v4, p1

    .line 74
    .line 75
    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineLinear;->c:Z

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

.method public setDrawLine(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineLinear;->f:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineLinear;->f:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineLinear;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyLineLinear;->l:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyLineLinear;->l:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineLinear;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLineDn(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineLinear;->h:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineLinear;->h:Z

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyLineLinear;->f:Z

    .line 11
    .line 12
    if-nez p1, :cond_3

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineLinear;->f:Z

    .line 16
    .line 17
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const v0, -0xc0c0c1

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const v0, -0x252526

    .line 26
    .line 27
    .line 28
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 29
    .line 30
    iput v1, p0, Lcom/mycompany/app/view/MyLineLinear;->j:F

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    new-instance v1, Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 59
    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineLinear;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setLinePad(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyLineLinear;->i:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyLineLinear;->i:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineLinear;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLineUp(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineLinear;->g:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineLinear;->g:Z

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyLineLinear;->f:Z

    .line 11
    .line 12
    if-nez p1, :cond_3

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineLinear;->f:Z

    .line 16
    .line 17
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const v0, -0xc0c0c1

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const v0, -0x252526

    .line 26
    .line 27
    .line 28
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 29
    .line 30
    iput v1, p0, Lcom/mycompany/app/view/MyLineLinear;->j:F

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    new-instance v1, Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 59
    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineLinear;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
