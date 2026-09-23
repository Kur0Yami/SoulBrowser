.class public Lcom/google/android/material/shape/RoundedCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/google/android/material/shape/ShapePath;FF)V
    .locals 9

    .line 1
    mul-float/2addr p3, p2

    .line 2
    const/high16 p2, 0x43340000    # 180.0f

    .line 3
    .line 4
    const/high16 v0, 0x42b40000    # 90.0f

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1, p3, p2, v0}, Lcom/google/android/material/shape/ShapePath;->e(FFFF)V

    .line 8
    .line 9
    .line 10
    const/high16 p2, 0x40000000    # 2.0f

    .line 11
    .line 12
    mul-float/2addr p3, p2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/google/android/material/shape/ShapePath$PathArcOperation;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p2, v0, v1, p3, p3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    const/high16 v2, 0x43340000    # 180.0f

    .line 23
    .line 24
    iput v2, p2, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->f:F

    .line 25
    .line 26
    const/high16 v3, 0x42b40000    # 90.0f

    .line 27
    .line 28
    iput v3, p2, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->g:F

    .line 29
    .line 30
    iget-object v4, p1, Lcom/google/android/material/shape/ShapePath;->g:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance v4, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;

    .line 36
    .line 37
    invoke-direct {v4, p2}, Lcom/google/android/material/shape/ShapePath$ArcShadowOperation;-><init>(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)V

    .line 38
    .line 39
    .line 40
    add-float p2, v2, v3

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    cmpg-float v3, v3, v5

    .line 44
    .line 45
    if-gez v3, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_0
    const/high16 v5, 0x43b40000    # 360.0f

    .line 51
    .line 52
    const/high16 v6, 0x43340000    # 180.0f

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    add-float/2addr v2, v6

    .line 57
    rem-float/2addr v2, v5

    .line 58
    :cond_1
    if-eqz v3, :cond_2

    .line 59
    .line 60
    add-float/2addr v6, p2

    .line 61
    rem-float/2addr v6, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v6, p2

    .line 64
    :goto_1
    invoke-virtual {p1, v2}, Lcom/google/android/material/shape/ShapePath;->a(F)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p1, Lcom/google/android/material/shape/ShapePath;->h:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iput v6, p1, Lcom/google/android/material/shape/ShapePath;->e:F

    .line 73
    .line 74
    add-float v2, v0, p3

    .line 75
    .line 76
    const/high16 v3, 0x3f000000    # 0.5f

    .line 77
    .line 78
    mul-float/2addr v2, v3

    .line 79
    sub-float v0, p3, v0

    .line 80
    .line 81
    const/high16 v4, 0x40000000    # 2.0f

    .line 82
    .line 83
    div-float/2addr v0, v4

    .line 84
    float-to-double v5, p2

    .line 85
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v7

    .line 93
    double-to-float p2, v7

    .line 94
    mul-float/2addr v0, p2

    .line 95
    add-float/2addr v0, v2

    .line 96
    iput v0, p1, Lcom/google/android/material/shape/ShapePath;->c:F

    .line 97
    .line 98
    add-float p2, v1, p3

    .line 99
    .line 100
    mul-float/2addr p2, v3

    .line 101
    sub-float/2addr p3, v1

    .line 102
    div-float/2addr p3, v4

    .line 103
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    double-to-float v0, v0

    .line 112
    mul-float/2addr p3, v0

    .line 113
    add-float/2addr p3, p2

    .line 114
    iput p3, p1, Lcom/google/android/material/shape/ShapePath;->d:F

    .line 115
    .line 116
    return-void
.end method
