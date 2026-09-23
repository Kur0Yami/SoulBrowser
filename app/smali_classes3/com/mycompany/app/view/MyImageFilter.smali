.class public Lcom/mycompany/app/view/MyImageFilter;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public c:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Bitmap;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageFilter;->c:Landroid/graphics/Paint;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/view/MyImageFilter;->c:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/mycompany/app/view/MyImageFilter$1;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyImageFilter$1;-><init>(Lcom/mycompany/app/view/MyImageFilter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageFilter;->f:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v1, v0

    .line 24
    int-to-float p1, p1

    .line 25
    mul-float/2addr p1, v1

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, p2, :cond_2

    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_2
    new-instance p1, Lcom/mycompany/app/view/MyImageFilter$2;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyImageFilter$2;-><init>(Lcom/mycompany/app/view/MyImageFilter;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageFilter;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageFilter;->f:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    div-float/2addr v1, v2

    .line 26
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageFilter;->c:Landroid/graphics/Paint;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyImageFilter;->a(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageFilter;->f:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyImageFilter;->a(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setImageBright(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageFilter;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyImageFilter;->g:I

    .line 7
    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/view/MyImageFilter;->g:I

    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    const/high16 v1, 0x42c80000    # 100.0f

    .line 15
    .line 16
    div-float/2addr p1, v1

    .line 17
    new-instance v1, Landroid/graphics/ColorMatrix;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x14

    .line 23
    .line 24
    new-array v2, v2, [F

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput p1, v2, v3

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    aput v4, v2, v3

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    aput v4, v2, v3

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    aput v4, v2, v3

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    .line 42
    aput v5, v2, v3

    .line 43
    .line 44
    const/4 v3, 0x5

    .line 45
    aput v4, v2, v3

    .line 46
    .line 47
    const/4 v3, 0x6

    .line 48
    aput p1, v2, v3

    .line 49
    .line 50
    const/4 v3, 0x7

    .line 51
    aput v4, v2, v3

    .line 52
    .line 53
    const/16 v3, 0x8

    .line 54
    .line 55
    aput v4, v2, v3

    .line 56
    .line 57
    const/16 v3, 0x9

    .line 58
    .line 59
    aput v5, v2, v3

    .line 60
    .line 61
    const/16 v3, 0xa

    .line 62
    .line 63
    aput v4, v2, v3

    .line 64
    .line 65
    const/16 v3, 0xb

    .line 66
    .line 67
    aput v4, v2, v3

    .line 68
    .line 69
    const/16 v3, 0xc

    .line 70
    .line 71
    aput p1, v2, v3

    .line 72
    .line 73
    const/16 p1, 0xd

    .line 74
    .line 75
    aput v4, v2, p1

    .line 76
    .line 77
    const/16 p1, 0xe

    .line 78
    .line 79
    aput v5, v2, p1

    .line 80
    .line 81
    const/16 p1, 0xf

    .line 82
    .line 83
    aput v4, v2, p1

    .line 84
    .line 85
    const/16 p1, 0x10

    .line 86
    .line 87
    aput v4, v2, p1

    .line 88
    .line 89
    const/16 p1, 0x11

    .line 90
    .line 91
    aput v4, v2, p1

    .line 92
    .line 93
    const/16 p1, 0x12

    .line 94
    .line 95
    aput v5, v2, p1

    .line 96
    .line 97
    const/16 p1, 0x13

    .line 98
    .line 99
    aput v4, v2, p1

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    .line 105
    .line 106
    invoke-direct {p1, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 113
    .line 114
    .line 115
    return-void
.end method
