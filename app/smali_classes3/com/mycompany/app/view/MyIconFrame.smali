.class public Lcom/mycompany/app/view/MyIconFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public A:Z

.field public final B:Ljava/lang/Runnable;

.field public final c:Z

.field public f:F

.field public g:F

.field public h:Z

.field public i:Z

.field public j:F

.field public final k:Landroid/graphics/RectF;

.field public l:I

.field public m:I

.field public n:Landroid/graphics/Paint;

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;

.field public q:F

.field public r:Z

.field public s:Landroid/graphics/Paint;

.field public t:Z

.field public u:Landroid/view/View$OnClickListener;

.field public v:Landroid/view/View$OnLongClickListener;

.field public w:F

.field public x:Z

.field public final y:Ljava/lang/Runnable;

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyIconFrame$3;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyIconFrame$3;-><init>(Lcom/mycompany/app/view/MyIconFrame;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->y:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyIconFrame$7;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyIconFrame$7;-><init>(Lcom/mycompany/app/view/MyIconFrame;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->B:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyIconFrame;->c:Z

    .line 20
    .line 21
    new-instance p1, Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->k:Landroid/graphics/RectF;

    .line 27
    .line 28
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyIconFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyIconFrame;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyIconFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyIconFrame;->setValPreScaleUp(F)V

    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 8
    .line 9
    move v2, v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v3, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    move v2, v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v1, v2

    .line 32
    :goto_0
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->invalidate()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public final d(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyIconFrame;->f:F

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/view/MyIconFrame;->g:F

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/mycompany/app/view/MyIconFrame;->j:F

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/view/MyIconFrame;->k:Landroid/graphics/RectF;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyIconFrame;->i:Z

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget p1, p0, Lcom/mycompany/app/view/MyIconFrame;->f:F

    .line 22
    .line 23
    sub-float v2, p1, v0

    .line 24
    .line 25
    add-float/2addr p1, v0

    .line 26
    int-to-float p2, p2

    .line 27
    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    int-to-float p1, p1

    .line 32
    int-to-float p2, p2

    .line 33
    invoke-virtual {v1, v3, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->r:Z

    .line 7
    .line 8
    const/high16 v1, 0x40a00000    # 5.0f

    .line 9
    .line 10
    const v2, 0x3f4ccccd    # 0.8f

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->s:Landroid/graphics/Paint;

    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    iget-object v3, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    if-eqz v3, :cond_6

    .line 30
    .line 31
    :cond_1
    iget v3, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 32
    .line 33
    sub-float/2addr v3, v2

    .line 34
    const/high16 v2, 0x43000000    # 128.0f

    .line 35
    .line 36
    mul-float/2addr v3, v2

    .line 37
    mul-float/2addr v3, v1

    .line 38
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->h:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->k:Landroid/graphics/RectF;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 57
    .line 58
    iget v1, p0, Lcom/mycompany/app/view/MyIconFrame;->f:F

    .line 59
    .line 60
    iget v2, p0, Lcom/mycompany/app/view/MyIconFrame;->g:F

    .line 61
    .line 62
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 63
    .line 64
    .line 65
    sget v0, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 66
    .line 67
    int-to-float v0, v0

    .line 68
    iget-object v1, p0, Lcom/mycompany/app/view/MyIconFrame;->s:Landroid/graphics/Paint;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/mycompany/app/view/MyIconFrame;->k:Landroid/graphics/RectF;

    .line 71
    .line 72
    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget v0, p0, Lcom/mycompany/app/view/MyIconFrame;->f:F

    .line 80
    .line 81
    iget v1, p0, Lcom/mycompany/app/view/MyIconFrame;->g:F

    .line 82
    .line 83
    iget v2, p0, Lcom/mycompany/app/view/MyIconFrame;->j:F

    .line 84
    .line 85
    iget v3, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 86
    .line 87
    mul-float/2addr v2, v3

    .line 88
    iget-object v3, p0, Lcom/mycompany/app/view/MyIconFrame;->s:Landroid/graphics/Paint;

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->n:Landroid/graphics/Paint;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 99
    .line 100
    if-nez v3, :cond_4

    .line 101
    .line 102
    iget-object v3, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    if-nez v3, :cond_4

    .line 105
    .line 106
    iget-object v3, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 107
    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    :cond_4
    iget v3, p0, Lcom/mycompany/app/view/MyIconFrame;->m:I

    .line 111
    .line 112
    int-to-float v3, v3

    .line 113
    iget v4, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 114
    .line 115
    sub-float/2addr v4, v2

    .line 116
    mul-float/2addr v4, v3

    .line 117
    mul-float/2addr v4, v1

    .line 118
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    .line 124
    .line 125
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->h:Z

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->k:Landroid/graphics/RectF;

    .line 130
    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    .line 135
    .line 136
    iget v0, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 137
    .line 138
    iget v1, p0, Lcom/mycompany/app/view/MyIconFrame;->f:F

    .line 139
    .line 140
    iget v2, p0, Lcom/mycompany/app/view/MyIconFrame;->g:F

    .line 141
    .line 142
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 143
    .line 144
    .line 145
    sget v0, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 146
    .line 147
    int-to-float v0, v0

    .line 148
    iget-object v1, p0, Lcom/mycompany/app/view/MyIconFrame;->n:Landroid/graphics/Paint;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/mycompany/app/view/MyIconFrame;->k:Landroid/graphics/RectF;

    .line 151
    .line 152
    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_5
    iget v0, p0, Lcom/mycompany/app/view/MyIconFrame;->f:F

    .line 160
    .line 161
    iget v1, p0, Lcom/mycompany/app/view/MyIconFrame;->g:F

    .line 162
    .line 163
    iget v2, p0, Lcom/mycompany/app/view/MyIconFrame;->j:F

    .line 164
    .line 165
    iget v3, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 166
    .line 167
    mul-float/2addr v2, v3

    .line 168
    iget-object v3, p0, Lcom/mycompany/app/view/MyIconFrame;->n:Landroid/graphics/Paint;

    .line 169
    .line 170
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final e(ZZ)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyIconFrame;->h:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyIconFrame;->i:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    int-to-float v0, p1

    .line 18
    const/high16 v1, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/mycompany/app/view/MyIconFrame;->f:F

    .line 22
    .line 23
    int-to-float v0, p2

    .line 24
    div-float/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/mycompany/app/view/MyIconFrame;->g:F

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyIconFrame;->d(II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->r:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/view/MyIconFrame;->s:Landroid/graphics/Paint;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/view/MyIconFrame;->s:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->s:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->s:Landroid/graphics/Paint;

    .line 34
    .line 35
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const v1, -0x7f9e9e9f

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const v1, -0x7f595616

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->h()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 12
    .line 13
    const v1, 0x3f4ccccd    # 0.8f

    .line 14
    .line 15
    .line 16
    cmpg-float v2, v0, v1

    .line 17
    .line 18
    if-gtz v2, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    iput v0, p0, Lcom/mycompany/app/view/MyIconFrame;->z:F

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyIconFrame;->A:Z

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v3, v3, [F

    .line 28
    .line 29
    aput v0, v3, v2

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput v1, v3, v0

    .line 33
    .line 34
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyIconFrame;->r:Z

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const-wide/16 v1, 0x190

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const-wide/16 v1, 0xc8

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    new-instance v1, Lcom/mycompany/app/view/MyIconFrame$5;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyIconFrame$5;-><init>(Lcom/mycompany/app/view/MyIconFrame;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    new-instance v1, Lcom/mycompany/app/view/MyIconFrame$6;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyIconFrame$6;-><init>(Lcom/mycompany/app/view/MyIconFrame;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/view/MyIconFrame;->q:F

    .line 15
    .line 16
    iput v0, p0, Lcom/mycompany/app/view/MyIconFrame;->w:F

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->x:Z

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [F

    .line 23
    .line 24
    fill-array-data v0, :array_0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyIconFrame;->r:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const-wide/16 v1, 0x190

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-wide/16 v1, 0xc8

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    new-instance v1, Lcom/mycompany/app/view/MyIconFrame$1;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyIconFrame$1;-><init>(Lcom/mycompany/app/view/MyIconFrame;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    new-instance v1, Lcom/mycompany/app/view/MyIconFrame$2;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyIconFrame$2;-><init>(Lcom/mycompany/app/view/MyIconFrame;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->c:Z

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

.method public final isPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/FrameLayout;->isPressed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyIconFrame;->p:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p3, p1

    .line 5
    const/high16 p4, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p3, p4

    .line 8
    iput p3, p0, Lcom/mycompany/app/view/MyIconFrame;->f:F

    .line 9
    .line 10
    int-to-float p3, p2

    .line 11
    div-float/2addr p3, p4

    .line 12
    iput p3, p0, Lcom/mycompany/app/view/MyIconFrame;->g:F

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyIconFrame;->d(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->u:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_7

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->n:Landroid/graphics/Paint;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    if-eq v0, v2, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    if-eq v0, v2, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 40
    .line 41
    if-eqz v0, :cond_6

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    float-to-int v0, v0

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    float-to-int v2, v2

    .line 53
    iget-object v3, p0, Lcom/mycompany/app/view/MyIconFrame;->k:Landroid/graphics/RectF;

    .line 54
    .line 55
    invoke-static {v3, v0, v2}, Lcom/mycompany/app/main/MainUtil;->B5(Landroid/graphics/RectF;II)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->g()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame;->u:Landroid/view/View$OnClickListener;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    new-instance v0, Lcom/mycompany/app/view/MyIconFrame$11;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyIconFrame$11;-><init>(Lcom/mycompany/app/view/MyIconFrame;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->g()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    float-to-int v0, v0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    float-to-int v3, v3

    .line 103
    iget-object v4, p0, Lcom/mycompany/app/view/MyIconFrame;->k:Landroid/graphics/RectF;

    .line 104
    .line 105
    invoke-static {v4, v0, v3}, Lcom/mycompany/app/main/MainUtil;->B5(Landroid/graphics/RectF;II)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyIconFrame;->r:Z

    .line 113
    .line 114
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->h()V

    .line 117
    .line 118
    .line 119
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    return p1

    .line 124
    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 125
    .line 126
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    return p1
.end method

.method public setBgPreColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyIconFrame;->l:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyIconFrame;->l:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->n:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->n:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->n:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyIconFrame;->l:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->n:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyIconFrame;->m:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->n:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->c()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->c()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->u:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyIconFrame$9;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconFrame;->v:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyIconFrame$10;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyIconFrame$10;-><init>(Lcom/mycompany/app/view/MyIconFrame;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyIconFrame;->c()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
