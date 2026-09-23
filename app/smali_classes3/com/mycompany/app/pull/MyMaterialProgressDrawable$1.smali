.class Lcom/mycompany/app/pull/MyMaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

.field public final synthetic f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyMaterialProgressDrawable;Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$1;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$1;->c:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$1;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 2
    .line 3
    iget-boolean v0, p2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->m:Z

    .line 4
    .line 5
    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const v3, 0x3f4ccccd    # 0.8f

    .line 11
    .line 12
    .line 13
    iget-object v4, p0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$1;->c:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v4}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->a(FLcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;)V

    .line 18
    .line 19
    .line 20
    iget p2, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->n:F

    .line 21
    .line 22
    div-float/2addr p2, v3

    .line 23
    float-to-double v5, p2

    .line 24
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 29
    .line 30
    add-double/2addr v5, v7

    .line 31
    double-to-float p2, v5

    .line 32
    iget v0, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->h:F

    .line 33
    .line 34
    float-to-double v5, v0

    .line 35
    iget-wide v7, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->r:D

    .line 36
    .line 37
    mul-double/2addr v7, v1

    .line 38
    div-double/2addr v5, v7

    .line 39
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    double-to-float v0, v0

    .line 44
    iget v1, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->l:F

    .line 45
    .line 46
    iget v2, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->m:F

    .line 47
    .line 48
    sub-float/2addr v2, v0

    .line 49
    sub-float/2addr v2, v1

    .line 50
    mul-float/2addr v2, p1

    .line 51
    add-float/2addr v2, v1

    .line 52
    iput v2, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->e:F

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 55
    .line 56
    .line 57
    iget v0, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->m:F

    .line 58
    .line 59
    iput v0, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->f:F

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 62
    .line 63
    .line 64
    iget v0, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->n:F

    .line 65
    .line 66
    invoke-static {p2, v0, p1, v0}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->g:F

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    iget v0, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->h:F

    .line 77
    .line 78
    float-to-double v5, v0

    .line 79
    iget-wide v7, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->r:D

    .line 80
    .line 81
    mul-double/2addr v7, v1

    .line 82
    div-double/2addr v5, v7

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    double-to-float v0, v0

    .line 88
    iget v1, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->m:F

    .line 89
    .line 90
    iget v2, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->l:F

    .line 91
    .line 92
    iget v5, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->n:F

    .line 93
    .line 94
    invoke-static {p1, v4}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->a(FLcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;)V

    .line 95
    .line 96
    .line 97
    const/high16 v6, 0x3f000000    # 0.5f

    .line 98
    .line 99
    cmpg-float v7, p1, v6

    .line 100
    .line 101
    if-gtz v7, :cond_1

    .line 102
    .line 103
    div-float v7, p1, v6

    .line 104
    .line 105
    sub-float v8, v3, v0

    .line 106
    .line 107
    sget-object v9, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->p:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 108
    .line 109
    invoke-virtual {v9, v7}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    mul-float/2addr v7, v8

    .line 114
    add-float/2addr v7, v2

    .line 115
    iput v7, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->e:F

    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 118
    .line 119
    .line 120
    :cond_1
    cmpl-float v2, p1, v6

    .line 121
    .line 122
    if-lez v2, :cond_2

    .line 123
    .line 124
    sub-float/2addr v3, v0

    .line 125
    sub-float v0, p1, v6

    .line 126
    .line 127
    div-float/2addr v0, v6

    .line 128
    sget-object v2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->p:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 129
    .line 130
    invoke-virtual {v2, v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    mul-float/2addr v0, v3

    .line 135
    add-float/2addr v0, v1

    .line 136
    iput v0, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->f:F

    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 139
    .line 140
    .line 141
    :cond_2
    const/high16 v0, 0x3e800000    # 0.25f

    .line 142
    .line 143
    mul-float/2addr v0, p1

    .line 144
    add-float/2addr v0, v5

    .line 145
    iput v0, v4, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->g:F

    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 148
    .line 149
    .line 150
    const/high16 v0, 0x43580000    # 216.0f

    .line 151
    .line 152
    mul-float/2addr p1, v0

    .line 153
    iget v0, p2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->j:F

    .line 154
    .line 155
    const/high16 v1, 0x40a00000    # 5.0f

    .line 156
    .line 157
    div-float/2addr v0, v1

    .line 158
    const/high16 v1, 0x44870000    # 1080.0f

    .line 159
    .line 160
    mul-float/2addr v0, v1

    .line 161
    add-float/2addr v0, p1

    .line 162
    iput v0, p2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->g:F

    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 165
    .line 166
    .line 167
    return-void
.end method
