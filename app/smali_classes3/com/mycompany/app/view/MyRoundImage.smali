.class public Lcom/mycompany/app/view/MyRoundImage;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field public static final synthetic b0:I


# instance fields
.field public A:Ljava/util/List;

.field public B:Z

.field public C:I

.field public D:Landroid/graphics/Rect;

.field public E:Landroid/graphics/RectF;

.field public F:Landroid/graphics/Bitmap;

.field public G:Landroid/graphics/Bitmap;

.field public H:Landroid/graphics/Bitmap;

.field public I:Landroid/graphics/Bitmap;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Landroid/graphics/Paint;

.field public O:Landroid/graphics/Paint;

.field public P:Landroid/graphics/Paint;

.field public Q:Landroid/graphics/Paint;

.field public R:Landroid/graphics/Paint;

.field public S:Landroid/graphics/Paint;

.field public T:Landroid/graphics/Paint;

.field public U:Landroid/graphics/Paint;

.field public V:Z

.field public final W:Ljava/lang/Runnable;

.field public final a0:Ljava/lang/Runnable;

.field public c:Z

.field public final f:Landroid/content/Context;

.field public g:Lcom/mycompany/app/image/ImageSizeListener;

.field public h:I

.field public i:I

.field public j:F

.field public k:I

.field public l:Landroid/graphics/Paint;

.field public m:I

.field public n:I

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Landroid/graphics/Paint;

.field public s:Landroid/graphics/RectF;

.field public t:F

