.class public Lcom/mycompany/app/view/MyButtonRelative;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;
    }
.end annotation


# instance fields
.field public A:Landroid/graphics/Paint;

.field public B:F

.field public C:F

.field public D:Z

.field public E:F

.field public F:F

.field public G:Z

.field public H:Landroid/view/View$OnClickListener;

.field public I:Landroid/view/View$OnLongClickListener;

.field public J:Z

.field public K:Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;

.field public L:I

.field public M:I

.field public N:I

.field public O:F

.field public P:Z

.field public final Q:Ljava/lang/Runnable;

.field public R:F

.field public S:Z

.field public final T:Ljava/lang/Runnable;

.field public final U:Ljava/lang/Runnable;

.field public final V:Ljava/lang/Runnable;

.field public c:Z

.field public f:Z

.field public g:I

.field public h:Z

.field public i:F

.field public j:Landroid/graphics/RectF;

.field public k:I

.field public l:I

.field public m:Landroid/graphics/Paint;

.field public n:F

.field public o:Landroid/graphics/RectF;

.field public p:I

.field public q:I

.field public r:Landroid/graphics/Paint;

.field public s:Landroid/animation/ValueAnimator;

.field public t:Landroid/animation/ValueAnimator;

.field public u:F

.field public v:Z

.field public w:Landroid/graphics/RectF;

.field public x:I

.field public y:I

