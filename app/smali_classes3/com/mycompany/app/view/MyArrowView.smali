.class public Lcom/mycompany/app/view/MyArrowView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public c:I

.field public f:I

.field public g:F

.field public h:F

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Path;

.field public k:Landroid/graphics/RectF;

.field public l:Landroid/graphics/Paint;

.field public m:Landroid/graphics/Path;

.field public final n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const v0, -0x50506

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/high16 v0, -0x1000000

    .line 13
    .line 14
    :goto_0
    iput v0, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 15
    .line 16
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float v2, v0, v1

    .line 22
    .line 23
    iput v2, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 24
    .line 25
    const/high16 v2, 0x3f400000    # 0.75f

    .line 26
    .line 27
    mul-float/2addr v0, v2

    .line 28
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    iput v0, p0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 34
    .line 35
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyArrowView;->n:Z

    .line 40
    .line 41
    new-instance p1, Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 53
    .line 54
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 60
    .line 61
    iget v2, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 62
    .line 63
    div-float/2addr v2, v1

    .line 64
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 68
    .line 69
    iget v2, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 85
    .line 86
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 92
    .line 93
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 94
    .line 95
    div-float/2addr v0, v1

    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 100
    .line 101
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Landroid/graphics/Path;

    .line 107
    .line 108
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 112
    .line 113
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    iput v1, p0, Lcom/mycompany/app/view/MyArrowView;->c:I

    .line 5
    .line 6
    const/high16 v2, -0x10000

    .line 7
    .line 8
    iput v2, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    const/high16 v2, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float v3, v0, v2

    .line 14
    .line 15
    iput v3, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 16
    .line 17
    const/high16 v3, 0x3f400000    # 0.75f

    .line 18
    .line 19
    mul-float/2addr v0, v3

    .line 20
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    iput v0, p0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 43
    .line 44
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 50
    .line 51
    iget v4, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 52
    .line 53
    div-float/2addr v4, v2

    .line 54
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 58
    .line 59
    iget v4, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    new-instance v0, Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 79
    .line 80
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 86
    .line 87
    iget v3, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 88
    .line 89
    div-float/2addr v3, v2

    .line 90
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 94
    .line 95
    iget v2, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    .line 99
    .line 100
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->c:I

    .line 101
    .line 102
    if-ne v0, v1, :cond_2

    .line 103
    .line 104
    new-instance v0, Landroid/graphics/Path;

    .line 105
    .line 106
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->j:Landroid/graphics/Path;

    .line 110
    .line 111
    new-instance v0, Landroid/graphics/RectF;

    .line 112
    .line 113
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->k:Landroid/graphics/RectF;

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->j:Landroid/graphics/Path;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/mycompany/app/view/MyArrowView;->k:Landroid/graphics/RectF;

    .line 123
    .line 124
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->c:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyArrowView;->c:I

    .line 12
    .line 13
    iput v1, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/high16 v0, 0x40000000    # 2.0f

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 33
    .line 34
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 40
    .line 41
    iget v2, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 42
    .line 43
    div-float/2addr v2, v0

    .line 44
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 48
    .line 49
    iget v2, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    new-instance p1, Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 69
    .line 70
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 76
    .line 77
    iget v1, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 78
    .line 79
    div-float/2addr v1, v0

    .line 80
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 84
    .line 85
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .line 89
    .line 90
    iget p1, p0, Lcom/mycompany/app/view/MyArrowView;->c:I

    .line 91
    .line 92
    const/4 v0, 0x6

    .line 93
    if-ne p1, v0, :cond_3

    .line 94
    .line 95
    new-instance p1, Landroid/graphics/Path;

    .line 96
    .line 97
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->j:Landroid/graphics/Path;

    .line 101
    .line 102
    new-instance p1, Landroid/graphics/RectF;

    .line 103
    .line 104
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->k:Landroid/graphics/RectF;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->j:Landroid/graphics/Path;

    .line 112
    .line 113
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->k:Landroid/graphics/RectF;

    .line 114
    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyArrowView;->o:Z

    .line 6
    .line 7
    const/high16 v3, 0x40000000    # 2.0f

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 13
    .line 14
    if-eqz v2, :cond_13

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    int-to-float v2, v2

    .line 31
    div-float v3, v2, v3

    .line 32
    .line 33
    iget-object v5, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 34
    .line 35
    int-to-float v4, v4

    .line 36
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 37
    .line 38
    .line 39
    iget-object v5, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 40
    .line 41
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    .line 43
    .line 44
    iget-object v5, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 45
    .line 46
    invoke-virtual {v5, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 57
    .line 58
    .line 59
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 60
    .line 61
    iget-object v3, v0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 68
    .line 69
    if-eqz v2, :cond_13

    .line 70
    .line 71
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 72
    .line 73
    if-eqz v2, :cond_13

    .line 74
    .line 75
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 76
    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    int-to-float v8, v2

    .line 90
    div-float v2, v8, v3

    .line 91
    .line 92
    int-to-float v5, v4

    .line 93
    div-float v9, v5, v3

    .line 94
    .line 95
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->c:I

    .line 96
    .line 97
    const/4 v10, 0x6

    .line 98
    const/4 v11, 0x5

    .line 99
    const/4 v12, 0x4

    .line 100
    const/4 v13, 0x3

    .line 101
    const/4 v14, 0x2

    .line 102
    const/4 v15, 0x1

    .line 103
    if-nez v3, :cond_3

    .line 104
    .line 105
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 106
    .line 107
    iget-object v6, v0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 108
    .line 109
    move v4, v2

    .line 110
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    .line 112
    .line 113
    move-object/from16 v1, p1

    .line 114
    .line 115
    move v15, v5

    .line 116
    :goto_0
    move v5, v9

    .line 117
    move v9, v2

    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :cond_3
    if-ne v3, v15, :cond_4

    .line 121
    .line 122
    iget v1, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 123
    .line 124
    sub-float v1, v5, v1

    .line 125
    .line 126
    iget-object v6, v0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    move v4, v2

    .line 130
    move v15, v5

    .line 131
    move v5, v1

    .line 132
    move-object/from16 v1, p1

    .line 133
    .line 134
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    move/from16 v16, v2

    .line 139
    .line 140
    move v15, v5

    .line 141
    if-ne v3, v14, :cond_5

    .line 142
    .line 143
    iget v2, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 144
    .line 145
    iget-object v6, v0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 146
    .line 147
    move v5, v9

    .line 148
    move-object/from16 v1, p1

    .line 149
    .line 150
    move v4, v8

    .line 151
    move v3, v9

    .line 152
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    move v5, v3

    .line 156
    :goto_1
    move/from16 v9, v16

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    move v5, v9

    .line 160
    if-ne v3, v13, :cond_6

    .line 161
    .line 162
    iget v1, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 163
    .line 164
    sub-float v4, v8, v1

    .line 165
    .line 166
    iget-object v6, v0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    move v3, v5

    .line 170
    move-object/from16 v1, p1

    .line 171
    .line 172
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_6
    move v9, v5

    .line 177
    if-ne v3, v12, :cond_7

    .line 178
    .line 179
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 180
    .line 181
    sub-float v5, v15, v3

    .line 182
    .line 183
    iget-object v6, v0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 184
    .line 185
    move/from16 v4, v16

    .line 186
    .line 187
    move-object/from16 v1, p1

    .line 188
    .line 189
    move/from16 v2, v16

    .line 190
    .line 191
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_7
    move/from16 v2, v16

    .line 196
    .line 197
    if-ne v3, v11, :cond_8

    .line 198
    .line 199
    move/from16 v16, v2

    .line 200
    .line 201
    iget v2, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 202
    .line 203
    sub-float v4, v8, v2

    .line 204
    .line 205
    iget-object v6, v0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 206
    .line 207
    move v5, v9

    .line 208
    move-object/from16 v1, p1

    .line 209
    .line 210
    move v3, v9

    .line 211
    move/from16 v9, v16

    .line 212
    .line 213
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 214
    .line 215
    .line 216
    move v5, v3

    .line 217
    goto :goto_2

    .line 218
    :cond_8
    move-object/from16 v1, p1

    .line 219
    .line 220
    move v5, v9

    .line 221
    move v9, v2

    .line 222
    if-ne v3, v10, :cond_a

    .line 223
    .line 224
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->j:Landroid/graphics/Path;

    .line 225
    .line 226
    if-nez v2, :cond_9

    .line 227
    .line 228
    goto/16 :goto_5

    .line 229
    .line 230
    :cond_9
    iget-object v3, v0, Lcom/mycompany/app/view/MyArrowView;->i:Landroid/graphics/Paint;

    .line 231
    .line 232
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 233
    .line 234
    .line 235
    :cond_a
    :goto_2
    iget v2, v0, Lcom/mycompany/app/view/MyArrowView;->c:I

    .line 236
    .line 237
    if-nez v2, :cond_b

    .line 238
    .line 239
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 240
    .line 241
    invoke-virtual {v2, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 242
    .line 243
    .line 244
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 245
    .line 246
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 247
    .line 248
    sub-float v3, v9, v3

    .line 249
    .line 250
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 251
    .line 252
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    .line 254
    .line 255
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 256
    .line 257
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 258
    .line 259
    add-float/2addr v3, v9

    .line 260
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 261
    .line 262
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    .line 264
    .line 265
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 266
    .line 267
    invoke-virtual {v2, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_4

    .line 271
    .line 272
    :cond_b
    const/4 v3, 0x1

    .line 273
    if-ne v2, v3, :cond_c

    .line 274
    .line 275
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 276
    .line 277
    invoke-virtual {v2, v9, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 278
    .line 279
    .line 280
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 281
    .line 282
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 283
    .line 284
    sub-float v3, v9, v3

    .line 285
    .line 286
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 287
    .line 288
    sub-float v5, v15, v4

    .line 289
    .line 290
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    .line 292
    .line 293
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 294
    .line 295
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 296
    .line 297
    add-float/2addr v3, v9

    .line 298
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 299
    .line 300
    sub-float v5, v15, v4

    .line 301
    .line 302
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 303
    .line 304
    .line 305
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 306
    .line 307
    invoke-virtual {v2, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_4

    .line 311
    .line 312
    :cond_c
    if-ne v2, v14, :cond_d

    .line 313
    .line 314
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 315
    .line 316
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 317
    .line 318
    .line 319
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 320
    .line 321
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 322
    .line 323
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 324
    .line 325
    sub-float v9, v5, v4

    .line 326
    .line 327
    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 331
    .line 332
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 333
    .line 334
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 335
    .line 336
    add-float v9, v5, v4

    .line 337
    .line 338
    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 339
    .line 340
    .line 341
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 342
    .line 343
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_4

    .line 347
    .line 348
    :cond_d
    if-ne v2, v13, :cond_e

    .line 349
    .line 350
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 351
    .line 352
    invoke-virtual {v2, v8, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 353
    .line 354
    .line 355
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 356
    .line 357
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 358
    .line 359
    sub-float v3, v8, v3

    .line 360
    .line 361
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 362
    .line 363
    sub-float v9, v5, v4

    .line 364
    .line 365
    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 366
    .line 367
    .line 368
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 369
    .line 370
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 371
    .line 372
    sub-float v3, v8, v3

    .line 373
    .line 374
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 375
    .line 376
    add-float v9, v5, v4

    .line 377
    .line 378
    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 379
    .line 380
    .line 381
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 382
    .line 383
    invoke-virtual {v2, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_4

    .line 387
    .line 388
    :cond_e
    if-ne v2, v12, :cond_f

    .line 389
    .line 390
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 391
    .line 392
    invoke-virtual {v2, v9, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 393
    .line 394
    .line 395
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 396
    .line 397
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 398
    .line 399
    sub-float v3, v9, v3

    .line 400
    .line 401
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 402
    .line 403
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 404
    .line 405
    .line 406
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 407
    .line 408
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 409
    .line 410
    add-float/2addr v3, v9

    .line 411
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 412
    .line 413
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 414
    .line 415
    .line 416
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 417
    .line 418
    invoke-virtual {v2, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 419
    .line 420
    .line 421
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 422
    .line 423
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 424
    .line 425
    .line 426
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 427
    .line 428
    iget-object v3, v0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 429
    .line 430
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 431
    .line 432
    .line 433
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 434
    .line 435
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 436
    .line 437
    .line 438
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 439
    .line 440
    invoke-virtual {v2, v9, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 441
    .line 442
    .line 443
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 444
    .line 445
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 446
    .line 447
    sub-float v3, v9, v3

    .line 448
    .line 449
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 450
    .line 451
    sub-float v5, v15, v4

    .line 452
    .line 453
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    .line 455
    .line 456
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 457
    .line 458
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 459
    .line 460
    add-float/2addr v3, v9

    .line 461
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 462
    .line 463
    sub-float v5, v15, v4

    .line 464
    .line 465
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    .line 467
    .line 468
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 469
    .line 470
    invoke-virtual {v2, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 471
    .line 472
    .line 473
    goto/16 :goto_4

    .line 474
    .line 475
    :cond_f
    if-ne v2, v11, :cond_10

    .line 476
    .line 477
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 478
    .line 479
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 480
    .line 481
    .line 482
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 483
    .line 484
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 485
    .line 486
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 487
    .line 488
    sub-float v9, v5, v4

    .line 489
    .line 490
    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 491
    .line 492
    .line 493
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 494
    .line 495
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 496
    .line 497
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 498
    .line 499
    add-float v9, v5, v4

    .line 500
    .line 501
    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 502
    .line 503
    .line 504
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 505
    .line 506
    invoke-virtual {v2, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 507
    .line 508
    .line 509
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 510
    .line 511
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 512
    .line 513
    .line 514
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 515
    .line 516
    iget-object v3, v0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 517
    .line 518
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 519
    .line 520
    .line 521
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 522
    .line 523
    invoke-virtual {v2, v8, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 524
    .line 525
    .line 526
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 527
    .line 528
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 529
    .line 530
    sub-float v3, v8, v3

    .line 531
    .line 532
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 533
    .line 534
    sub-float v9, v5, v4

    .line 535
    .line 536
    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    .line 538
    .line 539
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 540
    .line 541
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 542
    .line 543
    sub-float v3, v8, v3

    .line 544
    .line 545
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 546
    .line 547
    add-float v9, v5, v4

    .line 548
    .line 549
    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 550
    .line 551
    .line 552
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 553
    .line 554
    invoke-virtual {v2, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 555
    .line 556
    .line 557
    goto :goto_4

    .line 558
    :cond_10
    if-ne v2, v10, :cond_12

    .line 559
    .line 560
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyArrowView;->n:Z

    .line 561
    .line 562
    if-eqz v2, :cond_11

    .line 563
    .line 564
    iget v2, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 565
    .line 566
    sub-float/2addr v8, v2

    .line 567
    goto :goto_3

    .line 568
    :cond_11
    iget v8, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 569
    .line 570
    :goto_3
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 571
    .line 572
    invoke-virtual {v2, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 573
    .line 574
    .line 575
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 576
    .line 577
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 578
    .line 579
    sub-float v3, v8, v3

    .line 580
    .line 581
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 582
    .line 583
    sub-float v5, v15, v4

    .line 584
    .line 585
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 586
    .line 587
    .line 588
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 589
    .line 590
    iget v3, v0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 591
    .line 592
    add-float/2addr v3, v8

    .line 593
    iget v4, v0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 594
    .line 595
    sub-float v5, v15, v4

    .line 596
    .line 597
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 598
    .line 599
    .line 600
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 601
    .line 602
    invoke-virtual {v2, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 603
    .line 604
    .line 605
    :cond_12
    :goto_4
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 606
    .line 607
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 608
    .line 609
    .line 610
    iget-object v2, v0, Lcom/mycompany/app/view/MyArrowView;->m:Landroid/graphics/Path;

    .line 611
    .line 612
    iget-object v3, v0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 613
    .line 614
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 615
    .line 616
    .line 617
    :cond_13
    :goto_5
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyArrowView;->k:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    iget-object p4, p0, Lcom/mycompany/app/view/MyArrowView;->j:Landroid/graphics/Path;

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p4, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 14
    .line 15
    int-to-float p1, p1

    .line 16
    sub-float/2addr p1, p4

    .line 17
    add-int/2addr p2, p2

    .line 18
    int-to-float p2, p2

    .line 19
    sub-float/2addr p2, p4

    .line 20
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->h:F

    .line 21
    .line 22
    sub-float/2addr p2, v0

    .line 23
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->j:Landroid/graphics/Path;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/mycompany/app/view/MyArrowView;->k:Landroid/graphics/RectF;

    .line 29
    .line 30
    const/high16 p3, -0x3ccc0000    # -180.0f

    .line 31
    .line 32
    const/high16 p4, 0x43340000    # 180.0f

    .line 33
    .line 34
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public setSnack(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyArrowView;->o:Z

    .line 3
    .line 4
    iput p1, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->g:F

    .line 30
    .line 31
    const/high16 v1, 0x40000000    # 2.0f

    .line 32
    .line 33
    div-float/2addr v0, v1

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/view/MyArrowView;->l:Landroid/graphics/Paint;

    .line 38
    .line 39
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->f:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyArrowView;->c:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyArrowView;->c:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
