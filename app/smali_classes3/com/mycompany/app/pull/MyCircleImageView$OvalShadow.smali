.class Lcom/mycompany/app/pull/MyCircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/pull/MyCircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OvalShadow"
.end annotation


# instance fields
.field public final c:Landroid/graphics/Paint;

.field public final f:I

.field public final synthetic g:Lcom/mycompany/app/pull/MyCircleImageView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyCircleImageView;II)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/pull/MyCircleImageView$OvalShadow;->g:Lcom/mycompany/app/pull/MyCircleImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p1, Lcom/mycompany/app/pull/MyCircleImageView;->f:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/pull/MyCircleImageView$OvalShadow;->f:I

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 11
    .line 12
    div-int/lit8 p3, p3, 0x2

    .line 13
    .line 14
    int-to-float v1, p3

    .line 15
    iget p1, p1, Lcom/mycompany/app/pull/MyCircleImageView;->f:I

    .line 16
    .line 17
    int-to-float v3, p1

    .line 18
    const/high16 p1, 0x3d000000    # 0.03125f

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    filled-new-array {p1, p2}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x0

    .line 26
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 27
    .line 28
    move v2, v1

    .line 29
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/mycompany/app/pull/MyCircleImageView$OvalShadow;->c:Landroid/graphics/Paint;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/pull/MyCircleImageView$OvalShadow;->g:Lcom/mycompany/app/pull/MyCircleImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    iget v3, p0, Lcom/mycompany/app/pull/MyCircleImageView$OvalShadow;->f:I

    .line 18
    .line 19
    div-int/lit8 v4, v3, 0x2

    .line 20
    .line 21
    iget v0, v0, Lcom/mycompany/app/pull/MyCircleImageView;->f:I

    .line 22
    .line 23
    add-int/2addr v4, v0

    .line 24
    int-to-float v0, v4

    .line 25
    iget-object v4, p0, Lcom/mycompany/app/pull/MyCircleImageView$OvalShadow;->c:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    div-int/lit8 v3, v3, 0x2

    .line 31
    .line 32
    int-to-float v0, v3

    .line 33
    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
