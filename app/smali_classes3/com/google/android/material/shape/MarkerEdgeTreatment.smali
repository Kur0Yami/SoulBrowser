.class public final Lcom/google/android/material/shape/MarkerEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "SourceFile"


# virtual methods
.method public final b(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    float-to-double v0, p1

    .line 3
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 4
    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    mul-double/2addr v4, v0

    .line 10
    div-double/2addr v4, v2

    .line 11
    double-to-float p1, v4

    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    float-to-double v6, p1

    .line 17
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    sub-double/2addr v4, v6

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    double-to-float p3, v4

    .line 27
    sub-float v4, p2, p1

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    mul-double/2addr v5, v0

    .line 34
    sub-double/2addr v5, v0

    .line 35
    neg-double v5, v5

    .line 36
    double-to-float v5, v5

    .line 37
    add-float/2addr v5, p3

    .line 38
    const/high16 v6, 0x43870000    # 270.0f

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-virtual {p4, v4, v5, v6, v7}, Lcom/google/android/material/shape/ShapePath;->e(FFFF)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    mul-double/2addr v4, v0

    .line 49
    sub-double/2addr v4, v0

    .line 50
    neg-double v4, v4

    .line 51
    double-to-float v4, v4

    .line 52
    invoke-virtual {p4, p2, v4}, Lcom/google/android/material/shape/ShapePath;->c(FF)V

    .line 53
    .line 54
    .line 55
    add-float/2addr p2, p1

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    mul-double/2addr v2, v0

    .line 61
    sub-double/2addr v2, v0

    .line 62
    neg-double v0, v2

    .line 63
    double-to-float p1, v0

    .line 64
    add-float/2addr p1, p3

    .line 65
    invoke-virtual {p4, p2, p1}, Lcom/google/android/material/shape/ShapePath;->c(FF)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
