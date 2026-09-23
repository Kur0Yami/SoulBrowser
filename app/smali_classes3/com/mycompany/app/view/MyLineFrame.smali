.class public Lcom/mycompany/app/view/MyLineFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:F

.field public m:Landroid/graphics/Paint;

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineFrame;->c:Z

    .line 6
    .line 7
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineFrame;->n:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->h:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyLineFrame;->k:I

    .line 7
    .line 8
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const p1, -0xc0c0c1

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const p1, -0x252526

    .line 17
    .line 18
    .line 19
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 20
    .line 21
    iput v1, p0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 34
    .line 35
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 46
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->i:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/mycompany/app/view/MyLineFrame;->k:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->j:Z

    .line 20
    .line 21
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const v1, -0xc0c0c1

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const v1, -0x252526

    .line 30
    .line 31
    .line 32
    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 33
    .line 34
    iput v2, p0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 35
    .line 36
    new-instance v2, Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 59
    .line 60
    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->j:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/mycompany/app/view/MyLineFrame;->k:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->i:Z

    .line 20
    .line 21
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const v1, -0xc0c0c1

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const v1, -0x252526

    .line 30
    .line 31
    .line 32
    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 33
    .line 34
    iput v2, p0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 35
    .line 36
    new-instance v2, Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 59
    .line 60
    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyLineFrame;->e(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyLineFrame;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 16
    .line 17
    if-eqz v1, :cond_4

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
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyLineFrame;->g:Z

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget v3, v0, Lcom/mycompany/app/view/MyLineFrame;->k:I

    .line 32
    .line 33
    int-to-float v5, v3

    .line 34
    iget v6, v0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 35
    .line 36
    sub-int v3, v1, v3

    .line 37
    .line 38
    int-to-float v7, v3

    .line 39
    iget-object v9, v0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

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
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyLineFrame;->h:Z

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    iget v3, v0, Lcom/mycompany/app/view/MyLineFrame;->k:I

    .line 52
    .line 53
    int-to-float v11, v3

    .line 54
    int-to-float v4, v2

    .line 55
    iget v5, v0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 56
    .line 57
    sub-float v12, v4, v5

    .line 58
    .line 59
    sub-int v3, v1, v3

    .line 60
    .line 61
    int-to-float v13, v3

    .line 62
    iget-object v15, v0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 63
    .line 64
    move v14, v12

    .line 65
    move-object/from16 v10, p1

    .line 66
    .line 67
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyLineFrame;->i:Z

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    iget v11, v0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 75
    .line 76
    int-to-float v14, v2

    .line 77
    iget-object v15, v0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 78
    .line 79
    const/4 v12, 0x0

    .line 80
    move v13, v11

    .line 81
    move-object/from16 v10, p1

    .line 82
    .line 83
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyLineFrame;->j:Z

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    int-to-float v1, v1

    .line 91
    iget v3, v0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 92
    .line 93
    sub-float v11, v1, v3

    .line 94
    .line 95
    int-to-float v14, v2

    .line 96
    iget-object v15, v0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    move v13, v11

    .line 100
    move-object/from16 v10, p1

    .line 101
    .line 102
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_0
    return-void
.end method

.method public final e(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->g:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyLineFrame;->k:I

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const p1, -0xc0c0c1

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const p1, -0x252526

    .line 15
    .line 16
    .line 17
    :goto_0
    const/high16 p2, 0x3f000000    # 0.5f

    .line 18
    .line 19
    iput p2, p0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 20
    .line 21
    new-instance p2, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 32
    .line 33
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 44
    .line 45
    const/high16 p2, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final f(F)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->g:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->h:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->i:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->j:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 11
    .line 12
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const v1, -0xc0c0c1

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const v1, -0x252526

    .line 21
    .line 22
    .line 23
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float v2, p1, v2

    .line 26
    .line 27
    iput v2, p0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 28
    .line 29
    new-instance v2, Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 40
    .line 41
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->c:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 6
    .line 7
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyLineFrame;->n:Z

    .line 7
    .line 8
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 9
    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyLineFrame;->n:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    const v1, -0xc0c0c1

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const v1, -0x252526

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineFrame;->invalidate()V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_1
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->c:Z

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

.method public setDrawLine(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineFrame;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLineColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineFrame;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setLineDn(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->h:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineFrame;->h:Z

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 11
    .line 12
    if-nez p1, :cond_3

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

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
    iput v1, p0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

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
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineFrame;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setLinePad(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyLineFrame;->k:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyLineFrame;->k:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineFrame;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLineUp(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineFrame;->g:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineFrame;->g:Z

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

    .line 11
    .line 12
    if-nez p1, :cond_3

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineFrame;->f:Z

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
    iput v1, p0, Lcom/mycompany/app/view/MyLineFrame;->l:F

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

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
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineFrame;->m:Landroid/graphics/Paint;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineFrame;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
