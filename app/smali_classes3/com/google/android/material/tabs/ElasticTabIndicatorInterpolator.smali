.class Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;
.super Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.source "SourceFile"


# virtual methods
.method public final b(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p1, p3}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p3, p2, Landroid/graphics/RectF;->left:F

    .line 10
    .line 11
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 12
    .line 13
    cmpg-float p3, p3, v0

    .line 14
    .line 15
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 16
    .line 17
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 23
    .line 24
    if-gez p3, :cond_0

    .line 25
    .line 26
    float-to-double p3, p4

    .line 27
    mul-double/2addr p3, v2

    .line 28
    div-double/2addr p3, v0

    .line 29
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    sub-double/2addr v4, v0

    .line 34
    double-to-float v0, v4

    .line 35
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide p3

    .line 39
    double-to-float p3, p3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    float-to-double p3, p4

    .line 42
    mul-double/2addr p3, v2

    .line 43
    div-double/2addr p3, v0

    .line 44
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    double-to-float v0, v0

    .line 49
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide p3

    .line 53
    sub-double/2addr v4, p3

    .line 54
    double-to-float p3, v4

    .line 55
    :goto_0
    iget p4, p2, Landroid/graphics/RectF;->left:F

    .line 56
    .line 57
    float-to-int p4, p4

    .line 58
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 59
    .line 60
    float-to-int v1, v1

    .line 61
    invoke-static {v0, p4, v1}, Lcom/google/android/material/animation/AnimationUtils;->c(FII)I

    .line 62
    .line 63
    .line 64
    move-result p4

    .line 65
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 72
    .line 73
    float-to-int p2, p2

    .line 74
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 75
    .line 76
    float-to-int p1, p1

    .line 77
    invoke-static {p3, p2, p1}, Lcom/google/android/material/animation/AnimationUtils;->c(FII)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    invoke-virtual {p5, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
