.class public Lcom/mycompany/app/view/MyDialogRelative;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Lcom/mycompany/app/view/MyProgressDrawable;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Landroid/graphics/RectF;

.field public l:I

.field public m:I

.field public n:Landroid/graphics/Paint;

.field public o:Z

.field public p:I

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogRelative;->b(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogRelative;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/view/MyProgressDrawable;II)V
    .locals 5

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
    sub-int v2, v0, p2

    .line 13
    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    .line 16
    sub-int v3, v1, p3

    .line 17
    .line 18
    div-int/lit8 v3, v3, 0x2

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-gez v2, :cond_1

    .line 22
    .line 23
    move v2, v4

    .line 24
    :cond_1
    if-gez v3, :cond_2

    .line 25
    .line 26
    move v3, v4

    .line 27
    :cond_2
    add-int/2addr p2, v2

    .line 28
    add-int/2addr p3, v3

    .line 29
    if-le p2, v0, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    move v0, p2

    .line 33
    :goto_0
    if-le p3, v1, :cond_4

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_4
    move v1, v0

    .line 37
    :goto_1
    invoke-virtual {p1, v2, v3, v1, p3}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, -0xdededf

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, -0x1

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->c:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->h:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->i:Z

    .line 19
    .line 20
    sget p1, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->j:I

    .line 23
    .line 24
    new-instance p1, Lcom/mycompany/app/view/MyDialogRelative$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyDialogRelative$1;-><init>(Lcom/mycompany/app/view/MyDialogRelative;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyDialogRelative;->g:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->q:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyDialogRelative;->c:Z

    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogRelative;->k:Landroid/graphics/RectF;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogRelative;->n:Landroid/graphics/Paint;

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

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
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final d(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->m:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->l:I

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
    iput p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->m:I

    .line 12
    .line 13
    iput p2, p0, Lcom/mycompany/app/view/MyDialogRelative;->l:I

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->k:Landroid/graphics/RectF;

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->k:Landroid/graphics/RectF;

    .line 29
    .line 30
    :cond_2
    iget p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->l:I

    .line 31
    .line 32
    int-to-float p1, p1

    .line 33
    const/high16 p2, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float/2addr p1, p2

    .line 36
    iget-object p2, p0, Lcom/mycompany/app/view/MyDialogRelative;->k:Landroid/graphics/RectF;

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->n:Landroid/graphics/Paint;

    .line 59
    .line 60
    const/4 p2, 0x1

    .line 61
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->n:Landroid/graphics/Paint;

    .line 65
    .line 66
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->n:Landroid/graphics/Paint;

    .line 72
    .line 73
    iget p2, p0, Lcom/mycompany/app/view/MyDialogRelative;->l:I

    .line 74
    .line 75
    int-to-float p2, p2

    .line 76
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->n:Landroid/graphics/Paint;

    .line 80
    .line 81
    iget p2, p0, Lcom/mycompany/app/view/MyDialogRelative;->m:I

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->k:Landroid/graphics/RectF;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->n:Landroid/graphics/Paint;

    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogRelative;->invalidate()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->o:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->p:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->c:Z

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
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->q:Z

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
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->k:Landroid/graphics/RectF;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogRelative;->n:Landroid/graphics/Paint;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget v2, p0, Lcom/mycompany/app/view/MyDialogRelative;->j:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->g:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public final e(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->g:Z

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_4

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    new-instance p1, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 21
    .line 22
    sget v0, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const v1, -0x50506

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const v1, -0xc6b655

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-direct {p1, p0, v0, v1}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 40
    .line 41
    sget v0, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, v0}, Lcom/mycompany/app/view/MyDialogRelative;->a(Lcom/mycompany/app/view/MyProgressDrawable;II)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 58
    .line 59
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogRelative;->invalidate()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->c:Z

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

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->g:Z

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

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
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 5
    .line 6
    sget p4, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 7
    .line 8
    invoke-virtual {p0, p3, p4, p4}, Lcom/mycompany/app/view/MyDialogRelative;->a(Lcom/mycompany/app/view/MyProgressDrawable;II)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lcom/mycompany/app/view/MyDialogRelative;->k:Landroid/graphics/RectF;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget p4, p0, Lcom/mycompany/app/view/MyDialogRelative;->l:I

    .line 16
    .line 17
    int-to-float p4, p4

    .line 18
    const/high16 v0, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr p4, v0

    .line 21
    int-to-float p1, p1

    .line 22
    sub-float/2addr p1, p4

    .line 23
    int-to-float p2, p2

    .line 24
    sub-float/2addr p2, p4

    .line 25
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->g:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->f:Lcom/mycompany/app/view/MyProgressDrawable;

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
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->p:I

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
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogRelative;->o:Z

    .line 12
    .line 13
    iput p1, p0, Lcom/mycompany/app/view/MyDialogRelative;->p:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogRelative;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