.field public u:F

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:Landroid/view/animation/AlphaAnimation;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/view/MyRoundImage$6;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->W:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/view/MyRoundImage$10;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->a0:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundImage;->c:Z

    .line 20
    .line 21
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 22
    .line 23
    sget p1, Lcom/mycompany/app/main/MainApp;->v1:I

    .line 24
    .line 25
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->i:I

    .line 26
    .line 27
    iget p1, p0, Lcom/mycompany/app/view/MyRoundImage;->k:I

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->d(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->k:I

    .line 36
    .line 37
    new-instance p1, Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 48
    .line 49
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 55
    .line 56
    iget v1, p0, Lcom/mycompany/app/view/MyRoundImage;->k:I

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget p1, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->e(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 70
    .line 71
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    :cond_1
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 80
    .line 81
    new-instance p1, Lcom/mycompany/app/view/MyRoundImage$1;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyRoundImage$1;-><init>(Lcom/mycompany/app/view/MyRoundImage;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private setValAnimScaleDn(F)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimScaleUp(F)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->F:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->G:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p2, v0, :cond_2

    .line 14
    .line 15
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->H:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p2, v0, :cond_3

    .line 20
    .line 21
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->I:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    :cond_3
    return-void
.end method

.method public final B(IILjava/util/List;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->z:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->A:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/mycompany/app/view/MyRoundImage;->B:Z

    .line 6
    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    if-eqz p3, :cond_a

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_6

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    iput p3, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 25
    .line 26
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 35
    .line 36
    .line 37
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 38
    .line 39
    div-int/lit8 p1, p1, 0x4

    .line 40
    .line 41
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->C:I

    .line 42
    .line 43
    iget p1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 44
    .line 45
    const/4 p4, 0x1

    .line 46
    if-eq p1, p2, :cond_1

    .line 47
    .line 48
    iput p2, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 49
    .line 50
    move p1, p4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move p1, p3

    .line 53
    :goto_0
    invoke-virtual {p0, p3}, Lcom/mycompany/app/view/MyRoundImage;->g(I)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_3

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move p1, p3

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    move p1, p4

    .line 65
    :goto_2
    invoke-virtual {p0, p4}, Lcom/mycompany/app/view/MyRoundImage;->g(I)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_5

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    move p1, p3

    .line 75
    goto :goto_4

    .line 76
    :cond_5
    :goto_3
    move p1, p4

    .line 77
    :goto_4
    const/4 p2, 0x2

    .line 78
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyRoundImage;->g(I)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_6

    .line 83
    .line 84
    if-eqz p1, :cond_7

    .line 85
    .line 86
    :cond_6
    move p3, p4

    .line 87
    :cond_7
    const/4 p1, 0x3

    .line 88
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->g(I)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_9

    .line 93
    .line 94
    if-eqz p3, :cond_8

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_8
    return-void

    .line 98
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->f()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;I)V
    .locals 4

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-static {p6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->D:Landroid/graphics/Rect;

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->E:Landroid/graphics/RectF;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    iget v1, p0, Lcom/mycompany/app/view/MyRoundImage;->C:I

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    mul-int/2addr v1, v2

    .line 26
    if-nez p7, :cond_3

    .line 27
    .line 28
    move p3, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_3
    const/4 v3, 0x1

    .line 31
    if-ne p7, v3, :cond_4

    .line 32
    .line 33
    sub-int/2addr p2, p4

    .line 34
    sub-int/2addr p2, v1

    .line 35
    :goto_0
    move p3, v1

    .line 36
    move v1, p2

    .line 37
    goto :goto_1

    .line 38
    :cond_4
    if-ne p7, v2, :cond_5

    .line 39
    .line 40
    sub-int/2addr p3, p5

    .line 41
    sub-int/2addr p3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_5
    sub-int/2addr p2, p4

    .line 44
    sub-int/2addr p2, v1

    .line 45
    sub-int/2addr p3, p5

    .line 46
    sub-int v1, p3, v1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result p7

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v2, v2, p2, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->E:Landroid/graphics/RectF;

    .line 62
    .line 63
    int-to-float p7, v1

    .line 64
    int-to-float v0, p3

    .line 65
    add-int/2addr v1, p4

    .line 66
    int-to-float p4, v1

    .line 67
    add-int/2addr p3, p5

    .line 68
    int-to-float p3, p3

    .line 69
    invoke-virtual {p2, p7, v0, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->D:Landroid/graphics/Rect;

    .line 73
    .line 74
    iget-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->E:Landroid/graphics/RectF;

    .line 75
    .line 76
    const/4 p4, 0x0

    .line 77
    invoke-virtual {p1, p6, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 78
    .line 79
    .line 80
    :cond_6
    :goto_2
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;IIIILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;I)V
    .locals 6

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    if-eqz p7, :cond_6

    .line 14
    .line 15
    if-eqz p8, :cond_6

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->E:Landroid/graphics/RectF;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_2
    iget v1, p0, Lcom/mycompany/app/view/MyRoundImage;->C:I

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    mul-int/2addr v1, v2

    .line 26
    int-to-float v3, p4

    .line 27
    const/high16 v4, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v3, v4

    .line 30
    if-nez p9, :cond_3

    .line 31
    .line 32
    move p3, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/4 v5, 0x1

    .line 35
    if-ne p9, v5, :cond_4

    .line 36
    .line 37
    sub-int/2addr p2, p4

    .line 38
    sub-int/2addr p2, v1

    .line 39
    :goto_0
    move p3, v1

    .line 40
    move v1, p2

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    if-ne p9, v2, :cond_5

    .line 43
    .line 44
    sub-int/2addr p3, p5

    .line 45
    sub-int/2addr p3, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_5
    sub-int/2addr p2, p4

    .line 48
    sub-int/2addr p2, v1

    .line 49
    sub-int/2addr p3, p5

    .line 50
    sub-int v1, p3, v1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    int-to-float p2, v1

    .line 54
    int-to-float p9, p3

    .line 55
    add-int/2addr v1, p4

    .line 56
    int-to-float p4, v1

    .line 57
    add-int/2addr p3, p5

    .line 58
    int-to-float p3, p3

    .line 59
    invoke-virtual {v0, p2, p9, p4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 60
    .line 61
    .line 62
    iget-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->E:Landroid/graphics/RectF;

    .line 63
    .line 64
    int-to-float p4, p5

    .line 65
    div-float/2addr p4, v4

    .line 66
    invoke-virtual {p1, p3, v3, p4, p7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p8, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    .line 71
    .line 72
    add-float/2addr p2, v3

    .line 73
    add-float/2addr p9, v3

    .line 74
    invoke-virtual {p8}, Landroid/graphics/Paint;->descent()F

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    invoke-virtual {p8}, Landroid/graphics/Paint;->ascent()F

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    add-float/2addr p4, p3

    .line 83
    div-float/2addr p4, v4

    .line 84
    sub-float/2addr p9, p4

    .line 85
    invoke-virtual {p1, p6, p2, p9, p8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_2
    return-void
.end method

.method public final d(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const v0, -0x70708

    .line 8
    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const p1, -0xafafb0

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return p1
.end method

.method public final e(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_black_24:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_dark_24:I

    .line 14
    .line 15
    return p1

    .line 16
    :cond_1
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_dark_24:I

    .line 21
    .line 22
    return p1

    .line 23
    :cond_2
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 28
    .line 29
    return p1

    .line 30
    :cond_3
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_black_24:I

    .line 31
    .line 32
    if-ne p1, v0, :cond_4

    .line 33
    .line 34
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_dark_24:I

    .line 35
    .line 36
    return p1

    .line 37
    :cond_4
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_zip_black_24:I

    .line 38
    .line 39
    if-ne p1, v0, :cond_5

    .line 40
    .line 41
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_zip_dark_24:I

    .line 42
    .line 43
    return p1

    .line 44
    :cond_5
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_24:I

    .line 45
    .line 46
    if-ne p1, v0, :cond_6

    .line 47
    .line 48
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_dark_24:I

    .line 49
    .line 50
    return p1

    .line 51
    :cond_6
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_library_black_24:I

    .line 52
    .line 53
    if-ne p1, v0, :cond_7

    .line 54
    .line 55
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_library_dark_24:I

    .line 56
    .line 57
    return p1

    .line 58
    :cond_7
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_as_pdf_black_24:I

    .line 59
    .line 60
    if-ne p1, v0, :cond_8

    .line 61
    .line 62
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_as_pdf_dark_24:I

    .line 63
    .line 64
    return p1

    .line 65
    :cond_8
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_description_black_24:I

    .line 66
    .line 67
    if-ne p1, v0, :cond_9

    .line 68
    .line 69
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_description_dark_24:I

    .line 70
    .line 71
    return p1

    .line 72
    :cond_9
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 73
    .line 74
    if-ne p1, v0, :cond_a

    .line 75
    .line 76
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 77
    .line 78
    return p1

    .line 79
    :cond_a
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_android_black_24:I

    .line 80
    .line 81
    if-ne p1, v0, :cond_b

    .line 82
    .line 83
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_android_dark_24:I

    .line 84
    .line 85
    return p1

    .line 86
    :cond_b
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    .line 87
    .line 88
    if-ne p1, v0, :cond_c

    .line 89
    .line 90
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 91
    .line 92
    return p1

    .line 93
    :cond_c
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_find_in_page_black_24:I

    .line 94
    .line 95
    if-ne p1, v0, :cond_d

    .line 96
    .line 97
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_find_in_page_dark_24:I

    .line 98
    .line 99
    return p1

    .line 100
    :cond_d
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_black_24:I

    .line 101
    .line 102
    if-ne p1, v0, :cond_e

    .line 103
    .line 104
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_dark_24:I

    .line 105
    .line 106
    return p1

    .line 107
    :cond_e
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_black_24:I

    .line 108
    .line 109
    if-ne p1, v0, :cond_f

    .line 110
    .line 111
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_dark_24:I

    .line 112
    .line 113
    return p1

    .line 114
    :cond_f
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_24:I

    .line 115
    .line 116
    if-ne p1, v0, :cond_10

    .line 117
    .line 118
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_24:I

    .line 119
    .line 120
    return p1

    .line 121
    :cond_10
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_24:I

    .line 122
    .line 123
    if-ne p1, v0, :cond_11

    .line 124
    .line 125
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_dark_24:I

    .line 126
    .line 127
    return p1

    .line 128
    :cond_11
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_shift_2_black_24:I

    .line 129
    .line 130
    if-ne p1, v0, :cond_12

    .line 131
    .line 132
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_shift_2_dark_24:I

    .line 133
    .line 134
    return p1

    .line 135
    :cond_12
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    .line 136
    .line 137
    if-ne p1, v0, :cond_13

    .line 138
    .line 139
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_dark_24:I

    .line 140
    .line 141
    return p1

    .line 142
    :cond_13
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_extension_black_24:I

    .line 143
    .line 144
    if-ne p1, v0, :cond_14

    .line 145
    .line 146
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_extension_dark_24:I

    .line 147
    .line 148
    :cond_14
    :goto_0
    return p1
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundImage;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->D:Landroid/graphics/Rect;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->D:Landroid/graphics/Rect;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->E:Landroid/graphics/RectF;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    new-instance v0, Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->E:Landroid/graphics/RectF;

    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final g(I)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->A:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lt p1, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    move-object v4, p0

    .line 16
    move v10, p1

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->A:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/view/MyRoundImage;->A(Landroid/graphics/Bitmap;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->m(I)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/view/MyRoundImage;->A(Landroid/graphics/Bitmap;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->m(I)V

    .line 57
    .line 58
    .line 59
    return v2

    .line 60
    :cond_3
    iget v0, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->d:I

    .line 61
    .line 62
    invoke-virtual {p0, v0, p1, v3}, Lcom/mycompany/app/view/MyRoundImage;->h(IILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v4

    .line 66
    :cond_4
    iget v3, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->d:I

    .line 67
    .line 68
    if-eqz v3, :cond_6

    .line 69
    .line 70
    const v5, -0x70708

    .line 71
    .line 72
    .line 73
    if-eq v3, v5, :cond_6

    .line 74
    .line 75
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/view/MyRoundImage;->A(Landroid/graphics/Bitmap;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->m(I)V

    .line 87
    .line 88
    .line 89
    return v2

    .line 90
    :cond_5
    iget v0, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->d:I

    .line 91
    .line 92
    invoke-virtual {p0, v0, p1, v3}, Lcom/mycompany/app/view/MyRoundImage;->h(IILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v4

    .line 96
    :cond_6
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->m(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->b:Ljava/lang/String;

    .line 100
    .line 101
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyRoundImage;->B:Z

    .line 102
    .line 103
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainListLoader;->c(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_7

    .line 112
    .line 113
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/view/MyRoundImage;->A(Landroid/graphics/Bitmap;I)V

    .line 114
    .line 115
    .line 116
    return v4

    .line 117
    :cond_7
    iget v1, p0, Lcom/mycompany/app/view/MyRoundImage;->z:I

    .line 118
    .line 119
    int-to-long v5, v1

    .line 120
    iget-wide v7, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->a:J

    .line 121
    .line 122
    iget-object v9, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->b:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v11, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->c:Ljava/lang/String;

    .line 125
    .line 126
    iget v12, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickSubItem;->d:I

    .line 127
    .line 128
    new-instance v3, Lcom/mycompany/app/view/MyRoundImage$3;

    .line 129
    .line 130
    move-object v4, p0

    .line 131
    move v10, p1

    .line 132
    invoke-direct/range {v3 .. v12}, Lcom/mycompany/app/view/MyRoundImage$3;-><init>(Lcom/mycompany/app/view/MyRoundImage;JJLjava/lang/String;ILjava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    iget-object p1, v4, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    return v2

    .line 141
    :goto_0
    invoke-virtual {p0, v1, v10}, Lcom/mycompany/app/view/MyRoundImage;->A(Landroid/graphics/Bitmap;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v10}, Lcom/mycompany/app/view/MyRoundImage;->m(I)V

    .line 145
    .line 146
    .line 147
    return v2
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(IILjava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/high16 p1, -0x10000

    .line 4
    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/mycompany/app/view/MyRoundImage;->A(Landroid/graphics/Bitmap;I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez p2, :cond_3

    .line 12
    .line 13
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->J:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->N:Landroid/graphics/Paint;

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    new-instance p2, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->N:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->N:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->N:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->R:Landroid/graphics/Paint;

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    new-instance p1, Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->R:Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->R:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->R:Landroid/graphics/Paint;

    .line 63
    .line 64
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->R:Landroid/graphics/Paint;

    .line 70
    .line 71
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 72
    .line 73
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->R:Landroid/graphics/Paint;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    if-ne p2, v1, :cond_6

    .line 87
    .line 88
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->K:Ljava/lang/String;

    .line 89
    .line 90
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->O:Landroid/graphics/Paint;

    .line 91
    .line 92
    if-nez p2, :cond_4

    .line 93
    .line 94
    new-instance p2, Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->O:Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->O:Landroid/graphics/Paint;

    .line 105
    .line 106
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 107
    .line 108
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->O:Landroid/graphics/Paint;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->S:Landroid/graphics/Paint;

    .line 117
    .line 118
    if-nez p1, :cond_5

    .line 119
    .line 120
    new-instance p1, Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->S:Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->S:Landroid/graphics/Paint;

    .line 131
    .line 132
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->S:Landroid/graphics/Paint;

    .line 138
    .line 139
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->S:Landroid/graphics/Paint;

    .line 145
    .line 146
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 147
    .line 148
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->S:Landroid/graphics/Paint;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_6
    const/4 v2, 0x2

    .line 162
    if-ne p2, v2, :cond_9

    .line 163
    .line 164
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->L:Ljava/lang/String;

    .line 165
    .line 166
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->P:Landroid/graphics/Paint;

    .line 167
    .line 168
    if-nez p2, :cond_7

    .line 169
    .line 170
    new-instance p2, Landroid/graphics/Paint;

    .line 171
    .line 172
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->P:Landroid/graphics/Paint;

    .line 176
    .line 177
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->P:Landroid/graphics/Paint;

    .line 181
    .line 182
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 183
    .line 184
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->P:Landroid/graphics/Paint;

    .line 188
    .line 189
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->T:Landroid/graphics/Paint;

    .line 193
    .line 194
    if-nez p1, :cond_8

    .line 195
    .line 196
    new-instance p1, Landroid/graphics/Paint;

    .line 197
    .line 198
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->T:Landroid/graphics/Paint;

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->T:Landroid/graphics/Paint;

    .line 207
    .line 208
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->T:Landroid/graphics/Paint;

    .line 214
    .line 215
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->T:Landroid/graphics/Paint;

    .line 221
    .line 222
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 223
    .line 224
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 229
    .line 230
    .line 231
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->T:Landroid/graphics/Paint;

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_9
    const/4 v2, 0x3

    .line 238
    if-ne p2, v2, :cond_c

    .line 239
    .line 240
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->M:Ljava/lang/String;

    .line 241
    .line 242
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->Q:Landroid/graphics/Paint;

    .line 243
    .line 244
    if-nez p2, :cond_a

    .line 245
    .line 246
    new-instance p2, Landroid/graphics/Paint;

    .line 247
    .line 248
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 249
    .line 250
    .line 251
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->Q:Landroid/graphics/Paint;

    .line 252
    .line 253
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    .line 255
    .line 256
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->Q:Landroid/graphics/Paint;

    .line 257
    .line 258
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 259
    .line 260
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    .line 262
    .line 263
    :cond_a
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->Q:Landroid/graphics/Paint;

    .line 264
    .line 265
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->U:Landroid/graphics/Paint;

    .line 269
    .line 270
    if-nez p1, :cond_b

    .line 271
    .line 272
    new-instance p1, Landroid/graphics/Paint;

    .line 273
    .line 274
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 275
    .line 276
    .line 277
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->U:Landroid/graphics/Paint;

    .line 278
    .line 279
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->U:Landroid/graphics/Paint;

    .line 283
    .line 284
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 285
    .line 286
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->U:Landroid/graphics/Paint;

    .line 290
    .line 291
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 292
    .line 293
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->U:Landroid/graphics/Paint;

    .line 297
    .line 298
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 299
    .line 300
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 305
    .line 306
    .line 307
    :cond_b
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->U:Landroid/graphics/Paint;

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    .line 311
    .line 312
    :cond_c
    return-void
.end method

.method public final i()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundImage;->V:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundImage;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundImage;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/mycompany/app/view/MyRoundImage$12;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyRoundImage$12;-><init>(Lcom/mycompany/app/view/MyRoundImage;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyRoundImage;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->g:Lcom/mycompany/app/image/ImageSizeListener;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->v:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->A:Ljava/util/List;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->D:Landroid/graphics/Rect;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->E:Landroid/graphics/RectF;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->F:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->G:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->H:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->I:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->J:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->K:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->L:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->M:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->N:Landroid/graphics/Paint;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->O:Landroid/graphics/Paint;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->P:Landroid/graphics/Paint;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->Q:Landroid/graphics/Paint;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->R:Landroid/graphics/Paint;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->S:Landroid/graphics/Paint;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->T:Landroid/graphics/Paint;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->U:Landroid/graphics/Paint;

    .line 39
    .line 40
    return-void
.end method

.method public final m(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->J:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->N:Landroid/graphics/Paint;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->R:Landroid/graphics/Paint;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->K:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->O:Landroid/graphics/Paint;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->S:Landroid/graphics/Paint;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v1, 0x2

    .line 22
    if-ne p1, v1, :cond_2

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->L:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->P:Landroid/graphics/Paint;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->T:Landroid/graphics/Paint;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    const/4 v1, 0x3

    .line 32
    if-ne p1, v1, :cond_3

    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->M:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->Q:Landroid/graphics/Paint;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->U:Landroid/graphics/Paint;

    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public final n(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 3
    .line 4
    const/high16 v1, 0x51000000

    .line 5
    .line 6
    iput v1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final o(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_4

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v2

    .line 15
    :goto_0
    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 17
    .line 18
    iput v2, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 19
    .line 20
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 23
    .line 24
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 30
    .line 31
    .line 32
    invoke-super {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    const v4, -0x70708

    .line 36
    .line 37
    .line 38
    if-ne p1, v4, :cond_2

    .line 39
    .line 40
    move p1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->d(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :goto_1
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyRoundImage;->e(I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->q(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    move v0, v1

    .line 57
    :cond_3
    if-nez p2, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    iput v2, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 64
    .line 65
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    iget p1, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 71
    .line 72
    if-eq p1, p2, :cond_6

    .line 73
    .line 74
    iput p2, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 75
    .line 76
    if-nez p2, :cond_5

    .line 77
    .line 78
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    :goto_2
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 90
    .line 91
    :cond_6
    :goto_3
    if-nez v0, :cond_8

    .line 92
    .line 93
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 94
    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    :goto_4
    return-void

    .line 99
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyRoundImage;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :catch_0
    move-object v1, p0

    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->A:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    iget v0, p0, Lcom/mycompany/app/view/MyRoundImage;->C:I

    .line 20
    .line 21
    mul-int/lit8 v0, v0, 0x3

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    div-int/lit8 v1, v3, 0x2

    .line 32
    .line 33
    sub-int v5, v1, v0

    .line 34
    .line 35
    div-int/lit8 v1, v4, 0x2

    .line 36
    .line 37
    sub-int v6, v1, v0

    .line 38
    .line 39
    iget-object v7, p0, Lcom/mycompany/app/view/MyRoundImage;->F:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    move-object v1, p0

    .line 45
    move-object v2, p1

    .line 46
    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/view/MyRoundImage;->b(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v1, p0

    .line 51
    move-object v2, p1

    .line 52
    iget-object v7, v1, Lcom/mycompany/app/view/MyRoundImage;->J:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v8, v1, Lcom/mycompany/app/view/MyRoundImage;->N:Landroid/graphics/Paint;

    .line 55
    .line 56
    iget-object v9, v1, Lcom/mycompany/app/view/MyRoundImage;->R:Landroid/graphics/Paint;

    .line 57
    .line 58
    const/4 v10, 0x0

    .line 59
    invoke-virtual/range {v1 .. v10}, Lcom/mycompany/app/view/MyRoundImage;->c(Landroid/graphics/Canvas;IIIILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object v7, v1, Lcom/mycompany/app/view/MyRoundImage;->G:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/view/MyRoundImage;->b(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget-object v7, v1, Lcom/mycompany/app/view/MyRoundImage;->K:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v8, v1, Lcom/mycompany/app/view/MyRoundImage;->O:Landroid/graphics/Paint;

    .line 74
    .line 75
    iget-object v9, v1, Lcom/mycompany/app/view/MyRoundImage;->S:Landroid/graphics/Paint;

    .line 76
    .line 77
    const/4 v10, 0x1

    .line 78
    invoke-virtual/range {v1 .. v10}, Lcom/mycompany/app/view/MyRoundImage;->c(Landroid/graphics/Canvas;IIIILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object v7, v1, Lcom/mycompany/app/view/MyRoundImage;->H:Landroid/graphics/Bitmap;

    .line 82
    .line 83
    if-eqz v7, :cond_4

    .line 84
    .line 85
    const/4 v8, 0x2

    .line 86
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/view/MyRoundImage;->b(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-object v7, v1, Lcom/mycompany/app/view/MyRoundImage;->L:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v8, v1, Lcom/mycompany/app/view/MyRoundImage;->P:Landroid/graphics/Paint;

    .line 93
    .line 94
    iget-object v9, v1, Lcom/mycompany/app/view/MyRoundImage;->T:Landroid/graphics/Paint;

    .line 95
    .line 96
    const/4 v10, 0x2

    .line 97
    invoke-virtual/range {v1 .. v10}, Lcom/mycompany/app/view/MyRoundImage;->c(Landroid/graphics/Canvas;IIIILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object v7, v1, Lcom/mycompany/app/view/MyRoundImage;->I:Landroid/graphics/Bitmap;

    .line 101
    .line 102
    if-eqz v7, :cond_5

    .line 103
    .line 104
    const/4 v8, 0x3

    .line 105
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/view/MyRoundImage;->b(Landroid/graphics/Canvas;IIIILandroid/graphics/Bitmap;I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_5
    iget-object v7, v1, Lcom/mycompany/app/view/MyRoundImage;->M:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v8, v1, Lcom/mycompany/app/view/MyRoundImage;->Q:Landroid/graphics/Paint;

    .line 112
    .line 113
    iget-object v9, v1, Lcom/mycompany/app/view/MyRoundImage;->U:Landroid/graphics/Paint;

    .line 114
    .line 115
    const/4 v10, 0x3

    .line 116
    invoke-virtual/range {v1 .. v10}, Lcom/mycompany/app/view/MyRoundImage;->c(Landroid/graphics/Canvas;IIIILjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;I)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_6
    move-object v1, p0

    .line 121
    move-object v2, p1

    .line 122
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const/high16 v0, 0x40000000    # 2.0f

    .line 127
    .line 128
    if-eqz p1, :cond_9

    .line 129
    .line 130
    iget v3, v1, Lcom/mycompany/app/view/MyRoundImage;->m:I

    .line 131
    .line 132
    if-eqz v3, :cond_7

    .line 133
    .line 134
    int-to-float v3, v3

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    int-to-float v4, v4

    .line 140
    div-float/2addr v3, v4

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    int-to-float v4, v4

    .line 146
    div-float/2addr v4, v0

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    int-to-float v5, v5

    .line 152
    div-float/2addr v5, v0

    .line 153
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 154
    .line 155
    .line 156
    :cond_7
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 157
    .line 158
    if-eqz v0, :cond_8

    .line 159
    .line 160
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_e

    .line 171
    .line 172
    invoke-super {p0, v2}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_8
    invoke-super {p0, v2}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_9
    iget-object p1, v1, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 181
    .line 182
    if-eqz p1, :cond_a

    .line 183
    .line 184
    iget v3, v1, Lcom/mycompany/app/view/MyRoundImage;->t:F

    .line 185
    .line 186
    iget v4, v1, Lcom/mycompany/app/view/MyRoundImage;->u:F

    .line 187
    .line 188
    iget v5, v1, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 189
    .line 190
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    iget-object p1, v1, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_c

    .line 200
    .line 201
    iget-object p1, v1, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 202
    .line 203
    if-eqz p1, :cond_e

    .line 204
    .line 205
    iget-object v3, v1, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 206
    .line 207
    if-eqz v3, :cond_b

    .line 208
    .line 209
    const/4 v3, -0x1

    .line 210
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    .line 212
    .line 213
    iget-object p1, v1, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 214
    .line 215
    iget v3, v1, Lcom/mycompany/app/view/MyRoundImage;->i:I

    .line 216
    .line 217
    int-to-float v3, v3

    .line 218
    iget-object v4, v1, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 219
    .line 220
    invoke-virtual {v2, p1, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 221
    .line 222
    .line 223
    iget p1, v1, Lcom/mycompany/app/view/MyRoundImage;->u:F

    .line 224
    .line 225
    iget-object v3, v1, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 226
    .line 227
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    iget-object v4, v1, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 232
    .line 233
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    add-float/2addr v3, v4

    .line 238
    div-float/2addr v3, v0

    .line 239
    sub-float/2addr p1, v3

    .line 240
    iget-object v0, v1, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 241
    .line 242
    const v3, -0x95a701

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    .line 247
    .line 248
    iget-object v0, v1, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 249
    .line 250
    iget v3, v1, Lcom/mycompany/app/view/MyRoundImage;->t:F

    .line 251
    .line 252
    iget-object v4, v1, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 253
    .line 254
    invoke-virtual {v2, v0, v3, p1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_b
    iget v3, v1, Lcom/mycompany/app/view/MyRoundImage;->u:F

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    iget-object v4, v1, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 265
    .line 266
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    add-float/2addr p1, v4

    .line 271
    div-float/2addr p1, v0

    .line 272
    sub-float/2addr v3, p1

    .line 273
    iget-object p1, v1, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 274
    .line 275
    iget v0, v1, Lcom/mycompany/app/view/MyRoundImage;->t:F

    .line 276
    .line 277
    iget-object v4, v1, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 278
    .line 279
    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :cond_c
    iget-object p1, v1, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 284
    .line 285
    if-eqz p1, :cond_e

    .line 286
    .line 287
    iget-boolean v0, v1, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 288
    .line 289
    if-eqz v0, :cond_d

    .line 290
    .line 291
    const/4 v0, 0x0

    .line 292
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 293
    .line 294
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    sub-int/2addr v4, v0

    .line 307
    div-int/lit8 v4, v4, 0x2

    .line 308
    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    sub-int/2addr v5, v3

    .line 314
    div-int/lit8 v5, v5, 0x2

    .line 315
    .line 316
    add-int/2addr v0, v4

    .line 317
    add-int/2addr v3, v5

    .line 318
    invoke-virtual {p1, v4, v5, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    .line 320
    .line 321
    :cond_d
    iget-object p1, v1, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 322
    .line 323
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    .line 325
    .line 326
    :catch_1
    :cond_e
    :goto_3
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->g:Lcom/mycompany/app/image/ImageSizeListener;

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
    const/4 p3, 0x1

    .line 12
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 13
    .line 14
    int-to-float p1, p1

    .line 15
    const/high16 p3, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float p4, p1, p3

    .line 18
    .line 19
    iput p4, p0, Lcom/mycompany/app/view/MyRoundImage;->t:F

    .line 20
    .line 21
    int-to-float p2, p2

    .line 22
    div-float p3, p2, p3

    .line 23
    .line 24
    iput p3, p0, Lcom/mycompany/app/view/MyRoundImage;->u:F

    .line 25
    .line 26
    iget-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    new-instance p3, Landroid/graphics/RectF;

    .line 31
    .line 32
    const/4 p4, 0x0

    .line 33
    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    .line 35
    .line 36
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final p(IILjava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 3

    .line 1
    invoke-static {p3, p4}, Lcom/mycompany/app/main/MainUtil;->y2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 p2, 0x0

    .line 17
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 18
    .line 19
    iput v0, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 22
    .line 23
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 31
    .line 32
    .line 33
    invoke-super {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    const p2, -0x70708

    .line 37
    .line 38
    .line 39
    if-ne p1, p2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->d(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyRoundImage;->q(I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    const/high16 p4, -0x1000000

    .line 57
    .line 58
    const v1, -0x50506

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    if-nez p2, :cond_5

    .line 63
    .line 64
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 67
    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    new-instance p1, Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 81
    .line 82
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 88
    .line 89
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    .line 93
    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    iget p1, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 97
    .line 98
    sget p2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 99
    .line 100
    int-to-float p2, p2

    .line 101
    cmpg-float p1, p1, p2

    .line 102
    .line 103
    if-gez p1, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget p2, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 107
    .line 108
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_3

    .line 120
    .line 121
    move p2, v1

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move p2, p4

    .line 124
    :goto_2
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 128
    .line 129
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 130
    .line 131
    invoke-static {p2, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    .line 137
    .line 138
    :cond_4
    move p1, v2

    .line 139
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 140
    .line 141
    if-eqz p2, :cond_9

    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-nez v0, :cond_6

    .line 148
    .line 149
    iget p3, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 150
    .line 151
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 152
    .line 153
    int-to-float v0, v0

    .line 154
    cmpg-float p3, p3, v0

    .line 155
    .line 156
    if-gez p3, :cond_6

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_6
    iget v0, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 160
    .line 161
    :goto_3
    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-eqz p2, :cond_7

    .line 166
    .line 167
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    .line 171
    .line 172
    move p1, v2

    .line 173
    :cond_7
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 174
    .line 175
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    if-eqz p3, :cond_8

    .line 184
    .line 185
    move p4, v1

    .line 186
    :cond_8
    if-eq p2, p4, :cond_9

    .line 187
    .line 188
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 189
    .line 190
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_9
    move v2, p1

    .line 195
    :goto_4
    if-eqz v2, :cond_a

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 198
    .line 199
    .line 200
    :cond_a
    return-void
.end method

.method public final q(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    move v1, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_1
    iget v2, p0, Lcom/mycompany/app/view/MyRoundImage;->k:I

    .line 42
    .line 43
    if-eq v2, p1, :cond_4

    .line 44
    .line 45
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->k:I

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    new-instance v1, Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 64
    .line 65
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return v0

    .line 76
    :cond_4
    return v1
.end method

.method public final r(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyRoundImage;->x:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyRoundImage;->x:Z

    .line 22
    .line 23
    :goto_0
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyRoundImage;->x:Z

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 11
    .line 12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 19
    .line 20
    const-wide/16 v2, 0x190

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 26
    .line 27
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 36
    .line 37
    new-instance v2, Lcom/mycompany/app/view/MyRoundImage$2;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lcom/mycompany/app/view/MyRoundImage$2;-><init>(Lcom/mycompany/app/view/MyRoundImage;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public setBackColor(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->d(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 6
    .line 7
    return-void
.end method

.method public setCircleColor(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->d(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->q(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public setCircleImage(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 22
    .line 23
    .line 24
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->e(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iput v1, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 39
    .line 40
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget v1, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 46
    .line 47
    if-eq v1, p1, :cond_3

    .line 48
    .line 49
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    :goto_0
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 65
    .line 66
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_2
    return-void
.end method

.method public setCircleRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 2
    .line 3
    return-void
.end method

.method public setDarkColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyRoundImage;->V:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIconSmall(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x3

    .line 6
    .line 7
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->m:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->m:I

    .line 12
    .line 13
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 24
    .line 25
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyRoundImage;->x:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 51
    .line 52
    const-wide/16 v0, 0x190

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 58
    .line 59
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 60
    .line 61
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 20
    .line 21
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyRoundImage;->x:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    .line 43
    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 47
    .line 48
    const-wide/16 v0, 0x190

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 54
    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setListener(Lcom/mycompany/app/image/ImageSizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->g:Lcom/mycompany/app/image/ImageSizeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t(ILjava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 3

    .line 1
    const v0, -0x70708

    .line 2
    .line 3
    .line 4
    const v1, -0xdededf

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    :goto_0
    move p1, v1

    .line 27
    :cond_2
    :goto_1
    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainUtil;->y2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_3

    .line 36
    .line 37
    const-string p2, ""

    .line 38
    .line 39
    :cond_3
    const/4 p3, 0x0

    .line 40
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    iput v2, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 44
    .line 45
    iput v2, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 46
    .line 47
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->q(I)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    iget-object v2, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 73
    .line 74
    const/4 p3, 0x1

    .line 75
    if-nez p2, :cond_4

    .line 76
    .line 77
    new-instance p2, Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 88
    .line 89
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 90
    .line 91
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 95
    .line 96
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 97
    .line 98
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 102
    .line 103
    iget v2, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 104
    .line 105
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 109
    .line 110
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 111
    .line 112
    invoke-static {v2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 117
    .line 118
    .line 119
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 120
    .line 121
    if-eqz p2, :cond_8

    .line 122
    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    if-eq p1, v0, :cond_6

    .line 126
    .line 127
    const v0, -0xafafb0

    .line 128
    .line 129
    .line 130
    if-eq p1, v0, :cond_6

    .line 131
    .line 132
    if-ne p1, v1, :cond_5

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    const/4 p1, -0x1

    .line 136
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_7

    .line 145
    .line 146
    const p1, -0x50506

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    const/high16 p1, -0x1000000

    .line 151
    .line 152
    :goto_3
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    .line 154
    .line 155
    :cond_8
    :goto_4
    if-eqz p3, :cond_9

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 158
    .line 159
    .line 160
    :cond_9
    return-void
.end method

.method public final u(Ljava/lang/String;IZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p3, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move p3, v1

    .line 19
    :goto_1
    const v0, -0x70708

    .line 20
    .line 21
    .line 22
    const v3, -0xdededf

    .line 23
    .line 24
    .line 25
    if-nez p2, :cond_3

    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move p2, v0

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    if-eqz p3, :cond_4

    .line 33
    .line 34
    if-ne p2, v0, :cond_4

    .line 35
    .line 36
    :goto_2
    move p2, v3

    .line 37
    :cond_4
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_5

    .line 42
    .line 43
    const-string p1, ""

    .line 44
    .line 45
    :cond_5
    const/4 v4, 0x0

    .line 46
    iput-object v4, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 47
    .line 48
    iput v2, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 49
    .line 50
    iput v2, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 51
    .line 52
    iput-object v4, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 58
    .line 59
    .line 60
    invoke-super {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyRoundImage;->q(I)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget-object v4, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_6

    .line 74
    .line 75
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 78
    .line 79
    if-nez p1, :cond_7

    .line 80
    .line 81
    new-instance p1, Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 92
    .line 93
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 99
    .line 100
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 106
    .line 107
    iget v2, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 113
    .line 114
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 115
    .line 116
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    move v1, v2

    .line 125
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 126
    .line 127
    if-eqz p1, :cond_b

    .line 128
    .line 129
    if-eqz p2, :cond_9

    .line 130
    .line 131
    if-eq p2, v0, :cond_9

    .line 132
    .line 133
    const v0, -0xafafb0

    .line 134
    .line 135
    .line 136
    if-eq p2, v0, :cond_9

    .line 137
    .line 138
    if-ne p2, v3, :cond_8

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    const/4 p2, -0x1

    .line 142
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_9
    :goto_5
    if-eqz p3, :cond_a

    .line 147
    .line 148
    const p2, -0x4f4f50

    .line 149
    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_a
    const/high16 p2, -0x1000000

    .line 153
    .line 154
    :goto_6
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    .line 156
    .line 157
    :cond_b
    :goto_7
    if-eqz v1, :cond_c

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 160
    .line 161
    .line 162
    :cond_c
    return-void
.end method

.method public final v(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyRoundImage;->d(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->q(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyRoundImage;->x:Z

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 66
    .line 67
    const-wide/16 v0, 0x190

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 73
    .line 74
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    .line 75
    .line 76
    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->y:Landroid/view/animation/AlphaAnimation;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public final w(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyRoundImage;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyRoundImage;->q(I)Z

    .line 21
    .line 22
    .line 23
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final x(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_0
    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 17
    .line 18
    iput v1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 19
    .line 20
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 23
    .line 24
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 30
    .line 31
    .line 32
    invoke-super {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->q(I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    move v0, v2

    .line 42
    :cond_2
    if-nez p2, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iput v1, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 49
    .line 50
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 56
    .line 57
    if-eq p1, p2, :cond_5

    .line 58
    .line 59
    iput p2, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 60
    .line 61
    if-nez p2, :cond_4

    .line 62
    .line 63
    iput-object v3, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    :goto_1
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 75
    .line 76
    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 77
    .line 78
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyRoundImage;->p:Z

    .line 79
    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    :goto_3
    return-void

    .line 84
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final y(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->y2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 31
    .line 32
    .line 33
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    new-instance p1, Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 57
    .line 58
    const/4 p2, 0x1

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 63
    .line 64
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 70
    .line 71
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 77
    .line 78
    iget v0, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 84
    .line 85
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 86
    .line 87
    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 95
    .line 96
    if-nez p1, :cond_3

    .line 97
    .line 98
    new-instance p1, Landroid/graphics/RectF;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    int-to-float p2, p2

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    int-to-float v0, v0

    .line 110
    const/4 v1, 0x0

    .line 111
    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 115
    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final z(IILjava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 4

    .line 1
    invoke-static {p3, p4}, Lcom/mycompany/app/main/MainUtil;->y2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->l:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->w:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/mycompany/app/view/MyRoundImage;->h:I

    .line 22
    .line 23
    iput p2, p0, Lcom/mycompany/app/view/MyRoundImage;->n:I

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->o:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/view/MyRoundImage;->s:Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->a()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->l()V

    .line 33
    .line 34
    .line 35
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyRoundImage;->q(I)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object p4, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    const v0, -0x9e9e9f

    .line 49
    .line 50
    .line 51
    const v1, -0x4f4f50

    .line 52
    .line 53
    .line 54
    const/4 v2, -0x1

    .line 55
    const/4 v3, 0x1

    .line 56
    if-nez p4, :cond_4

    .line 57
    .line 58
    iput-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->q:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 61
    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    new-instance p2, Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 75
    .line 76
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 77
    .line 78
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 82
    .line 83
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    iget p2, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 91
    .line 92
    move p3, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    sget p2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 95
    .line 96
    int-to-float p2, p2

    .line 97
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-eqz p3, :cond_2

    .line 102
    .line 103
    move p3, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    move p3, v0

    .line 106
    :goto_0
    iget-object p4, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 107
    .line 108
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 112
    .line 113
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 117
    .line 118
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 119
    .line 120
    invoke-static {p3, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 125
    .line 126
    .line 127
    :cond_3
    move p2, v3

    .line 128
    :cond_4
    iget-object p3, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 129
    .line 130
    if-eqz p3, :cond_8

    .line 131
    .line 132
    invoke-virtual {p3}, Landroid/graphics/Paint;->getTextSize()F

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    iget-object p4, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 137
    .line 138
    invoke-virtual {p4}, Landroid/graphics/Paint;->getColor()I

    .line 139
    .line 140
    .line 141
    move-result p4

    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    iget p1, p0, Lcom/mycompany/app/view/MyRoundImage;->j:F

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 148
    .line 149
    int-to-float p1, p1

    .line 150
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->i()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    move v0, v1

    .line 157
    :cond_6
    move v2, v0

    .line 158
    :goto_1
    invoke-static {p3, p1}, Ljava/lang/Float;->compare(FF)I

    .line 159
    .line 160
    .line 161
    move-result p3

    .line 162
    if-eqz p3, :cond_7

    .line 163
    .line 164
    iget-object p2, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    .line 168
    .line 169
    move p2, v3

    .line 170
    :cond_7
    if-eq p4, v2, :cond_8

    .line 171
    .line 172
    iget-object p1, p0, Lcom/mycompany/app/view/MyRoundImage;->r:Landroid/graphics/Paint;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    move v3, p2

    .line 179
    :goto_2
    if-eqz v3, :cond_9

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyRoundImage;->invalidate()V

    .line 182
    .line 183
    .line 184
    :cond_9
    return-void
.end method
