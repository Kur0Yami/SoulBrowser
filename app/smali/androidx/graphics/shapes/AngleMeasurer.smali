.class public final Landroidx/graphics/shapes/AngleMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/graphics/shapes/Measurer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/graphics/shapes/AngleMeasurer;",
        "Landroidx/graphics/shapes/Measurer;",
        "graphics-shapes_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/graphics/shapes/AngleMeasurer;->a:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/graphics/shapes/AngleMeasurer;->b:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/graphics/shapes/Cubic;)F
    .locals 4

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Landroidx/graphics/shapes/AngleMeasurer;->a:F

    .line 11
    .line 12
    sub-float/2addr v0, v1

    .line 13
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget v3, p0, Landroidx/graphics/shapes/AngleMeasurer;->b:F

    .line 18
    .line 19
    sub-float/2addr v2, v3

    .line 20
    invoke-static {v0, v2}, Landroidx/graphics/shapes/Utils;->a(FF)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object p1, p1, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aget v2, p1, v2

    .line 28
    .line 29
    sub-float/2addr v2, v1

    .line 30
    const/4 v1, 0x1

    .line 31
    aget p1, p1, v1

    .line 32
    .line 33
    sub-float/2addr p1, v3

    .line 34
    invoke-static {v2, p1}, Landroidx/graphics/shapes/Utils;->a(FF)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    sub-float/2addr v0, p1

    .line 39
    sget p1, Landroidx/graphics/shapes/Utils;->c:F

    .line 40
    .line 41
    invoke-static {v0, p1}, Landroidx/graphics/shapes/Utils;->d(FF)F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const v1, 0x38d1b717    # 1.0E-4f

    .line 46
    .line 47
    .line 48
    sub-float/2addr p1, v1

    .line 49
    cmpl-float p1, v0, p1

    .line 50
    .line 51
    if-lez p1, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    return p1

    .line 55
    :cond_0
    return v0
.end method

.method public final b(Landroidx/graphics/shapes/Cubic;F)F
    .locals 5

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget v1, v0, v1

    .line 10
    .line 11
    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->a:F

    .line 12
    .line 13
    sub-float/2addr v1, v2

    .line 14
    const/4 v2, 0x1

    .line 15
    aget v0, v0, v2

    .line 16
    .line 17
    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->b:F

    .line 18
    .line 19
    sub-float/2addr v0, v2

    .line 20
    invoke-static {v1, v0}, Landroidx/graphics/shapes/Utils;->a(FF)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v1, Landroidx/graphics/shapes/a;

    .line 25
    .line 26
    invoke-direct {v1, p1, p0, v0, p2}, Landroidx/graphics/shapes/a;-><init>(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FF)V

    .line 27
    .line 28
    .line 29
    const-string p1, "f"

    .line 30
    .line 31
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    const/high16 p2, 0x3f800000    # 1.0f

    .line 36
    .line 37
    :goto_0
    sub-float v0, p2, p1

    .line 38
    .line 39
    const v2, 0x3727c5ac    # 1.0E-5f

    .line 40
    .line 41
    .line 42
    cmpl-float v0, v0, v2

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    if-lez v0, :cond_1

    .line 46
    .line 47
    int-to-float v0, v2

    .line 48
    mul-float v2, v0, p1

    .line 49
    .line 50
    add-float/2addr v2, p2

    .line 51
    const/4 v3, 0x3

    .line 52
    int-to-float v3, v3

    .line 53
    div-float/2addr v2, v3

    .line 54
    mul-float/2addr v0, p2

    .line 55
    add-float/2addr v0, p1

    .line 56
    div-float/2addr v0, v3

    .line 57
    invoke-virtual {v1, v2}, Landroidx/graphics/shapes/a;->a(F)F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v1, v0}, Landroidx/graphics/shapes/a;->a(F)F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    cmpg-float v3, v3, v4

    .line 66
    .line 67
    if-gez v3, :cond_0

    .line 68
    .line 69
    move p2, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move p1, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    add-float/2addr p1, p2

    .line 74
    int-to-float p2, v2

    .line 75
    div-float/2addr p1, p2

    .line 76
    return p1
.end method
