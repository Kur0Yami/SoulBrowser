.class public Lcom/mycompany/app/crop/CropImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public c:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Paint;

.field public final i:F

.field public final j:F

.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:F

.field public o:Landroid/graphics/RectF;

.field public p:Landroid/graphics/PointF;

.field public q:Lcom/mycompany/app/crop/Handle;

.field public r:Z

.field public s:I

.field public t:I

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/crop/CropImageView;->u:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/mycompany/app/crop/CropImageView;->r:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/mycompany/app/crop/CropImageView;->s:I

    .line 11
    .line 12
    iput v0, p0, Lcom/mycompany/app/crop/CropImageView;->t:I

    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    const/high16 v2, 0x41000000    # 8.0f

    .line 18
    .line 19
    div-float v2, v1, v2

    .line 20
    .line 21
    iput v2, p0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 22
    .line 23
    sub-float/2addr v1, v2

    .line 24
    iput v1, p0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 25
    .line 26
    const/high16 v1, 0x41c00000    # 24.0f

    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/mycompany/app/crop/CropImageView;->i:F

    .line 33
    .line 34
    iget p1, p0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 35
    .line 36
    iput p1, p0, Lcom/mycompany/app/crop/CropImageView;->n:F

    .line 37
    .line 38
    iput p1, p0, Lcom/mycompany/app/crop/CropImageView;->j:F

    .line 39
    .line 40
    new-instance p1, Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->c:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->c:Landroid/graphics/Paint;

    .line 51
    .line 52
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->c:Landroid/graphics/Paint;

    .line 58
    .line 59
    iget v2, p0, Lcom/mycompany/app/crop/CropImageView;->n:F

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->c:Landroid/graphics/Paint;

    .line 65
    .line 66
    const v2, 0x70ffffff

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->h:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->h:Landroid/graphics/Paint;

    .line 83
    .line 84
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->h:Landroid/graphics/Paint;

    .line 90
    .line 91
    const/high16 v2, -0x50000000

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    .line 95
    .line 96
    iget p1, p0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 97
    .line 98
    const/high16 v3, 0x40800000    # 4.0f

    .line 99
    .line 100
    div-float/2addr p1, v3

    .line 101
    div-float v3, p1, v3

    .line 102
    .line 103
    iput v3, p0, Lcom/mycompany/app/crop/CropImageView;->m:F

    .line 104
    .line 105
    new-instance v3, Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v3, p0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 111
    .line 112
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    .line 124
    .line 125
    iget-object v3, p0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Landroid/graphics/Paint;

    .line 131
    .line 132
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v2, p0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 136
    .line 137
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 146
    .line 147
    iget v1, p0, Lcom/mycompany/app/crop/CropImageView;->m:F

    .line 148
    .line 149
    sub-float/2addr p1, v1

    .line 150
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 154
    .line 155
    const/4 v0, -0x1

    .line 156
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Landroid/graphics/PointF;

    .line 160
    .line 161
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->p:Landroid/graphics/PointF;

    .line 165
    .line 166
    return-void
.end method

