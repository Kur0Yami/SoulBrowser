.class public final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final c:[I

.field public final f:Landroid/graphics/Rect;

.field public final g:Landroid/graphics/Rect;

.field public final h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

.field public final i:Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

.field public j:Landroid/view/View;

.field public k:Landroid/animation/AnimatorSet;

.field public final l:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

.field public final m:Landroidx/core/view/GestureDetectorCompat;

.field public n:Landroidx/core/view/GestureDetectorCompat;

.field public o:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;

.field public p:Z

.field public q:Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->c:[I

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->f:Landroid/graphics/Rect;

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->g:Landroid/graphics/Rect;

    .line 22
    .line 23
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_featurehighlight_view:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->i:Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->l:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    .line 58
    .line 59
    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Landroidx/core/view/GestureDetectorCompat;

    .line 65
    .line 66
    invoke-direct {v2, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->m:Landroidx/core/view/GestureDetectorCompat;

    .line 70
    .line 71
    iget-object p1, v2, Landroidx/core/view/GestureDetectorCompat;->a:Landroid/view/GestureDetector;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 74
    .line 75
    .line 76
    const/16 p1, 0x8

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->o:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;Landroid/view/View;Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->n:Landroidx/core/view/GestureDetectorCompat;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iget-object p1, p1, Landroidx/core/view/GestureDetectorCompat;->a:Landroid/view/GestureDetector;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x4

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->q:Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->asView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [F

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    aput v4, v2, v3

    .line 13
    .line 14
    const-string v5, "alpha"

    .line 15
    .line 16
    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-wide/16 v6, 0xc8

    .line 21
    .line 22
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgy;->b()Landroid/view/animation/PathInterpolator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->f:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    iget-object v9, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 40
    .line 41
    iget v10, v9, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->i:F

    .line 42
    .line 43
    sub-float/2addr v8, v10

    .line 44
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget v10, v9, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->j:F

    .line 49
    .line 50
    sub-float/2addr v2, v10

    .line 51
    new-array v10, v1, [F

    .line 52
    .line 53
    aput v4, v10, v3

    .line 54
    .line 55
    const-string v11, "scale"

    .line 56
    .line 57
    invoke-static {v11, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    filled-new-array {v3}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-static {v5, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const/4 v11, 0x2

    .line 70
    new-array v12, v11, [F

    .line 71
    .line 72
    aput v4, v12, v3

    .line 73
    .line 74
    aput v8, v12, v1

    .line 75
    .line 76
    const-string v8, "translationX"

    .line 77
    .line 78
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    new-array v12, v11, [F

    .line 83
    .line 84
    aput v4, v12, v3

    .line 85
    .line 86
    aput v2, v12, v1

    .line 87
    .line 88
    const-string v2, "translationY"

    .line 89
    .line 90
    invoke-static {v2, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const/4 v4, 0x4

    .line 95
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    .line 96
    .line 97
    aput-object v10, v4, v3

    .line 98
    .line 99
    aput-object v8, v4, v1

    .line 100
    .line 101
    aput-object v2, v4, v11

    .line 102
    .line 103
    const/4 v2, 0x3

    .line 104
    aput-object v5, v4, v2

    .line 105
    .line 106
    invoke-static {v9, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgy;->b()Landroid/view/animation/PathInterpolator;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->i:Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

    .line 122
    .line 123
    invoke-virtual {v5}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->a()Landroid/animation/Animator;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 128
    .line 129
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 130
    .line 131
    .line 132
    new-array v2, v2, [Landroid/animation/Animator;

    .line 133
    .line 134
    aput-object v0, v2, v3

    .line 135
    .line 136
    aput-object v4, v2, v1

    .line 137
    .line 138
    aput-object v5, v2, v11

    .line 139
    .line 140
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 141
    .line 142
    .line 143
    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzf;

    .line 144
    .line 145
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzf;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;Ljava/lang/Runnable;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->k:Landroid/animation/AnimatorSet;

    .line 152
    .line 153
    if-eqz p1, :cond_0

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 156
    .line 157
    .line 158
    :cond_0
    iput-object v6, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->k:Landroid/animation/AnimatorSet;

    .line 159
    .line 160
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->q:Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->asView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [F

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    aput v4, v2, v3

    .line 13
    .line 14
    const-string v4, "alpha"

    .line 15
    .line 16
    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-wide/16 v5, 0xc8

    .line 21
    .line 22
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgy;->b()Landroid/view/animation/PathInterpolator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    .line 32
    .line 33
    new-array v2, v1, [F

    .line 34
    .line 35
    const/high16 v7, 0x3f900000    # 1.125f

    .line 36
    .line 37
    aput v7, v2, v3

    .line 38
    .line 39
    const-string v7, "scale"

    .line 40
    .line 41
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    filled-new-array {v3}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v7, 0x2

    .line 54
    new-array v8, v7, [Landroid/animation/PropertyValuesHolder;

    .line 55
    .line 56
    aput-object v2, v8, v3

    .line 57
    .line 58
    aput-object v4, v8, v1

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 61
    .line 62
    invoke-static {v2, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgy;->b()Landroid/view/animation/PathInterpolator;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->i:Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->a()Landroid/animation/Animator;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 84
    .line 85
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 86
    .line 87
    .line 88
    const/4 v6, 0x3

    .line 89
    new-array v6, v6, [Landroid/animation/Animator;

    .line 90
    .line 91
    aput-object v0, v6, v3

    .line 92
    .line 93
    aput-object v2, v6, v1

    .line 94
    .line 95
    aput-object v4, v6, v7

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    .line 101
    .line 102
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->k:Landroid/animation/AnimatorSet;

    .line 109
    .line 110
    if-eqz p1, :cond_0

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 113
    .line 114
    .line 115
    :cond_0
    iput-object v5, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->k:Landroid/animation/AnimatorSet;

    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->f:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->m:I

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->i:Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 37
    .line 38
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Landroid/graphics/Canvas;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->f:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v4, 0x0

    .line 71
    move v5, v4

    .line 72
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-ge v5, v6, :cond_2

    .line 77
    .line 78
    move v6, v4

    .line 79
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-ge v6, v7, :cond_1

    .line 84
    .line 85
    invoke-virtual {v1, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_0

    .line 94
    .line 95
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-static {v7, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    invoke-virtual {v1, v6, v5, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 104
    .line 105
    .line 106
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->f:Landroid/graphics/Rect;

    .line 113
    .line 114
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 115
    .line 116
    int-to-float v2, v2

    .line 117
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 118
    .line 119
    int-to-float v0, v0

    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string v0, "Neither target view nor drawable was set"

    .line 131
    .line 132
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method

.method public final onLayout(ZIIII)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->c:[I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 18
    .line 19
    .line 20
    aget v3, v0, v2

    .line 21
    .line 22
    aget v4, v0, v1

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 25
    .line 26
    .line 27
    aget p1, v0, v2

    .line 28
    .line 29
    sub-int/2addr p1, v3

    .line 30
    aput p1, v0, v2

    .line 31
    .line 32
    aget p1, v0, v1

    .line 33
    .line 34
    sub-int/2addr p1, v4

    .line 35
    aput p1, v0, v1

    .line 36
    .line 37
    :cond_0
    aget p1, v0, v2

    .line 38
    .line 39
    aget v3, v0, v1

    .line 40
    .line 41
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    add-int/2addr v4, p1

    .line 48
    aget v0, v0, v1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v1, v0

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->f:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {v0, p1, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->g:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->i:Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->l:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    .line 78
    .line 79
    iget-object p2, v3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->f:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    .line 80
    .line 81
    iget-object p3, p2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->q:Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;

    .line 82
    .line 83
    invoke-virtual {p3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->asView()Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-nez p3, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-eqz p3, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 113
    .line 114
    .line 115
    move-result p5

    .line 116
    iget v1, v3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->b:I

    .line 117
    .line 118
    add-int/2addr v1, v1

    .line 119
    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    .line 120
    .line 121
    .line 122
    move-result p5

    .line 123
    div-int/lit8 p5, p5, 0x2

    .line 124
    .line 125
    add-int v1, p3, p5

    .line 126
    .line 127
    iget v2, v3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->c:I

    .line 128
    .line 129
    if-ge p3, p4, :cond_2

    .line 130
    .line 131
    add-int/2addr v1, v2

    .line 132
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 133
    .line 134
    sub-int/2addr p3, v1

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    invoke-virtual {v3, v4, p4, p3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->b(Landroid/view/View;II)V

    .line 140
    .line 141
    .line 142
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->a(Landroid/view/View;IIII)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    add-int/2addr p3, p1

    .line 159
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 160
    .line 161
    .line 162
    move-result p4

    .line 163
    add-int/2addr p4, v1

    .line 164
    invoke-virtual {v4, p1, v1, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_2
    sub-int/2addr p3, p5

    .line 169
    iget p4, p1, Landroid/graphics/Rect;->top:I

    .line 170
    .line 171
    sub-int/2addr p3, v2

    .line 172
    sub-int p4, p3, p4

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 175
    .line 176
    .line 177
    move-result p5

    .line 178
    invoke-virtual {v3, v4, p5, p4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->b(Landroid/view/View;II)V

    .line 179
    .line 180
    .line 181
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 182
    .line 183
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 184
    .line 185
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->a(Landroid/view/View;IIII)I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 194
    .line 195
    .line 196
    move-result p4

    .line 197
    sub-int p4, p3, p4

    .line 198
    .line 199
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 200
    .line 201
    .line 202
    move-result p5

    .line 203
    add-int/2addr p5, p1

    .line 204
    invoke-virtual {v4, p1, p4, p5, p3}, Landroid/view/View;->layout(IIII)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_3
    :goto_0
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/view/View;->layout(IIII)V

    .line 209
    .line 210
    .line 211
    :goto_1
    iget-object p1, v3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->a:Landroid/graphics/Rect;

    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 214
    .line 215
    .line 216
    move-result p3

    .line 217
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 218
    .line 219
    .line 220
    move-result p4

    .line 221
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 222
    .line 223
    .line 224
    move-result p5

    .line 225
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-virtual {p1, p3, p4, p5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 230
    .line 231
    .line 232
    iget-object p3, p2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 233
    .line 234
    iget p4, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->b:I

    .line 235
    .line 236
    iget-object p5, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->d:Landroid/graphics/Rect;

    .line 237
    .line 238
    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 239
    .line 240
    .line 241
    iget-object p5, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->e:Landroid/graphics/Rect;

    .line 242
    .line 243
    invoke-virtual {p5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 247
    .line 248
    .line 249
    move-result p5

    .line 250
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 259
    .line 260
    int-to-float v3, v3

    .line 261
    sub-float v3, v1, v3

    .line 262
    .line 263
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 264
    .line 265
    int-to-float v4, v4

    .line 266
    sub-float/2addr v4, v1

    .line 267
    iget v5, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->a:I

    .line 268
    .line 269
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    int-to-float v4, v5

    .line 274
    cmpg-float v3, v3, v4

    .line 275
    .line 276
    if-gez v3, :cond_4

    .line 277
    .line 278
    iput p5, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->i:F

    .line 279
    .line 280
    iput v1, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->j:F

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    cmpg-float p5, p5, v1

    .line 288
    .line 289
    if-gtz p5, :cond_5

    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    .line 292
    .line 293
    .line 294
    move-result p5

    .line 295
    int-to-float p4, p4

    .line 296
    add-float/2addr p5, p4

    .line 297
    goto :goto_2

    .line 298
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    .line 299
    .line 300
    .line 301
    move-result p5

    .line 302
    int-to-float p4, p4

    .line 303
    sub-float/2addr p5, p4

    .line 304
    :goto_2
    iput p5, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->i:F

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    iput v1, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->j:F

    .line 311
    .line 312
    :goto_3
    iget p4, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->c:I

    .line 313
    .line 314
    iget p5, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->i:F

    .line 315
    .line 316
    invoke-static {p5, v1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->a(FFLandroid/graphics/Rect;)F

    .line 317
    .line 318
    .line 319
    move-result p5

    .line 320
    iget v1, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->i:F

    .line 321
    .line 322
    iget v2, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->j:F

    .line 323
    .line 324
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->a(FFLandroid/graphics/Rect;)F

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    invoke-static {p5, p1}, Ljava/lang/Math;->max(FF)F

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    int-to-float p4, p4

    .line 333
    add-float/2addr p4, p1

    .line 334
    iput p4, p3, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->g:F

    .line 335
    .line 336
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 337
    .line 338
    .line 339
    iget-object p1, p2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->i:Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

    .line 340
    .line 341
    iget-object p2, p1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->c:Landroid/graphics/Rect;

    .line 342
    .line 343
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    .line 347
    .line 348
    .line 349
    move-result p3

    .line 350
    iput p3, p1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->h:F

    .line 351
    .line 352
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 353
    .line 354
    .line 355
    move-result p3

    .line 356
    iput p3, p1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->i:F

    .line 357
    .line 358
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 359
    .line 360
    .line 361
    move-result p3

    .line 362
    int-to-float p3, p3

    .line 363
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    int-to-float p2, p2

    .line 368
    const/high16 p4, 0x40000000    # 2.0f

    .line 369
    .line 370
    div-float/2addr p3, p4

    .line 371
    div-float/2addr p2, p4

    .line 372
    iget p4, p1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->d:I

    .line 373
    .line 374
    int-to-float p4, p4

    .line 375
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 376
    .line 377
    .line 378
    move-result p2

    .line 379
    invoke-static {p4, p2}, Ljava/lang/Math;->max(FF)F

    .line 380
    .line 381
    .line 382
    move-result p2

    .line 383
    iput p2, p1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;->f:F

    .line 384
    .line 385
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 390
    .line 391
    const-string p2, "Target view must be set before layout"

    .line 392
    .line 393
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw p1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    float-to-int v1, v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->f:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->p:Z

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->p:Z

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->n:Landroidx/core/view/GestureDetectorCompat;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/core/view/GestureDetectorCompat;->a:Landroid/view/GestureDetector;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    .line 39
    .line 40
    if-ne v0, v2, :cond_1

    .line 41
    .line 42
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x3

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    return v2

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->m:Landroidx/core/view/GestureDetectorCompat;

    .line 65
    .line 66
    iget-object v0, v0, Landroidx/core/view/GestureDetectorCompat;->a:Landroid/view/GestureDetector;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    return v2
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->i:Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    return p1
.end method
