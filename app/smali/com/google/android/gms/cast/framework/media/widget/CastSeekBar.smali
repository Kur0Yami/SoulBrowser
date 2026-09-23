.class public Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public c:Lcom/google/android/gms/cast/framework/media/widget/zze;

.field public f:Z

.field public g:Ljava/lang/Integer;

.field public h:Lcom/google/android/gms/cast/framework/media/widget/zzb;

.field public i:Ljava/util/ArrayList;

.field public j:Lcom/google/android/gms/cast/framework/media/widget/zzd;

.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:Landroid/graphics/Paint;

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public u:[I

.field public v:Landroid/graphics/Point;

.field public w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->i:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance p2, Lcom/google/android/gms/cast/framework/media/widget/zzf;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzf;-><init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->p:Landroid/graphics/Paint;

    .line 27
    .line 28
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    sget v2, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_minimum_width:I

    .line 38
    .line 39
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->k:F

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    sget v2, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_minimum_height:I

    .line 50
    .line 51
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->l:F

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    sget v2, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_progress_height:I

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    const/high16 v2, 0x40000000    # 2.0f

    .line 68
    .line 69
    div-float/2addr p2, v2

    .line 70
    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->m:F

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    sget v3, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_thumb_size:I

    .line 77
    .line 78
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    div-float/2addr p2, v2

    .line 83
    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->n:F

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    sget v2, Lcom/google/android/gms/cast/framework/R$dimen;->cast_seek_bar_ad_break_minimum_width:I

    .line 90
    .line 91
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iput p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->o:F

    .line 96
    .line 97
    new-instance p2, Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 103
    .line 104
    iput v1, p2, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 105
    .line 106
    sget-object p2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController:[I

    .line 107
    .line 108
    sget v1, Lcom/google/android/gms/cast/framework/R$attr;->castExpandedControllerStyle:I

    .line 109
    .line 110
    sget v2, Lcom/google/android/gms/cast/framework/R$style;->CastExpandedController:I

    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p1, v3, p2, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    sget v1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarProgressAndThumbColor:I

    .line 118
    .line 119
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarSecondaryProgressColor:I

    .line 124
    .line 125
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    sget v3, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSeekBarUnseekableProgressColor:I

    .line 130
    .line 131
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    sget v4, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castAdBreakMarkerColor:I

    .line 136
    .line 137
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->q:I

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->r:I

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:I

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iput p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->t:I

    .line 180
    .line 181
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    .line 183
    .line 184
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->i:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;IIIII)V
    .locals 1

    .line 1
    move v0, p6

    .line 2
    iget-object p6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->p:Landroid/graphics/Paint;

    .line 3
    .line 4
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    .line 6
    .line 7
    int-to-float p3, p3

    .line 8
    int-to-float p2, p2

    .line 9
    int-to-float p4, p4

    .line 10
    div-float/2addr p3, p4

    .line 11
    div-float/2addr p2, p4

    .line 12
    int-to-float p4, p5

    .line 13
    mul-float/2addr p3, p4

    .line 14
    mul-float/2addr p2, p4

    .line 15
    iget p5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->m:F

    .line 16
    .line 17
    move p4, p3

    .line 18
    neg-float p3, p5

    .line 19
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->f:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->d:I

    .line 9
    .line 10
    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->e:I

    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 13
    .line 14
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->g:Ljava/lang/Integer;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->j:Lcom/google/android/gms/cast/framework/media/widget/zzd;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zzd;->c(IZ)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->w:Ljava/lang/Runnable;

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    new-instance p1, Lcom/google/android/gms/cast/framework/media/widget/zzc;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzc;-><init>(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->w:Ljava/lang/Runnable;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->w:Ljava/lang/Runnable;

    .line 56
    .line 57
    const-wide/16 v0, 0xc8

    .line 58
    .line 59
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final d(I)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 16
    .line 17
    iget v1, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 18
    .line 19
    int-to-double v1, v1

    .line 20
    int-to-double v3, p1

    .line 21
    int-to-double v5, v0

    .line 22
    div-double/2addr v3, v5

    .line 23
    mul-double/2addr v3, v1

    .line 24
    double-to-int p1, v3

    .line 25
    return p1
.end method

.method public getMaxProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 4
    .line 5
    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->g:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 11
    .line 12
    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->a:I

    .line 13
    .line 14
    return v0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->w:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    int-to-float v2, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    int-to-float v3, v3

    .line 15
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->h:Lcom/google/android/gms/cast/framework/media/widget/zzb;

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    if-nez v2, :cond_f

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sub-int/2addr v2, v3

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    sub-int v5, v2, v3

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-int/2addr v2, v3

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v2, v3

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    div-int/lit8 v2, v2, 0x2

    .line 61
    .line 62
    int-to-float v2, v2

    .line 63
    invoke-virtual {p1, v8, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 67
    .line 68
    iget-boolean v3, v2, Lcom/google/android/gms/cast/framework/media/widget/zze;->f:Z

    .line 69
    .line 70
    const/4 v11, 0x0

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget v3, v2, Lcom/google/android/gms/cast/framework/media/widget/zze;->d:I

    .line 74
    .line 75
    if-lez v3, :cond_0

    .line 76
    .line 77
    iget v4, v2, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 78
    .line 79
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:I

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    move-object v0, p0

    .line 83
    move-object v1, p1

    .line 84
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(Landroid/graphics/Canvas;IIIII)V

    .line 85
    .line 86
    .line 87
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 88
    .line 89
    iget v2, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->d:I

    .line 90
    .line 91
    if-le v9, v2, :cond_1

    .line 92
    .line 93
    iget v4, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 94
    .line 95
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->q:I

    .line 96
    .line 97
    move-object v0, p0

    .line 98
    move-object v1, p1

    .line 99
    move v3, v9

    .line 100
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(Landroid/graphics/Canvas;IIIII)V

    .line 101
    .line 102
    .line 103
    move v2, v3

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    move v2, v9

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 107
    .line 108
    iget v3, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->e:I

    .line 109
    .line 110
    if-le v3, v2, :cond_2

    .line 111
    .line 112
    iget v4, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 113
    .line 114
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->r:I

    .line 115
    .line 116
    move-object v0, p0

    .line 117
    move-object v1, p1

    .line 118
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(Landroid/graphics/Canvas;IIIII)V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 122
    .line 123
    iget v3, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 124
    .line 125
    iget v2, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->e:I

    .line 126
    .line 127
    if-le v3, v2, :cond_6

    .line 128
    .line 129
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:I

    .line 130
    .line 131
    move v4, v3

    .line 132
    move-object v0, p0

    .line 133
    move-object v1, p1

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(Landroid/graphics/Canvas;IIIII)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_3
    iget v1, v2, Lcom/google/android/gms/cast/framework/media/widget/zze;->c:I

    .line 139
    .line 140
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-lez v2, :cond_4

    .line 145
    .line 146
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 147
    .line 148
    iget v4, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 149
    .line 150
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:I

    .line 151
    .line 152
    move v3, v2

    .line 153
    const/4 v2, 0x0

    .line 154
    move-object v0, p0

    .line 155
    move-object v1, p1

    .line 156
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(Landroid/graphics/Canvas;IIIII)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    move v3, v2

    .line 161
    :goto_1
    if-le v9, v3, :cond_5

    .line 162
    .line 163
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 164
    .line 165
    iget v4, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 166
    .line 167
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->q:I

    .line 168
    .line 169
    move-object v0, p0

    .line 170
    move-object v1, p1

    .line 171
    move v2, v3

    .line 172
    move v3, v9

    .line 173
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(Landroid/graphics/Canvas;IIIII)V

    .line 174
    .line 175
    .line 176
    move v2, v3

    .line 177
    goto :goto_2

    .line 178
    :cond_5
    move v2, v9

    .line 179
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 180
    .line 181
    iget v3, v1, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 182
    .line 183
    if-le v3, v2, :cond_6

    .line 184
    .line 185
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:I

    .line 186
    .line 187
    move v4, v3

    .line 188
    move-object v0, p0

    .line 189
    move-object v1, p1

    .line 190
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(Landroid/graphics/Canvas;IIIII)V

    .line 191
    .line 192
    .line 193
    :cond_6
    :goto_3
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 194
    .line 195
    .line 196
    iget-object v9, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->i:Ljava/util/ArrayList;

    .line 197
    .line 198
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->p:Landroid/graphics/Paint;

    .line 199
    .line 200
    if-eqz v9, :cond_e

    .line 201
    .line 202
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    goto/16 :goto_7

    .line 209
    .line 210
    :cond_7
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->t:I

    .line 211
    .line 212
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    sub-int/2addr v0, v2

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    sub-int v10, v0, v2

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    sub-int/2addr v0, v2

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    sub-int/2addr v0, v2

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    div-int/lit8 v0, v0, 0x2

    .line 249
    .line 250
    int-to-float v0, v0

    .line 251
    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    :cond_8
    :goto_4
    if-ge v11, v8, :cond_d

    .line 259
    .line 260
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    add-int/lit8 v11, v11, 0x1

    .line 265
    .line 266
    check-cast v0, Lcom/google/android/gms/cast/framework/media/widget/zza;

    .line 267
    .line 268
    if-eqz v0, :cond_8

    .line 269
    .line 270
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 271
    .line 272
    iget v2, v2, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 273
    .line 274
    iget v3, v0, Lcom/google/android/gms/cast/framework/media/widget/zza;->a:I

    .line 275
    .line 276
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    iget-boolean v3, v0, Lcom/google/android/gms/cast/framework/media/widget/zza;->c:Z

    .line 281
    .line 282
    if-eqz v3, :cond_9

    .line 283
    .line 284
    iget v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zza;->b:I

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_9
    const/4 v0, 0x1

    .line 288
    :goto_5
    add-int/2addr v0, v2

    .line 289
    int-to-float v2, v2

    .line 290
    int-to-float v3, v10

    .line 291
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 292
    .line 293
    iget v4, v4, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 294
    .line 295
    int-to-float v4, v4

    .line 296
    int-to-float v0, v0

    .line 297
    mul-float/2addr v0, v3

    .line 298
    div-float/2addr v0, v4

    .line 299
    mul-float/2addr v2, v3

    .line 300
    div-float/2addr v2, v4

    .line 301
    sub-float v4, v0, v2

    .line 302
    .line 303
    iget v13, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->o:F

    .line 304
    .line 305
    cmpg-float v4, v4, v13

    .line 306
    .line 307
    if-gez v4, :cond_a

    .line 308
    .line 309
    add-float v0, v2, v13

    .line 310
    .line 311
    :cond_a
    cmpl-float v4, v0, v3

    .line 312
    .line 313
    if-lez v4, :cond_b

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_b
    move v3, v0

    .line 317
    :goto_6
    sub-float v0, v3, v2

    .line 318
    .line 319
    cmpg-float v0, v0, v13

    .line 320
    .line 321
    if-gez v0, :cond_c

    .line 322
    .line 323
    sub-float v2, v3, v13

    .line 324
    .line 325
    :cond_c
    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->m:F

    .line 326
    .line 327
    move v1, v2

    .line 328
    neg-float v2, v4

    .line 329
    move-object v0, p1

    .line 330
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 331
    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_d
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 335
    .line 336
    .line 337
    :cond_e
    :goto_7
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_10

    .line 342
    .line 343
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 344
    .line 345
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->f:Z

    .line 346
    .line 347
    if-eqz v0, :cond_10

    .line 348
    .line 349
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->q:I

    .line 350
    .line 351
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    sub-int/2addr v0, v2

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    sub-int/2addr v0, v2

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    sub-int/2addr v2, v3

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    sub-int/2addr v2, v3

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    int-to-double v3, v3

    .line 387
    iget-object v8, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 388
    .line 389
    iget v8, v8, Lcom/google/android/gms/cast/framework/media/widget/zze;->b:I

    .line 390
    .line 391
    int-to-double v8, v8

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    int-to-float v2, v2

    .line 397
    const/high16 v11, 0x40000000    # 2.0f

    .line 398
    .line 399
    div-float/2addr v2, v11

    .line 400
    div-double/2addr v3, v8

    .line 401
    int-to-double v8, v0

    .line 402
    mul-double/2addr v3, v8

    .line 403
    double-to-int v0, v3

    .line 404
    int-to-float v0, v0

    .line 405
    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->n:F

    .line 406
    .line 407
    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 411
    .line 412
    .line 413
    goto :goto_8

    .line 414
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    sub-int/2addr v0, v3

    .line 423
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    sub-int v5, v0, v3

    .line 428
    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    sub-int/2addr v0, v3

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    sub-int/2addr v0, v3

    .line 443
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    div-int/lit8 v0, v0, 0x2

    .line 448
    .line 449
    int-to-float v0, v0

    .line 450
    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 451
    .line 452
    .line 453
    iget v3, v2, Lcom/google/android/gms/cast/framework/media/widget/zzb;->a:I

    .line 454
    .line 455
    iget v4, v2, Lcom/google/android/gms/cast/framework/media/widget/zzb;->b:I

    .line 456
    .line 457
    const/4 v2, 0x0

    .line 458
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->t:I

    .line 459
    .line 460
    move-object v0, p0

    .line 461
    move-object v1, p1

    .line 462
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(Landroid/graphics/Canvas;IIIII)V

    .line 463
    .line 464
    .line 465
    move v2, v3

    .line 466
    move v3, v4

    .line 467
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->s:I

    .line 468
    .line 469
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->b(Landroid/graphics/Canvas;IIIII)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 473
    .line 474
    .line 475
    :cond_10
    :goto_8
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 476
    .line 477
    .line 478
    return-void
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    int-to-float v0, v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-float v3, v3

    .line 22
    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->k:F

    .line 23
    .line 24
    add-float/2addr v4, v0

    .line 25
    add-float/2addr v4, v1

    .line 26
    float-to-int v0, v4

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->l:F

    .line 33
    .line 34
    add-float/2addr v0, v2

    .line 35
    add-float/2addr v0, v3

    .line 36
    float-to-int v0, v0

    .line 37
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c:Lcom/google/android/gms/cast/framework/media/widget/zze;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/google/android/gms/cast/framework/media/widget/zze;->f:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->v:Landroid/graphics/Point;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Point;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->v:Landroid/graphics/Point;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->u:[I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    new-array v0, v2, [I

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->u:[I

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->u:[I

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->v:Landroid/graphics/Point;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    float-to-int v3, v3

    .line 48
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->u:[I

    .line 49
    .line 50
    aget v4, v4, v1

    .line 51
    .line 52
    sub-int/2addr v3, v4

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sub-int/2addr v3, v4

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    float-to-int v4, v4

    .line 63
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->u:[I

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    aget v5, v5, v6

    .line 67
    .line 68
    sub-int/2addr v4, v5

    .line 69
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_8

    .line 77
    .line 78
    if-eq p1, v6, :cond_6

    .line 79
    .line 80
    if-eq p1, v2, :cond_5

    .line 81
    .line 82
    const/4 v0, 0x3

    .line 83
    if-eq p1, v0, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Z

    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->g:Ljava/lang/Integer;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->j:Lcom/google/android/gms/cast/framework/media/widget/zzd;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->getProgress()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/cast/framework/media/widget/zzd;->c(IZ)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->j:Lcom/google/android/gms/cast/framework/media/widget/zzd;

    .line 103
    .line 104
    invoke-virtual {p1, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzd;->a(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 108
    .line 109
    .line 110
    return v6

    .line 111
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->v:Landroid/graphics/Point;

    .line 112
    .line 113
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->d(I)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(I)V

    .line 120
    .line 121
    .line 122
    return v6

    .line 123
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->v:Landroid/graphics/Point;

    .line 124
    .line 125
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->d(I)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(I)V

    .line 132
    .line 133
    .line 134
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Z

    .line 135
    .line 136
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->j:Lcom/google/android/gms/cast/framework/media/widget/zzd;

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    invoke-virtual {p1, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzd;->a(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    return v6

    .line 144
    :cond_8
    iput-boolean v6, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->f:Z

    .line 145
    .line 146
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->j:Lcom/google/android/gms/cast/framework/media/widget/zzd;

    .line 147
    .line 148
    if-eqz p1, :cond_9

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/widget/zzd;->b()V

    .line 151
    .line 152
    .line 153
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->v:Landroid/graphics/Point;

    .line 154
    .line 155
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->d(I)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;->c(I)V

    .line 162
    .line 163
    .line 164
    return v6

    .line 165
    :cond_a
    :goto_0
    return v1
.end method
