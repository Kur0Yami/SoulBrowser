.class public final Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final f:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field public static final g:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field public static final h:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field public static final i:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "materialContainerTransition:bounds"

    .line 2
    .line 3
    const-string v1, "materialContainerTransition:shapeAppearance"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->c:[Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 14
    .line 15
    const/high16 v2, 0x3e800000    # 0.25f

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, v3, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 22
    .line 23
    const/high16 v4, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 29
    .line 30
    invoke-direct {v5, v3, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 34
    .line 35
    const/high16 v7, 0x3f400000    # 0.75f

    .line 36
    .line 37
    invoke-direct {v6, v3, v7}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->f:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 44
    .line 45
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 46
    .line 47
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 48
    .line 49
    const v2, 0x3f19999a    # 0.6f

    .line 50
    .line 51
    .line 52
    const v5, 0x3f666666    # 0.9f

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 59
    .line 60
    invoke-direct {v6, v3, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 61
    .line 62
    .line 63
    new-instance v7, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 64
    .line 65
    invoke-direct {v7, v3, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 66
    .line 67
    .line 68
    new-instance v8, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 69
    .line 70
    const v9, 0x3e99999a    # 0.3f

    .line 71
    .line 72
    .line 73
    invoke-direct {v8, v9, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1, v6, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->g:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 80
    .line 81
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 82
    .line 83
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 84
    .line 85
    const v6, 0x3ecccccd    # 0.4f

    .line 86
    .line 87
    .line 88
    const v7, 0x3dcccccd    # 0.1f

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v7, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 95
    .line 96
    invoke-direct {v6, v7, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 97
    .line 98
    .line 99
    new-instance v8, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 100
    .line 101
    invoke-direct {v8, v7, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 102
    .line 103
    .line 104
    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 105
    .line 106
    invoke-direct {v4, v7, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1, v6, v8, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->h:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 113
    .line 114
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 115
    .line 116
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 117
    .line 118
    invoke-direct {v1, v2, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 122
    .line 123
    invoke-direct {v2, v3, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 124
    .line 125
    .line 126
    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 127
    .line 128
    invoke-direct {v4, v3, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 129
    .line 130
    .line 131
    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 132
    .line 133
    const v6, 0x3e4ccccd    # 0.2f

    .line 134
    .line 135
    .line 136
    invoke-direct {v3, v6, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    .line 140
    .line 141
    .line 142
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->i:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 143
    .line 144
    return-void
.end method

.method public static a(Landroid/transition/TransitionValues;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/material/transition/platform/TransitionUtils;->a:Landroid/graphics/RectF;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->a(Landroid/view/View;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :goto_0
    iput-object v2, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    new-instance v0, Landroid/graphics/RectF;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    int-to-float v4, v4

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    int-to-float v5, v5

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    int-to-float v6, v6

    .line 67
    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-static {v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->b(Landroid/view/View;)Landroid/graphics/RectF;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_2
    iget-object v3, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 76
    .line 77
    const-string v4, "materialContainerTransition:bounds"

    .line 78
    .line 79
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 83
    .line 84
    sget v3, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    instance-of v3, v3, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 91
    .line 92
    if-eqz v3, :cond_4

    .line 93
    .line 94
    sget v1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    sget v4, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    .line 108
    .line 109
    filled-new-array {v4}, [I

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const/4 v5, -0x1

    .line 118
    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    .line 124
    .line 125
    if-eq v6, v5, :cond_5

    .line 126
    .line 127
    invoke-static {v3, v6, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->a(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->a()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    instance-of v1, v2, Lcom/google/android/material/shape/Shapeable;

    .line 137
    .line 138
    if-eqz v1, :cond_6

    .line 139
    .line 140
    check-cast v2, Lcom/google/android/material/shape/Shapeable;

    .line 141
    .line 142
    invoke-interface {v2}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    new-instance v1, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 148
    .line 149
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->a()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :goto_3
    new-instance v2, Lcom/google/android/material/transition/platform/a;

    .line 157
    .line 158
    invoke-direct {v2, v0}, Lcom/google/android/material/transition/platform/a;-><init>(Landroid/graphics/RectF;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->h(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "materialContainerTransition:shapeAppearance"

    .line 166
    .line 167
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->a(Landroid/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->a(Landroid/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_13

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_12

    .line 13
    .line 14
    :cond_0
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 15
    .line 16
    const-string v5, "materialContainerTransition:bounds"

    .line 17
    .line 18
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    move-object v9, v4

    .line 23
    check-cast v9, Landroid/graphics/RectF;

    .line 24
    .line 25
    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 26
    .line 27
    const-string v6, "materialContainerTransition:shapeAppearance"

    .line 28
    .line 29
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    move-object v10, v4

    .line 34
    check-cast v10, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 35
    .line 36
    const-string v4, "MaterialContainerTransform"

    .line 37
    .line 38
    if-eqz v9, :cond_12

    .line 39
    .line 40
    if-nez v10, :cond_1

    .line 41
    .line 42
    goto/16 :goto_11

    .line 43
    .line 44
    :cond_1
    iget-object v7, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v13, v5

    .line 51
    check-cast v13, Landroid/graphics/RectF;

    .line 52
    .line 53
    iget-object v5, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    move-object v14, v5

    .line 60
    check-cast v14, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 61
    .line 62
    if-eqz v13, :cond_11

    .line 63
    .line 64
    if-nez v14, :cond_2

    .line 65
    .line 66
    goto/16 :goto_10

    .line 67
    .line 68
    :cond_2
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 69
    .line 70
    iget-object v12, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    move-object v0, v12

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move-object v0, v4

    .line 81
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Landroid/view/View;

    .line 92
    .line 93
    move-object v3, v0

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-static {v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->a(Landroid/view/View;)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :goto_1
    invoke-static {v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->b(Landroid/view/View;)Landroid/graphics/RectF;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 104
    .line 105
    neg-float v6, v6

    .line 106
    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 107
    .line 108
    neg-float v5, v5

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    invoke-static {v3}, Lcom/google/android/material/transition/platform/TransitionUtils;->b(Landroid/view/View;)Landroid/graphics/RectF;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    int-to-float v7, v7

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    int-to-float v8, v8

    .line 131
    const/4 v11, 0x0

    .line 132
    invoke-direct {v3, v11, v11, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    .line 134
    .line 135
    :goto_2
    invoke-virtual {v9, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v13, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    mul-float/2addr v6, v5

    .line 150
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    mul-float/2addr v7, v5

    .line 159
    cmpl-float v5, v6, v7

    .line 160
    .line 161
    if-lez v5, :cond_6

    .line 162
    .line 163
    const/4 v5, 0x1

    .line 164
    :goto_3
    move/from16 v16, v5

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_6
    const/4 v5, 0x0

    .line 168
    goto :goto_3

    .line 169
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sget v5, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    .line 174
    .line 175
    sget-object v6, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 176
    .line 177
    if-eqz v5, :cond_7

    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    if-nez v7, :cond_7

    .line 184
    .line 185
    invoke-static {v0, v5, v6}, Lcom/google/android/material/motion/MotionUtils;->d(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v1, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 190
    .line 191
    .line 192
    :cond_7
    if-eqz v16, :cond_8

    .line 193
    .line 194
    sget v5, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_8
    sget v5, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    .line 198
    .line 199
    :goto_5
    if-eqz v5, :cond_9

    .line 200
    .line 201
    invoke-virtual {v1}, Landroid/transition/Transition;->getDuration()J

    .line 202
    .line 203
    .line 204
    move-result-wide v6

    .line 205
    const-wide/16 v17, -0x1

    .line 206
    .line 207
    cmp-long v6, v6, v17

    .line 208
    .line 209
    if-nez v6, :cond_9

    .line 210
    .line 211
    const/4 v6, -0x1

    .line 212
    invoke-static {v0, v5, v6}, Lcom/google/android/material/motion/MotionUtils;->c(Landroid/content/Context;II)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eq v0, v6, :cond_9

    .line 217
    .line 218
    int-to-long v5, v0

    .line 219
    invoke-virtual {v1, v5, v6}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 220
    .line 221
    .line 222
    :cond_9
    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    if-eqz v16, :cond_a

    .line 229
    .line 230
    sget-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->a:Lcom/google/android/material/transition/platform/FadeModeEvaluators$1;

    .line 231
    .line 232
    :goto_6
    move-object/from16 v17, v0

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_a
    sget-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->b:Lcom/google/android/material/transition/platform/FadeModeEvaluators$2;

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :goto_7
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    .line 251
    .line 252
    .line 253
    move-result v11

    .line 254
    mul-float v15, v11, v0

    .line 255
    .line 256
    div-float/2addr v15, v8

    .line 257
    mul-float/2addr v8, v5

    .line 258
    div-float/2addr v8, v0

    .line 259
    if-eqz v16, :cond_b

    .line 260
    .line 261
    cmpl-float v0, v15, v5

    .line 262
    .line 263
    if-ltz v0, :cond_c

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_b
    cmpl-float v0, v8, v11

    .line 267
    .line 268
    if-ltz v0, :cond_c

    .line 269
    .line 270
    :goto_8
    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->a:Lcom/google/android/material/transition/platform/FitModeEvaluators$1;

    .line 271
    .line 272
    :goto_9
    move-object/from16 v18, v0

    .line 273
    .line 274
    goto :goto_a

    .line 275
    :cond_c
    sget-object v0, Lcom/google/android/material/transition/platform/FitModeEvaluators;->b:Lcom/google/android/material/transition/platform/FitModeEvaluators$2;

    .line 276
    .line 277
    goto :goto_9

    .line 278
    :goto_a
    invoke-virtual {v1}, Landroid/transition/Transition;->getPathMotion()Landroid/transition/PathMotion;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    instance-of v5, v0, Landroid/transition/ArcMotion;

    .line 283
    .line 284
    if-nez v5, :cond_f

    .line 285
    .line 286
    instance-of v0, v0, Lcom/google/android/material/transition/platform/MaterialArcMotion;

    .line 287
    .line 288
    if-eqz v0, :cond_d

    .line 289
    .line 290
    goto :goto_d

    .line 291
    :cond_d
    if-eqz v16, :cond_e

    .line 292
    .line 293
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->f:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 294
    .line 295
    goto :goto_b

    .line 296
    :cond_e
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->g:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 297
    .line 298
    :goto_b
    new-instance v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 299
    .line 300
    iget-object v8, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 301
    .line 302
    iget-object v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->b:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 303
    .line 304
    iget-object v15, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->c:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 305
    .line 306
    iget-object v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->d:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 307
    .line 308
    invoke-direct {v5, v8, v11, v15, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    .line 309
    .line 310
    .line 311
    :goto_c
    move-object/from16 v19, v5

    .line 312
    .line 313
    goto :goto_f

    .line 314
    :cond_f
    :goto_d
    if-eqz v16, :cond_10

    .line 315
    .line 316
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->h:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 317
    .line 318
    goto :goto_e

    .line 319
    :cond_10
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->i:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 320
    .line 321
    :goto_e
    new-instance v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 322
    .line 323
    iget-object v8, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->a:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 324
    .line 325
    iget-object v11, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->b:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 326
    .line 327
    iget-object v15, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->c:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->d:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 330
    .line 331
    invoke-direct {v5, v8, v11, v15, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V

    .line 332
    .line 333
    .line 334
    goto :goto_c

    .line 335
    :goto_f
    const/4 v11, 0x0

    .line 336
    const/4 v15, 0x0

    .line 337
    move-object v8, v4

    .line 338
    invoke-direct/range {v6 .. v19}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)V

    .line 339
    .line 340
    .line 341
    iget v0, v3, Landroid/graphics/RectF;->left:F

    .line 342
    .line 343
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    iget v5, v3, Landroid/graphics/RectF;->top:F

    .line 348
    .line 349
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    iget v7, v3, Landroid/graphics/RectF;->right:F

    .line 354
    .line 355
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 360
    .line 361
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    invoke-virtual {v6, v0, v5, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    .line 367
    .line 368
    const/4 v0, 0x2

    .line 369
    new-array v0, v0, [F

    .line 370
    .line 371
    fill-array-data v0, :array_0

    .line 372
    .line 373
    .line 374
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;

    .line 379
    .line 380
    invoke-direct {v0, v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;

    .line 387
    .line 388
    move-object v3, v6

    .line 389
    move-object v5, v12

    .line 390
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;Landroid/view/View;Landroid/view/View;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 394
    .line 395
    .line 396
    return-object v7

    .line 397
    :cond_11
    :goto_10
    const-string v0, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    .line 398
    .line 399
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    return-object v3

    .line 403
    :cond_12
    :goto_11
    const-string v0, "Skipping due to null start bounds. Ensure start view is laid out and measured."

    .line 404
    .line 405
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    :cond_13
    :goto_12
    return-object v3

    .line 409
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
