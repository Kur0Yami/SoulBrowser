.class Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;
.super Lcom/mycompany/app/zoom/ZoomGestureDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/zoom/ZoomGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FroyoDetector"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public final d:Landroid/view/ScaleGestureDetector;

.field public e:F

.field public f:F

.field public final g:F

.field public final h:F

.field public i:Landroid/view/VelocityTracker;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->b:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->c:I

    .line 9
    .line 10
    new-instance v0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector$1;-><init>(Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    iput v2, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->h:F

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    iput v1, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->g:F

    .line 32
    .line 33
    new-instance v1, Landroid/view/ScaleGestureDetector;

    .line 34
    .line 35
    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->d:Landroid/view/ScaleGestureDetector;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->d:Landroid/view/ScaleGestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eq v0, v4, :cond_6

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    if-eq v0, v5, :cond_3

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    if-eq v0, v5, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x6

    .line 27
    if-eq v0, v3, :cond_0

    .line 28
    .line 29
    goto/16 :goto_8

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v3, 0xff00

    .line 36
    .line 37
    .line 38
    and-int/2addr v0, v3

    .line 39
    shr-int/lit8 v0, v0, 0x8

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget v5, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->b:I

    .line 46
    .line 47
    if-ne v3, v5, :cond_9

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v4, v2

    .line 53
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->b:I

    .line 58
    .line 59
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->e:F

    .line 64
    .line 65
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->f:F

    .line 70
    .line 71
    goto/16 :goto_8

    .line 72
    .line 73
    :cond_2
    iput v1, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->b:I

    .line 74
    .line 75
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 76
    .line 77
    if-eqz v0, :cond_9

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 80
    .line 81
    .line 82
    iput-object v3, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 83
    .line 84
    goto/16 :goto_8

    .line 85
    .line 86
    :cond_3
    :try_start_0
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->c:I

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 89
    .line 90
    .line 91
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->c:I

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 100
    .line 101
    .line 102
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    goto :goto_2

    .line 104
    :catch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    :goto_2
    iget v5, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->e:F

    .line 109
    .line 110
    sub-float v5, v0, v5

    .line 111
    .line 112
    iget v6, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->f:F

    .line 113
    .line 114
    sub-float v6, v3, v6

    .line 115
    .line 116
    iget-boolean v7, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->j:Z

    .line 117
    .line 118
    if-nez v7, :cond_5

    .line 119
    .line 120
    mul-float v7, v5, v5

    .line 121
    .line 122
    mul-float v8, v6, v6

    .line 123
    .line 124
    add-float/2addr v8, v7

    .line 125
    float-to-double v7, v8

    .line 126
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 127
    .line 128
    .line 129
    move-result-wide v7

    .line 130
    iget v9, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->g:F

    .line 131
    .line 132
    float-to-double v9, v9

    .line 133
    cmpl-double v7, v7, v9

    .line 134
    .line 135
    if-ltz v7, :cond_4

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    move v4, v2

    .line 139
    :goto_3
    iput-boolean v4, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->j:Z

    .line 140
    .line 141
    :cond_5
    iget-boolean v4, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->j:Z

    .line 142
    .line 143
    if-eqz v4, :cond_9

    .line 144
    .line 145
    iget-object v4, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector;->a:Ljava/lang/Object;

    .line 146
    .line 147
    invoke-interface {v4, v5, v6}, Lcom/mycompany/app/zoom/ZoomGestureDetector$OnGestureListener;->b(FF)V

    .line 148
    .line 149
    .line 150
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->e:F

    .line 151
    .line 152
    iput v3, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->f:F

    .line 153
    .line 154
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 155
    .line 156
    if-eqz v0, :cond_9

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_8

    .line 162
    .line 163
    :cond_6
    iput v1, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->b:I

    .line 164
    .line 165
    iget-boolean v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->j:Z

    .line 166
    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 170
    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    :try_start_2
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->c:I

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 176
    .line 177
    .line 178
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    goto :goto_4

    .line 180
    :catch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    :goto_4
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->e:F

    .line 185
    .line 186
    :try_start_3
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->c:I

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 189
    .line 190
    .line 191
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 192
    goto :goto_5

    .line 193
    :catch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    :goto_5
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->f:F

    .line 198
    .line 199
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 200
    .line 201
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 205
    .line 206
    const/16 v4, 0x3e8

    .line 207
    .line 208
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    iget-object v4, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 218
    .line 219
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    iget v6, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->h:F

    .line 236
    .line 237
    cmpl-float v5, v5, v6

    .line 238
    .line 239
    if-ltz v5, :cond_7

    .line 240
    .line 241
    iget-object v5, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector;->a:Ljava/lang/Object;

    .line 242
    .line 243
    neg-float v0, v0

    .line 244
    neg-float v4, v4

    .line 245
    invoke-interface {v5, v0, v4}, Lcom/mycompany/app/zoom/ZoomGestureDetector$OnGestureListener;->c(FF)V

    .line 246
    .line 247
    .line 248
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 249
    .line 250
    if-eqz v0, :cond_9

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 253
    .line 254
    .line 255
    iput-object v3, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->b:I

    .line 263
    .line 264
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iput-object v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->i:Landroid/view/VelocityTracker;

    .line 269
    .line 270
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 271
    .line 272
    .line 273
    :try_start_4
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->c:I

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 276
    .line 277
    .line 278
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 279
    goto :goto_6

    .line 280
    :catch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    :goto_6
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->e:F

    .line 285
    .line 286
    :try_start_5
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->c:I

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 289
    .line 290
    .line 291
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 292
    goto :goto_7

    .line 293
    :catch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    :goto_7
    iput v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->f:F

    .line 298
    .line 299
    iput-boolean v2, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->j:Z

    .line 300
    .line 301
    :cond_9
    :goto_8
    iget v0, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->b:I

    .line 302
    .line 303
    if-eq v0, v1, :cond_a

    .line 304
    .line 305
    move v2, v0

    .line 306
    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    iput p1, p0, Lcom/mycompany/app/zoom/ZoomGestureDetector$FroyoDetector;->c:I

    .line 311
    .line 312
    return-void
.end method
