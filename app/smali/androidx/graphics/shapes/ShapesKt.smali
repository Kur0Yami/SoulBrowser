.class public final Landroidx/graphics/shapes/ShapesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "graphics-shapes_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShapes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shapes.kt\nandroidx/graphics/shapes/ShapesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,459:1\n1360#2:460\n1446#2,5:461\n1360#2:466\n1446#2,5:467\n*S KotlinDebug\n*F\n+ 1 Shapes.kt\nandroidx/graphics/shapes/ShapesKt\n*L\n155#1:460\n155#1:461,5\n294#1:466\n294#1:467,5\n*E\n"
    }
.end annotation


# direct methods
.method public static a(I)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 3

    .line 1
    and-int/lit8 p0, p0, 0x1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x8

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 p0, 0xa

    .line 9
    .line 10
    :goto_0
    const-string v0, "<this>"

    .line 11
    .line 12
    sget-object v1, Landroidx/graphics/shapes/RoundedPolygon;->e:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget v0, Landroidx/graphics/shapes/Utils;->b:F

    .line 18
    .line 19
    int-to-float v1, p0

    .line 20
    div-float/2addr v0, v1

    .line 21
    float-to-double v0, v0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    double-to-float v0, v0

    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    div-float/2addr v1, v0

    .line 30
    new-instance v0, Landroidx/graphics/shapes/CornerRounding;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-direct {v0, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(I)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-static {p0, v1, v0, v2}, Landroidx/graphics/shapes/RoundedPolygonKt;->a(IFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static final b(FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    sget-object v1, Landroidx/graphics/shapes/RoundedPolygon;->e:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "rounding"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    int-to-float v1, v0

    .line 15
    div-float/2addr p0, v1

    .line 16
    const/4 v2, 0x0

    .line 17
    sub-float v3, v2, p0

    .line 18
    .line 19
    const/high16 v4, 0x3f800000    # 1.0f

    .line 20
    .line 21
    div-float/2addr v4, v1

    .line 22
    sub-float v1, v2, v4

    .line 23
    .line 24
    add-float/2addr p0, v2

    .line 25
    add-float/2addr v4, v2

    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    new-array v5, v5, [F

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    aput p0, v5, v6

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    aput v4, v5, v6

    .line 35
    .line 36
    aput v3, v5, v0

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    aput v4, v5, v0

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    aput v3, v5, v0

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    aput v1, v5, v0

    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    aput p0, v5, v0

    .line 49
    .line 50
    const/4 p0, 0x7

    .line 51
    aput v1, v5, p0

    .line 52
    .line 53
    invoke-static {v5, p1, p2, v2, v2}, Landroidx/graphics/shapes/RoundedPolygonKt;->b([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static final c(IFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 10

    .line 1
    sget-object v0, Landroidx/graphics/shapes/RoundedPolygon;->e:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "rounding"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    cmpg-float v1, p1, v0

    .line 21
    .line 22
    if-lez v1, :cond_2

    .line 23
    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    cmpl-float v2, p1, v1

    .line 27
    .line 28
    if-gez v2, :cond_1

    .line 29
    .line 30
    mul-int/lit8 v2, p0, 0x4

    .line 31
    .line 32
    new-array v2, v2, [F

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    move v4, v3

    .line 36
    :goto_0
    if-ge v3, p0, :cond_0

    .line 37
    .line 38
    sget v5, Landroidx/graphics/shapes/Utils;->b:F

    .line 39
    .line 40
    int-to-float v6, p0

    .line 41
    div-float/2addr v5, v6

    .line 42
    const/4 v6, 0x2

    .line 43
    int-to-float v6, v6

    .line 44
    mul-float/2addr v6, v5

    .line 45
    int-to-float v7, v3

    .line 46
    mul-float/2addr v6, v7

    .line 47
    invoke-static {v1, v6}, Landroidx/graphics/shapes/Utils;->e(FF)J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    add-int/lit8 v8, v4, 0x1

    .line 52
    .line 53
    invoke-static {v6, v7}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    add-float/2addr v9, v0

    .line 58
    aput v9, v2, v4

    .line 59
    .line 60
    add-int/lit8 v9, v4, 0x2

    .line 61
    .line 62
    invoke-static {v6, v7}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    add-float/2addr v6, v0

    .line 67
    aput v6, v2, v8

    .line 68
    .line 69
    mul-int/lit8 v6, v3, 0x2

    .line 70
    .line 71
    add-int/lit8 v6, v6, 0x1

    .line 72
    .line 73
    int-to-float v6, v6

    .line 74
    mul-float/2addr v5, v6

    .line 75
    invoke-static {p1, v5}, Landroidx/graphics/shapes/Utils;->e(FF)J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    add-int/lit8 v7, v4, 0x3

    .line 80
    .line 81
    invoke-static {v5, v6}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    add-float/2addr v8, v0

    .line 86
    aput v8, v2, v9

    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x4

    .line 89
    .line 90
    invoke-static {v5, v6}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    add-float/2addr v5, v0

    .line 95
    aput v5, v2, v7

    .line 96
    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const/4 p0, 0x0

    .line 101
    invoke-static {v2, p2, p0, v0, v0}, Landroidx/graphics/shapes/RoundedPolygonKt;->b([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string p1, "innerRadius must be less than radius"

    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string p1, "Star radii must both be greater than 0"

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method
