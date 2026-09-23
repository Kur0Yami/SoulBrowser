.class public Lcom/mycompany/app/view/MyThumbView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public A:Landroid/graphics/Paint;

.field public B:I

.field public C:Ljava/util/List;

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Landroid/graphics/Bitmap;

.field public I:Landroid/graphics/Bitmap;

.field public J:Landroid/graphics/Bitmap;

.field public K:Landroid/graphics/Bitmap;

.field public L:Landroid/graphics/Bitmap;

.field public M:Landroid/graphics/Bitmap;

.field public N:Landroid/graphics/Bitmap;

.field public O:Landroid/graphics/Bitmap;

.field public P:Landroid/graphics/Rect;

.field public Q:Landroid/graphics/Rect;

.field public R:Landroid/graphics/RectF;

.field public S:Landroid/graphics/Paint;

.field public T:I

.field public U:Landroid/graphics/Paint;

.field public V:I

.field public W:I

.field public a0:Z

.field public b0:Ljava/util/concurrent/ExecutorService;

.field public final c:Z

.field public c0:F

.field public d0:Z

.field public final e0:Ljava/lang/Runnable;

.field public f:I

.field public f0:F

.field public g:Landroid/graphics/Paint;

.field public g0:Z

.field public h:I

.field public final h0:Ljava/lang/Runnable;

.field public i:I

.field public j:F

.field public k:F

.field public l:I

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/RectF;

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:Z

.field public t:Landroid/view/animation/AlphaAnimation;

.field public u:Landroid/animation/ValueAnimator;

.field public v:Landroid/animation/ValueAnimator;

.field public w:F

.field public x:Z

