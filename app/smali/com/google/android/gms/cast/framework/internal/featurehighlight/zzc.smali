.class final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->a:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;->a:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->j:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->q:Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/HelpTextView;->asView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x2

    .line 20
    new-array v5, v4, [F

    .line 21
    .line 22
    fill-array-data v5, :array_0

    .line 23
    .line 24
    .line 25
    const-string v6, "alpha"

    .line 26
    .line 27
    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-wide/16 v7, 0x15e

    .line 32
    .line 33
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgy;->a()Landroid/view/animation/PathInterpolator;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    .line 43
    .line 44
    iget-object v5, v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->f:Landroid/graphics/Rect;

    .line 45
    .line 46
    iget-object v9, v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->h:Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    iget v11, v9, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->i:F

    .line 53
    .line 54
    sub-float/2addr v10, v11

    .line 55
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    iget v11, v9, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->j:F

    .line 60
    .line 61
    sub-float/2addr v5, v11

    .line 62
    iget-object v11, v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->i:Lcom/google/android/gms/cast/framework/internal/featurehighlight/InnerZoneDrawable;

    .line 63
    .line 64
    new-array v12, v4, [F

    .line 65
    .line 66
    fill-array-data v12, :array_1

    .line 67
    .line 68
    .line 69
    const-string v13, "scale"

    .line 70
    .line 71
    invoke-static {v13, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    new-array v14, v4, [F

    .line 76
    .line 77
    aput v10, v14, v2

    .line 78
    .line 79
    const/4 v10, 0x1

    .line 80
    const/4 v15, 0x0

    .line 81
    aput v15, v14, v10

    .line 82
    .line 83
    move/from16 p1, v10

    .line 84
    .line 85
    const-string v10, "translationX"

    .line 86
    .line 87
    invoke-static {v10, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    new-array v14, v4, [F

    .line 92
    .line 93
    aput v5, v14, v2

    .line 94
    .line 95
    aput v15, v14, p1

    .line 96
    .line 97
    const-string v5, "translationY"

    .line 98
    .line 99
    invoke-static {v5, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget v14, v9, Lcom/google/android/gms/cast/framework/internal/featurehighlight/OuterHighlightDrawable;->m:I

    .line 104
    .line 105
    filled-new-array {v2, v14}, [I

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    invoke-static {v6, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    const/4 v15, 0x4

    .line 114
    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    .line 115
    .line 116
    aput-object v12, v15, v2

    .line 117
    .line 118
    aput-object v10, v15, p1

    .line 119
    .line 120
    aput-object v5, v15, v4

    .line 121
    .line 122
    const/4 v5, 0x3

    .line 123
    aput-object v14, v15, v5

    .line 124
    .line 125
    invoke-static {v9, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgy;->a()Landroid/view/animation/PathInterpolator;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    new-array v10, v4, [F

    .line 141
    .line 142
    fill-array-data v10, :array_2

    .line 143
    .line 144
    .line 145
    invoke-static {v13, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    const/16 v12, 0xff

    .line 150
    .line 151
    filled-new-array {v2, v12}, [I

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    invoke-static {v6, v12}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    new-array v12, v4, [Landroid/animation/PropertyValuesHolder;

    .line 160
    .line 161
    aput-object v10, v12, v2

    .line 162
    .line 163
    aput-object v6, v12, p1

    .line 164
    .line 165
    invoke-static {v11, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzgy;->a()Landroid/view/animation/PathInterpolator;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-virtual {v6, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    new-instance v7, Landroid/animation/AnimatorSet;

    .line 181
    .line 182
    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 183
    .line 184
    .line 185
    new-array v5, v5, [Landroid/animation/Animator;

    .line 186
    .line 187
    aput-object v3, v5, v2

    .line 188
    .line 189
    aput-object v9, v5, p1

    .line 190
    .line 191
    aput-object v6, v5, v4

    .line 192
    .line 193
    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 194
    .line 195
    .line 196
    new-instance v2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;

    .line 197
    .line 198
    invoke-direct {v2, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->k:Landroid/animation/AnimatorSet;

    .line 205
    .line 206
    if-eqz v2, :cond_0

    .line 207
    .line 208
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 209
    .line 210
    .line 211
    :cond_0
    iput-object v7, v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;->k:Landroid/animation/AnimatorSet;

    .line 212
    .line 213
    invoke-virtual {v7}, Landroid/animation/Animator;->start()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 221
    .line 222
    const-string v2, "Target view must be set before animation"

    .line 223
    .line 224
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v1

    .line 228
    nop

    .line 229
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
