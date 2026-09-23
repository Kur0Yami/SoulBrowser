.class public Landroidx/constraintlayout/helper/widget/Layer;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "SourceFile"


# instance fields
.field public A:F

.field public m:F

.field public n:F

.field public o:F

.field public p:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:[Landroid/view/View;

.field public z:F


# virtual methods
.method public final f(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->o()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->s:F

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->t:F

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->n()V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->w:F

    .line 29
    .line 30
    float-to-int v0, v0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sub-int/2addr v0, v1

    .line 36
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->x:F

    .line 37
    .line 38
    float-to-int v1, v1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int/2addr v1, v2

    .line 44
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->u:F

    .line 45
    .line 46
    float-to-int v2, v2

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    add-int/2addr v3, v2

    .line 52
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->v:F

    .line 53
    .line 54
    float-to-int v2, v2

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    add-int/2addr v4, v2

    .line 60
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->p()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final l(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->o:F

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->o:F

    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->o:F

    .line 24
    .line 25
    return-void
.end method

.method public final n()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->s:F

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->t:F

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->m:F

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->n:F

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->n:F

    .line 41
    .line 42
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->t:F

    .line 43
    .line 44
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->m:F

    .line 45
    .line 46
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->s:F

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->h(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    aget-object v2, v0, v1

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    aget-object v3, v0, v1

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    aget-object v4, v0, v1

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    aget-object v5, v0, v1

    .line 75
    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    :goto_2
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    .line 81
    .line 82
    if-ge v1, v6, :cond_4

    .line 83
    .line 84
    aget-object v6, v0, v1

    .line 85
    .line 86
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    int-to-float v0, v4

    .line 122
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->u:F

    .line 123
    .line 124
    int-to-float v0, v5

    .line 125
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->v:F

    .line 126
    .line 127
    int-to-float v0, v2

    .line 128
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->w:F

    .line 129
    .line 130
    int-to-float v0, v3

    .line 131
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->x:F

    .line 132
    .line 133
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->m:F

    .line 134
    .line 135
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    add-int/2addr v2, v4

    .line 142
    div-int/lit8 v2, v2, 0x2

    .line 143
    .line 144
    int-to-float v0, v2

    .line 145
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->s:F

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->m:F

    .line 149
    .line 150
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->s:F

    .line 151
    .line 152
    :goto_3
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->n:F

    .line 153
    .line 154
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    add-int/2addr v3, v5

    .line 161
    div-int/lit8 v3, v3, 0x2

    .line 162
    .line 163
    int-to-float v0, v3

    .line 164
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->t:F

    .line 165
    .line 166
    return-void

    .line 167
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->n:F

    .line 168
    .line 169
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->t:F

    .line 170
    .line 171
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->y:[Landroid/view/View;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    array-length v1, v1

    .line 16
    if-eq v1, v0, :cond_3

    .line 17
    .line 18
    :cond_2
    new-array v0, v0, [Landroid/view/View;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->y:[Landroid/view/View;

    .line 21
    .line 22
    :cond_3
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    .line 24
    .line 25
    if-ge v0, v1, :cond_4

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->c:[I

    .line 28
    .line 29
    aget v1, v1, v0

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->y:[Landroid/view/View;

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    aput-object v1, v2, v0

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    :goto_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    .line 22
    .line 23
    if-ge v2, v3, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->c:[I

    .line 26
    .line 27
    aget v3, v3, v2

    .line 28
    .line 29
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    cmpl-float v4, v1, v4

    .line 42
    .line 43
    if-lez v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-float/2addr v4, v1

    .line 50
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public final p()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->y:[Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->o()V

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->n()V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->o:F

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->o:F

    .line 29
    .line 30
    float-to-double v0, v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    double-to-float v2, v2

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    double-to-float v0, v0

    .line 45
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->q:F

    .line 46
    .line 47
    mul-float v3, v1, v0

    .line 48
    .line 49
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->r:F

    .line 50
    .line 51
    neg-float v5, v4

    .line 52
    mul-float/2addr v5, v2

    .line 53
    mul-float/2addr v1, v2

    .line 54
    mul-float/2addr v4, v0

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    .line 57
    .line 58
    if-ge v0, v2, :cond_4

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->y:[Landroid/view/View;

    .line 61
    .line 62
    aget-object v2, v2, v0

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    add-int/2addr v7, v6

    .line 73
    div-int/lit8 v7, v7, 0x2

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    add-int/2addr v8, v6

    .line 84
    div-int/lit8 v8, v8, 0x2

    .line 85
    .line 86
    int-to-float v6, v7

    .line 87
    iget v7, p0, Landroidx/constraintlayout/helper/widget/Layer;->s:F

    .line 88
    .line 89
    sub-float/2addr v6, v7

    .line 90
    int-to-float v7, v8

    .line 91
    iget v8, p0, Landroidx/constraintlayout/helper/widget/Layer;->t:F

    .line 92
    .line 93
    sub-float/2addr v7, v8

    .line 94
    mul-float v8, v3, v6

    .line 95
    .line 96
    mul-float v9, v5, v7

    .line 97
    .line 98
    add-float/2addr v9, v8

    .line 99
    sub-float/2addr v9, v6

    .line 100
    iget v8, p0, Landroidx/constraintlayout/helper/widget/Layer;->z:F

    .line 101
    .line 102
    add-float/2addr v9, v8

    .line 103
    mul-float/2addr v6, v1

    .line 104
    mul-float v8, v4, v7

    .line 105
    .line 106
    add-float/2addr v8, v6

    .line 107
    sub-float/2addr v8, v7

    .line 108
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->A:F

    .line 109
    .line 110
    add-float/2addr v8, v6

    .line 111
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 115
    .line 116
    .line 117
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->r:F

    .line 118
    .line 119
    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    .line 120
    .line 121
    .line 122
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->q:F

    .line 123
    .line 124
    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    .line 125
    .line 126
    .line 127
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->o:F

    .line 128
    .line 129
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-nez v6, :cond_3

    .line 134
    .line 135
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->o:F

    .line 136
    .line 137
    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    .line 138
    .line 139
    .line 140
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    :goto_2
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->m:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->n:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->o:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->q:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->r:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->z:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->A:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
