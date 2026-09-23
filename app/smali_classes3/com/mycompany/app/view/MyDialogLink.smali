.class public Lcom/mycompany/app/view/MyDialogLink;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:Lcom/mycompany/app/view/MyProgressDrawable;

.field public g:Z

.field public final h:I

.field public i:I

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/RectF;

.field public final l:I

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogLink;->c:Z

    .line 6
    .line 7
    sget v0, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 8
    .line 9
    iput v0, p0, Lcom/mycompany/app/view/MyDialogLink;->h:I

    .line 10
    .line 11
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/mycompany/app/view/MyDialogLink;->l:I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 21
    .line 22
    .line 23
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
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLink;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyDialogLink;->g:Z

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
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const p1, -0x50506

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const p1, -0xc6b655

    .line 29
    .line 30
    .line 31
    :goto_0
    new-instance v0, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 32
    .line 33
    sget v1, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 34
    .line 35
    int-to-float v1, v1

    .line 36
    invoke-direct {v0, p0, v1, p1}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 40
    .line 41
    sget p1, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 42
    .line 43
    invoke-virtual {p0, v0, p1, p1}, Lcom/mycompany/app/view/MyDialogLink;->a(Lcom/mycompany/app/view/MyProgressDrawable;II)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

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
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogLink;->invalidate()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLink;->j:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogLink;->k:Landroid/graphics/RectF;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/view/MyDialogLink;->h:I

    .line 10
    .line 11
    int-to-float v2, v2

    .line 12
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLink;->g:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyDialogLink;->l:I

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLink;->c:Z

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
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLink;->m:Z

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

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLink;->c:Z

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
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogLink;->g:Z

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

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
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

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
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 5
    .line 6
    sget p4, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 7
    .line 8
    invoke-virtual {p0, p3, p4, p4}, Lcom/mycompany/app/view/MyDialogLink;->a(Lcom/mycompany/app/view/MyProgressDrawable;II)V

    .line 9
    .line 10
    .line 11
    iget-object p3, p0, Lcom/mycompany/app/view/MyDialogLink;->k:Landroid/graphics/RectF;

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    int-to-float p1, p1

    .line 17
    iget p4, p0, Lcom/mycompany/app/view/MyDialogLink;->h:I

    .line 18
    .line 19
    add-int/2addr p2, p4

    .line 20
    int-to-float p2, p2

    .line 21
    const/4 p4, 0x0

    .line 22
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyDialogLink;->g:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->f:Lcom/mycompany/app/view/MyProgressDrawable;

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

.method public setBackColor(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyDialogLink;->i:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyDialogLink;->i:I

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->j:Landroid/graphics/Paint;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->k:Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogLink;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->j:Landroid/graphics/Paint;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->j:Landroid/graphics/Paint;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->j:Landroid/graphics/Paint;

    .line 35
    .line 36
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->j:Landroid/graphics/Paint;

    .line 42
    .line 43
    iget v0, p0, Lcom/mycompany/app/view/MyDialogLink;->i:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->k:Landroid/graphics/RectF;

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    new-instance p1, Landroid/graphics/RectF;

    .line 53
    .line 54
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLink;->k:Landroid/graphics/RectF;

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogLink;->k:Landroid/graphics/RectF;

    .line 73
    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    int-to-float p1, p1

    .line 78
    iget v2, p0, Lcom/mycompany/app/view/MyDialogLink;->h:I

    .line 79
    .line 80
    add-int/2addr v0, v2

    .line 81
    int-to-float v0, v0

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogLink;->invalidate()V

    .line 87
    .line 88
    .line 89
    :cond_6
    :goto_1
    return-void
.end method
