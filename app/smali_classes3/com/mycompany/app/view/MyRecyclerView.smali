.class public Lcom/mycompany/app/view/MyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public Q0:Z

.field public R0:Landroid/graphics/drawable/Drawable;

.field public S0:Z

.field public T0:Z

.field public U0:Z

.field public V0:Z

.field public W0:I

.field public X0:Lcom/mycompany/app/image/ImageSizeListener;

.field public Y0:Lcom/mycompany/app/view/MyFadeListener;

.field public Z0:Landroid/animation/ValueAnimator;

.field public a1:Z

.field public b1:Landroid/graphics/RectF;

.field public c1:F

.field public d1:F

.field public e1:I

.field public f1:Landroid/graphics/Paint;

.field public g1:F

.field public h1:Landroid/graphics/Paint;

.field public i1:Z

.field public j1:F

.field public k1:Z

.field public final l1:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lcom/mycompany/app/view/MyRecyclerView$4;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyRecyclerView$4;-><init>(Lcom/mycompany/app/view/MyRecyclerView;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->l1:Ljava/lang/Runnable;

    .line 11
    .line 12
    sget p1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 13
    .line 14
    iput p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->W0:I

    .line 15
    .line 16
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v0, 0x1f

    .line 19
    .line 20
    if-ge p1, v0, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRecyclerView;->v0()V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->Q0:Z

    .line 31
    .line 32
    return-void
.end method

.method public static bridge synthetic q0(Lcom/mycompany/app/view/MyRecyclerView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyRecyclerView;->setValAnimShow(F)V

    return-void
.end method

.method private setShadowRect(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->R0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    :goto_0
    return-void

    .line 9
    :cond_1
    sget v1, Lcom/mycompany/app/main/MainApp;->e1:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRecyclerView;->invalidate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->Q0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v4, p0, Lcom/mycompany/app/view/MyRecyclerView;->g1:F

    .line 19
    .line 20
    int-to-float v5, v0

    .line 21
    iget-object v7, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    move v6, v4

    .line 25
    move-object v2, p1

    .line 26
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    int-to-float p1, v1

    .line 30
    iget v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->g1:F

    .line 31
    .line 32
    sub-float v7, p1, v0

    .line 33
    .line 34
    iget-object v10, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    move v9, v7

    .line 38
    move v8, v5

    .line 39
    move-object v5, v2

    .line 40
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v2, p1

    .line 45
    :goto_0
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->b1:Landroid/graphics/RectF;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->f1:Landroid/graphics/Paint;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->W0:I

    .line 57
    .line 58
    int-to-float v1, v1

    .line 59
    invoke-virtual {v2, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->S0:Z

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->R0:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->Q0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyRecyclerView;->b1:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p4, p0, Lcom/mycompany/app/view/MyRecyclerView;->d1:F

    .line 10
    .line 11
    int-to-float v0, p1

    .line 12
    sub-float/2addr v0, p4

    .line 13
    int-to-float v1, p2

    .line 14
    sub-float/2addr v1, p4

    .line 15
    invoke-virtual {p3, p4, p4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyRecyclerView;->setShadowRect(I)V

    .line 19
    .line 20
    .line 21
    iget-object p3, p0, Lcom/mycompany/app/view/MyRecyclerView;->X0:Lcom/mycompany/app/image/ImageSizeListener;

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-interface {p3, p0, p1, p2}, Lcom/mycompany/app/image/ImageSizeListener;->a(Landroid/view/View;II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->i1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->i1:Z

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final r0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->S0:Z

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
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->S0:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRecyclerView;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->Q0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->Q0:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->p0()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->R0:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->X0:Lcom/mycompany/app/image/ImageSizeListener;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->Y0:Lcom/mycompany/app/view/MyFadeListener;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->b1:Landroid/graphics/RectF;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->f1:Landroid/graphics/Paint;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 33
    .line 34
    return-void
.end method

.method public setLineMenu(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const p1, -0xdededf

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    :goto_0
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float v1, v0, v1

    .line 18
    .line 19
    iput v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->g1:F

    .line 20
    .line 21
    iget-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 37
    .line 38
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->h1:Landroid/graphics/Paint;

    .line 56
    .line 57
    return-void
.end method

.method public setPullDown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->i1:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRoundSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->W0:I

    .line 2
    .line 3
    return-void
.end method

.method public setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->X0:Lcom/mycompany/app/image/ImageSizeListener;

    .line 2
    .line 3
    return-void
.end method

.method public final t0(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->e1:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->e1:I

    .line 7
    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    sget p1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 11
    .line 12
    int-to-float p1, p1

    .line 13
    iput p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->c1:F

    .line 14
    .line 15
    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr p1, v0

    .line 18
    iput p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->d1:F

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->b1:Landroid/graphics/RectF;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    new-instance p1, Landroid/graphics/RectF;

    .line 25
    .line 26
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->b1:Landroid/graphics/RectF;

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lcom/mycompany/app/view/MyRecyclerView;->b1:Landroid/graphics/RectF;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget v2, p0, Lcom/mycompany/app/view/MyRecyclerView;->d1:F

    .line 49
    .line 50
    int-to-float p1, p1

    .line 51
    sub-float/2addr p1, v2

    .line 52
    int-to-float v0, v0

    .line 53
    sub-float/2addr v0, v2

    .line 54
    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->f1:Landroid/graphics/Paint;

    .line 58
    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    new-instance p1, Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->f1:Landroid/graphics/Paint;

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->f1:Landroid/graphics/Paint;

    .line 73
    .line 74
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->f1:Landroid/graphics/Paint;

    .line 80
    .line 81
    iget v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->c1:F

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->f1:Landroid/graphics/Paint;

    .line 87
    .line 88
    iget v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->e1:I

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->b1:Landroid/graphics/RectF;

    .line 96
    .line 97
    iput-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->f1:Landroid/graphics/Paint;

    .line 98
    .line 99
    return-void
.end method

.method public final u0(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->T0:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->U0:Z

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->T0:Z

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyRecyclerView;->U0:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRecyclerView;->v0()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final v0()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->T0:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyRecyclerView;->U0:Z

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
    iget-boolean v4, p0, Lcom/mycompany/app/view/MyRecyclerView;->V0:Z

    .line 16
    .line 17
    if-ne v4, v3, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyRecyclerView;->V0:Z

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->U0:Z

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
    new-instance v0, Lcom/mycompany/app/view/MyRecyclerView$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyRecyclerView$1;-><init>(Lcom/mycompany/app/view/MyRecyclerView;)V

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

.method public final w0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->R0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->shadow_list_up:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->R0:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {p0, v0}, Lcom/mycompany/app/view/MyRecyclerView;->setShadowRect(I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->S0:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRecyclerView;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final x0(IIZLcom/mycompany/app/view/MyFadeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    xor-int/lit8 v0, p3, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRecyclerView;->a1:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/view/MyRecyclerView;->Y0:Lcom/mycompany/app/view/MyFadeListener;

    .line 11
    .line 12
    int-to-float p1, p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 14
    .line 15
    .line 16
    int-to-float p1, p2

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    const/4 p2, 0x0

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    iput p3, p0, Lcom/mycompany/app/view/MyRecyclerView;->j1:F

    .line 26
    .line 27
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyRecyclerView;->k1:Z

    .line 28
    .line 29
    new-array p1, p1, [F

    .line 30
    .line 31
    fill-array-data p1, :array_0

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    .line 45
    .line 46
    iput p3, p0, Lcom/mycompany/app/view/MyRecyclerView;->j1:F

    .line 47
    .line 48
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyRecyclerView;->k1:Z

    .line 49
    .line 50
    new-array p1, p1, [F

    .line 51
    .line 52
    fill-array-data p1, :array_1

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 65
    .line 66
    const-wide/16 p2, 0xc8

    .line 67
    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    new-instance p2, Lcom/mycompany/app/view/MyRecyclerView$2;

    .line 74
    .line 75
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyRecyclerView$2;-><init>(Lcom/mycompany/app/view/MyRecyclerView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    new-instance p2, Lcom/mycompany/app/view/MyRecyclerView$3;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Lcom/mycompany/app/view/MyRecyclerView$3;-><init>(Lcom/mycompany/app/view/MyRecyclerView;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/view/MyRecyclerView;->Z0:Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