.field public z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyButtonRelative$3;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonRelative$3;-><init>(Lcom/mycompany/app/view/MyButtonRelative;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->Q:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyButtonRelative$7;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonRelative$7;-><init>(Lcom/mycompany/app/view/MyButtonRelative;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->T:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance p1, Lcom/mycompany/app/view/MyButtonRelative$11;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->U:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance p1, Lcom/mycompany/app/view/MyButtonRelative$15;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->V:Ljava/lang/Runnable;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->c:Z

    .line 34
    .line 35
    sget v0, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 36
    .line 37
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->g:I

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->f:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    new-instance v0, Landroid/graphics/RectF;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->j:Landroid/graphics/RectF;

    .line 49
    .line 50
    new-instance v0, Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->o:Landroid/graphics/RectF;

    .line 56
    .line 57
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->k:I

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 72
    .line 73
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 79
    .line 80
    iget v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->k:I

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->l:I

    .line 92
    .line 93
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->p:I

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    const v1, -0x1f1f20

    .line 102
    .line 103
    .line 104
    if-eq v0, v1, :cond_2

    .line 105
    .line 106
    const/high16 v1, 0x21000000

    .line 107
    .line 108
    if-ne v0, v1, :cond_3

    .line 109
    .line 110
    :cond_2
    const v0, -0xc0c0c1

    .line 111
    .line 112
    .line 113
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->p:I

    .line 114
    .line 115
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 126
    .line 127
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 133
    .line 134
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->p:I

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->q:I

    .line 146
    .line 147
    :cond_4
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyButtonRelative;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonRelative;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyButtonRelative;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonRelative;->setValPreScaleUp(F)V

    return-void
.end method

.method private setOnlyVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimHide(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyButtonRelative;->setOnlyVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->u:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->u:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 8
    .line 9
    move v2, v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

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
    iput-object v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    move v2, v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    move v0, v1

    .line 25
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v4, 0x40a00000    # 5.0f

    .line 28
    .line 29
    if-eqz v3, :cond_7

    .line 30
    .line 31
    if-eqz v0, :cond_5

    .line 32
    .line 33
    iget-boolean v5, p0, Lcom/mycompany/app/view/MyButtonRelative;->h:Z

    .line 34
    .line 35
    if-nez v5, :cond_5

    .line 36
    .line 37
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->l:I

    .line 38
    .line 39
    int-to-float v3, v3

    .line 40
    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    .line 42
    iget v6, p0, Lcom/mycompany/app/view/MyButtonRelative;->u:F

    .line 43
    .line 44
    sub-float/2addr v5, v6

    .line 45
    mul-float/2addr v5, v3

    .line 46
    mul-float/2addr v5, v4

    .line 47
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget v5, p0, Lcom/mycompany/app/view/MyButtonRelative;->l:I

    .line 52
    .line 53
    if-le v3, v5, :cond_3

    .line 54
    .line 55
    move v3, v5

    .line 56
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->j:Landroid/graphics/RectF;

    .line 62
    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    iget v5, p0, Lcom/mycompany/app/view/MyButtonRelative;->g:I

    .line 66
    .line 67
    int-to-float v5, v5

    .line 68
    iget-object v6, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {p1, v3, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->E:F

    .line 75
    .line 76
    iget v5, p0, Lcom/mycompany/app/view/MyButtonRelative;->F:F

    .line 77
    .line 78
    iget v6, p0, Lcom/mycompany/app/view/MyButtonRelative;->i:F

    .line 79
    .line 80
    iget-object v7, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 81
    .line 82
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    iget v5, p0, Lcom/mycompany/app/view/MyButtonRelative;->l:I

    .line 87
    .line 88
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->j:Landroid/graphics/RectF;

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    iget v5, p0, Lcom/mycompany/app/view/MyButtonRelative;->g:I

    .line 96
    .line 97
    int-to-float v5, v5

    .line 98
    iget-object v6, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {p1, v3, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->E:F

    .line 105
    .line 106
    iget v5, p0, Lcom/mycompany/app/view/MyButtonRelative;->F:F

    .line 107
    .line 108
    iget v6, p0, Lcom/mycompany/app/view/MyButtonRelative;->i:F

    .line 109
    .line 110
    iget-object v7, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 111
    .line 112
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 113
    .line 114
    .line 115
    :cond_7
    :goto_2
    if-eqz v0, :cond_9

    .line 116
    .line 117
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 118
    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->q:I

    .line 122
    .line 123
    int-to-float v2, v2

    .line 124
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->u:F

    .line 125
    .line 126
    const v5, 0x3f4ccccd    # 0.8f

    .line 127
    .line 128
    .line 129
    sub-float/2addr v3, v5

    .line 130
    mul-float/2addr v3, v2

    .line 131
    mul-float/2addr v3, v4

    .line 132
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    .line 141
    .line 142
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->u:F

    .line 143
    .line 144
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->E:F

    .line 145
    .line 146
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->F:F

    .line 147
    .line 148
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->o:Landroid/graphics/RectF;

    .line 152
    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->g:I

    .line 156
    .line 157
    int-to-float v2, v2

    .line 158
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 159
    .line 160
    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_8
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->E:F

    .line 165
    .line 166
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->F:F

    .line 167
    .line 168
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->n:F

    .line 169
    .line 170
    iget-object v4, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 171
    .line 172
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_9
    move v1, v2

    .line 177
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->z:Landroid/graphics/Paint;

    .line 178
    .line 179
    if-eqz v0, :cond_d

    .line 180
    .line 181
    if-eqz v1, :cond_a

    .line 182
    .line 183
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->v:Z

    .line 184
    .line 185
    if-eqz v0, :cond_a

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 188
    .line 189
    .line 190
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->w:Landroid/graphics/RectF;

    .line 191
    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->g:I

    .line 195
    .line 196
    int-to-float v2, v2

    .line 197
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->z:Landroid/graphics/Paint;

    .line 198
    .line 199
    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_b
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->x:I

    .line 204
    .line 205
    int-to-float v0, v0

    .line 206
    const/high16 v2, 0x40000000    # 2.0f

    .line 207
    .line 208
    div-float/2addr v0, v2

    .line 209
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->E:F

    .line 210
    .line 211
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->F:F

    .line 212
    .line 213
    if-eqz v1, :cond_c

    .line 214
    .line 215
    iget v4, p0, Lcom/mycompany/app/view/MyButtonRelative;->n:F

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_c
    iget v4, p0, Lcom/mycompany/app/view/MyButtonRelative;->i:F

    .line 219
    .line 220
    :goto_4
    sub-float/2addr v4, v0

    .line 221
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->z:Landroid/graphics/Paint;

    .line 222
    .line 223
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 224
    .line 225
    .line 226
    :goto_5
    if-eqz v1, :cond_e

    .line 227
    .line 228
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->v:Z

    .line 229
    .line 230
    if-nez v0, :cond_e

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_d
    if-eqz v1, :cond_e

    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 239
    .line 240
    .line 241
    :cond_e
    :goto_6
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .line 243
    .line 244
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->A:Landroid/graphics/Paint;

    .line 245
    .line 246
    if-eqz v0, :cond_10

    .line 247
    .line 248
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->D:Z

    .line 249
    .line 250
    if-eqz v1, :cond_f

    .line 251
    .line 252
    iget v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->E:F

    .line 253
    .line 254
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->C:F

    .line 255
    .line 256
    add-float/2addr v1, v2

    .line 257
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->F:F

    .line 258
    .line 259
    sub-float/2addr v3, v2

    .line 260
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->B:F

    .line 261
    .line 262
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_f
    iget v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->E:F

    .line 267
    .line 268
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->C:F

    .line 269
    .line 270
    sub-float/2addr v1, v2

    .line 271
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->F:F

    .line 272
    .line 273
    sub-float/2addr v3, v2

    .line 274
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->B:F

    .line 275
    .line 276
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 277
    .line 278
    .line 279
    :cond_10
    :goto_7
    return-void
.end method

.method public final e(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->f:Z

    .line 3
    .line 4
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->g:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyButtonRelative;->h:Z

    .line 7
    .line 8
    new-instance p1, Landroid/graphics/RectF;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->j:Landroid/graphics/RectF;

    .line 14
    .line 15
    new-instance p1, Landroid/graphics/RectF;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->o:Landroid/graphics/RectF;

    .line 21
    .line 22
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->c()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->j:Landroid/graphics/RectF;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->o:Landroid/graphics/RectF;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->w:Landroid/graphics/RectF;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->z:Landroid/graphics/Paint;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->A:Landroid/graphics/Paint;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->H:Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->I:Landroid/view/View$OnLongClickListener;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->K:Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;

    .line 27
    .line 28
    return-void
.end method

.method public final g(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->k:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->k:I

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 22
    .line 23
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 29
    .line 30
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->k:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->l:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

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
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->p:I

    .line 50
    .line 51
    if-eq v0, p2, :cond_3

    .line 52
    .line 53
    iput p2, p0, Lcom/mycompany/app/view/MyButtonRelative;->p:I

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 68
    .line 69
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 75
    .line 76
    iget p2, p0, Lcom/mycompany/app/view/MyButtonRelative;->p:I

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->q:I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public final h(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->v:Z

    .line 3
    .line 4
    iget v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->y:I

    .line 5
    .line 6
    if-ne v1, p1, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->x:I

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
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->y:I

    .line 15
    .line 16
    iput p2, p0, Lcom/mycompany/app/view/MyButtonRelative;->x:I

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    if-eqz p2, :cond_3

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->f:Z

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->w:Landroid/graphics/RectF;

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->w:Landroid/graphics/RectF;

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->z:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->z:Landroid/graphics/Paint;

    .line 48
    .line 49
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->z:Landroid/graphics/Paint;

    .line 55
    .line 56
    iget p2, p0, Lcom/mycompany/app/view/MyButtonRelative;->x:I

    .line 57
    .line 58
    int-to-float p2, p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->z:Landroid/graphics/Paint;

    .line 63
    .line 64
    iget p2, p0, Lcom/mycompany/app/view/MyButtonRelative;->y:I

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->w:Landroid/graphics/RectF;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->z:Landroid/graphics/Paint;

    .line 74
    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->u:F

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
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->R:F

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->S:Z

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
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    const-wide/16 v1, 0xc8

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/view/MyButtonRelative$5;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonRelative$5;-><init>(Lcom/mycompany/app/view/MyButtonRelative;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/view/MyButtonRelative$6;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonRelative$6;-><init>(Lcom/mycompany/app/view/MyButtonRelative;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final isPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/RelativeLayout;->isPressed()Z

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

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

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
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->u:F

    .line 15
    .line 16
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->O:F

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->P:Z

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
    iput-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    const-wide/16 v1, 0xc8

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    new-instance v1, Lcom/mycompany/app/view/MyButtonRelative$1;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonRelative$1;-><init>(Lcom/mycompany/app/view/MyButtonRelative;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    new-instance v1, Lcom/mycompany/app/view/MyButtonRelative$2;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyButtonRelative$2;-><init>(Lcom/mycompany/app/view/MyButtonRelative;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->t:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->s:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->c()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

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
    iput p4, p0, Lcom/mycompany/app/view/MyButtonRelative;->E:F

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    div-float v0, p2, p3

    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->F:F

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sub-float v1, p4, v0

    .line 18
    .line 19
    iput v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->i:F

    .line 20
    .line 21
    iput p4, p0, Lcom/mycompany/app/view/MyButtonRelative;->n:F

    .line 22
    .line 23
    iget-object p4, p0, Lcom/mycompany/app/view/MyButtonRelative;->j:Landroid/graphics/RectF;

    .line 24
    .line 25
    if-eqz p4, :cond_0

    .line 26
    .line 27
    sub-float v1, p1, v0

    .line 28
    .line 29
    sub-float v2, p2, v0

    .line 30
    .line 31
    invoke-virtual {p4, v0, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p4, p0, Lcom/mycompany/app/view/MyButtonRelative;->o:Landroid/graphics/RectF;

    .line 35
    .line 36
    if-eqz p4, :cond_1

    .line 37
    .line 38
    invoke-virtual {p4, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p4, p0, Lcom/mycompany/app/view/MyButtonRelative;->w:Landroid/graphics/RectF;

    .line 42
    .line 43
    if-eqz p4, :cond_2

    .line 44
    .line 45
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->x:I

    .line 46
    .line 47
    int-to-float v0, v0

    .line 48
    div-float/2addr v0, p3

    .line 49
    sub-float/2addr p1, v0

    .line 50
    sub-float/2addr p2, v0

    .line 51
    invoke-virtual {p4, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->H:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_c

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

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
    const/4 v2, 0x1

    .line 29
    if-eqz v0, :cond_9

    .line 30
    .line 31
    if-eq v0, v2, :cond_5

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq v0, v2, :cond_7

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    float-to-int v0, v0

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    float-to-int v2, v2

    .line 57
    sget v3, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 58
    .line 59
    invoke-static {v0, v2, v3, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->i()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->K:Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;

    .line 71
    .line 72
    if-eqz v0, :cond_b

    .line 73
    .line 74
    invoke-interface {v0}, Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;->a()V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->K:Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;

    .line 80
    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->L:I

    .line 84
    .line 85
    int-to-float v3, v3

    .line 86
    int-to-float v4, v0

    .line 87
    iget v5, p0, Lcom/mycompany/app/view/MyButtonRelative;->M:I

    .line 88
    .line 89
    int-to-float v5, v5

    .line 90
    int-to-float v6, v2

    .line 91
    invoke-static {v3, v4, v5, v6}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 96
    .line 97
    int-to-float v4, v4

    .line 98
    cmpl-float v3, v3, v4

    .line 99
    .line 100
    if-lez v3, :cond_4

    .line 101
    .line 102
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->i()V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->K:Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;

    .line 108
    .line 109
    if-eqz v0, :cond_b

    .line 110
    .line 111
    invoke-interface {v0}, Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;->a()V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->N:I

    .line 116
    .line 117
    if-eqz v3, :cond_b

    .line 118
    .line 119
    iget v3, p0, Lcom/mycompany/app/view/MyButtonRelative;->L:I

    .line 120
    .line 121
    int-to-float v3, v3

    .line 122
    int-to-float v0, v0

    .line 123
    iget v4, p0, Lcom/mycompany/app/view/MyButtonRelative;->M:I

    .line 124
    .line 125
    int-to-float v4, v4

    .line 126
    int-to-float v2, v2

    .line 127
    invoke-static {v3, v0, v4, v2}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iget v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->N:I

    .line 132
    .line 133
    int-to-float v2, v2

    .line 134
    cmpl-float v0, v0, v2

    .line 135
    .line 136
    if-lez v0, :cond_b

    .line 137
    .line 138
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->i()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->H:Landroid/view/View$OnClickListener;

    .line 149
    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    new-instance v0, Lcom/mycompany/app/view/MyButtonRelative$19;

    .line 153
    .line 154
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyButtonRelative$19;-><init>(Lcom/mycompany/app/view/MyButtonRelative;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 158
    .line 159
    .line 160
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->K:Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;

    .line 161
    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    invoke-interface {v0}, Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;->b()V

    .line 165
    .line 166
    .line 167
    :cond_7
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 168
    .line 169
    if-eqz v0, :cond_8

    .line 170
    .line 171
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->i()V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_9
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->j()V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->K:Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;

    .line 187
    .line 188
    if-nez v0, :cond_a

    .line 189
    .line 190
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->N:I

    .line 191
    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->L:I

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->M:I

    .line 213
    .line 214
    :cond_b
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    return p1

    .line 219
    :cond_c
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 220
    .line 221
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    return p1
.end method

.method public setBgNorColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->k:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->k:I

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->k:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->l:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->m:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setBgPreColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->p:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->p:I

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 21
    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->p:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->q:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->r:Landroid/graphics/Paint;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public setClickSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->N:I

    .line 2
    .line 3
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->d()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->d()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setMyDragListener(Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->K:Lcom/mycompany/app/view/MyButtonRelative$MyDragListener;

    .line 2
    .line 3
    return-void
.end method

.method public setNoti(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->A:Landroid/graphics/Paint;

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->A:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->A:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->A:Landroid/graphics/Paint;

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
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->D:Z

    .line 41
    .line 42
    const/high16 v0, 0x40400000    # 3.0f

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->B:F

    .line 49
    .line 50
    const/high16 v0, 0x41500000    # 13.0f

    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->C:F

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->A:Landroid/graphics/Paint;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->A:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->invalidate()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->H:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonRelative$17;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->I:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    new-instance p1, Lcom/mycompany/app/view/MyButtonRelative$18;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyButtonRelative$18;-><init>(Lcom/mycompany/app/view/MyButtonRelative;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTouched(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyButtonRelative;->G:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->j()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->i()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyButtonRelative;->d()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
