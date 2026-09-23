.class public Lcom/mycompany/app/view/MyRoundItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public c:Lcom/mycompany/app/image/ImageSizeListener;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:F

.field public l:I

.field public m:Landroid/graphics/Paint;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:J

.field public v:I

.field public w:I

.field public final x:Ljava/lang/Runnable;

.field public final y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyRoundItem$2;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyRoundItem$2;-><init>(Lcom/mycompany/app/view/MyRoundItem;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundItem;->x:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyRoundItem$3;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyRoundItem$3;-><init>(Lcom/mycompany/app/view/MyRoundItem;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundItem;->y:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRoundItem;->f:Z

    .line 20
    .line 21
    sget p1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/view/MyRoundItem;->q:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundItem;->g:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundItem;->i:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/view/MyRoundItem;->j:I

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
    iput p1, p0, Lcom/mycompany/app/view/MyRoundItem;->l:I

    .line 20
    .line 21
    const/high16 p1, 0x3f000000    # 0.5f

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/view/MyRoundItem;->k:F

    .line 24
    .line 25
    new-instance p1, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 36
    .line 37
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 43
    .line 44
    iget v0, p0, Lcom/mycompany/app/view/MyRoundItem;->l:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 50
    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundItem;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyRoundItem;->f:Z

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 8
    .line 9
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyRoundItem;->l:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    const v3, -0xc0c0c1

    .line 13
    .line 14
    .line 15
    const v4, -0x252526

    .line 16
    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    if-ne v0, v4, :cond_2

    .line 21
    .line 22
    iput v3, p0, Lcom/mycompany/app/view/MyRoundItem;->l:I

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundItem;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    if-ne v0, v3, :cond_2

    .line 32
    .line 33
    iput v4, p0, Lcom/mycompany/app/view/MyRoundItem;->l:I

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundItem;->invalidate()V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final d(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRoundItem;->n:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyRoundItem;->o:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundItem;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyRoundItem;->f:Z

    .line 2
    .line 3
    if-nez v1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyRoundItem;->r:I

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const v1, -0xdededf

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v1, -0x1

    .line 24
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/mycompany/app/view/MyRoundItem;->v:I

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget v2, p0, Lcom/mycompany/app/view/MyRoundItem;->w:I

    .line 35
    .line 36
    shl-int/lit8 v2, v2, 0x18

    .line 37
    .line 38
    const v3, 0xffffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v1, v3

    .line 42
    or-int/2addr v1, v2

    .line 43
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyRoundItem;->n:Z

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyRoundItem;->o:Z

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyRoundItem;->g:Z

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyRoundItem;->n:Z

    .line 72
    .line 73
    if-nez v1, :cond_5

    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyRoundItem;->h:Z

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    iget v1, p0, Lcom/mycompany/app/view/MyRoundItem;->j:I

    .line 80
    .line 81
    move v2, v1

    .line 82
    int-to-float v1, v2

    .line 83
    move v3, v2

    .line 84
    iget v2, p0, Lcom/mycompany/app/view/MyRoundItem;->k:F

    .line 85
    .line 86
    sub-int v3, v6, v3

    .line 87
    .line 88
    int-to-float v3, v3

    .line 89
    iget-object v5, p0, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 90
    .line 91
    move v4, v2

    .line 92
    move-object v0, p1

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundItem;->o:Z

    .line 97
    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundItem;->i:Z

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    iget v0, p0, Lcom/mycompany/app/view/MyRoundItem;->j:I

    .line 105
    .line 106
    int-to-float v1, v0

    .line 107
    int-to-float v2, v7

    .line 108
    iget v3, p0, Lcom/mycompany/app/view/MyRoundItem;->k:F

    .line 109
    .line 110
    sub-float/2addr v2, v3

    .line 111
    sub-int/2addr v6, v0

    .line 112
    int-to-float v3, v6

    .line 113
    iget-object v5, p0, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 114
    .line 115
    move v4, v2

    .line 116
    move-object v0, p1

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_2
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundItem;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyRoundItem;->o:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v3, v1

    .line 15
    :goto_1
    iget-boolean v4, p0, Lcom/mycompany/app/view/MyRoundItem;->p:Z

    .line 16
    .line 17
    if-ne v4, v3, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyRoundItem;->p:Z

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundItem;->o:Z

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    new-instance v0, Lcom/mycompany/app/view/MyRoundItem$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyRoundItem$1;-><init>(Lcom/mycompany/app/view/MyRoundItem;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundItem;->f:Z

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

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyRoundItem;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-interface {p3, p0, p1, p2}, Lcom/mycompany/app/image/ImageSizeListener;->a(Landroid/view/View;II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setBackColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyRoundItem;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public setDrawLine(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundItem;->g:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRoundItem;->g:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundItem;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLinePad(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyRoundItem;->j:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRoundItem;->j:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundItem;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setListener(Lcom/mycompany/app/image/ImageSizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundItem;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setRound(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v2, 0x2

    .line 10
    if-ne p1, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v2, 0x3

    .line 17
    if-ne p1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v1, v1}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
