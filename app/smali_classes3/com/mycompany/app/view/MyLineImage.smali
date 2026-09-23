.class public Lcom/mycompany/app/view/MyLineImage;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:F

.field public j:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineImage;->c:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineImage;->f:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineImage;->h:Z

    .line 5
    .line 6
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const v1, -0xc0c0c1

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v1, -0x252526

    .line 15
    .line 16
    .line 17
    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 18
    .line 19
    iput v2, p0, Lcom/mycompany/app/view/MyLineImage;->i:F

    .line 20
    .line 21
    new-instance v2, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 32
    .line 33
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 44
    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineImage;->f:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineImage;->g:Z

    .line 5
    .line 6
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const v1, -0xc0c0c1

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v1, -0x252526

    .line 15
    .line 16
    .line 17
    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 18
    .line 19
    iput v2, p0, Lcom/mycompany/app/view/MyLineImage;->i:F

    .line 20
    .line 21
    new-instance v2, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 32
    .line 33
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 44
    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineImage;->c:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 6
    .line 7
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineImage;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineImage;->g:Z

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineImage;->f:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineImage;->g:Z

    .line 14
    .line 15
    xor-int/2addr p1, v0

    .line 16
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineImage;->h:Z

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const p1, -0xc0c0c1

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const p1, -0x252526

    .line 32
    .line 33
    .line 34
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 35
    .line 36
    iput v1, p0, Lcom/mycompany/app/view/MyLineImage;->i:F

    .line 37
    .line 38
    new-instance v1, Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 49
    .line 50
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 61
    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyLineImage;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyLineImage;->f:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

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
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyLineImage;->g:Z

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    int-to-float v6, v4

    .line 33
    iget v7, v0, Lcom/mycompany/app/view/MyLineImage;->i:F

    .line 34
    .line 35
    int-to-float v8, v1

    .line 36
    iget-object v10, v0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 37
    .line 38
    move v9, v7

    .line 39
    move-object/from16 v5, p1

    .line 40
    .line 41
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyLineImage;->h:Z

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    int-to-float v12, v4

    .line 49
    int-to-float v2, v2

    .line 50
    iget v3, v0, Lcom/mycompany/app/view/MyLineImage;->i:F

    .line 51
    .line 52
    sub-float v13, v2, v3

    .line 53
    .line 54
    int-to-float v14, v1

    .line 55
    iget-object v1, v0, Lcom/mycompany/app/view/MyLineImage;->j:Landroid/graphics/Paint;

    .line 56
    .line 57
    move v15, v13

    .line 58
    move-object/from16 v11, p1

    .line 59
    .line 60
    move-object/from16 v16, v1

    .line 61
    .line 62
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineImage;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