.field public y:Z

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MyThumbView$6;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyThumbView$6;-><init>(Lcom/mycompany/app/view/MyThumbView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->e0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyThumbView$10;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyThumbView$10;-><init>(Lcom/mycompany/app/view/MyThumbView;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->h0:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyThumbView;->c:Z

    .line 20
    .line 21
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 22
    .line 23
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 24
    .line 25
    add-int/2addr p1, v0

    .line 26
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->z:I

    .line 27
    .line 28
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyThumbView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyThumbView;->setValAnimDn(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/view/MyThumbView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyThumbView;->setValAnimUp(F)V

    return-void
.end method

.method private setValAnimDn(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->w:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setValAnimUp(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->w:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyThumbView;->y:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyThumbView;->y:Z

    .line 8
    .line 9
    move v2, v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v3, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    move v2, v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v1, v2

    .line 32
    :goto_0
    if-eqz p1, :cond_3

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->invalidate()V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method public final e(II)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    int-to-float p2, p2

    .line 21
    int-to-float p1, p1

    .line 22
    div-float/2addr p2, p1

    .line 23
    int-to-float p1, v1

    .line 24
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->j:F

    .line 25
    .line 26
    mul-float/2addr p1, p2

    .line 27
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->k:F

    .line 28
    .line 29
    int-to-float v0, v2

    .line 30
    cmpl-float p1, p1, v0

    .line 31
    .line 32
    if-lez p1, :cond_2

    .line 33
    .line 34
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->k:F

    .line 35
    .line 36
    div-float/2addr v0, p2

    .line 37
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->j:F

    .line 38
    .line 39
    :cond_2
    return-void

    .line 40
    :cond_3
    :goto_0
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->j:F

    .line 41
    .line 42
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->k:F

    .line 43
    .line 44
    return-void

    .line 45
    :cond_4
    :goto_1
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->j:F

    .line 46
    .line 47
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->k:F

    .line 48
    .line 49
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 9

    .line 1
    if-eqz p2, :cond_13

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 8
    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_1
    iget v1, p0, Lcom/mycompany/app/view/MyThumbView;->W:I

    .line 18
    .line 19
    mul-int/lit8 v2, v1, 0x3

    .line 20
    .line 21
    div-int/lit8 v3, p2, 0x2

    .line 22
    .line 23
    sub-int/2addr v3, v2

    .line 24
    div-int/lit8 v4, p3, 0x2

    .line 25
    .line 26
    sub-int/2addr v4, v2

    .line 27
    const/4 v2, 0x2

    .line 28
    mul-int/2addr v1, v2

    .line 29
    if-nez p6, :cond_2

    .line 30
    .line 31
    move p3, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v5, 0x1

    .line 34
    if-ne p6, v5, :cond_3

    .line 35
    .line 36
    sub-int/2addr p2, v3

    .line 37
    sub-int/2addr p2, v1

    .line 38
    :goto_0
    move p3, v1

    .line 39
    move v1, p2

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    if-ne p6, v2, :cond_4

    .line 42
    .line 43
    sub-int/2addr p3, v4

    .line 44
    sub-int/2addr p3, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    sub-int/2addr p2, v3

    .line 47
    sub-int/2addr p2, v1

    .line 48
    sub-int/2addr p3, v4

    .line 49
    sub-int v1, p3, v1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_1
    add-int p2, v1, v3

    .line 53
    .line 54
    add-int p6, p3, v4

    .line 55
    .line 56
    invoke-virtual {v0, v1, p3, p2, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-static {p4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const/4 p6, 0x0

    .line 64
    const/4 v0, 0x0

    .line 65
    if-eqz p2, :cond_9

    .line 66
    .line 67
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-le p2, v5, :cond_7

    .line 76
    .line 77
    int-to-float v6, v4

    .line 78
    int-to-float v7, v5

    .line 79
    div-float/2addr v6, v7

    .line 80
    int-to-float v7, p2

    .line 81
    mul-float/2addr v7, v6

    .line 82
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    int-to-float v8, v3

    .line 87
    div-float/2addr v8, v6

    .line 88
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-le v7, v6, :cond_5

    .line 97
    .line 98
    move v7, v6

    .line 99
    :cond_5
    if-le p2, v7, :cond_6

    .line 100
    .line 101
    sub-int/2addr p2, v7

    .line 102
    int-to-float p2, p2

    .line 103
    const/high16 v6, 0x40000000    # 2.0f

    .line 104
    .line 105
    div-float/2addr p2, v6

    .line 106
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    move p2, v0

    .line 112
    :goto_2
    iget-object v6, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 113
    .line 114
    add-int/2addr v7, p2

    .line 115
    invoke-virtual {v6, p2, v0, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 119
    .line 120
    iget-object v5, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 121
    .line 122
    invoke-virtual {p1, p4, p2, v5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_7
    int-to-float v6, v3

    .line 127
    int-to-float v7, p2

    .line 128
    div-float/2addr v6, v7

    .line 129
    int-to-float v7, v5

    .line 130
    mul-float/2addr v7, v6

    .line 131
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    int-to-float v8, v4

    .line 136
    div-float/2addr v8, v6

    .line 137
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-le v7, v5, :cond_8

    .line 146
    .line 147
    move v7, v5

    .line 148
    :cond_8
    iget-object v5, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 149
    .line 150
    invoke-virtual {v5, v0, v0, p2, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 154
    .line 155
    iget-object v5, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 156
    .line 157
    invoke-virtual {p1, p4, p2, v5, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_3
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->S:Landroid/graphics/Paint;

    .line 161
    .line 162
    if-eqz p2, :cond_c

    .line 163
    .line 164
    sget-boolean p4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 165
    .line 166
    if-eqz p4, :cond_a

    .line 167
    .line 168
    const p4, -0xc0c0c1

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_a
    const p4, -0x252526

    .line 173
    .line 174
    .line 175
    :goto_4
    iget v5, p0, Lcom/mycompany/app/view/MyThumbView;->T:I

    .line 176
    .line 177
    if-eq v5, p4, :cond_b

    .line 178
    .line 179
    iput p4, p0, Lcom/mycompany/app/view/MyThumbView;->T:I

    .line 180
    .line 181
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    .line 183
    .line 184
    :cond_b
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 185
    .line 186
    iget-object p4, p0, Lcom/mycompany/app/view/MyThumbView;->S:Landroid/graphics/Paint;

    .line 187
    .line 188
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 189
    .line 190
    .line 191
    :cond_c
    invoke-static {p5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-nez p2, :cond_d

    .line 196
    .line 197
    goto/16 :goto_7

    .line 198
    .line 199
    :cond_d
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 200
    .line 201
    if-eqz p2, :cond_13

    .line 202
    .line 203
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 204
    .line 205
    if-nez p2, :cond_e

    .line 206
    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :cond_e
    div-int/lit8 p2, v3, 0x2

    .line 210
    .line 211
    add-int/2addr p2, v1

    .line 212
    div-int/lit8 p4, v4, 0x2

    .line 213
    .line 214
    add-int/2addr p4, p3

    .line 215
    iget p3, p0, Lcom/mycompany/app/view/MyThumbView;->D:I

    .line 216
    .line 217
    if-nez p3, :cond_f

    .line 218
    .line 219
    sget p3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 220
    .line 221
    mul-int/lit8 p3, p3, 0x3

    .line 222
    .line 223
    div-int/2addr p3, v2

    .line 224
    goto :goto_5

    .line 225
    :cond_f
    iget p3, p0, Lcom/mycompany/app/view/MyThumbView;->W:I

    .line 226
    .line 227
    mul-int/lit8 p3, p3, 0x3

    .line 228
    .line 229
    sub-int/2addr v3, p3

    .line 230
    sub-int/2addr v4, p3

    .line 231
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    div-int/2addr p3, v2

    .line 236
    :goto_5
    iget-object v1, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 237
    .line 238
    sub-int v3, p2, p3

    .line 239
    .line 240
    sub-int v4, p4, p3

    .line 241
    .line 242
    add-int v5, p2, p3

    .line 243
    .line 244
    add-int v6, p4, p3

    .line 245
    .line 246
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 247
    .line 248
    .line 249
    iget v1, p0, Lcom/mycompany/app/view/MyThumbView;->D:I

    .line 250
    .line 251
    if-nez v1, :cond_12

    .line 252
    .line 253
    iget-object v1, p0, Lcom/mycompany/app/view/MyThumbView;->U:Landroid/graphics/Paint;

    .line 254
    .line 255
    if-eqz v1, :cond_12

    .line 256
    .line 257
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 258
    .line 259
    if-eqz v3, :cond_10

    .line 260
    .line 261
    const/high16 v3, -0x1000000

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_10
    const/4 v3, -0x1

    .line 265
    :goto_6
    iget v4, p0, Lcom/mycompany/app/view/MyThumbView;->V:I

    .line 266
    .line 267
    if-eq v4, v3, :cond_11

    .line 268
    .line 269
    iput v3, p0, Lcom/mycompany/app/view/MyThumbView;->V:I

    .line 270
    .line 271
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    .line 273
    .line 274
    :cond_11
    iget-object v1, p0, Lcom/mycompany/app/view/MyThumbView;->R:Landroid/graphics/RectF;

    .line 275
    .line 276
    if-eqz v1, :cond_12

    .line 277
    .line 278
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 279
    .line 280
    div-int/2addr v3, v2

    .line 281
    add-int/2addr v3, p3

    .line 282
    sub-int p3, p2, v3

    .line 283
    .line 284
    int-to-float p3, p3

    .line 285
    sub-int v2, p4, v3

    .line 286
    .line 287
    int-to-float v2, v2

    .line 288
    add-int/2addr p2, v3

    .line 289
    int-to-float p2, p2

    .line 290
    add-int/2addr p4, v3

    .line 291
    int-to-float p4, p4

    .line 292
    invoke-virtual {v1, p3, v2, p2, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 293
    .line 294
    .line 295
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->R:Landroid/graphics/RectF;

    .line 296
    .line 297
    sget p3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 298
    .line 299
    int-to-float p3, p3

    .line 300
    iget-object p4, p0, Lcom/mycompany/app/view/MyThumbView;->U:Landroid/graphics/Paint;

    .line 301
    .line 302
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 303
    .line 304
    .line 305
    :cond_12
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 306
    .line 307
    .line 308
    move-result p2

    .line 309
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 310
    .line 311
    .line 312
    move-result p3

    .line 313
    iget-object p4, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 314
    .line 315
    invoke-virtual {p4, v0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 316
    .line 317
    .line 318
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 319
    .line 320
    iget-object p3, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 321
    .line 322
    invoke-virtual {p1, p5, p2, p3, p6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 323
    .line 324
    .line 325
    :cond_13
    :goto_7
    return-void
.end method

.method public final g(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->C:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_1

    .line 13
    .line 14
    :cond_0
    move-object v4, p0

    .line 15
    move v10, p1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->C:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :cond_2
    move-object v4, p0

    .line 36
    move v10, p1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyThumbView;->E:Z

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-static {v2, v1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v9}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/view/MyThumbView;->m(Landroid/graphics/Bitmap;I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget v1, p0, Lcom/mycompany/app/view/MyThumbView;->B:I

    .line 90
    .line 91
    int-to-long v5, v1

    .line 92
    iget-wide v7, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 93
    .line 94
    new-instance v3, Lcom/mycompany/app/view/MyThumbView$1;

    .line 95
    .line 96
    move-object v4, p0

    .line 97
    move v10, p1

    .line 98
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/view/MyThumbView$1;-><init>(Lcom/mycompany/app/view/MyThumbView;JJLjava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v3}, Lcom/mycompany/app/view/MyThumbView;->i(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_0
    invoke-virtual {p0, v1, v10}, Lcom/mycompany/app/view/MyThumbView;->m(Landroid/graphics/Bitmap;I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :goto_1
    invoke-virtual {p0, v1, v10}, Lcom/mycompany/app/view/MyThumbView;->m(Landroid/graphics/Bitmap;I)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final h(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->C:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_1

    .line 13
    .line 14
    :cond_0
    move-object v3, p0

    .line 15
    move v8, p1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->C:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :cond_2
    move-object v3, p0

    .line 36
    move v8, p1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0, v1, p1}, Lcom/mycompany/app/view/MyThumbView;->n(Landroid/graphics/Bitmap;I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    iget v1, p0, Lcom/mycompany/app/view/MyThumbView;->B:I

    .line 59
    .line 60
    int-to-long v4, v1

    .line 61
    iget-object v7, v0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v2, Lcom/mycompany/app/view/MyThumbView$2;

    .line 64
    .line 65
    move-object v3, p0

    .line 66
    move v8, p1

    .line 67
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyThumbView$2;-><init>(Lcom/mycompany/app/view/MyThumbView;JLjava/lang/String;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/mycompany/app/view/MyThumbView;->i(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_0
    invoke-virtual {p0, v1, v8}, Lcom/mycompany/app/view/MyThumbView;->n(Landroid/graphics/Bitmap;I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_1
    invoke-virtual {p0, v1, v8}, Lcom/mycompany/app/view/MyThumbView;->n(Landroid/graphics/Bitmap;I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->b0:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->b0:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyThumbView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j(III)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->g:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->g:Landroid/graphics/Paint;

    .line 9
    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->h:I

    .line 12
    .line 13
    iput p2, p0, Lcom/mycompany/app/view/MyThumbView;->i:I

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyThumbView;->e(II)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->g:Landroid/graphics/Paint;

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    new-instance p1, Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->g:Landroid/graphics/Paint;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->g:Landroid/graphics/Paint;

    .line 34
    .line 35
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->g:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final k(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyThumbView;->l:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->l:I

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 26
    .line 27
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 38
    .line 39
    int-to-float p2, p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->n:Landroid/graphics/RectF;

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    new-instance p1, Landroid/graphics/RectF;

    .line 48
    .line 49
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->n:Landroid/graphics/RectF;

    .line 53
    .line 54
    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    .line 55
    .line 56
    div-float/2addr p2, p1

    .line 57
    iput p2, p0, Lcom/mycompany/app/view/MyThumbView;->o:F

    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->n:Landroid/graphics/RectF;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    int-to-float v0, v0

    .line 66
    iget v1, p0, Lcom/mycompany/app/view/MyThumbView;->o:F

    .line 67
    .line 68
    sub-float/2addr v0, v1

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    iget v2, p0, Lcom/mycompany/app/view/MyThumbView;->o:F

    .line 75
    .line 76
    sub-float/2addr v1, v2

    .line 77
    invoke-virtual {p1, p2, p2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    .line 79
    .line 80
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 81
    .line 82
    int-to-float p1, p1

    .line 83
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->p:F

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->n:Landroid/graphics/RectF;

    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->o:F

    .line 93
    .line 94
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->p:F

    .line 95
    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->invalidate()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final l(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->A:Landroid/graphics/Paint;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->A:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->A:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    .line 39
    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyThumbView;->s:Z

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    .line 58
    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 62
    .line 63
    const-wide/16 v0, 0x190

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 69
    .line 70
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method

.method public final m(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->H:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->I:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p2, v0, :cond_2

    .line 14
    .line 15
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->J:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p2, v0, :cond_3

    .line 20
    .line 21
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->K:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    :cond_3
    return-void
.end method

.method public final n(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->L:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->M:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p2, v0, :cond_2

    .line 14
    .line 15
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->N:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p2, v0, :cond_3

    .line 20
    .line 21
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->O:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    :cond_3
    return-void
.end method

.method public final o(IILjava/util/List;Z)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->B:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/mycompany/app/view/MyThumbView;->C:Ljava/util/List;

    .line 4
    .line 5
    iput p2, p0, Lcom/mycompany/app/view/MyThumbView;->D:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/mycompany/app/view/MyThumbView;->E:Z

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-eqz p3, :cond_e

    .line 11
    .line 12
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    sget p2, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 21
    .line 22
    const/4 p3, 0x1

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    move p2, p3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move p2, p1

    .line 28
    :goto_0
    sget-boolean p4, Lcom/mycompany/app/pref/PrefZone;->D:Z

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyThumbView;->F:Z

    .line 31
    .line 32
    if-ne v0, p2, :cond_2

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyThumbView;->G:Z

    .line 35
    .line 36
    if-eq v0, p4, :cond_3

    .line 37
    .line 38
    :cond_2
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyThumbView;->F:Z

    .line 39
    .line 40
    iput-boolean p4, p0, Lcom/mycompany/app/view/MyThumbView;->G:Z

    .line 41
    .line 42
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->W:I

    .line 43
    .line 44
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyThumbView;->c:Z

    .line 48
    .line 49
    const/4 p4, 0x2

    .line 50
    if-nez p2, :cond_4

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->S:Landroid/graphics/Paint;

    .line 55
    .line 56
    if-nez p2, :cond_5

    .line 57
    .line 58
    new-instance p2, Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->S:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->S:Landroid/graphics/Paint;

    .line 69
    .line 70
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->S:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    .line 83
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    int-to-float v0, v0

    .line 92
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    .line 94
    .line 95
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->T:I

    .line 96
    .line 97
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->U:Landroid/graphics/Paint;

    .line 98
    .line 99
    if-nez p2, :cond_6

    .line 100
    .line 101
    new-instance p2, Landroid/graphics/Paint;

    .line 102
    .line 103
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->U:Landroid/graphics/Paint;

    .line 107
    .line 108
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->U:Landroid/graphics/Paint;

    .line 112
    .line 113
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 114
    .line 115
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    .line 117
    .line 118
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->V:I

    .line 119
    .line 120
    :cond_6
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 121
    .line 122
    if-nez p2, :cond_7

    .line 123
    .line 124
    new-instance p2, Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 130
    .line 131
    :cond_7
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 132
    .line 133
    if-nez p2, :cond_8

    .line 134
    .line 135
    new-instance p2, Landroid/graphics/Rect;

    .line 136
    .line 137
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 141
    .line 142
    :cond_8
    iget-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->R:Landroid/graphics/RectF;

    .line 143
    .line 144
    if-nez p2, :cond_9

    .line 145
    .line 146
    new-instance p2, Landroid/graphics/RectF;

    .line 147
    .line 148
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->R:Landroid/graphics/RectF;

    .line 152
    .line 153
    :cond_9
    iget p2, p0, Lcom/mycompany/app/view/MyThumbView;->W:I

    .line 154
    .line 155
    if-nez p2, :cond_c

    .line 156
    .line 157
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyThumbView;->F:Z

    .line 158
    .line 159
    if-eqz p2, :cond_b

    .line 160
    .line 161
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyThumbView;->G:Z

    .line 162
    .line 163
    if-eqz p2, :cond_a

    .line 164
    .line 165
    sget p2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 166
    .line 167
    iput p2, p0, Lcom/mycompany/app/view/MyThumbView;->W:I

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const/high16 v0, 0x40a00000    # 5.0f

    .line 175
    .line 176
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    iput p2, p0, Lcom/mycompany/app/view/MyThumbView;->W:I

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_b
    sget p2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 188
    .line 189
    div-int/2addr p2, p4

    .line 190
    iput p2, p0, Lcom/mycompany/app/view/MyThumbView;->W:I

    .line 191
    .line 192
    :cond_c
    :goto_1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyThumbView;->h(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p3}, Lcom/mycompany/app/view/MyThumbView;->h(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p4}, Lcom/mycompany/app/view/MyThumbView;->h(I)V

    .line 199
    .line 200
    .line 201
    const/4 p2, 0x3

    .line 202
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyThumbView;->h(I)V

    .line 203
    .line 204
    .line 205
    iget v0, p0, Lcom/mycompany/app/view/MyThumbView;->D:I

    .line 206
    .line 207
    if-nez v0, :cond_d

    .line 208
    .line 209
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyThumbView;->g(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p3}, Lcom/mycompany/app/view/MyThumbView;->g(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, p4}, Lcom/mycompany/app/view/MyThumbView;->g(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyThumbView;->g(I)V

    .line 219
    .line 220
    .line 221
    :cond_d
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->invalidate()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_e
    :goto_2
    const/4 p2, 0x0

    .line 226
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->C:Ljava/util/List;

    .line 227
    .line 228
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->H:Landroid/graphics/Bitmap;

    .line 229
    .line 230
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->I:Landroid/graphics/Bitmap;

    .line 231
    .line 232
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->J:Landroid/graphics/Bitmap;

    .line 233
    .line 234
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->K:Landroid/graphics/Bitmap;

    .line 235
    .line 236
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->L:Landroid/graphics/Bitmap;

    .line 237
    .line 238
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->M:Landroid/graphics/Bitmap;

    .line 239
    .line 240
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->N:Landroid/graphics/Bitmap;

    .line 241
    .line 242
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->O:Landroid/graphics/Bitmap;

    .line 243
    .line 244
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->P:Landroid/graphics/Rect;

    .line 245
    .line 246
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->Q:Landroid/graphics/Rect;

    .line 247
    .line 248
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->R:Landroid/graphics/RectF;

    .line 249
    .line 250
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->S:Landroid/graphics/Paint;

    .line 251
    .line 252
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->T:I

    .line 253
    .line 254
    iput-object p2, p0, Lcom/mycompany/app/view/MyThumbView;->U:Landroid/graphics/Paint;

    .line 255
    .line 256
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->V:I

    .line 257
    .line 258
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyThumbView;->d(Z)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyThumbView;->c:Z

    .line 2
    .line 3
    if-nez v2, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyThumbView;->y:Z

    .line 8
    .line 9
    const/4 v7, 0x1

    .line 10
    const/4 v8, 0x0

    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v9, v8

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Lcom/mycompany/app/view/MyThumbView;->n:Landroid/graphics/RectF;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    move v2, v7

    .line 33
    goto :goto_1

    .line 34
    :cond_3
    move v2, v8

    .line 35
    :goto_1
    if-eqz v2, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    .line 39
    .line 40
    :cond_4
    iget v3, p0, Lcom/mycompany/app/view/MyThumbView;->w:F

    .line 41
    .line 42
    iget v4, p0, Lcom/mycompany/app/view/MyThumbView;->q:F

    .line 43
    .line 44
    iget v5, p0, Lcom/mycompany/app/view/MyThumbView;->r:F

    .line 45
    .line 46
    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 47
    .line 48
    .line 49
    move v9, v2

    .line 50
    :goto_2
    iget v2, p0, Lcom/mycompany/app/view/MyThumbView;->f:I

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 55
    .line 56
    .line 57
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/view/MyThumbView;->g:Landroid/graphics/Paint;

    .line 58
    .line 59
    const/high16 v10, 0x40000000    # 2.0f

    .line 60
    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    iget v2, p0, Lcom/mycompany/app/view/MyThumbView;->h:I

    .line 64
    .line 65
    iget v3, p0, Lcom/mycompany/app/view/MyThumbView;->i:I

    .line 66
    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/mycompany/app/view/MyThumbView;->e(II)V

    .line 68
    .line 69
    .line 70
    iget v2, p0, Lcom/mycompany/app/view/MyThumbView;->j:F

    .line 71
    .line 72
    div-float/2addr v2, v10

    .line 73
    sget v3, Lcom/mycompany/app/main/MainApp;->w1:I

    .line 74
    .line 75
    int-to-float v3, v3

    .line 76
    sub-float/2addr v2, v3

    .line 77
    iget v4, p0, Lcom/mycompany/app/view/MyThumbView;->k:F

    .line 78
    .line 79
    div-float/2addr v4, v10

    .line 80
    sub-float/2addr v4, v3

    .line 81
    iget v3, p0, Lcom/mycompany/app/view/MyThumbView;->q:F

    .line 82
    .line 83
    move v5, v2

    .line 84
    sub-float v2, v3, v5

    .line 85
    .line 86
    iget v6, p0, Lcom/mycompany/app/view/MyThumbView;->r:F

    .line 87
    .line 88
    move v11, v3

    .line 89
    sub-float v3, v6, v4

    .line 90
    .line 91
    add-float/2addr v5, v11

    .line 92
    add-float/2addr v6, v4

    .line 93
    move v4, v5

    .line 94
    move v5, v6

    .line 95
    iget-object v6, p0, Lcom/mycompany/app/view/MyThumbView;->g:Landroid/graphics/Paint;

    .line 96
    .line 97
    move-object v1, p1

    .line 98
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/view/MyThumbView;->C:Ljava/util/List;

    .line 102
    .line 103
    const/4 v11, 0x0

    .line 104
    if-eqz v1, :cond_9

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-lez v8, :cond_7

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iget-object v4, p0, Lcom/mycompany/app/view/MyThumbView;->H:Landroid/graphics/Bitmap;

    .line 121
    .line 122
    iget-object v5, p0, Lcom/mycompany/app/view/MyThumbView;->L:Landroid/graphics/Bitmap;

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    move-object v0, p0

    .line 126
    move-object v1, p1

    .line 127
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/view/MyThumbView;->f(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 128
    .line 129
    .line 130
    if-le v8, v7, :cond_7

    .line 131
    .line 132
    iget-object v4, p0, Lcom/mycompany/app/view/MyThumbView;->I:Landroid/graphics/Bitmap;

    .line 133
    .line 134
    iget-object v5, p0, Lcom/mycompany/app/view/MyThumbView;->M:Landroid/graphics/Bitmap;

    .line 135
    .line 136
    const/4 v6, 0x1

    .line 137
    move-object v0, p0

    .line 138
    move-object v1, p1

    .line 139
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/view/MyThumbView;->f(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 140
    .line 141
    .line 142
    const/4 v1, 0x2

    .line 143
    if-le v8, v1, :cond_7

    .line 144
    .line 145
    iget-object v4, p0, Lcom/mycompany/app/view/MyThumbView;->J:Landroid/graphics/Bitmap;

    .line 146
    .line 147
    iget-object v5, p0, Lcom/mycompany/app/view/MyThumbView;->N:Landroid/graphics/Bitmap;

    .line 148
    .line 149
    const/4 v6, 0x2

    .line 150
    move-object v0, p0

    .line 151
    move-object v1, p1

    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/view/MyThumbView;->f(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 153
    .line 154
    .line 155
    const/4 v1, 0x3

    .line 156
    if-le v8, v1, :cond_7

    .line 157
    .line 158
    iget-object v4, p0, Lcom/mycompany/app/view/MyThumbView;->K:Landroid/graphics/Bitmap;

    .line 159
    .line 160
    iget-object v5, p0, Lcom/mycompany/app/view/MyThumbView;->O:Landroid/graphics/Bitmap;

    .line 161
    .line 162
    const/4 v6, 0x3

    .line 163
    move-object v0, p0

    .line 164
    move-object v1, p1

    .line 165
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/view/MyThumbView;->f(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 166
    .line 167
    .line 168
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 169
    .line 170
    if-eqz v2, :cond_14

    .line 171
    .line 172
    iget-object v3, p0, Lcom/mycompany/app/view/MyThumbView;->n:Landroid/graphics/RectF;

    .line 173
    .line 174
    if-eqz v3, :cond_14

    .line 175
    .line 176
    iget v4, p0, Lcom/mycompany/app/view/MyThumbView;->p:F

    .line 177
    .line 178
    cmpl-float v5, v4, v11

    .line 179
    .line 180
    if-eqz v5, :cond_8

    .line 181
    .line 182
    invoke-virtual {p1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_8
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-eqz v2, :cond_11

    .line 195
    .line 196
    :try_start_0
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 197
    .line 198
    if-eqz v3, :cond_10

    .line 199
    .line 200
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_11

    .line 211
    .line 212
    iget-object v3, p0, Lcom/mycompany/app/view/MyThumbView;->A:Landroid/graphics/Paint;

    .line 213
    .line 214
    if-eqz v3, :cond_f

    .line 215
    .line 216
    if-eqz v9, :cond_a

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_a
    iget-object v3, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 226
    .line 227
    if-eqz v3, :cond_b

    .line 228
    .line 229
    iget-object v3, p0, Lcom/mycompany/app/view/MyThumbView;->n:Landroid/graphics/RectF;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    .line 231
    if-eqz v3, :cond_b

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_b
    move v7, v8

    .line 235
    :goto_3
    if-eqz v7, :cond_c

    .line 236
    .line 237
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    .line 239
    .line 240
    goto :goto_4

    .line 241
    :catch_0
    move v9, v7

    .line 242
    goto :goto_7

    .line 243
    :cond_c
    :goto_4
    move v9, v7

    .line 244
    :goto_5
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-le v3, v4, :cond_d

    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    int-to-float v5, v5

    .line 259
    int-to-float v4, v4

    .line 260
    div-float/2addr v5, v4

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    int-to-float v3, v3

    .line 266
    mul-float/2addr v3, v5

    .line 267
    int-to-float v4, v4

    .line 268
    cmpl-float v6, v3, v4

    .line 269
    .line 270
    if-lez v6, :cond_e

    .line 271
    .line 272
    sub-float/2addr v4, v3

    .line 273
    div-float/2addr v4, v10

    .line 274
    invoke-virtual {p1, v4, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    int-to-float v4, v4

    .line 283
    int-to-float v3, v3

    .line 284
    div-float v5, v4, v3

    .line 285
    .line 286
    :cond_e
    :goto_6
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 287
    .line 288
    .line 289
    iget-object v3, p0, Lcom/mycompany/app/view/MyThumbView;->A:Landroid/graphics/Paint;

    .line 290
    .line 291
    invoke-virtual {p1, v2, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 292
    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_f
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 296
    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_10
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 300
    .line 301
    .line 302
    :catch_1
    :cond_11
    :goto_7
    if-eqz v9, :cond_12

    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 305
    .line 306
    .line 307
    :cond_12
    iget-object v2, p0, Lcom/mycompany/app/view/MyThumbView;->m:Landroid/graphics/Paint;

    .line 308
    .line 309
    if-eqz v2, :cond_14

    .line 310
    .line 311
    iget-object v3, p0, Lcom/mycompany/app/view/MyThumbView;->n:Landroid/graphics/RectF;

    .line 312
    .line 313
    if-eqz v3, :cond_14

    .line 314
    .line 315
    iget v4, p0, Lcom/mycompany/app/view/MyThumbView;->p:F

    .line 316
    .line 317
    cmpl-float v5, v4, v11

    .line 318
    .line 319
    if-eqz v5, :cond_13

    .line 320
    .line 321
    invoke-virtual {p1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 322
    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_13
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 326
    .line 327
    .line 328
    :cond_14
    :goto_8
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    const/high16 p3, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float p4, p1, p3

    .line 8
    .line 9
    iput p4, p0, Lcom/mycompany/app/view/MyThumbView;->q:F

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    div-float p3, p2, p3

    .line 13
    .line 14
    iput p3, p0, Lcom/mycompany/app/view/MyThumbView;->r:F

    .line 15
    .line 16
    iget-object p3, p0, Lcom/mycompany/app/view/MyThumbView;->n:Landroid/graphics/RectF;

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    iget p4, p0, Lcom/mycompany/app/view/MyThumbView;->o:F

    .line 21
    .line 22
    sub-float/2addr p1, p4

    .line 23
    sub-float/2addr p2, p4

    .line 24
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    if-eq v0, v3, :cond_2

    .line 25
    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v0, v2, :cond_2

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyThumbView;->y:Z

    .line 34
    .line 35
    if-eqz v0, :cond_7

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    float-to-int v0, v0

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    float-to-int v2, v2

    .line 47
    invoke-static {v0, v2, v1, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_7

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->p()V

    .line 54
    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyThumbView;->y:Z

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->p()V

    .line 60
    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyThumbView;->y:Z

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    .line 72
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->w:F

    .line 73
    .line 74
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->c0:F

    .line 75
    .line 76
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyThumbView;->d0:Z

    .line 77
    .line 78
    iget-boolean v4, p0, Lcom/mycompany/app/view/MyThumbView;->x:Z

    .line 79
    .line 80
    if-eqz v4, :cond_5

    .line 81
    .line 82
    const v4, 0x3f4ccccd    # 0.8f

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const v4, 0x3f99999a    # 1.2f

    .line 87
    .line 88
    .line 89
    :goto_0
    new-array v2, v2, [F

    .line 90
    .line 91
    aput v0, v2, v1

    .line 92
    .line 93
    aput v4, v2, v3

    .line 94
    .line 95
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    const-wide/16 v1, 0xc8

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    new-instance v1, Lcom/mycompany/app/view/MyThumbView$4;

    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyThumbView$4;-><init>(Lcom/mycompany/app/view/MyThumbView;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 122
    .line 123
    new-instance v1, Lcom/mycompany/app/view/MyThumbView$5;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyThumbView$5;-><init>(Lcom/mycompany/app/view/MyThumbView;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 141
    .line 142
    .line 143
    :goto_1
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyThumbView;->y:Z

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    float-to-int v0, v0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    float-to-int v1, v1

    .line 155
    iget v2, p0, Lcom/mycompany/app/view/MyThumbView;->z:I

    .line 156
    .line 157
    neg-int v2, v2

    .line 158
    invoke-static {v0, v1, v2, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    return p1

    .line 166
    :cond_8
    :goto_3
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyThumbView;->y:Z

    .line 167
    .line 168
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    return p1
.end method

.method public final p()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyThumbView;->w:F

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->w:F

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyThumbView;->w:F

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/view/MyThumbView;->f0:F

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyThumbView;->g0:Z

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v3, v3, [F

    .line 28
    .line 29
    aput v0, v3, v2

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput v1, v3, v0

    .line 33
    .line 34
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    const-wide/16 v1, 0xc8

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/view/MyThumbView$8;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyThumbView$8;-><init>(Lcom/mycompany/app/view/MyThumbView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/view/MyThumbView$9;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyThumbView$9;-><init>(Lcom/mycompany/app/view/MyThumbView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->u:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->v:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public setBackColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyThumbView;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyThumbView;->d(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyThumbView;->d(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setFadeIn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyThumbView;->s:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->A:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyThumbView;->s:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 44
    .line 45
    const-wide/16 v0, 0x190

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 51
    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->g:Landroid/graphics/Paint;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyThumbView;->A:Landroid/graphics/Paint;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyThumbView;->s:Z

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    .line 38
    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 42
    .line 43
    const-wide/16 v0, 0x190

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 49
    .line 50
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyThumbView;->t:Landroid/view/animation/AlphaAnimation;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public setRoundClip(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyThumbView;->a0:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyThumbView;->a0:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance p1, Lcom/mycompany/app/view/MyThumbView$3;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyThumbView$3;-><init>(Lcom/mycompany/app/view/MyThumbView;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setTouchSmall(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyThumbView;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyThumbView;->c()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyThumbView;->d(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
