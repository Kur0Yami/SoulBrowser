.class public Lcom/mycompany/app/view/MyDialogLinear;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Lcom/mycompany/app/view/MyProgressDrawable;

.field public g:Z

.field public h:I

.field public i:I

.field public j:Z

.field public final k:I

.field public l:I

.field public m:Landroid/graphics/RectF;

.field public n:I

.field public o:Landroid/graphics/Paint;

.field public p:Landroid/graphics/RectF;

.field public q:I

.field public r:I

.field public s:Landroid/graphics/Paint;

.field public t:Z

.field public u:I

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const p1, -0xdededf

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->c:Z

    .line 18
    .line 19
    sget v0, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->k:I

    .line 22
    .line 23
    new-instance v0, Lcom/mycompany/app/view/MyDialogLinear$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyDialogLinear$1;-><init>(Lcom/mycompany/app/view/MyDialogLinear;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/view/MyProgressDrawable;II)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, p0, Lcom/mycompany/app/view/MyDialogLinear;->h:I

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-lez v2, :cond_1

    .line 16
    .line 17
    if-ge v2, v1, :cond_1

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    move v6, v2

    .line 21
    move v2, v1

    .line 22
    move v1, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget v2, p0, Lcom/mycompany/app/view/MyDialogLinear;->i:I

    .line 25
    .line 26
    if-lez v2, :cond_2

    .line 27
    .line 28
    if-ge v2, v1, :cond_2

    .line 29
    .line 30
    sub-int/2addr v1, v2

    .line 31
    :cond_2
    move v2, v3

    .line 32
    :goto_0
    sub-int v4, v0, p2

    .line 33
    .line 34
    div-int/lit8 v4, v4, 0x2

    .line 35
    .line 36
    sub-int v5, v1, p3

    .line 37
    .line 38
    div-int/lit8 v5, v5, 0x2

    .line 39
    .line 40
    if-gez v4, :cond_3

    .line 41
    .line 42
    move v4, v3

    .line 43
    :cond_3
    if-gez v5, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    move v3, v5

    .line 47
    :goto_1
    add-int/2addr p2, v4

    .line 48
    add-int/2addr p3, v3

    .line 49
    if-le p2, v0, :cond_5

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_5
    move v0, p2

    .line 53
    :goto_2
    if-le p3, v1, :cond_6

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_6
    move v1, v0

    .line 57
    :goto_3
    add-int/2addr v3, v2

    .line 58
    add-int/2addr p3, v2

    .line 59
    invoke-virtual {p1, v4, v3, v1, p3}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyDialogLinear;->g:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->v:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyDialogLinear;->c:Z

    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogLinear;->p:Landroid/graphics/RectF;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogLinear;->s:Landroid/graphics/Paint;

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 24
    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final c(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->r:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->q:I

    .line 6
    .line 7
    if-eq v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    iput p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->r:I

    .line 12
    .line 13
    iput p2, p0, Lcom/mycompany/app/view/MyDialogLinear;->q:I

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->p:Landroid/graphics/RectF;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/RectF;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->p:Landroid/graphics/RectF;

    .line 29
    .line 30
    :cond_2
    iget p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->q:I

    .line 31
    .line 32
    int-to-float p1, p1

    .line 33
    const/high16 p2, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float/2addr p1, p2

    .line 36
    iget-object p2, p0, Lcom/mycompany/app/view/MyDialogLinear;->p:Landroid/graphics/RectF;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-float v0, v0

    .line 43
    sub-float/2addr v0, p1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    int-to-float v1, v1

    .line 49
    sub-float/2addr v1, p1

    .line 50
    invoke-virtual {p2, p1, p1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->s:Landroid/graphics/Paint;

    .line 59
    .line 60
    const/4 p2, 0x1

    .line 61
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->s:Landroid/graphics/Paint;

    .line 65
    .line 66
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->s:Landroid/graphics/Paint;

    .line 72
    .line 73
    iget p2, p0, Lcom/mycompany/app/view/MyDialogLinear;->q:I

    .line 74
    .line 75
    int-to-float p2, p2

    .line 76
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->s:Landroid/graphics/Paint;

    .line 80
    .line 81
    iget p2, p0, Lcom/mycompany/app/view/MyDialogLinear;->r:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->p:Landroid/graphics/RectF;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->s:Landroid/graphics/Paint;

    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogLinear;->invalidate()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final d(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iput v1, p0, Lcom/mycompany/app/view/MyDialogLinear;->l:I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->m:Landroid/graphics/RectF;

    .line 8
    .line 9
    iput v1, p0, Lcom/mycompany/app/view/MyDialogLinear;->n:I

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->o:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/mycompany/app/view/MyDialogLinear;->n:I

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v2, p1, :cond_3

    .line 24
    .line 25
    iput p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->n:I

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->o:Landroid/graphics/Paint;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->o:Landroid/graphics/Paint;

    .line 39
    .line 40
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->o:Landroid/graphics/Paint;

    .line 46
    .line 47
    iget v1, p0, Lcom/mycompany/app/view/MyDialogLinear;->n:I

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->o:Landroid/graphics/Paint;

    .line 54
    .line 55
    :goto_0
    move v1, v3

    .line 56
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->l:I

    .line 57
    .line 58
    if-eq p1, p2, :cond_6

    .line 59
    .line 60
    iput p2, p0, Lcom/mycompany/app/view/MyDialogLinear;->l:I

    .line 61
    .line 62
    iget p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->n:I

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->m:Landroid/graphics/RectF;

    .line 67
    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    new-instance p1, Landroid/graphics/RectF;

    .line 71
    .line 72
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->m:Landroid/graphics/RectF;

    .line 76
    .line 77
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->m:Landroid/graphics/RectF;

    .line 78
    .line 79
    iget p2, p0, Lcom/mycompany/app/view/MyDialogLinear;->l:I

    .line 80
    .line 81
    int-to-float p2, p2

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    int-to-float v0, v0

    .line 87
    iget v1, p0, Lcom/mycompany/app/view/MyDialogLinear;->l:I

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    add-int/2addr v2, v1

    .line 94
    int-to-float v1, v2

    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->m:Landroid/graphics/RectF;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    move v3, v1

    .line 104
    :goto_1
    if-eqz v3, :cond_7

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogLinear;->invalidate()V

    .line 107
    .line 108
    .line 109
    :cond_7
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->m:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogLinear;->o:Landroid/graphics/Paint;

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
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->p:Landroid/graphics/RectF;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogLinear;->s:Landroid/graphics/Paint;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget v2, p0, Lcom/mycompany/app/view/MyDialogLinear;->k:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->g:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->t:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->u:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_0
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->v:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final e(IIZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyDialogLinear;->g:Z

    .line 7
    .line 8
    iget v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->h:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-ne v0, p1, :cond_2

    .line 12
    .line 13
    iget v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->i:I

    .line 14
    .line 15
    if-eq v0, p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    iput p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->h:I

    .line 22
    .line 23
    iput p2, p0, Lcom/mycompany/app/view/MyDialogLinear;->i:I

    .line 24
    .line 25
    if-eqz p3, :cond_7

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_8

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 34
    .line 35
    if-nez p1, :cond_5

    .line 36
    .line 37
    const p1, -0x50506

    .line 38
    .line 39
    .line 40
    if-eqz p4, :cond_3

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    const p1, -0xc6b655

    .line 49
    .line 50
    .line 51
    :goto_2
    new-instance p2, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 52
    .line 53
    sget p3, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 54
    .line 55
    int-to-float p3, p3

    .line 56
    invoke-direct {p2, p0, p3, p1}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 60
    .line 61
    sget p1, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 62
    .line 63
    invoke-virtual {p0, p2, p1, p1}, Lcom/mycompany/app/view/MyDialogLinear;->a(Lcom/mycompany/app/view/MyProgressDrawable;II)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_5
    if-eqz v0, :cond_6

    .line 68
    .line 69
    sget p2, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 70
    .line 71
    invoke-virtual {p0, p1, p2, p2}, Lcom/mycompany/app/view/MyDialogLinear;->a(Lcom/mycompany/app/view/MyProgressDrawable;II)V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 81
    .line 82
    if-eqz p1, :cond_8

    .line 83
    .line 84
    iput-boolean v1, p1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 85
    .line 86
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogLinear;->invalidate()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->g:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 5
    .line 6
    sget p4, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 7
    .line 8
    invoke-virtual {p0, p3, p4, p4}, Lcom/mycompany/app/view/MyDialogLinear;->a(Lcom/mycompany/app/view/MyProgressDrawable;II)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lcom/mycompany/app/view/MyDialogLinear;->m:Landroid/graphics/RectF;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget p4, p0, Lcom/mycompany/app/view/MyDialogLinear;->l:I

    .line 16
    .line 17
    int-to-float v0, p4

    .line 18
    int-to-float v1, p1

    .line 19
    add-int/2addr p4, p2

    .line 20
    int-to-float p4, p4

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p3, v2, v0, v1, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p3, p0, Lcom/mycompany/app/view/MyDialogLinear;->p:Landroid/graphics/RectF;

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    iget p4, p0, Lcom/mycompany/app/view/MyDialogLinear;->q:I

    .line 30
    .line 31
    int-to-float p4, p4

    .line 32
    const/high16 v0, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float/2addr p4, v0

    .line 35
    int-to-float p1, p1

    .line 36
    sub-float/2addr p1, p4

    .line 37
    int-to-float p2, p2

    .line 38
    sub-float/2addr p2, p4

    .line 39
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->g:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    if-nez p2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 22
    .line 23
    return-void
.end method

.method public setBlockTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->u:I

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLinear;->t:Z

    .line 12
    .line 13
    iput p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->u:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogLinear;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setRoundUp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogLinear;->j:Z

    .line 2
    .line 3
    return-void
.end method
