.class public Lcom/mycompany/app/view/MyButtonText;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Landroid/graphics/Paint;

.field public C:Landroid/animation/ValueAnimator;

.field public D:Landroid/animation/ValueAnimator;

.field public E:F

.field public F:Z

.field public G:Landroid/graphics/RectF;

.field public H:I

.field public I:I

.field public J:Landroid/graphics/Paint;

.field public K:F

.field public L:F

.field public M:Z

.field public N:Landroid/view/View$OnClickListener;

.field public O:Landroid/view/View$OnLongClickListener;

.field public P:F

.field public Q:Z

.field public final R:Ljava/lang/Runnable;

.field public S:F

.field public T:Z

.field public final U:Ljava/lang/Runnable;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Z

.field public p:Z

.field public q:F

.field public r:I

.field public s:Landroid/graphics/RectF;

.field public t:I

.field public u:I

.field public v:Landroid/graphics/Paint;

.field public w:Z

.field public x:F

.field public y:Landroid/graphics/RectF;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lcom/mycompany/app/view/MyButtonText$3;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonText$3;-><init>(Lcom/mycompany/app/view/MyButtonText;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->R:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance p1, Lcom/mycompany/app/view/MyButtonText$7;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonText$7;-><init>(Lcom/mycompany/app/view/MyButtonText;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->U:Ljava/lang/Runnable;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonText;->l:Z

    .line 21
    .line 22
    sget v0, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 23
    .line 24
    iput v0, p0, Lcom/mycompany/app/view/MyButtonText;->n:I

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->m:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/RectF;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->s:Landroid/graphics/RectF;

    .line 36
    .line 37
    new-instance v0, Landroid/graphics/RectF;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->y:Landroid/graphics/RectF;

    .line 43
    .line 44
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->t:I

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 59
    .line 60
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 66
    .line 67
    iget v1, p0, Lcom/mycompany/app/view/MyButtonText;->t:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/mycompany/app/view/MyButtonText;->u:I

    .line 79
    .line 80
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->z:I

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    const v1, -0x1f1f20

    .line 89
    .line 90
    .line 91
    if-eq v0, v1, :cond_2

    .line 92
    .line 93
    const/high16 v1, 0x21000000

    .line 94
    .line 95
    if-ne v0, v1, :cond_3

    .line 96
    .line 97
    :cond_2
    const v0, -0xc0c0c1

    .line 98
    .line 99
    .line 100
    iput v0, p0, Lcom/mycompany/app/view/MyButtonText;->z:I

    .line 101
    .line 102
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 113
    .line 114
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 120
    .line 121
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->z:I

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->A:I

    .line 133
    .line 134
    :cond_4
    return-void
.end method

.method public static bridge synthetic q(Lcom/mycompany/app/view/MyButtonText;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonText;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/mycompany/app/view/MyButtonText;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonText;->setValPreScaleUp(F)V

    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->E:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->E:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->l:Z

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

.method public final isPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/TextView;->isPressed()Z

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    move v0, v1

    .line 24
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 25
    .line 26
    const/high16 v4, 0x40a00000    # 5.0f

    .line 27
    .line 28
    if-eqz v3, :cond_7

    .line 29
    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    iget-boolean v5, p0, Lcom/mycompany/app/view/MyButtonText;->p:Z

    .line 33
    .line 34
    if-nez v5, :cond_5

    .line 35
    .line 36
    iget v3, p0, Lcom/mycompany/app/view/MyButtonText;->u:I

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    const/high16 v5, 0x3f800000    # 1.0f

    .line 40
    .line 41
    iget v6, p0, Lcom/mycompany/app/view/MyButtonText;->E:F

    .line 42
    .line 43
    sub-float/2addr v5, v6

    .line 44
    mul-float/2addr v5, v3

    .line 45
    mul-float/2addr v5, v4

    .line 46
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget v5, p0, Lcom/mycompany/app/view/MyButtonText;->u:I

    .line 51
    .line 52
    if-le v3, v5, :cond_3

    .line 53
    .line 54
    move v3, v5

    .line 55
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonText;->s:Landroid/graphics/RectF;

    .line 61
    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    iget v5, p0, Lcom/mycompany/app/view/MyButtonText;->n:I

    .line 65
    .line 66
    int-to-float v5, v5

    .line 67
    iget-object v6, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p1, v3, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget v3, p0, Lcom/mycompany/app/view/MyButtonText;->K:F

    .line 74
    .line 75
    iget v5, p0, Lcom/mycompany/app/view/MyButtonText;->L:F

    .line 76
    .line 77
    iget v6, p0, Lcom/mycompany/app/view/MyButtonText;->q:F

    .line 78
    .line 79
    iget-object v7, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iget v5, p0, Lcom/mycompany/app/view/MyButtonText;->u:I

    .line 86
    .line 87
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonText;->s:Landroid/graphics/RectF;

    .line 91
    .line 92
    if-eqz v3, :cond_6

    .line 93
    .line 94
    iget v5, p0, Lcom/mycompany/app/view/MyButtonText;->n:I

    .line 95
    .line 96
    int-to-float v5, v5

    .line 97
    iget-object v6, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 98
    .line 99
    invoke-virtual {p1, v3, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    iget v3, p0, Lcom/mycompany/app/view/MyButtonText;->K:F

    .line 104
    .line 105
    iget v5, p0, Lcom/mycompany/app/view/MyButtonText;->L:F

    .line 106
    .line 107
    iget v6, p0, Lcom/mycompany/app/view/MyButtonText;->q:F

    .line 108
    .line 109
    iget-object v7, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_2
    if-eqz v0, :cond_9

    .line 115
    .line 116
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 117
    .line 118
    if-eqz v0, :cond_9

    .line 119
    .line 120
    iget v2, p0, Lcom/mycompany/app/view/MyButtonText;->A:I

    .line 121
    .line 122
    int-to-float v2, v2

    .line 123
    iget v3, p0, Lcom/mycompany/app/view/MyButtonText;->E:F

    .line 124
    .line 125
    const v5, 0x3f4ccccd    # 0.8f

    .line 126
    .line 127
    .line 128
    sub-float/2addr v3, v5

    .line 129
    mul-float/2addr v3, v2

    .line 130
    mul-float/2addr v3, v4

    .line 131
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    .line 140
    .line 141
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->E:F

    .line 142
    .line 143
    iget v2, p0, Lcom/mycompany/app/view/MyButtonText;->K:F

    .line 144
    .line 145
    iget v3, p0, Lcom/mycompany/app/view/MyButtonText;->L:F

    .line 146
    .line 147
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->y:Landroid/graphics/RectF;

    .line 151
    .line 152
    if-eqz v0, :cond_8

    .line 153
    .line 154
    iget v2, p0, Lcom/mycompany/app/view/MyButtonText;->n:I

    .line 155
    .line 156
    int-to-float v2, v2

    .line 157
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 158
    .line 159
    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->K:F

    .line 164
    .line 165
    iget v2, p0, Lcom/mycompany/app/view/MyButtonText;->L:F

    .line 166
    .line 167
    iget v3, p0, Lcom/mycompany/app/view/MyButtonText;->x:F

    .line 168
    .line 169
    iget-object v4, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 170
    .line 171
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_9
    move v1, v2

    .line 176
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->J:Landroid/graphics/Paint;

    .line 177
    .line 178
    if-eqz v0, :cond_d

    .line 179
    .line 180
    if-eqz v1, :cond_a

    .line 181
    .line 182
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->F:Z

    .line 183
    .line 184
    if-eqz v0, :cond_a

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 187
    .line 188
    .line 189
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->G:Landroid/graphics/RectF;

    .line 190
    .line 191
    if-eqz v0, :cond_b

    .line 192
    .line 193
    iget v2, p0, Lcom/mycompany/app/view/MyButtonText;->n:I

    .line 194
    .line 195
    int-to-float v2, v2

    .line 196
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonText;->J:Landroid/graphics/Paint;

    .line 197
    .line 198
    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_b
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->H:I

    .line 203
    .line 204
    int-to-float v0, v0

    .line 205
    const/high16 v2, 0x40000000    # 2.0f

    .line 206
    .line 207
    div-float/2addr v0, v2

    .line 208
    iget v2, p0, Lcom/mycompany/app/view/MyButtonText;->K:F

    .line 209
    .line 210
    iget v3, p0, Lcom/mycompany/app/view/MyButtonText;->L:F

    .line 211
    .line 212
    if-eqz v1, :cond_c

    .line 213
    .line 214
    iget v4, p0, Lcom/mycompany/app/view/MyButtonText;->x:F

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_c
    iget v4, p0, Lcom/mycompany/app/view/MyButtonText;->q:F

    .line 218
    .line 219
    :goto_4
    sub-float/2addr v4, v0

    .line 220
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->J:Landroid/graphics/Paint;

    .line 221
    .line 222
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 223
    .line 224
    .line 225
    :goto_5
    if-eqz v1, :cond_e

    .line 226
    .line 227
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->F:Z

    .line 228
    .line 229
    if-nez v0, :cond_e

    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_d
    if-eqz v1, :cond_e

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 238
    .line 239
    .line 240
    :cond_e
    :goto_6
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    .line 243
    :catch_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    const/high16 p3, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float p4, p1, p3

    .line 8
    .line 9
    iput p4, p0, Lcom/mycompany/app/view/MyButtonText;->K:F

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    div-float v0, p2, p3

    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/view/MyButtonText;->L:F

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyButtonText;->o:Z

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    sub-float v1, p4, v2

    .line 22
    .line 23
    iput v1, p0, Lcom/mycompany/app/view/MyButtonText;->q:F

    .line 24
    .line 25
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyButtonText;->w:Z

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iput p4, p0, Lcom/mycompany/app/view/MyButtonText;->x:F

    .line 30
    .line 31
    :cond_1
    iget p4, p0, Lcom/mycompany/app/view/MyButtonText;->r:I

    .line 32
    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    int-to-float p4, p4

    .line 36
    div-float/2addr p4, p3

    .line 37
    iget-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->s:Landroid/graphics/RectF;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    sub-float v3, v0, p4

    .line 42
    .line 43
    add-float/2addr v3, v2

    .line 44
    sub-float v4, p1, v2

    .line 45
    .line 46
    add-float/2addr v0, p4

    .line 47
    sub-float/2addr v0, v2

    .line 48
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object p4, p0, Lcom/mycompany/app/view/MyButtonText;->s:Landroid/graphics/RectF;

    .line 53
    .line 54
    if-eqz p4, :cond_3

    .line 55
    .line 56
    sub-float v0, p1, v2

    .line 57
    .line 58
    sub-float v1, p2, v2

    .line 59
    .line 60
    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    iget-object p4, p0, Lcom/mycompany/app/view/MyButtonText;->y:Landroid/graphics/RectF;

    .line 64
    .line 65
    if-eqz p4, :cond_4

    .line 66
    .line 67
    invoke-virtual {p4, v2, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object p4, p0, Lcom/mycompany/app/view/MyButtonText;->G:Landroid/graphics/RectF;

    .line 71
    .line 72
    if-eqz p4, :cond_5

    .line 73
    .line 74
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->H:I

    .line 75
    .line 76
    int-to-float v0, v0

    .line 77
    div-float/2addr v0, p3

    .line 78
    sub-float/2addr p1, v0

    .line 79
    sub-float/2addr p2, v0

    .line 80
    invoke-virtual {p4, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 81
    .line 82
    .line 83
    :cond_5
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->N:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_9

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    if-eq v0, v3, :cond_2

    .line 33
    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq v0, v2, :cond_3

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 42
    .line 43
    if-eqz v0, :cond_8

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    float-to-int v0, v0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    float-to-int v2, v2

    .line 55
    sget v3, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 56
    .line 57
    invoke-static {v0, v2, v3, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_8

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->w()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->N:Landroid/view/View$OnClickListener;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    new-instance v0, Lcom/mycompany/app/view/MyButtonText$11;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonText$11;-><init>(Lcom/mycompany/app/view/MyButtonText;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->w()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 98
    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    const v0, 0x3f4ccccd    # 0.8f

    .line 108
    .line 109
    .line 110
    iput v0, p0, Lcom/mycompany/app/view/MyButtonText;->E:F

    .line 111
    .line 112
    iput v0, p0, Lcom/mycompany/app/view/MyButtonText;->P:F

    .line 113
    .line 114
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonText;->Q:Z

    .line 115
    .line 116
    new-array v0, v2, [F

    .line 117
    .line 118
    fill-array-data v0, :array_0

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 126
    .line 127
    const-wide/16 v1, 0xc8

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    new-instance v1, Lcom/mycompany/app/view/MyButtonText$1;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonText$1;-><init>(Lcom/mycompany/app/view/MyButtonText;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    new-instance v1, Lcom/mycompany/app/view/MyButtonText$2;

    .line 150
    .line 151
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonText$2;-><init>(Lcom/mycompany/app/view/MyButtonText;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 162
    .line 163
    .line 164
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 167
    .line 168
    .line 169
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    return p1

    .line 174
    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 175
    .line 176
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    return p1

    .line 181
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 8
    .line 9
    move v2, v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

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
    iput-object v3, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    move v2, v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->invalidate()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public setBgNorColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->t:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->t:I

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->t:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->u:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setBgNorFixed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonText;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBgPreColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->z:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->z:I

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->z:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->A:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setBgSubHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->s()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->s()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->N:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonText$9;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->O:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonText$10;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonText$10;-><init>(Lcom/mycompany/app/view/MyButtonText;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public setRoundRect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonText;->m:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/RectF;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->s:Landroid/graphics/RectF;

    .line 11
    .line 12
    new-instance p1, Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->y:Landroid/graphics/RectF;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->s:Landroid/graphics/RectF;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->y:Landroid/graphics/RectF;

    .line 24
    .line 25
    return-void
.end method

.method public setTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonText;->M:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->invalidate()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->s()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->l:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->s:Landroid/graphics/RectF;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->y:Landroid/graphics/RectF;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->G:Landroid/graphics/RectF;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->J:Landroid/graphics/Paint;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->N:Landroid/view/View$OnClickListener;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->O:Landroid/view/View$OnLongClickListener;

    .line 38
    .line 39
    return-void
.end method

.method public final u(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->t:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->t:I

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 22
    .line 23
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 29
    .line 30
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->t:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->u:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->v:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    move p1, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->z:I

    .line 50
    .line 51
    if-eq v0, p2, :cond_3

    .line 52
    .line 53
    iput p2, p0, Lcom/mycompany/app/view/MyButtonText;->z:I

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    new-instance p1, Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 68
    .line 69
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 75
    .line 76
    iget p2, p0, Lcom/mycompany/app/view/MyButtonText;->z:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->A:I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move v2, p1

    .line 94
    :goto_2
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->invalidate()V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public final v(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonText;->F:Z

    .line 3
    .line 4
    iget v1, p0, Lcom/mycompany/app/view/MyButtonText;->I:I

    .line 5
    .line 6
    if-ne v1, p1, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lcom/mycompany/app/view/MyButtonText;->H:I

    .line 9
    .line 10
    if-eq v1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonText;->I:I

    .line 15
    .line 16
    iput p2, p0, Lcom/mycompany/app/view/MyButtonText;->H:I

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    if-eqz p2, :cond_3

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyButtonText;->m:Z

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->G:Landroid/graphics/RectF;

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    new-instance p1, Landroid/graphics/RectF;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->G:Landroid/graphics/RectF;

    .line 36
    .line 37
    :cond_2
    new-instance p1, Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->J:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->J:Landroid/graphics/Paint;

    .line 48
    .line 49
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->J:Landroid/graphics/Paint;

    .line 55
    .line 56
    iget p2, p0, Lcom/mycompany/app/view/MyButtonText;->H:I

    .line 57
    .line 58
    int-to-float p2, p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->J:Landroid/graphics/Paint;

    .line 63
    .line 64
    iget p2, p0, Lcom/mycompany/app/view/MyButtonText;->I:I

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->G:Landroid/graphics/RectF;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonText;->J:Landroid/graphics/Paint;

    .line 74
    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonText;->invalidate()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->B:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonText;->E:F

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
    iput v0, p0, Lcom/mycompany/app/view/MyButtonText;->S:F

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonText;->T:Z

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
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    const-wide/16 v1, 0xc8

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/view/MyButtonText$5;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonText$5;-><init>(Lcom/mycompany/app/view/MyButtonText;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/view/MyButtonText$6;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonText$6;-><init>(Lcom/mycompany/app/view/MyButtonText;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->C:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonText;->D:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method
