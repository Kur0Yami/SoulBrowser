.class public Lcom/mycompany/app/web/WebTabGridItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;
    }
.end annotation


# instance fields
.field public final c:I

.field public final f:I

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/RectF;

.field public i:F

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/RectF;

.field public l:F

.field public m:Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->c:I

    .line 7
    .line 8
    sget p1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget p1, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 13
    .line 14
    iput p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 15
    .line 16
    int-to-float p1, p1

    .line 17
    iput p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 18
    .line 19
    new-instance p1, Lcom/mycompany/app/web/WebTabGridItem$1;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebTabGridItem$1;-><init>(Lcom/mycompany/app/web/WebTabGridItem;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->j:Landroid/graphics/Paint;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->j:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->j:Landroid/graphics/Paint;

    .line 20
    .line 21
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->j:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->j:Landroid/graphics/Paint;

    .line 32
    .line 33
    int-to-float p2, p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    .line 36
    .line 37
    const/high16 p1, 0x40000000    # 2.0f

    .line 38
    .line 39
    div-float/2addr p2, p1

    .line 40
    sget p1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput p2, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 48
    .line 49
    iput-object v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->k:Landroid/graphics/RectF;

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_0
    iget p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->c:I

    .line 53
    .line 54
    int-to-float p1, p1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    .line 61
    invoke-static {p3, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    sub-float/2addr p1, p3

    .line 66
    iput p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->i:F

    .line 67
    .line 68
    sget p1, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    sget p1, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 73
    .line 74
    int-to-float p1, p1

    .line 75
    add-float/2addr p1, p2

    .line 76
    iput p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iput p2, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 80
    .line 81
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->k:Landroid/graphics/RectF;

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    new-instance p1, Landroid/graphics/RectF;

    .line 86
    .line 87
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->k:Landroid/graphics/RectF;

    .line 91
    .line 92
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->k:Landroid/graphics/RectF;

    .line 93
    .line 94
    iget p2, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    int-to-float p3, p3

    .line 101
    iget v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 102
    .line 103
    sub-float/2addr p3, v0

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    int-to-float v0, v0

    .line 109
    iget v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 110
    .line 111
    sub-float/2addr v0, v1

    .line 112
    invoke-virtual {p1, p2, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->j:Landroid/graphics/Paint;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->k:Landroid/graphics/RectF;

    .line 119
    .line 120
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->h:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->g:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->j:Landroid/graphics/Paint;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->k:Landroid/graphics/RectF;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v2, p0, Lcom/mycompany/app/web/WebTabGridItem;->i:F

    .line 24
    .line 25
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 30
    .line 31
    int-to-float v2, v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-float v0, v0

    .line 37
    iget v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 38
    .line 39
    sub-float v3, v0, v1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 46
    .line 47
    sub-int/2addr v0, v1

    .line 48
    int-to-float v4, v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-float v0, v0

    .line 54
    iget v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 55
    .line 56
    sub-float v5, v0, v1

    .line 57
    .line 58
    iget-object v6, p0, Lcom/mycompany/app/web/WebTabGridItem;->j:Landroid/graphics/Paint;

    .line 59
    .line 60
    move-object v1, p1

    .line 61
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->m:Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/web/WebTabGridItem;->k:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget p4, p0, Lcom/mycompany/app/web/WebTabGridItem;->l:F

    .line 9
    .line 10
    int-to-float v0, p1

    .line 11
    sub-float/2addr v0, p4

    .line 12
    int-to-float p2, p2

    .line 13
    sub-float/2addr p2, p4

    .line 14
    invoke-virtual {p3, p4, p4, v0, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabGridItem;->h:Landroid/graphics/RectF;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/high16 p3, 0x42000000    # 32.0f

    .line 26
    .line 27
    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    float-to-int p2, p2

    .line 32
    iget p3, p0, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 33
    .line 34
    add-int/2addr p3, p2

    .line 35
    iget p2, p0, Lcom/mycompany/app/web/WebTabGridItem;->c:I

    .line 36
    .line 37
    add-int/2addr p3, p2

    .line 38
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabGridItem;->h:Landroid/graphics/RectF;

    .line 39
    .line 40
    iget p4, p0, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 41
    .line 42
    int-to-float v0, p4

    .line 43
    int-to-float v1, p4

    .line 44
    sub-int/2addr p1, p4

    .line 45
    int-to-float p1, p1

    .line 46
    int-to-float p3, p3

    .line 47
    invoke-virtual {p2, v0, v1, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public setHeadColor(I)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->g:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->g:Landroid/graphics/Paint;

    .line 13
    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->g:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->h:Landroid/graphics/RectF;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Landroid/graphics/RectF;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->h:Landroid/graphics/RectF;

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/high16 v0, 0x42000000    # 32.0f

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    float-to-int p1, p1

    .line 46
    iget v0, p0, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 47
    .line 48
    add-int/2addr v0, p1

    .line 49
    iget p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->c:I

    .line 50
    .line 51
    add-int/2addr v0, p1

    .line 52
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->h:Landroid/graphics/RectF;

    .line 53
    .line 54
    iget v1, p0, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 55
    .line 56
    int-to-float v2, v1

    .line 57
    int-to-float v1, v1

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iget v4, p0, Lcom/mycompany/app/web/WebTabGridItem;->f:I

    .line 63
    .line 64
    sub-int/2addr v3, v4

    .line 65
    int-to-float v3, v3

    .line 66
    int-to-float v0, v0

    .line 67
    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->g:Landroid/graphics/Paint;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->h:Landroid/graphics/RectF;

    .line 75
    .line 76
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public setListener(Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabGridItem;->m:Lcom/mycompany/app/web/WebTabGridItem$TabGridListener;

    .line 2
    .line 3
    return-void
.end method
