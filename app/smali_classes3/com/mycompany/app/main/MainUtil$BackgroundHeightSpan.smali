.class Lcom/mycompany/app/main/MainUtil$BackgroundHeightSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundHeightSpan"
.end annotation


# instance fields
.field public final c:I

.field public final f:I

.field public final g:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/mycompany/app/main/MainUtil$BackgroundHeightSpan;->c:I

    .line 5
    .line 6
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 7
    .line 8
    add-int/2addr p2, p1

    .line 9
    iput p2, p0, Lcom/mycompany/app/main/MainUtil$BackgroundHeightSpan;->f:I

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    iput p1, p0, Lcom/mycompany/app/main/MainUtil$BackgroundHeightSpan;->g:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 7

    .line 1
    move-object/from16 v6, p9

    .line 2
    .line 3
    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Landroid/graphics/RectF;

    .line 8
    .line 9
    int-to-float v3, p6

    .line 10
    invoke-virtual {v6, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    add-float/2addr v4, p5

    .line 15
    iget v5, p0, Lcom/mycompany/app/main/MainUtil$BackgroundHeightSpan;->f:I

    .line 16
    .line 17
    add-int v0, p6, v5

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    invoke-direct {v2, p5, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/mycompany/app/main/MainUtil$BackgroundHeightSpan;->c:I

    .line 24
    .line 25
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/mycompany/app/main/MainUtil$BackgroundHeightSpan;->g:F

    .line 29
    .line 30
    invoke-virtual {p1, v2, v0, v0, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    int-to-float v5, p7

    .line 37
    move-object v0, p1

    .line 38
    move-object v1, p2

    .line 39
    move v2, p3

    .line 40
    move v3, p4

    .line 41
    move v4, p5

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
