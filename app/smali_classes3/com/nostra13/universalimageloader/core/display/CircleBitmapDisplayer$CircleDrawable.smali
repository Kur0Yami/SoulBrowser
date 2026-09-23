.class public Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircleDrawable"
.end annotation


# instance fields
.field public a:F

.field public final b:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/RectF;

.field public final d:Landroid/graphics/BitmapShader;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public g:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->b:Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    div-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    int-to-float v0, v0

    .line 26
    iput v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->a:F

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 29
    .line 30
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 31
    .line 32
    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->d:Landroid/graphics/BitmapShader;

    .line 36
    .line 37
    new-instance v1, Landroid/graphics/RectF;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    int-to-float v2, v2

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    int-to-float p1, p1

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->c:Landroid/graphics/RectF;

    .line 54
    .line 55
    new-instance p1, Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->e:Landroid/graphics/Paint;

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->f:Landroid/graphics/Paint;

    .line 74
    .line 75
    iget p1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->a:F

    .line 76
    .line 77
    sub-float/2addr p1, v3

    .line 78
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->g:F

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->a:F

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->e:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->f:Landroid/graphics/Paint;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->a:F

    .line 13
    .line 14
    iget v2, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->g:F

    .line 15
    .line 16
    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->b:Landroid/graphics/RectF;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    div-int/lit8 p1, p1, 0x2

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->a:F

    .line 36
    .line 37
    sub-float/2addr p1, v3

    .line 38
    iput p1, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->g:F

    .line 39
    .line 40
    new-instance p1, Landroid/graphics/Matrix;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->c:Landroid/graphics/RectF;

    .line 46
    .line 47
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->d:Landroid/graphics/BitmapShader;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;->e:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    return-void
.end method
