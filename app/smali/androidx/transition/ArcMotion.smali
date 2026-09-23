.class public Landroidx/transition/ArcMotion;
.super Landroidx/transition/PathMotion;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x4041800000000000L    # 35.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(FFFF)Landroid/graphics/Path;
    .locals 11

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    .line 8
    .line 9
    sub-float v1, p3, p1

    .line 10
    .line 11
    sub-float v2, p4, p2

    .line 12
    .line 13
    mul-float v3, v1, v1

    .line 14
    .line 15
    mul-float v4, v2, v2

    .line 16
    .line 17
    add-float/2addr v4, v3

    .line 18
    add-float v3, p1, p3

    .line 19
    .line 20
    const/high16 v5, 0x40000000    # 2.0f

    .line 21
    .line 22
    div-float/2addr v3, v5

    .line 23
    add-float v6, p2, p4

    .line 24
    .line 25
    div-float/2addr v6, v5

    .line 26
    const/high16 v7, 0x3e800000    # 0.25f

    .line 27
    .line 28
    mul-float/2addr v7, v4

    .line 29
    cmpl-float v8, p2, p4

    .line 30
    .line 31
    if-lez v8, :cond_0

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v8, 0x0

    .line 36
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    cmpg-float v9, v9, v10

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    if-gez v9, :cond_2

    .line 48
    .line 49
    mul-float/2addr v2, v5

    .line 50
    div-float/2addr v4, v2

    .line 51
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v8, :cond_1

    .line 56
    .line 57
    add-float/2addr v1, p4

    .line 58
    move v2, p3

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    add-float/2addr v1, p2

    .line 61
    move v2, p1

    .line 62
    :goto_1
    mul-float v4, v7, v10

    .line 63
    .line 64
    mul-float/2addr v4, v10

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    mul-float/2addr v1, v5

    .line 67
    div-float/2addr v4, v1

    .line 68
    if-eqz v8, :cond_3

    .line 69
    .line 70
    add-float/2addr v4, p1

    .line 71
    move v1, p2

    .line 72
    move v2, v4

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    sub-float v1, p3, v4

    .line 75
    .line 76
    move v2, v1

    .line 77
    move v1, p4

    .line 78
    goto :goto_1

    .line 79
    :goto_2
    sub-float v8, v3, v2

    .line 80
    .line 81
    sub-float v9, v6, v1

    .line 82
    .line 83
    mul-float/2addr v8, v8

    .line 84
    mul-float/2addr v9, v9

    .line 85
    add-float/2addr v9, v8

    .line 86
    mul-float/2addr v7, v10

    .line 87
    mul-float/2addr v7, v10

    .line 88
    cmpg-float v8, v9, v4

    .line 89
    .line 90
    if-gez v8, :cond_4

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    cmpl-float v4, v9, v7

    .line 94
    .line 95
    if-lez v4, :cond_5

    .line 96
    .line 97
    move v4, v7

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    move v4, v10

    .line 100
    :goto_3
    cmpl-float v7, v4, v10

    .line 101
    .line 102
    if-eqz v7, :cond_6

    .line 103
    .line 104
    div-float/2addr v4, v9

    .line 105
    float-to-double v7, v4

    .line 106
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 107
    .line 108
    .line 109
    move-result-wide v7

    .line 110
    double-to-float v4, v7

    .line 111
    invoke-static {v2, v3, v4, v3}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-static {v1, v6, v4, v6}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    :cond_6
    add-float/2addr p1, v2

    .line 120
    div-float/2addr p1, v5

    .line 121
    add-float/2addr p2, v1

    .line 122
    div-float/2addr p2, v5

    .line 123
    add-float/2addr v2, p3

    .line 124
    div-float v3, v2, v5

    .line 125
    .line 126
    add-float/2addr v1, p4

    .line 127
    div-float v4, v1, v5

    .line 128
    .line 129
    move v1, p1

    .line 130
    move v2, p2

    .line 131
    move v5, p3

    .line 132
    move v6, p4

    .line 133
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 134
    .line 135
    .line 136
    return-object v0
.end method
