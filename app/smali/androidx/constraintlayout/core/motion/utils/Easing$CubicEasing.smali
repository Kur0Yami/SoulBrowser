.class Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/Easing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CubicEasing"
.end annotation


# virtual methods
.method public final a(D)D
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    cmpl-double v2, p1, v0

    .line 11
    .line 12
    if-ltz v2, :cond_1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 16
    .line 17
    move-wide v2, v0

    .line 18
    move-wide v4, v2

    .line 19
    :goto_0
    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmpl-double v6, v2, v6

    .line 25
    .line 26
    if-lez v6, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->b(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    mul-double/2addr v2, v0

    .line 33
    cmpg-double v6, v6, p1

    .line 34
    .line 35
    if-gez v6, :cond_2

    .line 36
    .line 37
    add-double/2addr v4, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sub-double/2addr v4, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    sub-double v0, v4, v2

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->b(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    add-double/2addr v4, v2

    .line 48
    invoke-virtual {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->b(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->c(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-virtual {p0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;->c(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    sub-double/2addr v4, v0

    .line 61
    sub-double/2addr p1, v6

    .line 62
    mul-double/2addr p1, v4

    .line 63
    sub-double/2addr v2, v6

    .line 64
    div-double/2addr p1, v2

    .line 65
    add-double/2addr p1, v0

    .line 66
    return-wide p1
.end method

.method public final b(D)D
    .locals 6

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    mul-double v4, p1, p1

    mul-double/2addr v4, p1

    const-wide/16 p1, 0x0

    mul-double/2addr p1, v0

    const-wide/16 v0, 0x0

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public final c(D)D
    .locals 6

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    mul-double v4, p1, p1

    mul-double/2addr v4, p1

    const-wide/16 p1, 0x0

    mul-double/2addr p1, v0

    const-wide/16 v0, 0x0

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    add-double/2addr v0, v4

    return-wide v0
.end method
