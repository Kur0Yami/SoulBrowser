.class public Lcom/mycompany/app/pull/MyPullView;
.super Lcom/mycompany/app/pull/MyCircleImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/pull/MyPullView$OnRefreshListener;
    }
.end annotation


# instance fields
.field public final A:Landroid/view/animation/Animation$AnimationListener;

.field public final B:Landroid/view/animation/Animation;

.field public C:F

.field public final D:Ljava/lang/Runnable;

.field public g:Lcom/mycompany/app/pull/MyPullView$OnRefreshListener;

.field public h:Z

.field public final i:I

.field public final j:F

.field public k:I

.field public l:Z

.field public m:F

.field public n:F

.field public o:F

.field public p:Z

.field public q:I

.field public r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

.field public s:Landroid/view/animation/DecelerateInterpolator;

.field public t:Landroid/view/animation/Animation;

.field public u:Landroid/view/animation/Animation;

.field public v:Landroid/view/animation/Animation;

.field public final w:F

.field public x:I

.field public y:Z

.field public final z:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Z)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/pull/MyPullView$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/pull/MyPullView$2;-><init>(Lcom/mycompany/app/pull/MyPullView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->z:Landroid/view/animation/Animation;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/pull/MyPullView$3;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/pull/MyPullView$3;-><init>(Lcom/mycompany/app/pull/MyPullView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->A:Landroid/view/animation/Animation$AnimationListener;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/pull/MyPullView$4;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/pull/MyPullView$4;-><init>(Lcom/mycompany/app/pull/MyPullView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->B:Landroid/view/animation/Animation;

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/pull/MyPullView$7;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/pull/MyPullView$7;-><init>(Lcom/mycompany/app/pull/MyPullView;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->D:Ljava/lang/Runnable;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    const v0, -0xafafb0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const v0, -0x50506

    .line 43
    .line 44
    .line 45
    :goto_0
    iput v0, p0, Lcom/mycompany/app/pull/MyPullView;->x:I

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pull/MyCircleImageView;->a(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, p0, Lcom/mycompany/app/pull/MyPullView;->i:I

    .line 59
    .line 60
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 61
    .line 62
    const/high16 v2, 0x40000000    # 2.0f

    .line 63
    .line 64
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/pull/MyPullView;->s:Landroid/view/animation/DecelerateInterpolator;

    .line 68
    .line 69
    const/high16 v1, 0x42800000    # 64.0f

    .line 70
    .line 71
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, p0, Lcom/mycompany/app/pull/MyPullView;->w:F

    .line 76
    .line 77
    iput v1, p0, Lcom/mycompany/app/pull/MyPullView;->j:F

    .line 78
    .line 79
    new-instance v1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 80
    .line 81
    invoke-direct {v1, p1, p0, p2}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;-><init>(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/pull/MyPullView;Z)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 85
    .line 86
    iget-object p1, v1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 87
    .line 88
    iput v0, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->w:I

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/mycompany/app/pull/MyPullView;->y:Z

    .line 95
    .line 96
    const/16 p1, 0x8

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static b(Lcom/mycompany/app/pull/MyPullView;F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->z:Landroid/view/animation/Animation;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v2, p0, Lcom/mycompany/app/pull/MyPullView;->j:F

    .line 9
    .line 10
    cmpl-float p1, p1, v2

    .line 11
    .line 12
    const-wide/16 v2, 0xc8

    .line 13
    .line 14
    if-lez p1, :cond_3

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->B:Landroid/view/animation/Animation;

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->h:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->h:Z

    .line 25
    .line 26
    iget v0, p0, Lcom/mycompany/app/pull/MyPullView;->k:I

    .line 27
    .line 28
    iput v0, p0, Lcom/mycompany/app/pull/MyPullView;->q:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->s:Landroid/view/animation/DecelerateInterpolator;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->A:Landroid/view/animation/Animation$AnimationListener;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/mycompany/app/pull/MyPullView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/mycompany/app/pull/MyPullView;->h:Z

    .line 57
    .line 58
    iget-object v1, v1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    iput v4, v1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->e:F

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 64
    .line 65
    .line 66
    iput v4, v1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->f:F

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/mycompany/app/pull/MyPullView;->k:I

    .line 72
    .line 73
    iput v1, p0, Lcom/mycompany/app/pull/MyPullView;->q:I

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/mycompany/app/pull/MyPullView;->s:Landroid/view/animation/DecelerateInterpolator;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/mycompany/app/pull/MyPullView$1;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/mycompany/app/pull/MyPullView$1;-><init>(Lcom/mycompany/app/pull/MyPullView;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lcom/mycompany/app/pull/MyPullView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->o:Z

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iput-boolean p1, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->o:Z

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/pull/MyPullView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/pull/MyPullView;->getTopOffset()I

    move-result p0

    return p0
.end method

.method public static d(Lcom/mycompany/app/pull/MyPullView;F)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    const/4 v0, 0x0

    .line 17
    cmpg-float v1, p1, v0

    .line 18
    .line 19
    if-gtz v1, :cond_3

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_3
    iget v1, p0, Lcom/mycompany/app/pull/MyPullView;->j:F

    .line 23
    .line 24
    div-float v1, p1, v1

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    float-to-double v3, v1

    .line 37
    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    sub-double/2addr v3, v5

    .line 43
    const-wide/16 v5, 0x0

    .line 44
    .line 45
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    double-to-float v3, v3

    .line 50
    const/high16 v4, 0x40a00000    # 5.0f

    .line 51
    .line 52
    mul-float/2addr v3, v4

    .line 53
    const/high16 v4, 0x40400000    # 3.0f

    .line 54
    .line 55
    div-float/2addr v3, v4

    .line 56
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget v5, p0, Lcom/mycompany/app/pull/MyPullView;->j:F

    .line 61
    .line 62
    sub-float/2addr v4, v5

    .line 63
    iget v5, p0, Lcom/mycompany/app/pull/MyPullView;->w:F

    .line 64
    .line 65
    const/high16 v6, 0x40000000    # 2.0f

    .line 66
    .line 67
    mul-float v7, v5, v6

    .line 68
    .line 69
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    div-float/2addr v4, v5

    .line 74
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const/high16 v7, 0x40800000    # 4.0f

    .line 79
    .line 80
    div-float/2addr v4, v7

    .line 81
    float-to-double v7, v4

    .line 82
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 83
    .line 84
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 85
    .line 86
    .line 87
    move-result-wide v9

    .line 88
    sub-double/2addr v7, v9

    .line 89
    double-to-float v4, v7

    .line 90
    mul-float/2addr v4, v6

    .line 91
    mul-float v7, v5, v4

    .line 92
    .line 93
    mul-float/2addr v7, v6

    .line 94
    mul-float/2addr v5, v1

    .line 95
    add-float/2addr v5, v7

    .line 96
    float-to-int v1, v5

    .line 97
    iget-object v5, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 98
    .line 99
    iget-object v5, v5, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 100
    .line 101
    iget-boolean v7, v5, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->o:Z

    .line 102
    .line 103
    const/4 v8, 0x1

    .line 104
    if-eq v7, v8, :cond_4

    .line 105
    .line 106
    iput-boolean v8, v5, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->o:Z

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 109
    .line 110
    .line 111
    :cond_4
    iget-boolean v5, p0, Lcom/mycompany/app/pull/MyPullView;->y:Z

    .line 112
    .line 113
    if-nez v5, :cond_5

    .line 114
    .line 115
    iput-boolean v8, p0, Lcom/mycompany/app/pull/MyPullView;->y:Z

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 125
    .line 126
    .line 127
    iget v5, p0, Lcom/mycompany/app/pull/MyPullView;->j:F

    .line 128
    .line 129
    cmpg-float p1, p1, v5

    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    const-wide/16 v7, 0x12c

    .line 133
    .line 134
    if-gez p1, :cond_7

    .line 135
    .line 136
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 139
    .line 140
    iget p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->u:I

    .line 141
    .line 142
    const/16 v9, 0x4c

    .line 143
    .line 144
    if-le p1, v9, :cond_9

    .line 145
    .line 146
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->u:Landroid/view/animation/Animation;

    .line 147
    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-eqz v10, :cond_6

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_6

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 166
    .line 167
    iget p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->u:I

    .line 168
    .line 169
    new-instance v10, Lcom/mycompany/app/pull/MyPullView$6;

    .line 170
    .line 171
    invoke-direct {v10, p0, p1, v9}, Lcom/mycompany/app/pull/MyPullView$6;-><init>(Lcom/mycompany/app/pull/MyPullView;II)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v5}, Lcom/mycompany/app/pull/MyPullView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    .line 185
    .line 186
    iput-object v10, p0, Lcom/mycompany/app/pull/MyPullView;->u:Landroid/view/animation/Animation;

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 190
    .line 191
    iget-object p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 192
    .line 193
    iget p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->u:I

    .line 194
    .line 195
    const/16 v9, 0xff

    .line 196
    .line 197
    if-ge p1, v9, :cond_9

    .line 198
    .line 199
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->v:Landroid/view/animation/Animation;

    .line 200
    .line 201
    if-eqz p1, :cond_8

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    if-eqz v10, :cond_8

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_8

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 217
    .line 218
    iget-object p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 219
    .line 220
    iget p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->u:I

    .line 221
    .line 222
    new-instance v10, Lcom/mycompany/app/pull/MyPullView$6;

    .line 223
    .line 224
    invoke-direct {v10, p0, p1, v9}, Lcom/mycompany/app/pull/MyPullView$6;-><init>(Lcom/mycompany/app/pull/MyPullView;II)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v10, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v5}, Lcom/mycompany/app/pull/MyPullView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    .line 238
    .line 239
    iput-object v10, p0, Lcom/mycompany/app/pull/MyPullView;->v:Landroid/view/animation/Animation;

    .line 240
    .line 241
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 242
    .line 243
    const v5, 0x3f4ccccd    # 0.8f

    .line 244
    .line 245
    .line 246
    mul-float v7, v3, v5

    .line 247
    .line 248
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    iget-object p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 253
    .line 254
    iput v0, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->e:F

    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 257
    .line 258
    .line 259
    iput v5, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->f:F

    .line 260
    .line 261
    invoke-virtual {p1}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 265
    .line 266
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    iget-object p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 271
    .line 272
    iget v2, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->q:F

    .line 273
    .line 274
    cmpl-float v2, v0, v2

    .line 275
    .line 276
    if-eqz v2, :cond_a

    .line 277
    .line 278
    iput v0, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->q:F

    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 281
    .line 282
    .line 283
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 284
    .line 285
    const v0, 0x3ecccccd    # 0.4f

    .line 286
    .line 287
    .line 288
    mul-float/2addr v3, v0

    .line 289
    const/high16 v0, -0x41800000    # -0.25f

    .line 290
    .line 291
    add-float/2addr v3, v0

    .line 292
    mul-float/2addr v4, v6

    .line 293
    add-float/2addr v4, v3

    .line 294
    const/high16 v0, 0x3f000000    # 0.5f

    .line 295
    .line 296
    mul-float/2addr v4, v0

    .line 297
    iget-object p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 298
    .line 299
    iput v4, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->g:F

    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 302
    .line 303
    .line 304
    iput v1, p0, Lcom/mycompany/app/pull/MyPullView;->k:I

    .line 305
    .line 306
    invoke-direct {p0}, Lcom/mycompany/app/pull/MyPullView;->getTopOffset()I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    add-int/2addr v1, p1

    .line 311
    int-to-float p1, v1

    .line 312
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 313
    .line 314
    .line 315
    return-void
.end method

.method private getTopOffset()I
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 13
    .line 14
    :goto_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->V4()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    sget v1, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 21
    .line 22
    sub-int/2addr v0, v1

    .line 23
    :cond_2
    return v0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->D:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/mycompany/app/pull/MyPullView;->h:Z

    .line 21
    .line 22
    iput v1, p0, Lcom/mycompany/app/pull/MyPullView;->k:I

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->y:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/pull/MyPullView;->y:Z

    .line 30
    .line 31
    const/16 v0, 0x8

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->stop()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 44
    .line 45
    const/16 v1, 0xff

    .line 46
    .line 47
    iput v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->u:I

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lcom/mycompany/app/pull/MyPullView;->k:I

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/mycompany/app/pull/MyPullView;->getTopOffset()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    add-int/2addr v0, v1

    .line 66
    int-to-float v0, v0

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final f(FFI)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->h:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/pull/MyPullView;->D:Ljava/lang/Runnable;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    if-eqz p3, :cond_7

    .line 16
    .line 17
    if-eq p3, v0, :cond_6

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-eq p3, v3, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    if-eq p3, p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/pull/MyPullView;->g()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-boolean p3, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 31
    .line 32
    if-nez p3, :cond_3

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 35
    .line 36
    iput-boolean v2, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 37
    .line 38
    iput p1, p0, Lcom/mycompany/app/pull/MyPullView;->n:F

    .line 39
    .line 40
    iput p2, p0, Lcom/mycompany/app/pull/MyPullView;->o:F

    .line 41
    .line 42
    :cond_3
    iget-boolean p3, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 43
    .line 44
    if-nez p3, :cond_5

    .line 45
    .line 46
    iget p3, p0, Lcom/mycompany/app/pull/MyPullView;->n:F

    .line 47
    .line 48
    sub-float/2addr p1, p3

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget p3, p0, Lcom/mycompany/app/pull/MyPullView;->o:F

    .line 54
    .line 55
    sub-float p3, p2, p3

    .line 56
    .line 57
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    cmpl-float p1, p3, p1

    .line 62
    .line 63
    if-lez p1, :cond_4

    .line 64
    .line 65
    iget p1, p0, Lcom/mycompany/app/pull/MyPullView;->o:F

    .line 66
    .line 67
    sub-float p3, p2, p1

    .line 68
    .line 69
    iget v2, p0, Lcom/mycompany/app/pull/MyPullView;->i:I

    .line 70
    .line 71
    int-to-float v2, v2

    .line 72
    cmpl-float p3, p3, v2

    .line 73
    .line 74
    if-lez p3, :cond_4

    .line 75
    .line 76
    iput-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 77
    .line 78
    add-float/2addr p1, v2

    .line 79
    iput p1, p0, Lcom/mycompany/app/pull/MyPullView;->m:F

    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 82
    .line 83
    const/16 p3, 0x4c

    .line 84
    .line 85
    iget-object p1, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 86
    .line 87
    iput p3, p1, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->u:I

    .line 88
    .line 89
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 90
    .line 91
    if-nez p1, :cond_5

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    iget p1, p0, Lcom/mycompany/app/pull/MyPullView;->m:F

    .line 95
    .line 96
    sub-float/2addr p2, p1

    .line 97
    const/high16 p1, 0x3f000000    # 0.5f

    .line 98
    .line 99
    mul-float/2addr p2, p1

    .line 100
    iput p2, p0, Lcom/mycompany/app/pull/MyPullView;->C:F

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    invoke-virtual {p0, p2}, Lcom/mycompany/app/pull/MyPullView;->setTouchUp(F)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    iput-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 114
    .line 115
    iput-boolean v2, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 116
    .line 117
    iput p1, p0, Lcom/mycompany/app/pull/MyPullView;->n:F

    .line 118
    .line 119
    iput p2, p0, Lcom/mycompany/app/pull/MyPullView;->o:F

    .line 120
    .line 121
    :goto_0
    iget-boolean p1, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 122
    .line 123
    return p1

    .line 124
    :cond_8
    :goto_1
    iget-boolean p1, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 125
    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    iput-boolean v2, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 129
    .line 130
    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    :cond_9
    iput-boolean v2, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 134
    .line 135
    return v2
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->D:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 19
    .line 20
    new-instance v0, Lcom/mycompany/app/pull/MyPullView$9;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mycompany/app/pull/MyPullView$9;-><init>(Lcom/mycompany/app/pull/MyPullView;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final h(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const v0, -0x50506

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const v1, -0xafafb0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v1, v0

    .line 20
    :goto_0
    iget v2, p0, Lcom/mycompany/app/pull/MyPullView;->x:I

    .line 21
    .line 22
    if-ne v2, v1, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iput v1, p0, Lcom/mycompany/app/pull/MyPullView;->x:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/mycompany/app/pull/MyCircleImageView;->a(I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :cond_3
    const/4 v3, 0x0

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    filled-new-array {v0}, [I

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, v2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->j:[I

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->b(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    const/high16 p1, -0x1000000

    .line 54
    .line 55
    filled-new-array {p1}, [I

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, v2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->j:[I

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->b(I)V

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {v2, v3}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->b(I)V

    .line 65
    .line 66
    .line 67
    iput v1, v2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->w:I

    .line 68
    .line 69
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/pull/MyPullView;->e()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/pull/MyCircleImageView;->c:Landroid/view/animation/Animation$AnimationListener;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic setBackgroundColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/pull/MyCircleImageView;->setBackgroundColor(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/mycompany/app/pull/MyPullView;->setBackgroundColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setListener(Lcom/mycompany/app/pull/MyPullView$OnRefreshListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView;->g:Lcom/mycompany/app/pull/MyPullView$OnRefreshListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTouchUp(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/pull/MyPullView;->l:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/pull/MyPullView;->D:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/pull/MyPullView;->p:Z

    .line 19
    .line 20
    iget v0, p0, Lcom/mycompany/app/pull/MyPullView;->m:F

    .line 21
    .line 22
    sub-float/2addr p1, v0

    .line 23
    const/high16 v0, 0x3f000000    # 0.5f

    .line 24
    .line 25
    mul-float/2addr p1, v0

    .line 26
    new-instance v0, Lcom/mycompany/app/pull/MyPullView$8;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/pull/MyPullView$8;-><init>(Lcom/mycompany/app/pull/MyPullView;F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
