.class public Lcom/mycompany/app/view/MyLineText;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field public A:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:F

.field public t:Landroid/graphics/Paint;

.field public u:Landroid/graphics/Paint;

.field public v:F

.field public w:F

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineText;->l:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->n:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lcom/mycompany/app/view/MyLineText;->r:I

    .line 25
    .line 26
    int-to-float v1, v0

    .line 27
    iget v2, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 28
    .line 29
    sub-int v0, v6, v0

    .line 30
    .line 31
    int-to-float v3, v0

    .line 32
    iget-object v5, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 33
    .line 34
    move v4, v2

    .line 35
    move-object v0, p1

    .line 36
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->o:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget v0, p0, Lcom/mycompany/app/view/MyLineText;->r:I

    .line 44
    .line 45
    int-to-float v1, v0

    .line 46
    int-to-float v2, v7

    .line 47
    iget v3, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 48
    .line 49
    sub-float/2addr v2, v3

    .line 50
    sub-int v0, v6, v0

    .line 51
    .line 52
    int-to-float v3, v0

    .line 53
    iget-object v5, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 54
    .line 55
    move v4, v2

    .line 56
    move-object v0, p1

    .line 57
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->p:Z

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget v1, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 65
    .line 66
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 67
    .line 68
    int-to-float v2, v0

    .line 69
    sub-int v0, v7, v0

    .line 70
    .line 71
    int-to-float v4, v0

    .line 72
    iget-object v5, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 73
    .line 74
    move v3, v1

    .line 75
    move-object v0, p1

    .line 76
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->q:Z

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    int-to-float v0, v6

    .line 84
    iget v1, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 85
    .line 86
    sub-float v1, v0, v1

    .line 87
    .line 88
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 89
    .line 90
    int-to-float v2, v0

    .line 91
    sub-int/2addr v7, v0

    .line 92
    int-to-float v4, v7

    .line 93
    iget-object v5, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 94
    .line 95
    move v3, v1

    .line 96
    move-object v0, p1

    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 101
    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyLineText;->z:Z

    .line 105
    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    int-to-float v1, v1

    .line 113
    const/high16 v2, 0x40000000    # 2.0f

    .line 114
    .line 115
    div-float/2addr v1, v2

    .line 116
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 117
    .line 118
    int-to-float v2, v2

    .line 119
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 120
    .line 121
    int-to-float v3, v3

    .line 122
    iget-object v4, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 123
    .line 124
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyLineText;->y:Z

    .line 129
    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 133
    .line 134
    int-to-float v1, v1

    .line 135
    iget v2, p0, Lcom/mycompany/app/view/MyLineText;->v:F

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    iget v1, p0, Lcom/mycompany/app/view/MyLineText;->w:F

    .line 139
    .line 140
    move v2, v1

    .line 141
    :goto_0
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyLineText;->x:Z

    .line 142
    .line 143
    if-eqz v3, :cond_6

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    int-to-float v3, v3

    .line 150
    sub-float v1, v3, v1

    .line 151
    .line 152
    :cond_6
    iget v3, p0, Lcom/mycompany/app/view/MyLineText;->v:F

    .line 153
    .line 154
    iget-object v4, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 155
    .line 156
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_1
    iget v1, p0, Lcom/mycompany/app/view/MyLineText;->A:I

    .line 160
    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 164
    .line 165
    .line 166
    :cond_8
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final q(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->o:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyLineText;->r:I

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
    iput v1, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 34
    .line 35
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

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

.method public final r(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 3
    .line 4
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->q:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->p:Z

    .line 14
    .line 15
    :goto_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 16
    .line 17
    iput p1, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 37
    .line 38
    const v0, -0x8a8a8b

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 45
    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final s(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 3
    .line 4
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->p:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->q:Z

    .line 14
    .line 15
    :goto_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 16
    .line 17
    iput p1, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 37
    .line 38
    const v0, -0x8a8a8b

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 45
    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public setDrawLine(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyLineText;->A:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyLineText;->A:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLineColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setLineDn(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->o:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineText;->o:Z

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 11
    .line 12
    if-nez p1, :cond_3

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

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
    iput v1, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

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
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setLinePad(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyLineText;->r:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyLineText;->r:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLineUp(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->n:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineText;->n:Z

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 11
    .line 12
    if-nez p1, :cond_3

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

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
    iput v1, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

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
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setNoti(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v0, -0x10000

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->x:Z

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->y:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->z:Z

    .line 46
    .line 47
    const/high16 v0, 0x40400000    # 3.0f

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/mycompany/app/view/MyLineText;->v:F

    .line 54
    .line 55
    const/high16 v0, 0x41500000    # 13.0f

    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/mycompany/app/view/MyLineText;->w:F

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public setNotiCenter(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v1, -0x10000

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineText;->y:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->z:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public setNotiTop(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v1, -0x10000

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyLineText;->x:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->y:Z

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->z:Z

    .line 46
    .line 47
    const/high16 v0, 0x40400000    # 3.0f

    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/mycompany/app/view/MyLineText;->v:F

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/mycompany/app/view/MyLineText;->w:F

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineText;->invalidate()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final t(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->m:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->n:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyLineText;->r:I

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
    iput v1, p0, Lcom/mycompany/app/view/MyLineText;->s:F

    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 34
    .line 35
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

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

.method public final u()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineText;->l:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyLineText;->t:Landroid/graphics/Paint;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyLineText;->u:Landroid/graphics/Paint;

    .line 8
    .line 9
    return-void
.end method
