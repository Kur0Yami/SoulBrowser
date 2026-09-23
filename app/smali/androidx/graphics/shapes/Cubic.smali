.class public Landroidx/graphics/shapes/Cubic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/Cubic$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/graphics/shapes/Cubic;",
        "",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCubic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cubic.kt\nandroidx/graphics/shapes/Cubic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n1#2:449\n*E\n"
    }
.end annotation


# instance fields
.field public final a:[F


# direct methods
.method public constructor <init>([F)V
    .locals 1

    .line 1
    const-string v0, "points"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 10
    .line 11
    array-length p1, p1

    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "Points array size should be 8"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method


# virtual methods
.method public final a()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public final b()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method

.method public final c(F)J
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    int-to-float v1, v0

    .line 3
    sub-float/2addr v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 6
    .line 7
    aget v2, v3, v2

    .line 8
    .line 9
    mul-float v4, v1, v1

    .line 10
    .line 11
    mul-float/2addr v4, v1

    .line 12
    mul-float/2addr v2, v4

    .line 13
    const/4 v5, 0x2

    .line 14
    aget v5, v3, v5

    .line 15
    .line 16
    const/4 v6, 0x3

    .line 17
    int-to-float v7, v6

    .line 18
    mul-float/2addr v7, p1

    .line 19
    mul-float v8, v7, v1

    .line 20
    .line 21
    mul-float/2addr v8, v1

    .line 22
    mul-float/2addr v5, v8

    .line 23
    add-float/2addr v5, v2

    .line 24
    const/4 v2, 0x4

    .line 25
    aget v2, v3, v2

    .line 26
    .line 27
    mul-float/2addr v7, p1

    .line 28
    mul-float/2addr v7, v1

    .line 29
    mul-float/2addr v2, v7

    .line 30
    add-float/2addr v2, v5

    .line 31
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    mul-float v5, p1, p1

    .line 36
    .line 37
    mul-float/2addr v5, p1

    .line 38
    mul-float/2addr v1, v5

    .line 39
    add-float/2addr v1, v2

    .line 40
    aget p1, v3, v0

    .line 41
    .line 42
    mul-float/2addr p1, v4

    .line 43
    aget v0, v3, v6

    .line 44
    .line 45
    mul-float/2addr v0, v8

    .line 46
    add-float/2addr v0, p1

    .line 47
    const/4 p1, 0x5

    .line 48
    aget p1, v3, p1

    .line 49
    .line 50
    mul-float/2addr p1, v7

    .line 51
    add-float/2addr p1, v0

    .line 52
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    mul-float/2addr v0, v5

    .line 57
    add-float/2addr v0, p1

    .line 58
    invoke-static {v1, v0}, Landroidx/collection/FloatFloatPair;->a(FF)J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    return-wide v0
.end method

.method public final d(F)Lkotlin/Pair;
    .locals 29

    .line 1
    const/4 v0, 0x1

    .line 2
    int-to-float v1, v0

    .line 3
    sub-float v1, v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Landroidx/graphics/shapes/Cubic;->c(F)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object/from16 v5, p0

    .line 11
    .line 12
    iget-object v6, v5, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 13
    .line 14
    aget v7, v6, v4

    .line 15
    .line 16
    aget v8, v6, v0

    .line 17
    .line 18
    mul-float v0, v7, v1

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    aget v9, v6, v4

    .line 22
    .line 23
    mul-float v10, v9, p1

    .line 24
    .line 25
    add-float/2addr v10, v0

    .line 26
    mul-float v0, v8, v1

    .line 27
    .line 28
    const/4 v15, 0x3

    .line 29
    aget v11, v6, v15

    .line 30
    .line 31
    mul-float v12, v11, p1

    .line 32
    .line 33
    add-float/2addr v12, v0

    .line 34
    mul-float v0, v1, v1

    .line 35
    .line 36
    mul-float v13, v7, v0

    .line 37
    .line 38
    int-to-float v14, v4

    .line 39
    mul-float/2addr v14, v1

    .line 40
    mul-float v16, v14, p1

    .line 41
    .line 42
    mul-float v9, v9, v16

    .line 43
    .line 44
    add-float/2addr v9, v13

    .line 45
    const/16 v17, 0x4

    .line 46
    .line 47
    aget v13, v6, v17

    .line 48
    .line 49
    mul-float v18, p1, p1

    .line 50
    .line 51
    mul-float v13, v13, v18

    .line 52
    .line 53
    add-float/2addr v13, v9

    .line 54
    mul-float v9, v8, v0

    .line 55
    .line 56
    mul-float v11, v11, v16

    .line 57
    .line 58
    add-float/2addr v11, v9

    .line 59
    const/16 v19, 0x5

    .line 60
    .line 61
    aget v9, v6, v19

    .line 62
    .line 63
    mul-float v9, v9, v18

    .line 64
    .line 65
    add-float/2addr v9, v11

    .line 66
    move v11, v13

    .line 67
    invoke-static {v2, v3}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    invoke-static {v2, v3}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    move/from16 v28, v12

    .line 76
    .line 77
    move v12, v9

    .line 78
    move v9, v10

    .line 79
    move/from16 v10, v28

    .line 80
    .line 81
    invoke-static/range {v7 .. v14}, Landroidx/graphics/shapes/CubicKt;->a(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-static {v2, v3}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 86
    .line 87
    .line 88
    move-result v20

    .line 89
    invoke-static {v2, v3}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 90
    .line 91
    .line 92
    move-result v21

    .line 93
    aget v2, v6, v4

    .line 94
    .line 95
    mul-float/2addr v2, v0

    .line 96
    aget v3, v6, v17

    .line 97
    .line 98
    mul-float v3, v3, v16

    .line 99
    .line 100
    add-float/2addr v3, v2

    .line 101
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    mul-float v2, v2, v18

    .line 106
    .line 107
    add-float v22, v2, v3

    .line 108
    .line 109
    aget v2, v6, v15

    .line 110
    .line 111
    mul-float/2addr v2, v0

    .line 112
    aget v0, v6, v19

    .line 113
    .line 114
    mul-float v0, v0, v16

    .line 115
    .line 116
    add-float/2addr v0, v2

    .line 117
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    mul-float v2, v2, v18

    .line 122
    .line 123
    add-float v23, v2, v0

    .line 124
    .line 125
    aget v0, v6, v17

    .line 126
    .line 127
    mul-float/2addr v0, v1

    .line 128
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    mul-float v2, v2, p1

    .line 133
    .line 134
    add-float v24, v2, v0

    .line 135
    .line 136
    aget v0, v6, v19

    .line 137
    .line 138
    mul-float/2addr v0, v1

    .line 139
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    mul-float v1, v1, p1

    .line 144
    .line 145
    add-float v25, v1, v0

    .line 146
    .line 147
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 148
    .line 149
    .line 150
    move-result v26

    .line 151
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 152
    .line 153
    .line 154
    move-result v27

    .line 155
    invoke-static/range {v20 .. v27}, Landroidx/graphics/shapes/CubicKt;->a(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v7, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    return-object v0
.end method

.method public final e(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/MutableCubic;
    .locals 4

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/graphics/shapes/MutableCubic;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    new-array v2, v2, [F

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 16
    .line 17
    invoke-static {v3, v2}, Lkotlin/collections/ArraysKt;->o([F[F)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {v1, p1, v0}, Landroidx/graphics/shapes/MutableCubic;->f(Landroidx/graphics/shapes/PointTransformer;I)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-virtual {v1, p1, v0}, Landroidx/graphics/shapes/MutableCubic;->f(Landroidx/graphics/shapes/PointTransformer;I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-virtual {v1, p1, v0}, Landroidx/graphics/shapes/MutableCubic;->f(Landroidx/graphics/shapes/PointTransformer;I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    invoke-virtual {v1, p1, v0}, Landroidx/graphics/shapes/MutableCubic;->f(Landroidx/graphics/shapes/PointTransformer;I)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/graphics/shapes/Cubic;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroidx/graphics/shapes/Cubic;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "anchor0: ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 10
    .line 11
    aget v1, v2, v1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    aget v3, v2, v3

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ") control0: ("

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    aget v3, v2, v3

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x3

    .line 42
    aget v3, v2, v3

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, "), control1: ("

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x4

    .line 53
    aget v3, v2, v3

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    aget v2, v2, v3

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, "), anchor1: ("

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/16 v1, 0x29

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method
