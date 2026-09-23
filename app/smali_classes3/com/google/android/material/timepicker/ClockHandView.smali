.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;,
        Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;
    }
.end annotation


# static fields
.field public static final synthetic z:I


# instance fields
.field public final c:I

.field public final f:Landroid/animation/TimeInterpolator;

.field public final g:Landroid/animation/ValueAnimator;

.field public h:Z

.field public i:F

.field public j:F

.field public k:Z

.field public final l:I

.field public m:Z

.field public final n:Ljava/util/ArrayList;

.field public final o:I

.field public final p:F

.field public final q:Landroid/graphics/Paint;

.field public final r:Landroid/graphics/RectF;

.field public final s:I

.field public t:F

.field public u:Z

.field public v:Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

.field public w:D

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->materialClockStyle:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->n:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v2, Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:Landroid/graphics/Paint;

    .line 26
    .line 27
    new-instance v3, Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:Landroid/graphics/RectF;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->y:I

    .line 36
    .line 37
    sget-object v4, Lcom/google/android/material/R$styleable;->ClockHandView:[I

    .line 38
    .line 39
    sget v5, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker_Clock:I

    .line 40
    .line 41
    invoke-virtual {p1, p2, v4, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    .line 46
    .line 47
    const/16 v4, 0xc8

    .line 48
    .line 49
    invoke-static {p1, v0, v4}, Lcom/google/android/material/motion/MotionUtils;->c(Landroid/content/Context;II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:I

    .line 54
    .line 55
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    .line 56
    .line 57
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 58
    .line 59
    invoke-static {p1, v0, v4}, Lcom/google/android/material/motion/MotionUtils;->d(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Landroid/animation/TimeInterpolator;

    .line 64
    .line 65
    sget v0, Lcom/google/android/material/R$styleable;->ClockHandView_materialCircleRadius:I

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->x:I

    .line 73
    .line 74
    sget v0, Lcom/google/android/material/R$styleable;->ClockHandView_selectorSize:I

    .line 75
    .line 76
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:I

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget v5, Lcom/google/android/material/R$dimen;->material_clock_hand_stroke_width:I

    .line 87
    .line 88
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->s:I

    .line 93
    .line 94
    sget v5, Lcom/google/android/material/R$dimen;->material_clock_hand_center_dot_radius:I

    .line 95
    .line 96
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    int-to-float v0, v0

    .line 101
    iput v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:F

    .line 102
    .line 103
    sget v0, Lcom/google/android/material/R$styleable;->ClockHandView_clockHandColor:I

    .line 104
    .line 105
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0, v4}, Lcom/google/android/material/timepicker/ClockHandView;->c(FZ)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->l:I

    .line 128
    .line 129
    const/4 p1, 0x2

    .line 130
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    .line 135
    .line 136
    new-instance p1, Lcom/google/android/material/timepicker/a;

    .line 137
    .line 138
    invoke-direct {p1, p0}, Lcom/google/android/material/timepicker/a;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 142
    .line 143
    .line 144
    new-instance p1, Lcom/google/android/material/timepicker/ClockHandView$1;

    .line 145
    .line 146
    invoke-direct {p1}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method


# virtual methods
.method public final a(FF)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    sub-float/2addr p1, v0

    .line 15
    float-to-double v2, p1

    .line 16
    int-to-float p1, v1

    .line 17
    sub-float/2addr p2, p1

    .line 18
    float-to-double p1, p2

    .line 19
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    double-to-int p1, p1

    .line 28
    add-int/lit8 p2, p1, 0x5a

    .line 29
    .line 30
    if-gez p2, :cond_0

    .line 31
    .line 32
    add-int/lit16 p1, p1, 0x1c2

    .line 33
    .line 34
    return p1

    .line 35
    :cond_0
    return p2
.end method

.method public final b(I)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->x:I

    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    const v0, 0x3f28f5c3    # 0.66f

    .line 8
    .line 9
    .line 10
    mul-float/2addr p1, v0

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->x:I

    .line 17
    .line 18
    return p1
.end method

.method public final c(FZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/timepicker/ClockHandView;->d(FZ)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->t:F

    .line 14
    .line 15
    sub-float v2, p2, p1

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/high16 v3, 0x43340000    # 180.0f

    .line 22
    .line 23
    cmpl-float v2, v2, v3

    .line 24
    .line 25
    if-lez v2, :cond_2

    .line 26
    .line 27
    cmpl-float v2, p2, v3

    .line 28
    .line 29
    const/high16 v4, 0x43b40000    # 360.0f

    .line 30
    .line 31
    if-lez v2, :cond_1

    .line 32
    .line 33
    cmpg-float v2, p1, v3

    .line 34
    .line 35
    if-gez v2, :cond_1

    .line 36
    .line 37
    add-float/2addr p1, v4

    .line 38
    :cond_1
    cmpg-float v2, p2, v3

    .line 39
    .line 40
    if-gez v2, :cond_2

    .line 41
    .line 42
    cmpl-float v2, p1, v3

    .line 43
    .line 44
    if-lez v2, :cond_2

    .line 45
    .line 46
    add-float/2addr p2, v4

    .line 47
    :cond_2
    new-instance v2, Landroid/util/Pair;

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v2, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Ljava/lang/Float;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iget-object p2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p2, Ljava/lang/Float;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    const/4 v2, 0x2

    .line 77
    new-array v2, v2, [F

    .line 78
    .line 79
    aput p1, v2, v1

    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    aput p2, v2, p1

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 85
    .line 86
    .line 87
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:I

    .line 88
    .line 89
    int-to-long p1, p1

    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Landroid/animation/TimeInterpolator;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final d(FZ)V
    .locals 6

    .line 1
    const/high16 v0, 0x43b40000    # 360.0f

    .line 2
    .line 3
    rem-float/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->t:F

    .line 5
    .line 6
    const/high16 v0, 0x42b40000    # 90.0f

    .line 7
    .line 8
    sub-float v0, p1, v0

    .line 9
    .line 10
    float-to-double v0, v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->w:D

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    div-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    div-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->y:I

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/ClockHandView;->b(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-float v1, v1

    .line 36
    int-to-float v2, v2

    .line 37
    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->w:D

    .line 38
    .line 39
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    double-to-float v3, v3

    .line 44
    mul-float/2addr v3, v2

    .line 45
    add-float/2addr v3, v1

    .line 46
    int-to-float v0, v0

    .line 47
    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->w:D

    .line 48
    .line 49
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    double-to-float v1, v4

    .line 54
    mul-float/2addr v2, v1

    .line 55
    add-float/2addr v2, v0

    .line 56
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:I

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    sub-float v1, v3, v0

    .line 60
    .line 61
    sub-float v4, v2, v0

    .line 62
    .line 63
    add-float/2addr v3, v0

    .line 64
    add-float/2addr v2, v0

    .line 65
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:Landroid/graphics/RectF;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->n:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x0

    .line 77
    :goto_0
    if-ge v2, v1, :cond_0

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    check-cast v3, Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;

    .line 86
    .line 87
    invoke-interface {v3, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;->a(FZ)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    div-int/lit8 v1, v1, 0x2

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->y:I

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/ClockHandView;->b(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-float v4, v1

    .line 23
    int-to-float v3, v2

    .line 24
    iget-wide v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->w:D

    .line 25
    .line 26
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    double-to-float v5, v5

    .line 31
    mul-float/2addr v5, v3

    .line 32
    add-float/2addr v5, v4

    .line 33
    move v6, v5

    .line 34
    int-to-float v5, v0

    .line 35
    iget-wide v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->w:D

    .line 36
    .line 37
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    double-to-float v7, v7

    .line 42
    mul-float/2addr v3, v7

    .line 43
    add-float/2addr v3, v5

    .line 44
    const/4 v7, 0x0

    .line 45
    iget-object v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    .line 49
    .line 50
    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:I

    .line 51
    .line 52
    int-to-float v9, v7

    .line 53
    invoke-virtual {p1, v6, v3, v9, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    .line 55
    .line 56
    iget-wide v9, p0, Lcom/google/android/material/timepicker/ClockHandView;->w:D

    .line 57
    .line 58
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v9

    .line 62
    iget-wide v11, p0, Lcom/google/android/material/timepicker/ClockHandView;->w:D

    .line 63
    .line 64
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    sub-int/2addr v2, v7

    .line 69
    int-to-float v2, v2

    .line 70
    float-to-double v2, v2

    .line 71
    mul-double/2addr v11, v2

    .line 72
    double-to-int v6, v11

    .line 73
    add-int/2addr v1, v6

    .line 74
    int-to-float v6, v1

    .line 75
    mul-double/2addr v2, v9

    .line 76
    double-to-int v1, v2

    .line 77
    add-int/2addr v0, v1

    .line 78
    int-to-float v7, v0

    .line 79
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->s:I

    .line 80
    .line 81
    int-to-float v0, v0

    .line 82
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    .line 84
    .line 85
    move-object v3, p1

    .line 86
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    .line 88
    .line 89
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:F

    .line 90
    .line 91
    invoke-virtual {v3, v4, v5, p1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    iget-object p2, p1, Lcom/google/android/material/timepicker/ClockHandView;->g:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget p2, p1, Lcom/google/android/material/timepicker/ClockHandView;->t:F

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/timepicker/ClockHandView;->c(FZ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/16 v2, 0xc

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    if-eq v0, v3, :cond_0

    .line 21
    .line 22
    if-eq v0, v5, :cond_0

    .line 23
    .line 24
    move v0, v4

    .line 25
    move v5, v0

    .line 26
    move v6, v5

    .line 27
    goto :goto_3

    .line 28
    :cond_0
    iget v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:F

    .line 29
    .line 30
    sub-float v6, v1, v6

    .line 31
    .line 32
    float-to-int v6, v6

    .line 33
    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:F

    .line 34
    .line 35
    sub-float v7, p1, v7

    .line 36
    .line 37
    float-to-int v7, v7

    .line 38
    mul-int/2addr v6, v6

    .line 39
    mul-int/2addr v7, v7

    .line 40
    add-int/2addr v7, v6

    .line 41
    iget v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->l:I

    .line 42
    .line 43
    if-le v7, v6, :cond_1

    .line 44
    .line 45
    move v6, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v6, v4

    .line 48
    :goto_0
    iput-boolean v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Z

    .line 49
    .line 50
    iget-boolean v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->u:Z

    .line 51
    .line 52
    if-ne v0, v3, :cond_2

    .line 53
    .line 54
    move v0, v3

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v0, v4

    .line 57
    :goto_1
    iget-boolean v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->m:Z

    .line 58
    .line 59
    if-eqz v7, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    div-int/2addr v7, v5

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    div-int/2addr v8, v5

    .line 71
    int-to-float v7, v7

    .line 72
    int-to-float v8, v8

    .line 73
    sub-float v7, v1, v7

    .line 74
    .line 75
    sub-float v8, p1, v8

    .line 76
    .line 77
    float-to-double v9, v7

    .line 78
    float-to-double v7, v8

    .line 79
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    double-to-float v7, v7

    .line 84
    invoke-virtual {p0, v5}, Lcom/google/android/material/timepicker/ClockHandView;->b(I)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-static {v9, v2}, Lcom/google/android/material/internal/ViewUtils;->b(Landroid/content/Context;I)F

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    int-to-float v8, v8

    .line 97
    add-float/2addr v8, v9

    .line 98
    cmpg-float v7, v7, v8

    .line 99
    .line 100
    if-gtz v7, :cond_3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    move v5, v3

    .line 104
    :goto_2
    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->y:I

    .line 105
    .line 106
    :cond_4
    move v5, v4

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:F

    .line 109
    .line 110
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:F

    .line 111
    .line 112
    iput-boolean v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Z

    .line 113
    .line 114
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->u:Z

    .line 115
    .line 116
    move v5, v3

    .line 117
    move v0, v4

    .line 118
    move v6, v0

    .line 119
    :goto_3
    iget-boolean v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->u:Z

    .line 120
    .line 121
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(FF)I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    iget v9, p0, Lcom/google/android/material/timepicker/ClockHandView;->t:F

    .line 126
    .line 127
    int-to-float v8, v8

    .line 128
    cmpl-float v9, v9, v8

    .line 129
    .line 130
    if-eqz v9, :cond_6

    .line 131
    .line 132
    move v9, v3

    .line 133
    goto :goto_4

    .line 134
    :cond_6
    move v9, v4

    .line 135
    :goto_4
    if-eqz v5, :cond_7

    .line 136
    .line 137
    if-eqz v9, :cond_7

    .line 138
    .line 139
    :goto_5
    move v5, v3

    .line 140
    goto :goto_8

    .line 141
    :cond_7
    if-nez v9, :cond_9

    .line 142
    .line 143
    if-eqz v6, :cond_8

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_8
    move v5, v4

    .line 147
    goto :goto_8

    .line 148
    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    .line 149
    .line 150
    iget-boolean v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:Z

    .line 151
    .line 152
    if-eqz v5, :cond_a

    .line 153
    .line 154
    move v5, v3

    .line 155
    goto :goto_7

    .line 156
    :cond_a
    move v5, v4

    .line 157
    :goto_7
    invoke-virtual {p0, v8, v5}, Lcom/google/android/material/timepicker/ClockHandView;->c(FZ)V

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :goto_8
    or-int/2addr v5, v7

    .line 162
    iput-boolean v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->u:Z

    .line 163
    .line 164
    if-eqz v5, :cond_f

    .line 165
    .line 166
    if-eqz v0, :cond_f

    .line 167
    .line 168
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->v:Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

    .line 169
    .line 170
    if-eqz v0, :cond_f

    .line 171
    .line 172
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(FF)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    int-to-float p1, p1

    .line 177
    iget-boolean v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Z

    .line 178
    .line 179
    check-cast v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 180
    .line 181
    iget-object v5, v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->c:Lcom/google/android/material/timepicker/TimePickerView;

    .line 182
    .line 183
    iput-boolean v3, v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->i:Z

    .line 184
    .line 185
    iget-object v6, v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->f:Lcom/google/android/material/timepicker/TimeModel;

    .line 186
    .line 187
    iget v7, v6, Lcom/google/android/material/timepicker/TimeModel;->i:I

    .line 188
    .line 189
    iget v8, v6, Lcom/google/android/material/timepicker/TimeModel;->h:I

    .line 190
    .line 191
    iget v9, v6, Lcom/google/android/material/timepicker/TimeModel;->j:I

    .line 192
    .line 193
    const/16 v10, 0xa

    .line 194
    .line 195
    if-ne v9, v10, :cond_c

    .line 196
    .line 197
    iget p1, v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->h:F

    .line 198
    .line 199
    iget-object v1, v5, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/timepicker/ClockHandView;

    .line 200
    .line 201
    invoke-virtual {v1, p1, v4}, Lcom/google/android/material/timepicker/ClockHandView;->c(FZ)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 209
    .line 210
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 215
    .line 216
    if-eqz p1, :cond_b

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_b

    .line 223
    .line 224
    goto :goto_9

    .line 225
    :cond_b
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->d(IZ)V

    .line 226
    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_c
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-nez v1, :cond_d

    .line 234
    .line 235
    add-int/lit8 p1, p1, 0xf

    .line 236
    .line 237
    div-int/lit8 p1, p1, 0x1e

    .line 238
    .line 239
    mul-int/lit8 p1, p1, 0x5

    .line 240
    .line 241
    rem-int/lit8 p1, p1, 0x3c

    .line 242
    .line 243
    iput p1, v6, Lcom/google/android/material/timepicker/TimeModel;->i:I

    .line 244
    .line 245
    mul-int/lit8 p1, p1, 0x6

    .line 246
    .line 247
    int-to-float p1, p1

    .line 248
    iput p1, v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->g:F

    .line 249
    .line 250
    :cond_d
    iget p1, v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->g:F

    .line 251
    .line 252
    iget-object v2, v5, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/timepicker/ClockHandView;

    .line 253
    .line 254
    invoke-virtual {v2, p1, v1}, Lcom/google/android/material/timepicker/ClockHandView;->c(FZ)V

    .line 255
    .line 256
    .line 257
    :goto_9
    iput-boolean v4, v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->i:Z

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->e()V

    .line 260
    .line 261
    .line 262
    iget p1, v6, Lcom/google/android/material/timepicker/TimeModel;->i:I

    .line 263
    .line 264
    if-ne p1, v7, :cond_e

    .line 265
    .line 266
    iget p1, v6, Lcom/google/android/material/timepicker/TimeModel;->h:I

    .line 267
    .line 268
    if-eq p1, v8, :cond_f

    .line 269
    .line 270
    :cond_e
    const/4 p1, 0x4

    .line 271
    invoke-virtual {v5, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 272
    .line 273
    .line 274
    :cond_f
    return v3
.end method
