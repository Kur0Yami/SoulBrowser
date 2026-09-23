.class public Lcom/mycompany/app/view/MyMoveFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public A:Landroid/animation/ValueAnimator;

.field public B:F

.field public C:F

.field public D:Z

.field public final E:Ljava/lang/Runnable;

.field public c:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:F

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyMoveFrame$3;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyMoveFrame$3;-><init>(Lcom/mycompany/app/view/MyMoveFrame;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyMoveFrame;->E:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyMoveFrame;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyMoveFrame;->setValAnimMove(F)V

    return-void
.end method

.method private setValAnimMove(F)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->B:F

    .line 2
    .line 3
    div-float/2addr p1, v0

    .line 4
    iget v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->t:I

    .line 5
    .line 6
    int-to-float v1, v0

    .line 7
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->r:I

    .line 8
    .line 9
    sub-int/2addr v0, v2

    .line 10
    int-to-float v0, v0

    .line 11
    mul-float/2addr v0, p1

    .line 12
    sub-float/2addr v1, v0

    .line 13
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->u:I

    .line 18
    .line 19
    int-to-float v2, v1

    .line 20
    iget v3, p0, Lcom/mycompany/app/view/MyMoveFrame;->s:I

    .line 21
    .line 22
    sub-int/2addr v1, v3

    .line 23
    int-to-float v1, v1

    .line 24
    mul-float/2addr v1, p1

    .line 25
    sub-float/2addr v2, v1

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->v:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->w:I

    .line 35
    .line 36
    if-ne p1, v1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/view/MyMoveFrame;->c(II)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->h:Landroid/graphics/Paint;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->i:Landroid/graphics/Paint;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->A:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->c:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->z:I

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->p:I

    .line 7
    .line 8
    add-int v2, p1, v1

    .line 9
    .line 10
    iget v3, p0, Lcom/mycompany/app/view/MyMoveFrame;->n:I

    .line 11
    .line 12
    if-le v2, v3, :cond_1

    .line 13
    .line 14
    sub-int p1, v3, v1

    .line 15
    .line 16
    :cond_1
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->q:I

    .line 17
    .line 18
    add-int v3, p2, v2

    .line 19
    .line 20
    iget v4, p0, Lcom/mycompany/app/view/MyMoveFrame;->o:I

    .line 21
    .line 22
    if-le v3, v4, :cond_2

    .line 23
    .line 24
    sub-int p2, v4, v2

    .line 25
    .line 26
    :cond_2
    const/4 v2, 0x0

    .line 27
    if-gez p1, :cond_3

    .line 28
    .line 29
    move p1, v2

    .line 30
    :cond_3
    if-gez p2, :cond_4

    .line 31
    .line 32
    move p2, v2

    .line 33
    :cond_4
    iput p1, p0, Lcom/mycompany/app/view/MyMoveFrame;->v:I

    .line 34
    .line 35
    iput p2, p0, Lcom/mycompany/app/view/MyMoveFrame;->w:I

    .line 36
    .line 37
    div-int/lit8 v2, v1, 0x2

    .line 38
    .line 39
    add-int v3, p1, v2

    .line 40
    .line 41
    iput v3, p0, Lcom/mycompany/app/view/MyMoveFrame;->x:I

    .line 42
    .line 43
    add-int/2addr v2, p2

    .line 44
    iput v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->y:I

    .line 45
    .line 46
    sget v2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 47
    .line 48
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 49
    .line 50
    sub-int/2addr v2, v3

    .line 51
    sub-int/2addr v1, v2

    .line 52
    div-int/lit8 v1, v1, 0x2

    .line 53
    .line 54
    add-int/2addr p1, v1

    .line 55
    add-int/2addr p2, v1

    .line 56
    add-int v1, p1, v2

    .line 57
    .line 58
    add-int/2addr v2, p2

    .line 59
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->h:Landroid/graphics/Paint;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->x:I

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->y:I

    .line 16
    .line 17
    int-to-float v2, v2

    .line 18
    iget v3, p0, Lcom/mycompany/app/view/MyMoveFrame;->g:F

    .line 19
    .line 20
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->i:Landroid/graphics/Paint;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget v1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    const/high16 v2, 0x40000000    # 2.0f

    .line 31
    .line 32
    div-float/2addr v1, v2

    .line 33
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->x:I

    .line 34
    .line 35
    int-to-float v2, v2

    .line 36
    iget v3, p0, Lcom/mycompany/app/view/MyMoveFrame;->y:I

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    iget v4, p0, Lcom/mycompany/app/view/MyMoveFrame;->g:F

    .line 40
    .line 41
    sub-float/2addr v4, v1

    .line 42
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_7

    .line 14
    .line 15
    const/high16 v3, 0x40000000    # 2.0f

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v2, v6, :cond_2

    .line 21
    .line 22
    if-eq v2, v5, :cond_0

    .line 23
    .line 24
    if-eq v2, v4, :cond_2

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-eqz v2, :cond_8

    .line 31
    .line 32
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->j:I

    .line 33
    .line 34
    int-to-float v2, v2

    .line 35
    iget v4, p0, Lcom/mycompany/app/view/MyMoveFrame;->k:I

    .line 36
    .line 37
    int-to-float v4, v4

    .line 38
    invoke-static {v2, v0, v4, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 43
    .line 44
    int-to-float v4, v4

    .line 45
    div-float/2addr v4, v3

    .line 46
    cmpg-float v2, v2, v4

    .line 47
    .line 48
    if-gez v2, :cond_1

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_1
    float-to-int v0, v0

    .line 53
    iput v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->j:I

    .line 54
    .line 55
    float-to-int v1, v1

    .line 56
    iput v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->k:I

    .line 57
    .line 58
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->l:I

    .line 59
    .line 60
    add-int/2addr v0, v2

    .line 61
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->m:I

    .line 62
    .line 63
    add-int/2addr v1, v2

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyMoveFrame;->c(II)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    if-eqz v0, :cond_8

    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->A:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_3
    iget v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->n:I

    .line 80
    .line 81
    int-to-float v0, v0

    .line 82
    const/high16 v1, 0x40400000    # 3.0f

    .line 83
    .line 84
    div-float/2addr v0, v1

    .line 85
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->v:I

    .line 90
    .line 91
    iput v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->r:I

    .line 92
    .line 93
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->w:I

    .line 94
    .line 95
    iput v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->s:I

    .line 96
    .line 97
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->p:I

    .line 98
    .line 99
    div-int/lit8 v7, v2, 0x2

    .line 100
    .line 101
    add-int/2addr v7, v1

    .line 102
    if-ge v7, v0, :cond_4

    .line 103
    .line 104
    iput v6, p0, Lcom/mycompany/app/view/MyMoveFrame;->z:I

    .line 105
    .line 106
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 107
    .line 108
    iput v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->t:I

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->n:I

    .line 112
    .line 113
    sub-int v0, v1, v0

    .line 114
    .line 115
    if-le v7, v0, :cond_5

    .line 116
    .line 117
    iput v4, p0, Lcom/mycompany/app/view/MyMoveFrame;->z:I

    .line 118
    .line 119
    sub-int/2addr v1, v2

    .line 120
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 121
    .line 122
    sub-int/2addr v1, v0

    .line 123
    iput v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->t:I

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    iput v5, p0, Lcom/mycompany/app/view/MyMoveFrame;->z:I

    .line 127
    .line 128
    sub-int/2addr v1, v2

    .line 129
    int-to-float v0, v1

    .line 130
    div-float/2addr v0, v3

    .line 131
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->t:I

    .line 136
    .line 137
    :goto_0
    iget v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->o:I

    .line 138
    .line 139
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->q:I

    .line 140
    .line 141
    sub-int/2addr v0, v1

    .line 142
    int-to-float v0, v0

    .line 143
    div-float/2addr v0, v3

    .line 144
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->u:I

    .line 149
    .line 150
    iget v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->r:I

    .line 151
    .line 152
    int-to-float v1, v1

    .line 153
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->t:I

    .line 154
    .line 155
    int-to-float v2, v2

    .line 156
    iget v3, p0, Lcom/mycompany/app/view/MyMoveFrame;->s:I

    .line 157
    .line 158
    int-to-float v3, v3

    .line 159
    int-to-float v0, v0

    .line 160
    invoke-static {v1, v2, v3, v0}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    const/4 v1, 0x0

    .line 165
    cmpg-float v2, v0, v1

    .line 166
    .line 167
    if-gtz v2, :cond_6

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyMoveFrame;->b()V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_6
    iput v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->B:F

    .line 174
    .line 175
    iput v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->C:F

    .line 176
    .line 177
    const/4 v2, 0x0

    .line 178
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->D:Z

    .line 179
    .line 180
    new-array v3, v5, [F

    .line 181
    .line 182
    aput v0, v3, v2

    .line 183
    .line 184
    aput v1, v3, v6

    .line 185
    .line 186
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iput-object v1, p0, Lcom/mycompany/app/view/MyMoveFrame;->A:Landroid/animation/ValueAnimator;

    .line 191
    .line 192
    const/high16 v2, 0x43c80000    # 400.0f

    .line 193
    .line 194
    mul-float/2addr v0, v2

    .line 195
    iget v2, p0, Lcom/mycompany/app/view/MyMoveFrame;->n:I

    .line 196
    .line 197
    iget v3, p0, Lcom/mycompany/app/view/MyMoveFrame;->o:I

    .line 198
    .line 199
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    int-to-float v2, v2

    .line 204
    div-float/2addr v0, v2

    .line 205
    float-to-long v2, v0

    .line 206
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->A:Landroid/animation/ValueAnimator;

    .line 210
    .line 211
    new-instance v1, Lcom/mycompany/app/view/MyMoveFrame$1;

    .line 212
    .line 213
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyMoveFrame$1;-><init>(Lcom/mycompany/app/view/MyMoveFrame;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->A:Landroid/animation/ValueAnimator;

    .line 220
    .line 221
    new-instance v1, Lcom/mycompany/app/view/MyMoveFrame$2;

    .line 222
    .line 223
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyMoveFrame$2;-><init>(Lcom/mycompany/app/view/MyMoveFrame;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->A:Landroid/animation/ValueAnimator;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_7
    float-to-int v0, v0

    .line 236
    iput v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->j:I

    .line 237
    .line 238
    float-to-int v0, v1

    .line 239
    iput v0, p0, Lcom/mycompany/app/view/MyMoveFrame;->k:I

    .line 240
    .line 241
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    return p1
.end method

.method public setMoveListener(Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyMoveFrame;->c:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 2
    .line 3
    return-void
.end method
