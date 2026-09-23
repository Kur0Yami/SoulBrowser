.class public Lcom/mycompany/app/image/ImageCoverView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public c:Z

.field public f:I

.field public g:Landroid/graphics/Bitmap;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:I

.field public j:I

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/animation/ValueAnimator;

.field public m:F

.field public n:F

.field public o:Z

.field public final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/image/ImageCoverView$4;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/image/ImageCoverView$4;-><init>(Lcom/mycompany/app/image/ImageCoverView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->p:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/image/ImageCoverView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/image/ImageCoverView;->setValAnimSlide(F)V

    return-void
.end method

.method private setValAnimSlide(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/image/ImageCoverView;->m:F

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sub-float/2addr v1, p1

    .line 15
    const/high16 p1, 0x437f0000    # 255.0f

    .line 16
    .line 17
    mul-float/2addr v1, p1

    .line 18
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final b(ILandroid/view/View;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/image/ImageCoverView;->f:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->g:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->h:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/mycompany/app/image/ImageCoverView;->m:F

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageCoverView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v2, 0x2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne p1, v2, :cond_3

    .line 29
    .line 30
    sget v5, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 31
    .line 32
    const-wide/16 v7, 0x0

    .line 33
    .line 34
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 35
    .line 36
    const/high16 v6, 0x3f000000    # 0.5f

    .line 37
    .line 38
    move-object v4, p2

    .line 39
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/main/MainUtil;->g4(Landroid/view/View;IFJLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->g:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageCoverView;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    new-instance p1, Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget p2, p0, Lcom/mycompany/app/image/ImageCoverView;->f:I

    .line 71
    .line 72
    const/4 v4, 0x3

    .line 73
    if-ne p2, v4, :cond_4

    .line 74
    .line 75
    invoke-static {}, Lcom/mycompany/app/view/MyImageView;->getErrorIcon()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_page_loading:I

    .line 81
    .line 82
    :goto_0
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->h:Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    if-nez p1, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Lcom/mycompany/app/image/ImageCoverView;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput p1, p0, Lcom/mycompany/app/image/ImageCoverView;->i:I

    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->h:Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput p1, p0, Lcom/mycompany/app/image/ImageCoverView;->j:I

    .line 107
    .line 108
    new-instance p1, Landroid/graphics/Paint;

    .line 109
    .line 110
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 119
    .line 120
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 126
    .line 127
    sget p2, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    .line 131
    .line 132
    :goto_1
    iput v0, p0, Lcom/mycompany/app/image/ImageCoverView;->n:F

    .line 133
    .line 134
    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcom/mycompany/app/image/ImageCoverView;->o:Z

    .line 136
    .line 137
    if-eqz p3, :cond_6

    .line 138
    .line 139
    new-array p2, v2, [F

    .line 140
    .line 141
    fill-array-data p2, :array_0

    .line 142
    .line 143
    .line 144
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    iput-object p2, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    new-array p2, v2, [F

    .line 152
    .line 153
    fill-array-data p2, :array_1

    .line 154
    .line 155
    .line 156
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    iput-object p2, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 161
    .line 162
    :goto_2
    iget-object p2, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 163
    .line 164
    const-wide/16 v0, 0x190

    .line 165
    .line 166
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    .line 168
    .line 169
    iget-object p2, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 170
    .line 171
    new-instance p3, Lcom/mycompany/app/image/ImageCoverView$1;

    .line 172
    .line 173
    invoke-direct {p3, p0}, Lcom/mycompany/app/image/ImageCoverView$1;-><init>(Lcom/mycompany/app/image/ImageCoverView;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    .line 178
    .line 179
    iget-object p2, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 180
    .line 181
    new-instance p3, Lcom/mycompany/app/image/ImageCoverView$2;

    .line 182
    .line 183
    invoke-direct {p3, p0}, Lcom/mycompany/app/image/ImageCoverView$2;-><init>(Lcom/mycompany/app/image/ImageCoverView;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 187
    .line 188
    .line 189
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    new-instance p1, Lcom/mycompany/app/image/ImageCoverView$3;

    .line 193
    .line 194
    invoke-direct {p1, p0}, Lcom/mycompany/app/image/ImageCoverView$3;-><init>(Lcom/mycompany/app/image/ImageCoverView;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v0, 0x8

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/mycompany/app/image/ImageCoverView;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final e(Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    .line 9
    :goto_0
    return-void

    .line 10
    :cond_1
    iput p2, p0, Lcom/mycompany/app/image/ImageCoverView;->f:I

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lcom/mycompany/app/image/ImageCoverView;->h:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/mycompany/app/image/ImageCoverView;->m:F

    .line 19
    .line 20
    sget v1, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 25
    .line 26
    const/high16 v2, 0x3f000000    # 0.5f

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->g4(Landroid/view/View;IFJLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->g:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    const/16 p1, 0x8

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/mycompany/app/image/ImageCoverView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    new-instance p1, Landroid/graphics/Paint;

    .line 48
    .line 49
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/image/ImageCoverView;->f:I

    .line 7
    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v1, v6, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/image/ImageCoverView;->g:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    const/high16 v1, 0x40000000    # 2.0f

    .line 21
    .line 22
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/mycompany/app/image/ImageCoverView;->c:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/image/ImageCoverView;->g:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    int-to-float v3, v3

    .line 36
    iget v4, p0, Lcom/mycompany/app/image/ImageCoverView;->m:F

    .line 37
    .line 38
    mul-float/2addr v3, v4

    .line 39
    iget-object v4, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageCoverView;->g:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    iget v4, p0, Lcom/mycompany/app/image/ImageCoverView;->m:F

    .line 53
    .line 54
    mul-float/2addr v3, v4

    .line 55
    iget-object v4, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageCoverView;->h:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    :cond_3
    :goto_0
    return-void

    .line 66
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iget-boolean v4, p0, Lcom/mycompany/app/image/ImageCoverView;->c:Z

    .line 75
    .line 76
    if-eqz v4, :cond_6

    .line 77
    .line 78
    int-to-float v4, v3

    .line 79
    iget v3, p0, Lcom/mycompany/app/image/ImageCoverView;->m:F

    .line 80
    .line 81
    mul-float v7, v4, v3

    .line 82
    .line 83
    cmpg-float v2, v7, v2

    .line 84
    .line 85
    if-gez v2, :cond_5

    .line 86
    .line 87
    int-to-float v3, v1

    .line 88
    add-float/2addr v4, v7

    .line 89
    iget-object v5, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    move-object v0, p1

    .line 94
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    .line 96
    .line 97
    move v2, v7

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    int-to-float v3, v1

    .line 100
    iget-object v5, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    move-object v0, p1

    .line 104
    move v2, v7

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    move v7, v2

    .line 109
    goto :goto_3

    .line 110
    :cond_6
    int-to-float v0, v1

    .line 111
    iget v1, p0, Lcom/mycompany/app/image/ImageCoverView;->m:F

    .line 112
    .line 113
    mul-float v7, v0, v1

    .line 114
    .line 115
    cmpg-float v1, v7, v2

    .line 116
    .line 117
    if-gez v1, :cond_7

    .line 118
    .line 119
    add-float/2addr v0, v7

    .line 120
    int-to-float v4, v3

    .line 121
    iget-object v5, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    const/4 v2, 0x0

    .line 125
    move v3, v0

    .line 126
    move-object v0, p1

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    .line 129
    .line 130
    move v1, v7

    .line 131
    goto :goto_2

    .line 132
    :cond_7
    int-to-float v4, v3

    .line 133
    iget-object v5, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    move v3, v0

    .line 137
    move v1, v7

    .line 138
    move-object v0, p1

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    move v7, v1

    .line 143
    :goto_3
    iget-object v1, p0, Lcom/mycompany/app/image/ImageCoverView;->h:Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    if-nez v1, :cond_8

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    iget v3, p0, Lcom/mycompany/app/image/ImageCoverView;->i:I

    .line 153
    .line 154
    sub-int/2addr v2, v3

    .line 155
    div-int/2addr v2, v6

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    iget v4, p0, Lcom/mycompany/app/image/ImageCoverView;->j:I

    .line 161
    .line 162
    sub-int/2addr v3, v4

    .line 163
    div-int/2addr v3, v6

    .line 164
    iget-boolean v4, p0, Lcom/mycompany/app/image/ImageCoverView;->c:Z

    .line 165
    .line 166
    if-eqz v4, :cond_9

    .line 167
    .line 168
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    add-int/2addr v3, v4

    .line 173
    goto :goto_4

    .line 174
    :cond_9
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    add-int/2addr v2, v4

    .line 179
    :goto_4
    iget v4, p0, Lcom/mycompany/app/image/ImageCoverView;->i:I

    .line 180
    .line 181
    add-int/2addr v4, v2

    .line 182
    iget v5, p0, Lcom/mycompany/app/image/ImageCoverView;->j:I

    .line 183
    .line 184
    add-int/2addr v5, v3

    .line 185
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    .line 187
    .line 188
    :goto_5
    iget-object v1, p0, Lcom/mycompany/app/image/ImageCoverView;->h:Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/image/ImageCoverView;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->l:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/mycompany/app/image/ImageCoverView;->f:I

    .line 16
    .line 17
    iput-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->g:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->h:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/image/ImageCoverView;->k:Landroid/graphics/Paint;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/mycompany/app/image/ImageCoverView;->m:F

    .line 25
    .line 26
    return-void
.end method
