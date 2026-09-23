.class public final Lcom/google/android/material/transition/MaterialContainerTransform;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;,
        Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field public static final G:[Ljava/lang/String;

.field public static final H:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field public static final I:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field public static final J:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field public static final K:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;


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
    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->G:[Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 14
    .line 15
    const/high16 v2, 0x3e800000    # 0.25f

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, v3, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 22
    .line 23
    const/high16 v4, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 29
    .line 30
    invoke-direct {v5, v3, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 34
    .line 35
    const/high16 v7, 0x3f400000    # 0.75f

    .line 36
    .line 37
    invoke-direct {v6, v3, v7}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->H:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 44
    .line 45
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 46
    .line 47
    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

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
    invoke-direct {v1, v2, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 59
    .line 60
    invoke-direct {v6, v3, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 61
    .line 62
    .line 63
    new-instance v7, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 64
    .line 65
    invoke-direct {v7, v3, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 66
    .line 67
    .line 68
    new-instance v8, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 69
    .line 70
    const v9, 0x3e99999a    # 0.3f

    .line 71
    .line 72
    .line 73
    invoke-direct {v8, v9, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1, v6, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->I:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 80
    .line 81
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 82
    .line 83
    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

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
    invoke-direct {v1, v7, v6}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 95
    .line 96
    invoke-direct {v6, v7, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 97
    .line 98
    .line 99
    new-instance v8, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 100
    .line 101
    invoke-direct {v8, v7, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 102
    .line 103
    .line 104
    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 105
    .line 106
    invoke-direct {v4, v7, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1, v6, v8, v4}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->J:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 113
    .line 114
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 115
    .line 116
    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 117
    .line 118
    invoke-direct {v1, v2, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 122
    .line 123
    invoke-direct {v2, v3, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 124
    .line 125
    .line 126
    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 127
    .line 128
    invoke-direct {v4, v3, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 129
    .line 130
    .line 131
    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 132
    .line 133
    const v6, 0x3e4ccccd    # 0.2f

    .line 134
    .line 135
    .line 136
    invoke-direct {v3, v6, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    .line 140
    .line 141
    .line 142
    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->K:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 143
    .line 144
    return-void
.end method

.method public static O(Landroidx/transition/TransitionValues;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/material/transition/TransitionUtils;->a:Landroid/graphics/RectF;

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
    invoke-static {v0}, Lcom/google/android/material/transition/TransitionUtils;->a(Landroid/view/View;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :goto_0
    iput-object v2, p0, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void

    .line 41
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    new-instance v0, Landroid/graphics/RectF;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    int-to-float v3, v3

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    int-to-float v4, v4

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    int-to-float v5, v5

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    int-to-float v6, v6

    .line 69
    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-static {v2}, Lcom/google/android/material/transition/TransitionUtils;->b(Landroid/view/View;)Landroid/graphics/RectF;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_2
    const-string v3, "materialContainerTransition:bounds"

    .line 78
    .line 79
    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget v3, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    instance-of v3, v3, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 89
    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    sget v1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    sget v4, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    .line 106
    .line 107
    filled-new-array {v4}, [I

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const/4 v5, -0x1

    .line 116
    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    .line 122
    .line 123
    if-eq v6, v5, :cond_5

    .line 124
    .line 125
    invoke-static {v3, v6, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->a(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->a()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    instance-of v1, v2, Lcom/google/android/material/shape/Shapeable;

    .line 135
    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    check-cast v2, Lcom/google/android/material/shape/Shapeable;

    .line 139
    .line 140
    invoke-interface {v2}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    goto :goto_3

    .line 145
    :cond_6
    new-instance v1, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 146
    .line 147
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->a()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :goto_3
    new-instance v2, Lcom/google/android/material/transition/a;

    .line 155
    .line 156
    invoke-direct {v2, v0}, Lcom/google/android/material/transition/a;-><init>(Landroid/graphics/RectF;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->h(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "materialContainerTransition:shapeAppearance"

    .line 164
    .line 165
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    return-void
.end method


# virtual methods
.method public final e(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/MaterialContainerTransform;->O(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/MaterialContainerTransform;->O(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final l(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 22

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
    iget-object v4, v0, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_12

    .line 15
    .line 16
    :cond_0
    iget-object v5, v2, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 17
    .line 18
    const-string v6, "materialContainerTransition:bounds"

    .line 19
    .line 20
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    move-object v11, v7

    .line 25
    check-cast v11, Landroid/graphics/RectF;

    .line 26
    .line 27
    const-string v7, "materialContainerTransition:shapeAppearance"

    .line 28
    .line 29
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    move-object v12, v4

    .line 34
    check-cast v12, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 35
    .line 36
    const-string v4, "MaterialContainerTransform"

    .line 37
    .line 38
    if-eqz v11, :cond_12

    .line 39
    .line 40
    if-nez v12, :cond_1

    .line 41
    .line 42
    goto/16 :goto_11

    .line 43
    .line 44
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    move-object v15, v6

    .line 49
    check-cast v15, Landroid/graphics/RectF;

    .line 50
    .line 51
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    move-object/from16 v16, v5

    .line 56
    .line 57
    check-cast v16, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 58
    .line 59
    if-eqz v15, :cond_11

    .line 60
    .line 61
    if-nez v16, :cond_2

    .line 62
    .line 63
    goto/16 :goto_10

    .line 64
    .line 65
    :cond_2
    iget-object v4, v0, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 66
    .line 67
    iget-object v14, v2, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    move-object v0, v14

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move-object v0, v4

    .line 78
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/view/View;

    .line 89
    .line 90
    move-object v3, v0

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-static {v0}, Lcom/google/android/material/transition/TransitionUtils;->a(Landroid/view/View;)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :goto_1
    invoke-static {v2}, Lcom/google/android/material/transition/TransitionUtils;->b(Landroid/view/View;)Landroid/graphics/RectF;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 101
    .line 102
    neg-float v6, v6

    .line 103
    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 104
    .line 105
    neg-float v5, v5

    .line 106
    if-eqz v3, :cond_5

    .line 107
    .line 108
    invoke-static {v3}, Lcom/google/android/material/transition/TransitionUtils;->b(Landroid/view/View;)Landroid/graphics/RectF;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    int-to-float v7, v7

    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    int-to-float v8, v8

    .line 128
    const/4 v9, 0x0

    .line 129
    invoke-direct {v3, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-virtual {v11, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v15, v6, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    mul-float/2addr v6, v5

    .line 147
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    mul-float/2addr v7, v5

    .line 156
    cmpl-float v5, v6, v7

    .line 157
    .line 158
    if-lez v5, :cond_6

    .line 159
    .line 160
    const/4 v5, 0x1

    .line 161
    :goto_3
    move/from16 v18, v5

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_6
    const/4 v5, 0x0

    .line 165
    goto :goto_3

    .line 166
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sget v5, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    .line 171
    .line 172
    sget-object v6, Lcom/google/android/material/animation/AnimationUtils;->b:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 173
    .line 174
    if-eqz v5, :cond_7

    .line 175
    .line 176
    iget-object v7, v1, Landroidx/transition/Transition;->h:Landroid/animation/TimeInterpolator;

    .line 177
    .line 178
    if-nez v7, :cond_7

    .line 179
    .line 180
    invoke-static {v0, v5, v6}, Lcom/google/android/material/motion/MotionUtils;->d(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    iput-object v5, v1, Landroidx/transition/Transition;->h:Landroid/animation/TimeInterpolator;

    .line 185
    .line 186
    :cond_7
    if-eqz v18, :cond_8

    .line 187
    .line 188
    sget v5, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_8
    sget v5, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    .line 192
    .line 193
    :goto_5
    if-eqz v5, :cond_9

    .line 194
    .line 195
    iget-wide v6, v1, Landroidx/transition/Transition;->g:J

    .line 196
    .line 197
    const-wide/16 v8, -0x1

    .line 198
    .line 199
    cmp-long v6, v6, v8

    .line 200
    .line 201
    if-nez v6, :cond_9

    .line 202
    .line 203
    const/4 v6, -0x1

    .line 204
    invoke-static {v0, v5, v6}, Lcom/google/android/material/motion/MotionUtils;->c(Landroid/content/Context;II)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eq v0, v6, :cond_9

    .line 209
    .line 210
    int-to-long v5, v0

    .line 211
    iput-wide v5, v1, Landroidx/transition/Transition;->g:J

    .line 212
    .line 213
    :cond_9
    new-instance v8, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    .line 214
    .line 215
    iget-object v9, v1, Landroidx/transition/Transition;->B:Landroidx/transition/PathMotion;

    .line 216
    .line 217
    if-eqz v18, :cond_a

    .line 218
    .line 219
    sget-object v0, Lcom/google/android/material/transition/FadeModeEvaluators;->a:Lcom/google/android/material/transition/FadeModeEvaluators$1;

    .line 220
    .line 221
    :goto_6
    move-object/from16 v19, v0

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :cond_a
    sget-object v0, Lcom/google/android/material/transition/FadeModeEvaluators;->b:Lcom/google/android/material/transition/FadeModeEvaluators$2;

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :goto_7
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    mul-float v10, v7, v0

    .line 244
    .line 245
    div-float/2addr v10, v6

    .line 246
    mul-float/2addr v6, v5

    .line 247
    div-float/2addr v6, v0

    .line 248
    if-eqz v18, :cond_b

    .line 249
    .line 250
    cmpl-float v0, v10, v5

    .line 251
    .line 252
    if-ltz v0, :cond_c

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_b
    cmpl-float v0, v6, v7

    .line 256
    .line 257
    if-ltz v0, :cond_c

    .line 258
    .line 259
    :goto_8
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->a:Lcom/google/android/material/transition/FitModeEvaluators$1;

    .line 260
    .line 261
    :goto_9
    move-object/from16 v20, v0

    .line 262
    .line 263
    goto :goto_a

    .line 264
    :cond_c
    sget-object v0, Lcom/google/android/material/transition/FitModeEvaluators;->b:Lcom/google/android/material/transition/FitModeEvaluators$2;

    .line 265
    .line 266
    goto :goto_9

    .line 267
    :goto_a
    iget-object v0, v1, Landroidx/transition/Transition;->B:Landroidx/transition/PathMotion;

    .line 268
    .line 269
    instance-of v5, v0, Landroidx/transition/ArcMotion;

    .line 270
    .line 271
    if-nez v5, :cond_f

    .line 272
    .line 273
    instance-of v0, v0, Lcom/google/android/material/transition/MaterialArcMotion;

    .line 274
    .line 275
    if-eqz v0, :cond_d

    .line 276
    .line 277
    goto :goto_d

    .line 278
    :cond_d
    if-eqz v18, :cond_e

    .line 279
    .line 280
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->H:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 281
    .line 282
    goto :goto_b

    .line 283
    :cond_e
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->I:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 284
    .line 285
    :goto_b
    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 286
    .line 287
    iget-object v6, v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->a:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 288
    .line 289
    iget-object v7, v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->b:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 290
    .line 291
    iget-object v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->c:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 292
    .line 293
    iget-object v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->d:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 294
    .line 295
    invoke-direct {v5, v6, v7, v10, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    .line 296
    .line 297
    .line 298
    :goto_c
    move-object/from16 v21, v5

    .line 299
    .line 300
    goto :goto_f

    .line 301
    :cond_f
    :goto_d
    if-eqz v18, :cond_10

    .line 302
    .line 303
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->J:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 304
    .line 305
    goto :goto_e

    .line 306
    :cond_10
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->K:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 307
    .line 308
    :goto_e
    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    .line 309
    .line 310
    iget-object v6, v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->a:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 311
    .line 312
    iget-object v7, v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->b:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 313
    .line 314
    iget-object v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->c:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 315
    .line 316
    iget-object v0, v0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->d:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 317
    .line 318
    invoke-direct {v5, v6, v7, v10, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    .line 319
    .line 320
    .line 321
    goto :goto_c

    .line 322
    :goto_f
    const/4 v13, 0x0

    .line 323
    const/16 v17, 0x0

    .line 324
    .line 325
    move-object v10, v4

    .line 326
    invoke-direct/range {v8 .. v21}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;-><init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FZLcom/google/android/material/transition/FadeModeEvaluator;Lcom/google/android/material/transition/FitModeEvaluator;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)V

    .line 327
    .line 328
    .line 329
    iget v0, v3, Landroid/graphics/RectF;->left:F

    .line 330
    .line 331
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    iget v5, v3, Landroid/graphics/RectF;->top:F

    .line 336
    .line 337
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 342
    .line 343
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 348
    .line 349
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-virtual {v8, v0, v5, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 354
    .line 355
    .line 356
    const/4 v0, 0x2

    .line 357
    new-array v0, v0, [F

    .line 358
    .line 359
    fill-array-data v0, :array_0

    .line 360
    .line 361
    .line 362
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$1;

    .line 367
    .line 368
    invoke-direct {v0, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$1;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 372
    .line 373
    .line 374
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$2;

    .line 375
    .line 376
    move-object v3, v8

    .line 377
    move-object v5, v14

    .line 378
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$2;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;Landroid/view/View;Landroid/view/View;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v0}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$TransitionListener;)V

    .line 382
    .line 383
    .line 384
    return-object v6

    .line 385
    :cond_11
    :goto_10
    const-string v0, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    .line 386
    .line 387
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    return-object v3

    .line 391
    :cond_12
    :goto_11
    const-string v0, "Skipping due to null start bounds. Ensure start view is laid out and measured."

    .line 392
    .line 393
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    :cond_13
    :goto_12
    return-object v3

    .line 397
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final s()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->G:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
