.class public Landroidx/recyclerview/widget/LinearSmoothScroller;
.super Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.source "SourceFile"


# instance fields
.field public final i:Landroid/view/animation/LinearInterpolator;

.field public final j:Landroid/view/animation/DecelerateInterpolator;

.field public k:Landroid/graphics/PointF;

.field public final l:Landroid/util/DisplayMetrics;

.field public m:Z

.field public n:F

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->i:Landroid/view/animation/LinearInterpolator;

    .line 10
    .line 11
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->j:Landroid/view/animation/DecelerateInterpolator;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->m:Z

    .line 20
    .line 21
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->o:I

    .line 22
    .line 23
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->p:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->l:Landroid/util/DisplayMetrics;

    .line 34
    .line 35
    return-void
.end method

.method public static g(IIIII)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p4, v0, :cond_4

    .line 3
    .line 4
    if-eqz p4, :cond_1

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    if-ne p4, p0, :cond_0

    .line 8
    .line 9
    sub-int/2addr p3, p1

    .line 10
    return p3

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :cond_1
    sub-int/2addr p2, p0

    .line 20
    if-lez p2, :cond_2

    .line 21
    .line 22
    return p2

    .line 23
    :cond_2
    sub-int/2addr p3, p1

    .line 24
    if-gez p3, :cond_3

    .line 25
    .line 26
    return p3

    .line 27
    :cond_3
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_4
    sub-int/2addr p2, p0

    .line 30
    return p2
.end method


# virtual methods
.method public final c(IILandroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->f()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->o:I

    .line 16
    .line 17
    sub-int p1, v0, p1

    .line 18
    .line 19
    mul-int/2addr v0, p1

    .line 20
    const/4 v1, 0x0

    .line 21
    if-gtz v0, :cond_1

    .line 22
    .line 23
    move p1, v1

    .line 24
    :cond_1
    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->o:I

    .line 25
    .line 26
    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->p:I

    .line 27
    .line 28
    sub-int p2, v0, p2

    .line 29
    .line 30
    mul-int/2addr v0, p2

    .line 31
    if-gtz v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v1, p2

    .line 35
    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->p:I

    .line 36
    .line 37
    if-nez p1, :cond_5

    .line 38
    .line 39
    if-nez v1, :cond_5

    .line 40
    .line 41
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a(I)Landroid/graphics/PointF;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget p2, p1, Landroid/graphics/PointF;->x:F

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    cmpl-float v1, p2, v0

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 57
    .line 58
    cmpl-float v0, v1, v0

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    mul-float/2addr p2, p2

    .line 64
    iget v0, p1, Landroid/graphics/PointF;->y:F

    .line 65
    .line 66
    mul-float/2addr v0, v0

    .line 67
    add-float/2addr v0, p2

    .line 68
    float-to-double v0, v0

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    double-to-float p2, v0

    .line 74
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 75
    .line 76
    div-float/2addr v0, p2

    .line 77
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 78
    .line 79
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 80
    .line 81
    div-float/2addr v1, p2

    .line 82
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 83
    .line 84
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->k:Landroid/graphics/PointF;

    .line 85
    .line 86
    const p1, 0x461c4000    # 10000.0f

    .line 87
    .line 88
    .line 89
    mul-float/2addr v0, p1

    .line 90
    float-to-int p2, v0

    .line 91
    iput p2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->o:I

    .line 92
    .line 93
    mul-float/2addr v1, p1

    .line 94
    float-to-int p1, v1

    .line 95
    iput p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->p:I

    .line 96
    .line 97
    const/16 p1, 0x2710

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->k(I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iget p2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->o:I

    .line 104
    .line 105
    int-to-float p2, p2

    .line 106
    const v0, 0x3f99999a    # 1.2f

    .line 107
    .line 108
    .line 109
    mul-float/2addr p2, v0

    .line 110
    float-to-int p2, p2

    .line 111
    iget v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->p:I

    .line 112
    .line 113
    int-to-float v1, v1

    .line 114
    mul-float/2addr v1, v0

    .line 115
    float-to-int v1, v1

    .line 116
    int-to-float p1, p1

    .line 117
    mul-float/2addr p1, v0

    .line 118
    float-to-int p1, p1

    .line 119
    iput p2, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->a:I

    .line 120
    .line 121
    iput v1, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->b:I

    .line 122
    .line 123
    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->c:I

    .line 124
    .line 125
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->i:Landroid/view/animation/LinearInterpolator;

    .line 126
    .line 127
    iput-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    .line 128
    .line 129
    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a:I

    .line 134
    .line 135
    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->d:I

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->f()V

    .line 138
    .line 139
    .line 140
    :cond_5
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->p:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->o:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->k:Landroid/graphics/PointF;

    .line 8
    .line 9
    return-void
.end method

.method public e(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->k:Landroid/graphics/PointF;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 10
    .line 11
    cmpl-float v0, v0, v4

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-lez v0, :cond_1

    .line 17
    .line 18
    move v0, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    move v0, v1

    .line 23
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->h(Landroid/view/View;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->k:Landroid/graphics/PointF;

    .line 28
    .line 29
    if-eqz v5, :cond_5

    .line 30
    .line 31
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 32
    .line 33
    cmpl-float v4, v5, v4

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    if-lez v4, :cond_4

    .line 39
    .line 40
    move v1, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_4
    move v1, v2

    .line 43
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->i(Landroid/view/View;I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    mul-int v1, v0, v0

    .line 48
    .line 49
    mul-int v2, p1, p1

    .line 50
    .line 51
    add-int/2addr v2, v1

    .line 52
    int-to-double v1, v2

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    double-to-int v1, v1

    .line 58
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->k(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-double v1, v1

    .line 63
    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    div-double/2addr v1, v4

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    double-to-int v1, v1

    .line 74
    if-lez v1, :cond_6

    .line 75
    .line 76
    neg-int v0, v0

    .line 77
    neg-int p1, p1

    .line 78
    iput v0, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->a:I

    .line 79
    .line 80
    iput p1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->b:I

    .line 81
    .line 82
    iput v1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->c:I

    .line 83
    .line 84
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->j:Landroid/view/animation/DecelerateInterpolator;

    .line 85
    .line 86
    iput-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->e:Landroid/view/animation/Interpolator;

    .line 87
    .line 88
    iput-boolean v3, p2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->f:Z

    .line 89
    .line 90
    :cond_6
    return-void
.end method

.method public h(Landroid/view/View;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->C(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 23
    .line 24
    sub-int/2addr v2, v3

    .line 25
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->F(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 30
    .line 31
    add-int/2addr p1, v1

    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->K()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:I

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->L()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sub-int/2addr v3, v0

    .line 43
    invoke-static {v2, p1, v1, v3, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->g(IIIII)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 49
    return p1
.end method

.method public i(Landroid/view/View;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->G(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 23
    .line 24
    sub-int/2addr v2, v3

    .line 25
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->A(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 30
    .line 31
    add-int/2addr p1, v1

    .line 32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->M()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->J()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sub-int/2addr v3, v0

    .line 43
    invoke-static {v2, p1, v1, v3, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->g(IIIII)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 49
    return p1
.end method

.method public j(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    const/high16 v0, 0x41c80000    # 25.0f

    .line 5
    .line 6
    div-float/2addr v0, p1

    .line 7
    return v0
.end method

.method public k(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->m:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->l:Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->j(Landroid/util/DisplayMetrics;)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->n:F

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->m:Z

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->n:F

    .line 22
    .line 23
    mul-float/2addr p1, v0

    .line 24
    float-to-double v0, p1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    double-to-int p1, v0

    .line 30
    return p1
.end method
