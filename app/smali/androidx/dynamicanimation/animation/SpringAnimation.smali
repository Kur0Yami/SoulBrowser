.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/SpringAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field public r:Landroidx/dynamicanimation/animation/SpringForce;

.field public s:F

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/Shapeable;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/google/android/material/shape/Shapeable;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 6
    .line 7
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->s:F

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->t:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final d(J)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->t:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 9
    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->s:F

    .line 14
    .line 15
    cmpl-float v6, v1, v5

    .line 16
    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 20
    .line 21
    float-to-double v7, v1

    .line 22
    iput-wide v7, v6, Landroidx/dynamicanimation/animation/SpringForce;->i:D

    .line 23
    .line 24
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->s:F

    .line 25
    .line 26
    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 27
    .line 28
    iget-wide v5, v1, Landroidx/dynamicanimation/animation/SpringForce;->i:D

    .line 29
    .line 30
    double-to-float v1, v5

    .line 31
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 32
    .line 33
    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 34
    .line 35
    iput-boolean v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->t:Z

    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->s:F

    .line 39
    .line 40
    cmpl-float v1, v1, v5

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 45
    .line 46
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 47
    .line 48
    float-to-double v7, v1

    .line 49
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 50
    .line 51
    float-to-double v9, v1

    .line 52
    const-wide/16 v11, 0x2

    .line 53
    .line 54
    div-long v18, p1, v11

    .line 55
    .line 56
    move-wide/from16 v11, v18

    .line 57
    .line 58
    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/SpringForce;->c(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v13, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 63
    .line 64
    iget v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->s:F

    .line 65
    .line 66
    float-to-double v6, v6

    .line 67
    iput-wide v6, v13, Landroidx/dynamicanimation/animation/SpringForce;->i:D

    .line 68
    .line 69
    iput v5, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->s:F

    .line 70
    .line 71
    iget v6, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->a:F

    .line 72
    .line 73
    float-to-double v14, v6

    .line 74
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->b:F

    .line 75
    .line 76
    float-to-double v6, v1

    .line 77
    move-wide/from16 v16, v6

    .line 78
    .line 79
    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/SpringForce;->c(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget v6, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->a:F

    .line 84
    .line 85
    iput v6, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 86
    .line 87
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->b:F

    .line 88
    .line 89
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 93
    .line 94
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 95
    .line 96
    float-to-double v7, v1

    .line 97
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 98
    .line 99
    float-to-double v9, v1

    .line 100
    move-wide/from16 v11, p1

    .line 101
    .line 102
    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/SpringForce;->c(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget v6, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->a:F

    .line 107
    .line 108
    iput v6, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 109
    .line 110
    iget v1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->b:F

    .line 111
    .line 112
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 113
    .line 114
    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 115
    .line 116
    iget v6, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    .line 117
    .line 118
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 123
    .line 124
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 129
    .line 130
    iget v5, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 131
    .line 132
    iget-object v6, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    float-to-double v7, v5

    .line 142
    iget-wide v9, v6, Landroidx/dynamicanimation/animation/SpringForce;->e:D

    .line 143
    .line 144
    cmpg-double v5, v7, v9

    .line 145
    .line 146
    if-gez v5, :cond_3

    .line 147
    .line 148
    iget-wide v7, v6, Landroidx/dynamicanimation/animation/SpringForce;->i:D

    .line 149
    .line 150
    double-to-float v5, v7

    .line 151
    sub-float/2addr v1, v5

    .line 152
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    float-to-double v7, v1

    .line 157
    iget-wide v5, v6, Landroidx/dynamicanimation/animation/SpringForce;->d:D

    .line 158
    .line 159
    cmpg-double v1, v7, v5

    .line 160
    .line 161
    if-gez v1, :cond_3

    .line 162
    .line 163
    iget-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 164
    .line 165
    iget-wide v5, v1, Landroidx/dynamicanimation/animation/SpringForce;->i:D

    .line 166
    .line 167
    double-to-float v1, v5

    .line 168
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 169
    .line 170
    iput v4, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    .line 171
    .line 172
    return v2

    .line 173
    :cond_3
    return v3
.end method

.method public final e(F)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->s:F

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 20
    .line 21
    float-to-double v1, p1

    .line 22
    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->i:D

    .line 23
    .line 24
    double-to-float p1, v1

    .line 25
    float-to-double v1, p1

    .line 26
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 27
    .line 28
    .line 29
    float-to-double v3, p1

    .line 30
    cmpl-double v3, v1, v3

    .line 31
    .line 32
    if-gtz v3, :cond_7

    .line 33
    .line 34
    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    .line 35
    .line 36
    float-to-double v4, v3

    .line 37
    cmpg-double v1, v1, v4

    .line 38
    .line 39
    if-ltz v1, :cond_6

    .line 40
    .line 41
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->i:F

    .line 42
    .line 43
    const/high16 v2, 0x3f400000    # 0.75f

    .line 44
    .line 45
    mul-float/2addr v1, v2

    .line 46
    float-to-double v1, v1

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->d:D

    .line 52
    .line 53
    const-wide v4, 0x404f400000000000L    # 62.5

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    mul-double/2addr v1, v4

    .line 59
    iput-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->e:D

    .line 60
    .line 61
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->b()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->e:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 66
    .line 67
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->a()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->f:Z

    .line 76
    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->f:Z

    .line 83
    .line 84
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->c:Z

    .line 85
    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->e:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 89
    .line 90
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->d:Lcom/google/android/material/shape/Shapeable;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->a(Lcom/google/android/material/shape/Shapeable;)F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 97
    .line 98
    :cond_2
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    .line 99
    .line 100
    cmpl-float p1, v0, p1

    .line 101
    .line 102
    if-gtz p1, :cond_3

    .line 103
    .line 104
    cmpg-float p1, v0, v3

    .line 105
    .line 106
    if-ltz p1, :cond_3

    .line 107
    .line 108
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->b()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->a(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    const-string v0, "Starting value need to be in between min value and max value"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_4
    return-void

    .line 125
    :cond_5
    new-instance p1, Landroid/util/AndroidRuntimeException;

    .line 126
    .line 127
    const-string v0, "Animations may only be started on the same thread as the animation handler"

    .line 128
    .line 129
    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 134
    .line 135
    const-string v0, "Final position of the spring cannot be less than the min value."

    .line 136
    .line 137
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 142
    .line 143
    const-string v0, "Final position of the spring cannot be greater than the max value."

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->r:Landroidx/dynamicanimation/animation/SpringForce;

    .line 2
    .line 3
    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->b:D

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmpl-double v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->b()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->e:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 16
    .line 17
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->f:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->t:Z

    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 34
    .line 35
    const-string v1, "Animations may only be started on the same thread as the animation handler"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 42
    .line 43
    const-string v1, "Spring animations can only come to an end when there is damping"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method
