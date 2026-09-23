.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$Transforms;,
        Landroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroidx/transition/ChangeTransform$Listener;,
        Landroidx/transition/ChangeTransform$GhostListener;
    }
.end annotation


# static fields
.field public static final G:[Ljava/lang/String;

.field public static final H:Landroid/util/Property;

.field public static final I:Landroid/util/Property;

.field public static final J:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "android:changeTransform:transforms"

    .line 2
    .line 3
    const-string v1, "android:changeTransform:parentMatrix"

    .line 4
    .line 5
    const-string v2, "android:changeTransform:matrix"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/transition/ChangeTransform;->G:[Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    .line 14
    .line 15
    const-class v1, [F

    .line 16
    .line 17
    const-string v2, "nonTranslations"

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/transition/ChangeTransform;->H:Landroid/util/Property;

    .line 23
    .line 24
    new-instance v0, Landroidx/transition/ChangeTransform$2;

    .line 25
    .line 26
    const-class v1, Landroid/graphics/PointF;

    .line 27
    .line 28
    const-string v2, "translations"

    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroidx/transition/ChangeTransform;->I:Landroid/util/Property;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    sput-boolean v0, Landroidx/transition/ChangeTransform;->J:Z

    .line 37
    .line 38
    return-void
.end method

.method public static O(Landroidx/transition/TransitionValues;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "android:changeTransform:parent"

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroidx/transition/ChangeTransform$Transforms;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "android:changeTransform:transforms"

    .line 29
    .line 30
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 53
    :goto_1
    const-string v0, "android:changeTransform:matrix"

    .line 54
    .line 55
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final e(Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/ChangeTransform;->O(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/transition/ChangeTransform;->O(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Landroidx/transition/ChangeTransform;->J:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final l(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v3, v0, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v4, v1, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    const-string v5, "android:changeTransform:parent"

    .line 15
    .line 16
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    :cond_0
    move-object/from16 v10, p0

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroid/view/ViewGroup;

    .line 43
    .line 44
    const-string v5, "android:changeTransform:intermediateMatrix"

    .line 45
    .line 46
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Landroid/graphics/Matrix;

    .line 51
    .line 52
    const-string v7, "android:changeTransform:matrix"

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_2
    const-string v5, "android:changeTransform:intermediateParentMatrix"

    .line 60
    .line 61
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Landroid/graphics/Matrix;

    .line 66
    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    const-string v8, "android:changeTransform:parentMatrix"

    .line 70
    .line 71
    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/graphics/Matrix;

    .line 79
    .line 80
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Landroid/graphics/Matrix;

    .line 85
    .line 86
    if-nez v3, :cond_4

    .line 87
    .line 88
    sget-object v3, Landroidx/transition/MatrixUtils;->a:Landroid/graphics/Matrix;

    .line 89
    .line 90
    :cond_4
    if-nez v5, :cond_5

    .line 91
    .line 92
    sget-object v5, Landroidx/transition/MatrixUtils;->a:Landroid/graphics/Matrix;

    .line 93
    .line 94
    :cond_5
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_6

    .line 99
    .line 100
    move-object/from16 v10, p0

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_6
    const-string v2, "android:changeTransform:transforms"

    .line 105
    .line 106
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroidx/transition/ChangeTransform$Transforms;

    .line 111
    .line 112
    iget-object v1, v1, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->M(Landroid/view/View;F)V

    .line 122
    .line 123
    .line 124
    const/high16 v7, 0x3f800000    # 1.0f

    .line 125
    .line 126
    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationX(F)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationY(F)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v4}, Landroid/view/View;->setRotation(F)V

    .line 139
    .line 140
    .line 141
    const/16 v4, 0x9

    .line 142
    .line 143
    new-array v7, v4, [F

    .line 144
    .line 145
    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 146
    .line 147
    .line 148
    new-array v3, v4, [F

    .line 149
    .line 150
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 151
    .line 152
    .line 153
    new-instance v8, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 154
    .line 155
    invoke-direct {v8, v1, v7}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    .line 156
    .line 157
    .line 158
    new-instance v9, Landroidx/transition/FloatArrayEvaluator;

    .line 159
    .line 160
    new-array v4, v4, [F

    .line 161
    .line 162
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 163
    .line 164
    .line 165
    iput-object v4, v9, Landroidx/transition/FloatArrayEvaluator;->a:[F

    .line 166
    .line 167
    const/4 v4, 0x2

    .line 168
    new-array v10, v4, [[F

    .line 169
    .line 170
    const/4 v11, 0x0

    .line 171
    aput-object v7, v10, v11

    .line 172
    .line 173
    const/4 v12, 0x1

    .line 174
    aput-object v3, v10, v12

    .line 175
    .line 176
    sget-object v13, Landroidx/transition/ChangeTransform;->H:Landroid/util/Property;

    .line 177
    .line 178
    invoke-static {v13, v9, v10}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    move-object/from16 v10, p0

    .line 183
    .line 184
    iget-object v13, v10, Landroidx/transition/Transition;->B:Landroidx/transition/PathMotion;

    .line 185
    .line 186
    aget v14, v7, v4

    .line 187
    .line 188
    const/4 v15, 0x5

    .line 189
    aget v7, v7, v15

    .line 190
    .line 191
    move/from16 p1, v11

    .line 192
    .line 193
    aget v11, v3, v4

    .line 194
    .line 195
    aget v3, v3, v15

    .line 196
    .line 197
    invoke-virtual {v13, v14, v7, v11, v3}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    sget-object v7, Landroidx/transition/ChangeTransform;->I:Landroid/util/Property;

    .line 202
    .line 203
    invoke-static {v7, v3}, Landroidx/transition/PropertyValuesHolderUtils$Api21Impl;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    .line 208
    .line 209
    aput-object v9, v4, p1

    .line 210
    .line 211
    aput-object v3, v4, v12

    .line 212
    .line 213
    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    new-instance v4, Landroidx/transition/ChangeTransform$Listener;

    .line 218
    .line 219
    invoke-direct {v4, v1, v2, v8, v5}, Landroidx/transition/ChangeTransform$Listener;-><init>(Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;Landroid/graphics/Matrix;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 226
    .line 227
    .line 228
    move-object v2, v3

    .line 229
    :goto_0
    sget-boolean v1, Landroidx/transition/ChangeTransform;->J:Z

    .line 230
    .line 231
    if-nez v1, :cond_7

    .line 232
    .line 233
    iget-object v0, v0, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 234
    .line 235
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 236
    .line 237
    .line 238
    :cond_7
    :goto_1
    return-object v2
.end method

.method public final s()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/ChangeTransform;->G:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
