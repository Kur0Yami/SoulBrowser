.class public Landroidx/transition/ChangeImageTransform;
.super Landroidx/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeImageTransform$Listener;
    }
.end annotation


# static fields
.field public static final G:[Ljava/lang/String;

.field public static final H:Landroid/animation/TypeEvaluator;

.field public static final I:Landroid/util/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "android:changeImageTransform:matrix"

    .line 2
    .line 3
    const-string v1, "android:changeImageTransform:bounds"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/ChangeImageTransform;->G:[Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Landroidx/transition/ChangeImageTransform$1;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/transition/ChangeImageTransform;->H:Landroid/animation/TypeEvaluator;

    .line 17
    .line 18
    new-instance v0, Landroidx/transition/ChangeImageTransform$2;

    .line 19
    .line 20
    const-class v1, Landroid/graphics/Matrix;

    .line 21
    .line 22
    const-string v2, "animatedTransform"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/transition/ChangeImageTransform;->I:Landroid/util/Property;

    .line 28
    .line 29
    return-void
.end method

.method public static O(Landroidx/transition/TransitionValues;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    check-cast v1, Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_1
    iget-object p0, p0, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    new-instance v5, Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 47
    .line 48
    .line 49
    const-string v0, "android:changeImageTransform:bounds"

    .line 50
    .line 51
    invoke-virtual {p0, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    sget p1, Landroidx/transition/R$id;->transition_image_transform:I

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/graphics/Matrix;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    :goto_0
    if-nez p1, :cond_6

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-lez v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-lez p1, :cond_5

    .line 83
    .line 84
    sget-object p1, Landroidx/transition/ChangeImageTransform$3;->a:[I

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    aget p1, p1, v0

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    if-eq p1, v0, :cond_4

    .line 98
    .line 99
    const/4 v0, 0x2

    .line 100
    if-eq p1, v0, :cond_3

    .line 101
    .line 102
    new-instance p1, Landroid/graphics/Matrix;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    int-to-float v2, v2

    .line 125
    int-to-float v0, v0

    .line 126
    div-float v3, v2, v0

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    int-to-float v1, v1

    .line 137
    int-to-float p1, p1

    .line 138
    div-float v4, v1, p1

    .line 139
    .line 140
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    mul-float/2addr v0, v3

    .line 145
    mul-float/2addr p1, v3

    .line 146
    sub-float/2addr v2, v0

    .line 147
    const/high16 v0, 0x40000000    # 2.0f

    .line 148
    .line 149
    div-float/2addr v2, v0

    .line 150
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    sub-float/2addr v1, p1

    .line 155
    div-float/2addr v1, v0

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    new-instance v0, Landroid/graphics/Matrix;

    .line 161
    .line 162
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 166
    .line 167
    .line 168
    int-to-float v1, v2

    .line 169
    int-to-float p1, p1

    .line 170
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 171
    .line 172
    .line 173
    :goto_1
    move-object p1, v0

    .line 174
    goto :goto_2

    .line 175
    :cond_4
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance v0, Landroid/graphics/Matrix;

    .line 180
    .line 181
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    int-to-float v2, v2

    .line 189
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    int-to-float v3, v3

    .line 194
    div-float/2addr v2, v3

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    int-to-float v1, v1

    .line 200
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    int-to-float p1, p1

    .line 205
    div-float/2addr v1, p1

    .line 206
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_5
    new-instance p1, Landroid/graphics/Matrix;

    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-direct {p1, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    :goto_2
    const-string v0, "android:changeImageTransform:matrix"

    .line 220
    .line 221
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public final e(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroidx/transition/ChangeImageTransform;->O(Landroidx/transition/TransitionValues;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final h(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroidx/transition/ChangeImageTransform;->O(Landroidx/transition/TransitionValues;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final l(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    .line 1
    if-eqz p2, :cond_a

    .line 2
    .line 3
    iget-object p1, p2, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object p2, p3, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    const-string v0, "android:changeImageTransform:bounds"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/graphics/Rect;

    .line 24
    .line 25
    if-eqz v1, :cond_a

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    const-string v2, "android:changeImageTransform:matrix"

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/graphics/Matrix;

    .line 38
    .line 39
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroid/graphics/Matrix;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    :cond_2
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    :cond_3
    move v4, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    move v4, v2

    .line 62
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    if-eqz v4, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    iget-object p3, p3, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 72
    .line 73
    check-cast p3, Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v4, 0x2

    .line 88
    sget-object v5, Landroidx/transition/ChangeImageTransform;->I:Landroid/util/Property;

    .line 89
    .line 90
    if-lez v1, :cond_9

    .line 91
    .line 92
    if-gtz v0, :cond_6

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    if-nez p1, :cond_7

    .line 96
    .line 97
    sget-object p1, Landroidx/transition/MatrixUtils;->a:Landroid/graphics/Matrix;

    .line 98
    .line 99
    :cond_7
    if-nez p2, :cond_8

    .line 100
    .line 101
    sget-object p2, Landroidx/transition/MatrixUtils;->a:Landroid/graphics/Matrix;

    .line 102
    .line 103
    :cond_8
    move-object v0, v5

    .line 104
    check-cast v0, Landroidx/transition/ChangeImageTransform$2;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {p3, p1}, Landroidx/transition/ImageViewUtils;->a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Landroidx/transition/TransitionUtils$MatrixEvaluator;

    .line 113
    .line 114
    invoke-direct {v0}, Landroidx/transition/TransitionUtils$MatrixEvaluator;-><init>()V

    .line 115
    .line 116
    .line 117
    new-array v1, v4, [Landroid/graphics/Matrix;

    .line 118
    .line 119
    aput-object p1, v1, v2

    .line 120
    .line 121
    aput-object p2, v1, v3

    .line 122
    .line 123
    invoke-static {p3, v5, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v1, Landroidx/transition/ChangeImageTransform$Listener;

    .line 128
    .line 129
    invoke-direct {v1, p3, p1, p2}, Landroidx/transition/ChangeImageTransform$Listener;-><init>(Landroid/widget/ImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$TransitionListener;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_9
    :goto_1
    new-array p1, v4, [Landroid/graphics/Matrix;

    .line 143
    .line 144
    sget-object p2, Landroidx/transition/MatrixUtils;->a:Landroid/graphics/Matrix;

    .line 145
    .line 146
    aput-object p2, p1, v2

    .line 147
    .line 148
    aput-object p2, p1, v3

    .line 149
    .line 150
    sget-object p2, Landroidx/transition/ChangeImageTransform;->H:Landroid/animation/TypeEvaluator;

    .line 151
    .line 152
    invoke-static {p3, v5, p2, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    :cond_a
    :goto_2
    const/4 p1, 0x0

    .line 158
    return-object p1
.end method

.method public final s()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/ChangeImageTransform;->G:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
