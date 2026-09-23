.class public Landroidx/transition/PatternPathMotion;
.super Landroidx/transition/PathMotion;
.source "SourceFile"


# virtual methods
.method public final a(FFFF)Landroid/graphics/Path;
    .locals 0

    .line 1
    sub-float/2addr p3, p1

    .line 2
    sub-float/2addr p4, p2

    .line 3
    mul-float p1, p3, p3

    .line 4
    .line 5
    mul-float p2, p4, p4

    .line 6
    .line 7
    add-float/2addr p2, p1

    .line 8
    float-to-double p1, p2

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    .line 11
    .line 12
    float-to-double p1, p4

    .line 13
    float-to-double p3, p3

    .line 14
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    throw p1
.end method
