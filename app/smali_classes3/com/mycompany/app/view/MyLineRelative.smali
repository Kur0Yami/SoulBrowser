.class public Lcom/mycompany/app/view/MyLineRelative;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:F

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/Paint;

.field public m:F

.field public n:F

.field public o:Z

.field public p:Z

.field public q:Landroid/animation/AnimatorSet;

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public final v:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyLineRelative$4;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyLineRelative$4;-><init>(Lcom/mycompany/app/view/MyLineRelative;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->v:Ljava/lang/Runnable;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineRelative;->c:Z

    .line 13
    .line 14
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineRelative;->p:Z

    .line 17
    .line 18
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyLineRelative;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyLineRelative;->setValAnimator(I)V

    return-void
.end method

.method private setValAnimator(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyLineRelative;->s:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineRelative;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->f:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->h:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyLineRelative;->i:I

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
    iput v1, p0, Lcom/mycompany/app/view/MyLineRelative;->j:F

    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 34
    .line 35
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

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

.method public final c(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->f:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->g:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyLineRelative;->i:I

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
    iput v1, p0, Lcom/mycompany/app/view/MyLineRelative;->j:F

    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 34
    .line 35
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

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

.method public final d(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->f:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->g:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->h:Z

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/view/MyLineRelative;->i:I

    .line 9
    .line 10
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const p1, -0xc0c0c1

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const p1, -0x252526

    .line 19
    .line 20
    .line 21
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 22
    .line 23
    iput v1, p0, Lcom/mycompany/app/view/MyLineRelative;->j:F

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 36
    .line 37
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 48
    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyLineRelative;->c:Z

    .line 2
    .line 3
    if-nez v1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Lcom/mycompany/app/view/MyLineRelative;->r:I

    .line 15
    .line 16
    iget v2, p0, Lcom/mycompany/app/view/MyLineRelative;->s:I

    .line 17
    .line 18
    shl-int/lit8 v2, v2, 0x18

    .line 19
    .line 20
    const v3, 0xffffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v1, v3

    .line 24
    or-int/2addr v1, v2

    .line 25
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyLineRelative;->f:Z

    .line 29
    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyLineRelative;->p:Z

    .line 45
    .line 46
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 47
    .line 48
    if-eq v1, v2, :cond_3

    .line 49
    .line 50
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyLineRelative;->p:Z

    .line 51
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    const v2, -0xc0c0c1

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const v2, -0x252526

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :catch_0
    :cond_3
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyLineRelative;->g:Z

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget v1, p0, Lcom/mycompany/app/view/MyLineRelative;->i:I

    .line 71
    .line 72
    move v2, v1

    .line 73
    int-to-float v1, v2

    .line 74
    move v3, v2

    .line 75
    iget v2, p0, Lcom/mycompany/app/view/MyLineRelative;->j:F

    .line 76
    .line 77
    sub-int v3, v6, v3

    .line 78
    .line 79
    int-to-float v3, v3

    .line 80
    iget-object v5, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 81
    .line 82
    move v4, v2

    .line 83
    move-object v0, p1

    .line 84
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->h:Z

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    iget v0, p0, Lcom/mycompany/app/view/MyLineRelative;->i:I

    .line 92
    .line 93
    int-to-float v1, v0

    .line 94
    int-to-float v2, v7

    .line 95
    iget v3, p0, Lcom/mycompany/app/view/MyLineRelative;->j:F

    .line 96
    .line 97
    sub-float/2addr v2, v3

    .line 98
    sub-int/2addr v6, v0

    .line 99
    int-to-float v3, v6

    .line 100
    iget-object v5, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 101
    .line 102
    move v4, v2

    .line 103
    move-object v0, p1

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->l:Landroid/graphics/Paint;

    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyLineRelative;->o:Z

    .line 112
    .line 113
    const/high16 v3, 0x40000000    # 2.0f

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    int-to-float v1, v1

    .line 122
    iget v2, p0, Lcom/mycompany/app/view/MyLineRelative;->n:F

    .line 123
    .line 124
    sub-float/2addr v1, v2

    .line 125
    mul-float/2addr v2, v3

    .line 126
    iget v3, p0, Lcom/mycompany/app/view/MyLineRelative;->m:F

    .line 127
    .line 128
    iget-object v4, p0, Lcom/mycompany/app/view/MyLineRelative;->l:Landroid/graphics/Paint;

    .line 129
    .line 130
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    iget v2, p0, Lcom/mycompany/app/view/MyLineRelative;->n:F

    .line 135
    .line 136
    mul-float/2addr v3, v2

    .line 137
    iget v4, p0, Lcom/mycompany/app/view/MyLineRelative;->m:F

    .line 138
    .line 139
    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->c:Z

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->k:Landroid/graphics/Paint;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/view/MyLineRelative;->l:Landroid/graphics/Paint;

    .line 17
    .line 18
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const v0, -0x9e9e9f

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const v0, -0x595616

    .line 17
    .line 18
    .line 19
    :goto_0
    iput v0, p0, Lcom/mycompany/app/view/MyLineRelative;->r:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/mycompany/app/view/MyLineRelative;->s:I

    .line 23
    .line 24
    iput v0, p0, Lcom/mycompany/app/view/MyLineRelative;->t:I

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->u:Z

    .line 27
    .line 28
    const/16 v1, 0x8c

    .line 29
    .line 30
    filled-new-array {v0, v1}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    filled-new-array {v1, v0}, [I

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v3, Lcom/mycompany/app/view/MyLineRelative$1;

    .line 47
    .line 48
    invoke-direct {v3, p0}, Lcom/mycompany/app/view/MyLineRelative$1;-><init>(Lcom/mycompany/app/view/MyLineRelative;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lcom/mycompany/app/view/MyLineRelative$2;

    .line 55
    .line 56
    invoke-direct {v3, p0}, Lcom/mycompany/app/view/MyLineRelative$2;-><init>(Lcom/mycompany/app/view/MyLineRelative;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 63
    .line 64
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v3, p0, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 68
    .line 69
    const-wide/16 v4, 0x578

    .line 70
    .line 71
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 75
    .line 76
    const/4 v4, 0x2

    .line 77
    new-array v4, v4, [Landroid/animation/Animator;

    .line 78
    .line 79
    aput-object v2, v4, v0

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    aput-object v1, v4, v0

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 88
    .line 89
    new-instance v1, Lcom/mycompany/app/view/MyLineRelative$3;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyLineRelative$3;-><init>(Lcom/mycompany/app/view/MyLineRelative;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/view/MyLineRelative;->q:Landroid/animation/AnimatorSet;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->c:Z

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

.method public setDrawLine(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->f:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyLineRelative;->f:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineRelative;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLinePad(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyLineRelative;->i:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyLineRelative;->i:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineRelative;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setNoti(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->l:Landroid/graphics/Paint;

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->l:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->l:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->l:Landroid/graphics/Paint;

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
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLineRelative;->o:Z

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
    iput v0, p0, Lcom/mycompany/app/view/MyLineRelative;->m:F

    .line 49
    .line 50
    const/high16 v0, 0x41100000    # 9.0f

    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/mycompany/app/view/MyLineRelative;->n:F

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineRelative;->invalidate()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->l:Landroid/graphics/Paint;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/mycompany/app/view/MyLineRelative;->l:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLineRelative;->invalidate()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method