.method private getBitmapRect()Landroid/graphics/RectF;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 v1, 0x9

    .line 23
    .line 24
    new-array v1, v1, [F

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    aget v3, v1, v3

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    aget v4, v1, v4

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    aget v5, v1, v5

    .line 41
    .line 42
    const/4 v6, 0x5

    .line 43
    aget v1, v1, v6

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    int-to-float v6, v6

    .line 50
    add-float/2addr v1, v6

    .line 51
    int-to-float v2, v2

    .line 52
    mul-float/2addr v2, v3

    .line 53
    int-to-float v0, v0

    .line 54
    mul-float/2addr v0, v4

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    int-to-float v4, v4

    .line 65
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-float/2addr v2, v3

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    int-to-float v4, v4

    .line 75
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-float/2addr v0, v1

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    sub-int/2addr v4, v5

    .line 89
    int-to-float v4, v4

    .line 90
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    new-instance v4, Landroid/graphics/RectF;

    .line 95
    .line 96
    invoke-direct {v4, v3, v1, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    .line 98
    .line 99
    return-object v4

    .line 100
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getTargetAspectRatio()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/crop/CropImageView;->s:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/mycompany/app/crop/CropImageView;->t:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    return v0
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/crop/CropImageView;->r:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    div-float/2addr v0, v1

    .line 17
    invoke-direct {p0}, Lcom/mycompany/app/crop/CropImageView;->getTargetAspectRatio()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    const/high16 v1, 0x40000000    # 2.0f

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-direct {p0}, Lcom/mycompany/app/crop/CropImageView;->getTargetAspectRatio()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    mul-float/2addr v2, v0

    .line 36
    div-float/2addr v2, v1

    .line 37
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sub-float/2addr v0, v2

    .line 42
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    add-float/2addr v3, v2

    .line 49
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-direct {p0}, Lcom/mycompany/app/crop/CropImageView;->getTargetAspectRatio()F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    div-float/2addr v0, v2

    .line 61
    div-float/2addr v0, v1

    .line 62
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    sub-float/2addr v2, v0

    .line 69
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    add-float/2addr p1, v0

    .line 76
    move v0, v1

    .line 77
    move v1, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 80
    .line 81
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 82
    .line 83
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 84
    .line 85
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 86
    .line 87
    :goto_0
    if-eqz p2, :cond_3

    .line 88
    .line 89
    const/4 p2, 0x0

    .line 90
    move v2, p2

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    sub-float p2, v3, v0

    .line 93
    .line 94
    const v2, 0x3dcccccd    # 0.1f

    .line 95
    .line 96
    .line 97
    mul-float/2addr p2, v2

    .line 98
    sub-float v4, p1, v1

    .line 99
    .line 100
    mul-float/2addr v2, v4

    .line 101
    :goto_1
    sget-object v4, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 102
    .line 103
    add-float/2addr v0, p2

    .line 104
    iput v0, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 105
    .line 106
    sget-object v0, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 107
    .line 108
    add-float/2addr v1, v2

    .line 109
    iput v1, v0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 110
    .line 111
    sget-object v0, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 112
    .line 113
    sub-float/2addr v3, p2

    .line 114
    iput v3, v0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 115
    .line 116
    sget-object p2, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 117
    .line 118
    sub-float/2addr p1, v2

    .line 119
    iput p1, p2, Lcom/mycompany/app/crop/Edge;->c:F

    .line 120
    .line 121
    return-void
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    const/16 v1, 0x9

    .line 14
    .line 15
    new-array v1, v1, [F

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aget v3, v1, v2

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    aget v4, v1, v4

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    aget v5, v1, v5

    .line 32
    .line 33
    const/4 v6, 0x5

    .line 34
    aget v1, v1, v6

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    int-to-float v6, v6

    .line 41
    add-float/2addr v1, v6

    .line 42
    const/4 v6, 0x0

    .line 43
    cmpg-float v7, v5, v6

    .line 44
    .line 45
    if-gez v7, :cond_1

    .line 46
    .line 47
    move v5, v6

    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    int-to-float v6, v6

    .line 53
    cmpg-float v6, v1, v6

    .line 54
    .line 55
    if-gez v6, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    int-to-float v1, v1

    .line 62
    :cond_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    sget-object v8, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 84
    .line 85
    iget v9, v8, Lcom/mycompany/app/crop/Edge;->c:F

    .line 86
    .line 87
    sub-float/2addr v9, v5

    .line 88
    div-float/2addr v9, v3

    .line 89
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    sget-object v9, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 94
    .line 95
    iget v10, v9, Lcom/mycompany/app/crop/Edge;->c:F

    .line 96
    .line 97
    sub-float/2addr v10, v1

    .line 98
    div-float/2addr v10, v4

    .line 99
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-ltz v5, :cond_4

    .line 104
    .line 105
    if-lt v5, v6, :cond_5

    .line 106
    .line 107
    :cond_4
    move v5, v2

    .line 108
    :cond_5
    if-ltz v1, :cond_7

    .line 109
    .line 110
    if-lt v1, v7, :cond_6

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_6
    move v2, v1

    .line 114
    :cond_7
    :goto_0
    sget-object v1, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 115
    .line 116
    iget v1, v1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 117
    .line 118
    iget v8, v8, Lcom/mycompany/app/crop/Edge;->c:F

    .line 119
    .line 120
    sub-float/2addr v1, v8

    .line 121
    div-float/2addr v1, v3

    .line 122
    sub-int v3, v6, v5

    .line 123
    .line 124
    int-to-float v3, v3

    .line 125
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    sget-object v3, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 134
    .line 135
    iget v3, v3, Lcom/mycompany/app/crop/Edge;->c:F

    .line 136
    .line 137
    iget v8, v9, Lcom/mycompany/app/crop/Edge;->c:F

    .line 138
    .line 139
    sub-float/2addr v3, v8

    .line 140
    div-float/2addr v3, v4

    .line 141
    sub-int v4, v7, v2

    .line 142
    .line 143
    int-to-float v4, v4

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    const/4 v4, 0x1

    .line 153
    if-gtz v1, :cond_8

    .line 154
    .line 155
    move v1, v4

    .line 156
    :cond_8
    add-int v8, v5, v1

    .line 157
    .line 158
    if-le v8, v6, :cond_9

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_9
    if-gtz v3, :cond_a

    .line 162
    .line 163
    move v3, v4

    .line 164
    :cond_a
    add-int v4, v2, v3

    .line 165
    .line 166
    if-le v4, v7, :cond_b

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_b
    :try_start_0
    invoke-static {v0, v5, v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 170
    .line 171
    .line 172
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return-object v0

    .line 174
    :catch_0
    :cond_c
    :goto_1
    const/4 v0, 0x0

    .line 175
    return-object v0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/crop/CropImageView;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/crop/CropImageView;->u:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    iget-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/mycompany/app/crop/CropImageView;->getBitmapRect()Landroid/graphics/RectF;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/crop/CropImageView;->a(Landroid/graphics/RectF;Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 31
    .line 32
    sget-object v2, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 33
    .line 34
    sget-object v3, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 35
    .line 36
    sget-object v4, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 37
    .line 38
    sget-object v5, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget-object v6, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 43
    .line 44
    if-nez v6, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget v10, v5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 48
    .line 49
    iget v15, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 50
    .line 51
    iget v6, v3, Lcom/mycompany/app/crop/Edge;->c:F

    .line 52
    .line 53
    iget v7, v2, Lcom/mycompany/app/crop/Edge;->c:F

    .line 54
    .line 55
    iget v12, v1, Landroid/graphics/RectF;->left:F

    .line 56
    .line 57
    iget v13, v1, Landroid/graphics/RectF;->top:F

    .line 58
    .line 59
    iget v14, v1, Landroid/graphics/RectF;->right:F

    .line 60
    .line 61
    iget-object v8, v0, Lcom/mycompany/app/crop/CropImageView;->h:Landroid/graphics/Paint;

    .line 62
    .line 63
    move-object/from16 v11, p1

    .line 64
    .line 65
    move-object/from16 v16, v8

    .line 66
    .line 67
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    .line 69
    .line 70
    iget v8, v1, Landroid/graphics/RectF;->left:F

    .line 71
    .line 72
    iget v9, v1, Landroid/graphics/RectF;->right:F

    .line 73
    .line 74
    iget v11, v1, Landroid/graphics/RectF;->bottom:F

    .line 75
    .line 76
    iget-object v12, v0, Lcom/mycompany/app/crop/CropImageView;->h:Landroid/graphics/Paint;

    .line 77
    .line 78
    move-object/from16 v16, p1

    .line 79
    .line 80
    move/from16 v18, v7

    .line 81
    .line 82
    move/from16 v17, v8

    .line 83
    .line 84
    move/from16 v19, v9

    .line 85
    .line 86
    move/from16 v20, v11

    .line 87
    .line 88
    move-object/from16 v21, v12

    .line 89
    .line 90
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    .line 92
    .line 93
    iget v8, v1, Landroid/graphics/RectF;->left:F

    .line 94
    .line 95
    iget-object v12, v0, Lcom/mycompany/app/crop/CropImageView;->h:Landroid/graphics/Paint;

    .line 96
    .line 97
    move-object/from16 v7, p1

    .line 98
    .line 99
    move v9, v15

    .line 100
    move/from16 v11, v18

    .line 101
    .line 102
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    iget v14, v1, Landroid/graphics/RectF;->right:F

    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->h:Landroid/graphics/Paint;

    .line 108
    .line 109
    move-object/from16 v11, p1

    .line 110
    .line 111
    move-object/from16 v16, v1

    .line 112
    .line 113
    move v12, v6

    .line 114
    move v13, v15

    .line 115
    move/from16 v15, v18

    .line 116
    .line 117
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->c:Landroid/graphics/Paint;

    .line 121
    .line 122
    if-nez v1, :cond_5

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    iget v6, v5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 126
    .line 127
    iget v7, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 128
    .line 129
    iget v8, v3, Lcom/mycompany/app/crop/Edge;->c:F

    .line 130
    .line 131
    iget v9, v2, Lcom/mycompany/app/crop/Edge;->c:F

    .line 132
    .line 133
    move-object/from16 v16, p1

    .line 134
    .line 135
    move-object/from16 v21, v1

    .line 136
    .line 137
    move/from16 v17, v6

    .line 138
    .line 139
    move/from16 v18, v7

    .line 140
    .line 141
    move/from16 v19, v8

    .line 142
    .line 143
    move/from16 v20, v9

    .line 144
    .line 145
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 149
    .line 150
    if-nez v1, :cond_6

    .line 151
    .line 152
    goto/16 :goto_2

    .line 153
    .line 154
    :cond_6
    iget v1, v5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 155
    .line 156
    iget v4, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 157
    .line 158
    iget v3, v3, Lcom/mycompany/app/crop/Edge;->c:F

    .line 159
    .line 160
    iget v2, v2, Lcom/mycompany/app/crop/Edge;->c:F

    .line 161
    .line 162
    iget-object v5, v0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 163
    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    iget v6, v0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 167
    .line 168
    sub-float v18, v4, v6

    .line 169
    .line 170
    iget v6, v0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 171
    .line 172
    add-float v20, v4, v6

    .line 173
    .line 174
    move/from16 v19, v1

    .line 175
    .line 176
    move-object/from16 v16, p1

    .line 177
    .line 178
    move/from16 v17, v1

    .line 179
    .line 180
    move-object/from16 v21, v5

    .line 181
    .line 182
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 183
    .line 184
    .line 185
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 186
    .line 187
    sub-float v17, v1, v5

    .line 188
    .line 189
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 190
    .line 191
    add-float v19, v1, v5

    .line 192
    .line 193
    iget-object v5, v0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 194
    .line 195
    move/from16 v20, v4

    .line 196
    .line 197
    move/from16 v18, v4

    .line 198
    .line 199
    move-object/from16 v21, v5

    .line 200
    .line 201
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    .line 203
    .line 204
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 205
    .line 206
    sub-float v18, v4, v5

    .line 207
    .line 208
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 209
    .line 210
    add-float v20, v4, v5

    .line 211
    .line 212
    iget-object v5, v0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 213
    .line 214
    move/from16 v19, v3

    .line 215
    .line 216
    move/from16 v17, v3

    .line 217
    .line 218
    move-object/from16 v21, v5

    .line 219
    .line 220
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 221
    .line 222
    .line 223
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 224
    .line 225
    add-float v17, v3, v5

    .line 226
    .line 227
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 228
    .line 229
    sub-float v19, v3, v5

    .line 230
    .line 231
    iget-object v5, v0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 232
    .line 233
    move/from16 v20, v4

    .line 234
    .line 235
    move/from16 v18, v4

    .line 236
    .line 237
    move-object/from16 v21, v5

    .line 238
    .line 239
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 240
    .line 241
    .line 242
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 243
    .line 244
    add-float v18, v2, v5

    .line 245
    .line 246
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 247
    .line 248
    sub-float v20, v2, v5

    .line 249
    .line 250
    iget-object v5, v0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 251
    .line 252
    move/from16 v19, v1

    .line 253
    .line 254
    move/from16 v17, v1

    .line 255
    .line 256
    move-object/from16 v21, v5

    .line 257
    .line 258
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 259
    .line 260
    .line 261
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 262
    .line 263
    sub-float v17, v1, v5

    .line 264
    .line 265
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 266
    .line 267
    add-float v19, v1, v5

    .line 268
    .line 269
    iget-object v5, v0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 270
    .line 271
    move/from16 v20, v2

    .line 272
    .line 273
    move/from16 v18, v2

    .line 274
    .line 275
    move-object/from16 v21, v5

    .line 276
    .line 277
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 278
    .line 279
    .line 280
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 281
    .line 282
    add-float v18, v2, v5

    .line 283
    .line 284
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 285
    .line 286
    sub-float v20, v2, v5

    .line 287
    .line 288
    iget-object v5, v0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 289
    .line 290
    move/from16 v19, v3

    .line 291
    .line 292
    move/from16 v17, v3

    .line 293
    .line 294
    move-object/from16 v21, v5

    .line 295
    .line 296
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 297
    .line 298
    .line 299
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 300
    .line 301
    add-float v17, v3, v5

    .line 302
    .line 303
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 304
    .line 305
    sub-float v19, v3, v5

    .line 306
    .line 307
    iget-object v5, v0, Lcom/mycompany/app/crop/CropImageView;->f:Landroid/graphics/Paint;

    .line 308
    .line 309
    move/from16 v20, v2

    .line 310
    .line 311
    move/from16 v18, v2

    .line 312
    .line 313
    move-object/from16 v21, v5

    .line 314
    .line 315
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 316
    .line 317
    .line 318
    :cond_7
    iget v5, v0, Lcom/mycompany/app/crop/CropImageView;->l:F

    .line 319
    .line 320
    iget v6, v0, Lcom/mycompany/app/crop/CropImageView;->m:F

    .line 321
    .line 322
    sub-float/2addr v5, v6

    .line 323
    const/high16 v6, 0x40000000    # 2.0f

    .line 324
    .line 325
    div-float v6, v5, v6

    .line 326
    .line 327
    iget v7, v0, Lcom/mycompany/app/crop/CropImageView;->k:F

    .line 328
    .line 329
    sub-float/2addr v7, v6

    .line 330
    sub-float v18, v4, v5

    .line 331
    .line 332
    add-float v20, v4, v7

    .line 333
    .line 334
    iget-object v6, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 335
    .line 336
    move/from16 v19, v1

    .line 337
    .line 338
    move-object/from16 v16, p1

    .line 339
    .line 340
    move/from16 v17, v1

    .line 341
    .line 342
    move-object/from16 v21, v6

    .line 343
    .line 344
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 345
    .line 346
    .line 347
    move/from16 v6, v18

    .line 348
    .line 349
    move/from16 v8, v20

    .line 350
    .line 351
    sub-float v17, v1, v5

    .line 352
    .line 353
    add-float v19, v1, v7

    .line 354
    .line 355
    iget-object v9, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 356
    .line 357
    move/from16 v20, v4

    .line 358
    .line 359
    move/from16 v18, v4

    .line 360
    .line 361
    move-object/from16 v21, v9

    .line 362
    .line 363
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 364
    .line 365
    .line 366
    move/from16 v9, v17

    .line 367
    .line 368
    move/from16 v10, v19

    .line 369
    .line 370
    iget-object v11, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 371
    .line 372
    move/from16 v19, v3

    .line 373
    .line 374
    move/from16 v17, v3

    .line 375
    .line 376
    move/from16 v18, v6

    .line 377
    .line 378
    move/from16 v20, v8

    .line 379
    .line 380
    move-object/from16 v21, v11

    .line 381
    .line 382
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 383
    .line 384
    .line 385
    add-float v17, v3, v5

    .line 386
    .line 387
    sub-float v19, v3, v7

    .line 388
    .line 389
    iget-object v6, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 390
    .line 391
    move/from16 v20, v4

    .line 392
    .line 393
    move/from16 v18, v4

    .line 394
    .line 395
    move-object/from16 v21, v6

    .line 396
    .line 397
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    .line 399
    .line 400
    move/from16 v4, v17

    .line 401
    .line 402
    move/from16 v6, v19

    .line 403
    .line 404
    add-float v18, v2, v5

    .line 405
    .line 406
    sub-float v20, v2, v7

    .line 407
    .line 408
    iget-object v5, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 409
    .line 410
    move/from16 v19, v1

    .line 411
    .line 412
    move/from16 v17, v1

    .line 413
    .line 414
    move-object/from16 v21, v5

    .line 415
    .line 416
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 417
    .line 418
    .line 419
    move/from16 v1, v18

    .line 420
    .line 421
    move/from16 v5, v20

    .line 422
    .line 423
    iget-object v7, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 424
    .line 425
    move/from16 v20, v2

    .line 426
    .line 427
    move/from16 v18, v2

    .line 428
    .line 429
    move-object/from16 v21, v7

    .line 430
    .line 431
    move/from16 v17, v9

    .line 432
    .line 433
    move/from16 v19, v10

    .line 434
    .line 435
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 436
    .line 437
    .line 438
    iget-object v7, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 439
    .line 440
    move/from16 v19, v3

    .line 441
    .line 442
    move/from16 v18, v1

    .line 443
    .line 444
    move/from16 v17, v3

    .line 445
    .line 446
    move/from16 v20, v5

    .line 447
    .line 448
    move-object/from16 v21, v7

    .line 449
    .line 450
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 451
    .line 452
    .line 453
    iget-object v1, v0, Lcom/mycompany/app/crop/CropImageView;->g:Landroid/graphics/Paint;

    .line 454
    .line 455
    move/from16 v20, v2

    .line 456
    .line 457
    move-object/from16 v21, v1

    .line 458
    .line 459
    move/from16 v18, v2

    .line 460
    .line 461
    move/from16 v17, v4

    .line 462
    .line 463
    move/from16 v19, v6

    .line 464
    .line 465
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 466
    .line 467
    .line 468
    :goto_2
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 6
    .line 7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_7

    .line 16
    .line 17
    if-eq v0, v3, :cond_6

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v0, v4, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    if-eq v0, p1, :cond_6

    .line 24
    .line 25
    :goto_0
    return v1

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object v1, p0, Lcom/mycompany/app/crop/CropImageView;->p:Landroid/graphics/PointF;

    .line 35
    .line 36
    if-eqz v1, :cond_5

    .line 37
    .line 38
    iget-object v2, p0, Lcom/mycompany/app/crop/CropImageView;->q:Lcom/mycompany/app/crop/Handle;

    .line 39
    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    iget-object v4, v2, Lcom/mycompany/app/crop/Handle;->c:Lcom/mycompany/app/crop/HandleHelper;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget v5, v1, Landroid/graphics/PointF;->x:F

    .line 50
    .line 51
    add-float/2addr v5, v0

    .line 52
    iget v0, v1, Landroid/graphics/PointF;->y:F

    .line 53
    .line 54
    add-float v6, p1, v0

    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/mycompany/app/crop/CropImageView;->r:Z

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/mycompany/app/crop/CropImageView;->getTargetAspectRatio()F

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    iget-object v9, p0, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 65
    .line 66
    if-nez v9, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget v8, p0, Lcom/mycompany/app/crop/CropImageView;->j:F

    .line 70
    .line 71
    invoke-virtual/range {v4 .. v9}, Lcom/mycompany/app/crop/HandleHelper;->a(FFFFLandroid/graphics/RectF;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    iget p1, p0, Lcom/mycompany/app/crop/CropImageView;->j:F

    .line 76
    .line 77
    invoke-virtual {v4, v5, v6, v2, p1}, Lcom/mycompany/app/crop/HandleHelper;->b(FFLandroid/graphics/RectF;F)V

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/crop/CropImageView;->invalidate()V

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 88
    .line 89
    .line 90
    return v3

    .line 91
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/mycompany/app/crop/CropImageView;->q:Lcom/mycompany/app/crop/Handle;

    .line 99
    .line 100
    if-eqz p1, :cond_13

    .line 101
    .line 102
    iput-object v2, p0, Lcom/mycompany/app/crop/CropImageView;->q:Lcom/mycompany/app/crop/Handle;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/mycompany/app/crop/CropImageView;->invalidate()V

    .line 105
    .line 106
    .line 107
    return v3

    .line 108
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iget-object v1, p0, Lcom/mycompany/app/crop/CropImageView;->p:Landroid/graphics/PointF;

    .line 117
    .line 118
    if-nez v1, :cond_8

    .line 119
    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :cond_8
    sget-object v1, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 123
    .line 124
    iget v1, v1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 125
    .line 126
    sget-object v4, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 127
    .line 128
    iget v4, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 129
    .line 130
    sget-object v5, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 131
    .line 132
    iget v5, v5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 133
    .line 134
    sget-object v6, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 135
    .line 136
    iget v6, v6, Lcom/mycompany/app/crop/Edge;->c:F

    .line 137
    .line 138
    invoke-static {v0, p1, v1, v4}, Lcom/mycompany/app/crop/HandleUtil;->a(FFFF)F

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 143
    .line 144
    cmpg-float v9, v7, v8

    .line 145
    .line 146
    if-gez v9, :cond_9

    .line 147
    .line 148
    sget-object v8, Lcom/mycompany/app/crop/Handle;->f:Lcom/mycompany/app/crop/Handle;

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_9
    move v7, v8

    .line 152
    move-object v8, v2

    .line 153
    :goto_3
    invoke-static {v0, p1, v5, v4}, Lcom/mycompany/app/crop/HandleUtil;->a(FFFF)F

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    cmpg-float v10, v9, v7

    .line 158
    .line 159
    if-gez v10, :cond_a

    .line 160
    .line 161
    sget-object v8, Lcom/mycompany/app/crop/Handle;->g:Lcom/mycompany/app/crop/Handle;

    .line 162
    .line 163
    move v7, v9

    .line 164
    :cond_a
    invoke-static {v0, p1, v1, v6}, Lcom/mycompany/app/crop/HandleUtil;->a(FFFF)F

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    cmpg-float v10, v9, v7

    .line 169
    .line 170
    if-gez v10, :cond_b

    .line 171
    .line 172
    sget-object v8, Lcom/mycompany/app/crop/Handle;->h:Lcom/mycompany/app/crop/Handle;

    .line 173
    .line 174
    move v7, v9

    .line 175
    :cond_b
    invoke-static {v0, p1, v5, v6}, Lcom/mycompany/app/crop/HandleUtil;->a(FFFF)F

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    cmpg-float v10, v9, v7

    .line 180
    .line 181
    if-gez v10, :cond_c

    .line 182
    .line 183
    sget-object v8, Lcom/mycompany/app/crop/Handle;->i:Lcom/mycompany/app/crop/Handle;

    .line 184
    .line 185
    move v7, v9

    .line 186
    :cond_c
    iget v9, p0, Lcom/mycompany/app/crop/CropImageView;->i:F

    .line 187
    .line 188
    cmpg-float v7, v7, v9

    .line 189
    .line 190
    if-gtz v7, :cond_d

    .line 191
    .line 192
    move-object v2, v8

    .line 193
    goto :goto_4

    .line 194
    :cond_d
    cmpl-float v7, v0, v1

    .line 195
    .line 196
    if-lez v7, :cond_e

    .line 197
    .line 198
    cmpg-float v8, v0, v5

    .line 199
    .line 200
    if-gez v8, :cond_e

    .line 201
    .line 202
    sub-float v8, p1, v4

    .line 203
    .line 204
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    cmpg-float v8, v8, v9

    .line 209
    .line 210
    if-gtz v8, :cond_e

    .line 211
    .line 212
    sget-object v2, Lcom/mycompany/app/crop/Handle;->k:Lcom/mycompany/app/crop/Handle;

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_e
    if-lez v7, :cond_f

    .line 216
    .line 217
    cmpg-float v8, v0, v5

    .line 218
    .line 219
    if-gez v8, :cond_f

    .line 220
    .line 221
    sub-float v8, p1, v6

    .line 222
    .line 223
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    cmpg-float v8, v8, v9

    .line 228
    .line 229
    if-gtz v8, :cond_f

    .line 230
    .line 231
    sget-object v2, Lcom/mycompany/app/crop/Handle;->m:Lcom/mycompany/app/crop/Handle;

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_f
    sub-float v8, v0, v1

    .line 235
    .line 236
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    cmpg-float v8, v8, v9

    .line 241
    .line 242
    if-gtz v8, :cond_10

    .line 243
    .line 244
    cmpl-float v8, p1, v4

    .line 245
    .line 246
    if-lez v8, :cond_10

    .line 247
    .line 248
    cmpg-float v8, p1, v6

    .line 249
    .line 250
    if-gez v8, :cond_10

    .line 251
    .line 252
    sget-object v2, Lcom/mycompany/app/crop/Handle;->j:Lcom/mycompany/app/crop/Handle;

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_10
    sub-float v8, v0, v5

    .line 256
    .line 257
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    cmpg-float v8, v8, v9

    .line 262
    .line 263
    if-gtz v8, :cond_11

    .line 264
    .line 265
    cmpl-float v8, p1, v4

    .line 266
    .line 267
    if-lez v8, :cond_11

    .line 268
    .line 269
    cmpg-float v8, p1, v6

    .line 270
    .line 271
    if-gez v8, :cond_11

    .line 272
    .line 273
    sget-object v2, Lcom/mycompany/app/crop/Handle;->l:Lcom/mycompany/app/crop/Handle;

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_11
    if-ltz v7, :cond_12

    .line 277
    .line 278
    cmpg-float v7, v0, v5

    .line 279
    .line 280
    if-gtz v7, :cond_12

    .line 281
    .line 282
    cmpl-float v7, p1, v4

    .line 283
    .line 284
    if-ltz v7, :cond_12

    .line 285
    .line 286
    cmpg-float v7, p1, v6

    .line 287
    .line 288
    if-gtz v7, :cond_12

    .line 289
    .line 290
    sget-object v2, Lcom/mycompany/app/crop/Handle;->n:Lcom/mycompany/app/crop/Handle;

    .line 291
    .line 292
    :cond_12
    :goto_4
    iput-object v2, p0, Lcom/mycompany/app/crop/CropImageView;->q:Lcom/mycompany/app/crop/Handle;

    .line 293
    .line 294
    if-eqz v2, :cond_13

    .line 295
    .line 296
    iget-object v7, p0, Lcom/mycompany/app/crop/CropImageView;->p:Landroid/graphics/PointF;

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    const/4 v8, 0x0

    .line 303
    packed-switch v2, :pswitch_data_0

    .line 304
    .line 305
    .line 306
    move p1, v8

    .line 307
    goto :goto_7

    .line 308
    :pswitch_0
    add-float/2addr v5, v1

    .line 309
    const/high16 v1, 0x40000000    # 2.0f

    .line 310
    .line 311
    div-float/2addr v5, v1

    .line 312
    add-float/2addr v4, v6

    .line 313
    div-float/2addr v4, v1

    .line 314
    :pswitch_1
    sub-float v8, v5, v0

    .line 315
    .line 316
    :goto_5
    sub-float p1, v4, p1

    .line 317
    .line 318
    goto :goto_7

    .line 319
    :pswitch_2
    sub-float/2addr v6, p1

    .line 320
    move p1, v6

    .line 321
    goto :goto_7

    .line 322
    :pswitch_3
    sub-float/2addr v5, v0

    .line 323
    move p1, v8

    .line 324
    move v8, v5

    .line 325
    goto :goto_7

    .line 326
    :pswitch_4
    sub-float/2addr v4, p1

    .line 327
    move p1, v4

    .line 328
    goto :goto_7

    .line 329
    :pswitch_5
    sub-float/2addr v1, v0

    .line 330
    move p1, v8

    .line 331
    move v8, v1

    .line 332
    goto :goto_7

    .line 333
    :pswitch_6
    sub-float v8, v5, v0

    .line 334
    .line 335
    :goto_6
    sub-float p1, v6, p1

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :pswitch_7
    sub-float v8, v1, v0

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :pswitch_8
    sub-float v8, v1, v0

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :goto_7
    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 345
    .line 346
    iput p1, v7, Landroid/graphics/PointF;->y:F

    .line 347
    .line 348
    invoke-virtual {p0}, Lcom/mycompany/app/crop/CropImageView;->invalidate()V

    .line 349
    .line 350
    .line 351
    :cond_13
    :goto_8
    return v3

    .line 352
    nop

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setFixedAspectRatio(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/crop/CropImageView;->r:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
