.class public Lcom/mycompany/app/view/MyAreaView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Z

.field public final c:I

.field public final f:I

.field public final g:I

.field public final h:F

.field public i:Z

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:F

.field public z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyAreaView;->i:Z

    .line 6
    .line 7
    const/high16 v1, 0x43200000    # 160.0f

    .line 8
    .line 9
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    float-to-int v1, v1

    .line 14
    iput v1, p0, Lcom/mycompany/app/view/MyAreaView;->c:I

    .line 15
    .line 16
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 17
    .line 18
    iput v1, p0, Lcom/mycompany/app/view/MyAreaView;->f:I

    .line 19
    .line 20
    const/high16 v1, 0x3f000000    # 0.5f

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lcom/mycompany/app/view/MyAreaView;->h:F

    .line 27
    .line 28
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->c:I

    .line 29
    .line 30
    mul-int/2addr v1, v1

    .line 31
    div-int/lit8 v1, v1, 0x2

    .line 32
    .line 33
    iput v1, p0, Lcom/mycompany/app/view/MyAreaView;->g:I

    .line 34
    .line 35
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyAreaView;->C:Z

    .line 40
    .line 41
    new-instance p1, Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 52
    .line 53
    const/4 v1, -0x1

    .line 54
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 58
    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 65
    .line 66
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->h:F

    .line 67
    .line 68
    const/high16 v2, 0x40000000    # 2.0f

    .line 69
    .line 70
    mul-float/2addr v1, v2

    .line 71
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->k:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->k:Landroid/graphics/Paint;

    .line 85
    .line 86
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->k:Landroid/graphics/Paint;

    .line 92
    .line 93
    const v0, -0x5e000001

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyAreaView;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyAreaView;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v2, p0, Lcom/mycompany/app/view/MyAreaView;->u:I

    .line 8
    .line 9
    if-eqz v2, :cond_4

    .line 10
    .line 11
    iget v2, p0, Lcom/mycompany/app/view/MyAreaView;->v:I

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-int v0, v0

    .line 21
    iget v2, p0, Lcom/mycompany/app/view/MyAreaView;->u:I

    .line 22
    .line 23
    if-gt v0, v2, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    float-to-int v0, v0

    .line 32
    iget v2, p0, Lcom/mycompany/app/view/MyAreaView;->v:I

    .line 33
    .line 34
    if-le v0, v2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v1

    .line 38
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 39
    return v0

    .line 40
    :cond_4
    :goto_1
    return v1
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyAreaView;->i:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyAreaView;->k:Landroid/graphics/Paint;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 10
    .line 11
    return-void
.end method

.method public final d(IIIIIIZ)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyAreaView;->C:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int v0, v1, v0

    .line 14
    .line 15
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->l:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-ne v1, p1, :cond_1

    .line 19
    .line 20
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->m:I

    .line 21
    .line 22
    if-ne v1, p2, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->n:I

    .line 25
    .line 26
    if-ne v1, p3, :cond_1

    .line 27
    .line 28
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->o:I

    .line 29
    .line 30
    if-ne v1, p4, :cond_1

    .line 31
    .line 32
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->p:I

    .line 33
    .line 34
    if-ne v1, p5, :cond_1

    .line 35
    .line 36
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->q:I

    .line 37
    .line 38
    if-ne v1, p6, :cond_1

    .line 39
    .line 40
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->r:I

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ne v1, v3, :cond_1

    .line 47
    .line 48
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->s:I

    .line 49
    .line 50
    if-ne v1, v0, :cond_1

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyAreaView;->t:Z

    .line 53
    .line 54
    if-ne v1, p7, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyAreaView;->invalidate()V

    .line 57
    .line 58
    .line 59
    return v2

    .line 60
    :cond_1
    iput p1, p0, Lcom/mycompany/app/view/MyAreaView;->l:I

    .line 61
    .line 62
    iput p2, p0, Lcom/mycompany/app/view/MyAreaView;->m:I

    .line 63
    .line 64
    iput p3, p0, Lcom/mycompany/app/view/MyAreaView;->n:I

    .line 65
    .line 66
    iput p4, p0, Lcom/mycompany/app/view/MyAreaView;->o:I

    .line 67
    .line 68
    iput p5, p0, Lcom/mycompany/app/view/MyAreaView;->p:I

    .line 69
    .line 70
    iput p6, p0, Lcom/mycompany/app/view/MyAreaView;->q:I

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/mycompany/app/view/MyAreaView;->r:I

    .line 77
    .line 78
    iput v0, p0, Lcom/mycompany/app/view/MyAreaView;->s:I

    .line 79
    .line 80
    iput-boolean p7, p0, Lcom/mycompany/app/view/MyAreaView;->t:Z

    .line 81
    .line 82
    iget p1, p0, Lcom/mycompany/app/view/MyAreaView;->l:I

    .line 83
    .line 84
    iput p1, p0, Lcom/mycompany/app/view/MyAreaView;->u:I

    .line 85
    .line 86
    iget p2, p0, Lcom/mycompany/app/view/MyAreaView;->m:I

    .line 87
    .line 88
    iput p2, p0, Lcom/mycompany/app/view/MyAreaView;->v:I

    .line 89
    .line 90
    iget p2, p0, Lcom/mycompany/app/view/MyAreaView;->n:I

    .line 91
    .line 92
    const/4 p3, 0x1

    .line 93
    const/4 p4, 0x0

    .line 94
    if-eqz p2, :cond_8

    .line 95
    .line 96
    iget p5, p0, Lcom/mycompany/app/view/MyAreaView;->o:I

    .line 97
    .line 98
    if-nez p5, :cond_2

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_2
    int-to-float p5, p5

    .line 103
    int-to-float p2, p2

    .line 104
    div-float/2addr p5, p2

    .line 105
    if-eqz p7, :cond_3

    .line 106
    .line 107
    int-to-float p1, p1

    .line 108
    mul-float/2addr p1, p5

    .line 109
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iget p2, p0, Lcom/mycompany/app/view/MyAreaView;->v:I

    .line 114
    .line 115
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iput p1, p0, Lcom/mycompany/app/view/MyAreaView;->v:I

    .line 120
    .line 121
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyAreaView;->p:I

    .line 122
    .line 123
    iget p2, p0, Lcom/mycompany/app/view/MyAreaView;->s:I

    .line 124
    .line 125
    sub-int/2addr p1, p2

    .line 126
    iget p2, p0, Lcom/mycompany/app/view/MyAreaView;->f:I

    .line 127
    .line 128
    sub-int/2addr p1, p2

    .line 129
    iget p2, p0, Lcom/mycompany/app/view/MyAreaView;->c:I

    .line 130
    .line 131
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    int-to-float p2, p1

    .line 136
    mul-float/2addr p2, p5

    .line 137
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    iget p6, p0, Lcom/mycompany/app/view/MyAreaView;->q:I

    .line 142
    .line 143
    iget p7, p0, Lcom/mycompany/app/view/MyAreaView;->r:I

    .line 144
    .line 145
    sub-int/2addr p6, p7

    .line 146
    iget p7, p0, Lcom/mycompany/app/view/MyAreaView;->f:I

    .line 147
    .line 148
    sub-int/2addr p6, p7

    .line 149
    iget p7, p0, Lcom/mycompany/app/view/MyAreaView;->c:I

    .line 150
    .line 151
    invoke-static {p7, p6}, Ljava/lang/Math;->min(II)I

    .line 152
    .line 153
    .line 154
    move-result p6

    .line 155
    if-le p2, p6, :cond_4

    .line 156
    .line 157
    int-to-float p1, p6

    .line 158
    div-float/2addr p1, p5

    .line 159
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    move p2, p6

    .line 164
    :cond_4
    iget-boolean p6, p0, Lcom/mycompany/app/view/MyAreaView;->B:Z

    .line 165
    .line 166
    if-eqz p6, :cond_5

    .line 167
    .line 168
    sget p6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 169
    .line 170
    mul-int/lit8 p7, p6, 0x2

    .line 171
    .line 172
    if-ge p1, p7, :cond_7

    .line 173
    .line 174
    mul-int/lit8 p1, p6, 0x2

    .line 175
    .line 176
    int-to-float p2, p1

    .line 177
    mul-float/2addr p2, p5

    .line 178
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    iget p6, p0, Lcom/mycompany/app/view/MyAreaView;->q:I

    .line 183
    .line 184
    iget p7, p0, Lcom/mycompany/app/view/MyAreaView;->r:I

    .line 185
    .line 186
    sub-int/2addr p6, p7

    .line 187
    iget p7, p0, Lcom/mycompany/app/view/MyAreaView;->f:I

    .line 188
    .line 189
    sub-int/2addr p6, p7

    .line 190
    if-le p2, p6, :cond_7

    .line 191
    .line 192
    int-to-float p1, p6

    .line 193
    div-float/2addr p1, p5

    .line 194
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    move p2, p6

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    :goto_0
    mul-int p6, p1, p2

    .line 201
    .line 202
    iget p7, p0, Lcom/mycompany/app/view/MyAreaView;->g:I

    .line 203
    .line 204
    if-le p6, p7, :cond_7

    .line 205
    .line 206
    iget p6, p0, Lcom/mycompany/app/view/MyAreaView;->c:I

    .line 207
    .line 208
    div-int/lit8 p7, p6, 0x2

    .line 209
    .line 210
    if-lt p1, p7, :cond_7

    .line 211
    .line 212
    div-int/lit8 p6, p6, 0x2

    .line 213
    .line 214
    if-ge p2, p6, :cond_6

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_6
    add-int/lit8 p1, p1, -0xa

    .line 218
    .line 219
    int-to-float p2, p1

    .line 220
    mul-float/2addr p2, p5

    .line 221
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    goto :goto_0

    .line 226
    :cond_7
    :goto_1
    iput p1, p0, Lcom/mycompany/app/view/MyAreaView;->w:I

    .line 227
    .line 228
    iput p2, p0, Lcom/mycompany/app/view/MyAreaView;->x:I

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 231
    .line 232
    .line 233
    move-result-object p5

    .line 234
    iput p1, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    .line 236
    iput p2, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    .line 238
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 239
    .line 240
    .line 241
    iput p4, p0, Lcom/mycompany/app/view/MyAreaView;->y:F

    .line 242
    .line 243
    invoke-virtual {p0, p4}, Landroid/view/View;->setAlpha(F)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyAreaView;->invalidate()V

    .line 247
    .line 248
    .line 249
    return p3

    .line 250
    :cond_8
    :goto_2
    iput v2, p0, Lcom/mycompany/app/view/MyAreaView;->w:I

    .line 251
    .line 252
    iput v2, p0, Lcom/mycompany/app/view/MyAreaView;->x:I

    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 259
    .line 260
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 261
    .line 262
    iput p4, p0, Lcom/mycompany/app/view/MyAreaView;->y:F

    .line 263
    .line 264
    invoke-virtual {p0, p4}, Landroid/view/View;->setAlpha(F)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyAreaView;->invalidate()V

    .line 268
    .line 269
    .line 270
    return p3
.end method

.method public final e(II)V
    .locals 8

    .line 1
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->l:I

    .line 2
    .line 3
    iget v2, p0, Lcom/mycompany/app/view/MyAreaView;->m:I

    .line 4
    .line 5
    iget v3, p0, Lcom/mycompany/app/view/MyAreaView;->n:I

    .line 6
    .line 7
    iget v4, p0, Lcom/mycompany/app/view/MyAreaView;->o:I

    .line 8
    .line 9
    iget-boolean v7, p0, Lcom/mycompany/app/view/MyAreaView;->t:Z

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move v5, p1

    .line 13
    move v6, p2

    .line 14
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/view/MyAreaView;->d(IIIIIIZ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f(Landroid/graphics/RectF;II)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/view/MyAreaView;->l:I

    .line 4
    .line 5
    iget v2, p0, Lcom/mycompany/app/view/MyAreaView;->m:I

    .line 6
    .line 7
    iget v3, p0, Lcom/mycompany/app/view/MyAreaView;->n:I

    .line 8
    .line 9
    iget v4, p0, Lcom/mycompany/app/view/MyAreaView;->o:I

    .line 10
    .line 11
    iget-boolean v7, p0, Lcom/mycompany/app/view/MyAreaView;->t:Z

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move v5, p2

    .line 15
    move v6, p3

    .line 16
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/view/MyAreaView;->d(IIIIIIZ)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyAreaView;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyAreaView;->i:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/view/MyAreaView;->k:Landroid/graphics/Paint;

    .line 15
    .line 16
    if-eqz v1, :cond_6

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->a()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iput v2, v0, Lcom/mycompany/app/view/MyAreaView;->y:F

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget v4, v0, Lcom/mycompany/app/view/MyAreaView;->w:I

    .line 42
    .line 43
    if-ne v1, v4, :cond_5

    .line 44
    .line 45
    iget v4, v0, Lcom/mycompany/app/view/MyAreaView;->x:I

    .line 46
    .line 47
    if-eq v3, v4, :cond_3

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_3
    int-to-float v1, v1

    .line 52
    iget-object v2, v0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    div-float v2, v1, v2

    .line 59
    .line 60
    int-to-float v3, v3

    .line 61
    iget-object v4, v0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    div-float v4, v3, v4

    .line 68
    .line 69
    iget-object v5, v0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 70
    .line 71
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 72
    .line 73
    neg-float v6, v6

    .line 74
    mul-float/2addr v6, v2

    .line 75
    iget v7, v0, Lcom/mycompany/app/view/MyAreaView;->h:F

    .line 76
    .line 77
    add-float v9, v6, v7

    .line 78
    .line 79
    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 80
    .line 81
    neg-float v5, v5

    .line 82
    mul-float/2addr v5, v4

    .line 83
    add-float v10, v5, v7

    .line 84
    .line 85
    iget v5, v0, Lcom/mycompany/app/view/MyAreaView;->u:I

    .line 86
    .line 87
    int-to-float v5, v5

    .line 88
    mul-float/2addr v5, v2

    .line 89
    add-float/2addr v5, v9

    .line 90
    sub-float v11, v5, v7

    .line 91
    .line 92
    iget v2, v0, Lcom/mycompany/app/view/MyAreaView;->v:I

    .line 93
    .line 94
    int-to-float v2, v2

    .line 95
    mul-float/2addr v2, v4

    .line 96
    add-float/2addr v2, v10

    .line 97
    sub-float v12, v2, v7

    .line 98
    .line 99
    const/high16 v2, -0x5f000000

    .line 100
    .line 101
    move-object/from16 v13, p1

    .line 102
    .line 103
    invoke-virtual {v13, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v13, v0, Lcom/mycompany/app/view/MyAreaView;->k:Landroid/graphics/Paint;

    .line 107
    .line 108
    move-object/from16 v8, p1

    .line 109
    .line 110
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    .line 112
    .line 113
    iget-object v13, v0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 114
    .line 115
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    .line 117
    .line 118
    iget v14, v0, Lcom/mycompany/app/view/MyAreaView;->h:F

    .line 119
    .line 120
    sub-float v16, v1, v14

    .line 121
    .line 122
    iget-object v2, v0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 123
    .line 124
    move v15, v14

    .line 125
    move/from16 v17, v14

    .line 126
    .line 127
    move-object/from16 v13, p1

    .line 128
    .line 129
    move-object/from16 v18, v2

    .line 130
    .line 131
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    .line 133
    .line 134
    iget v14, v0, Lcom/mycompany/app/view/MyAreaView;->h:F

    .line 135
    .line 136
    sub-float v15, v3, v14

    .line 137
    .line 138
    sub-float v16, v1, v14

    .line 139
    .line 140
    iget-object v2, v0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 141
    .line 142
    move/from16 v17, v15

    .line 143
    .line 144
    move-object/from16 v18, v2

    .line 145
    .line 146
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 147
    .line 148
    .line 149
    iget v14, v0, Lcom/mycompany/app/view/MyAreaView;->h:F

    .line 150
    .line 151
    sub-float v17, v3, v14

    .line 152
    .line 153
    iget-object v2, v0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 154
    .line 155
    move v15, v14

    .line 156
    move/from16 v16, v14

    .line 157
    .line 158
    move-object/from16 v18, v2

    .line 159
    .line 160
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    iget v15, v0, Lcom/mycompany/app/view/MyAreaView;->h:F

    .line 164
    .line 165
    sub-float v14, v1, v15

    .line 166
    .line 167
    sub-float v17, v3, v15

    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/view/MyAreaView;->j:Landroid/graphics/Paint;

    .line 170
    .line 171
    move/from16 v16, v14

    .line 172
    .line 173
    move-object/from16 v18, v1

    .line 174
    .line 175
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    iget v1, v0, Lcom/mycompany/app/view/MyAreaView;->y:F

    .line 179
    .line 180
    const/high16 v2, 0x3f800000    # 1.0f

    .line 181
    .line 182
    cmpg-float v2, v1, v2

    .line 183
    .line 184
    if-gez v2, :cond_4

    .line 185
    .line 186
    const v2, 0x3dcccccd    # 0.1f

    .line 187
    .line 188
    .line 189
    add-float/2addr v1, v2

    .line 190
    iput v1, v0, Lcom/mycompany/app/view/MyAreaView;->y:F

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyAreaView;->invalidate()V

    .line 196
    .line 197
    .line 198
    :cond_4
    :goto_0
    return-void

    .line 199
    :cond_5
    :goto_1
    iput v2, v0, Lcom/mycompany/app/view/MyAreaView;->y:F

    .line 200
    .line 201
    return-void

    .line 202
    :cond_6
    :goto_2
    iput v2, v0, Lcom/mycompany/app/view/MyAreaView;->y:F

    .line 203
    .line 204
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget p1, v0, Lcom/mycompany/app/view/MyAreaView;->r:I

    .line 8
    .line 9
    if-eq p3, p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyAreaView;->b()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget v1, v0, Lcom/mycompany/app/view/MyAreaView;->l:I

    .line 18
    .line 19
    iget v2, v0, Lcom/mycompany/app/view/MyAreaView;->m:I

    .line 20
    .line 21
    iget v3, v0, Lcom/mycompany/app/view/MyAreaView;->n:I

    .line 22
    .line 23
    iget v4, v0, Lcom/mycompany/app/view/MyAreaView;->o:I

    .line 24
    .line 25
    iget v5, v0, Lcom/mycompany/app/view/MyAreaView;->p:I

    .line 26
    .line 27
    iget v6, v0, Lcom/mycompany/app/view/MyAreaView;->q:I

    .line 28
    .line 29
    iget-boolean v7, v0, Lcom/mycompany/app/view/MyAreaView;->t:Z

    .line 30
    .line 31
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/view/MyAreaView;->d(IIIIIIZ)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public setFullMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyAreaView;->B:Z

    .line 2
    .line 3
    return-void
.end method

.method public setJustRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-void
.end method

.method public setRect2(Landroid/graphics/RectF;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyAreaView;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/view/MyAreaView;->z:Landroid/graphics/RectF;

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/view/MyAreaView;->l:I

    .line 10
    .line 11
    iget v3, p0, Lcom/mycompany/app/view/MyAreaView;->m:I

    .line 12
    .line 13
    iget v4, p0, Lcom/mycompany/app/view/MyAreaView;->n:I

    .line 14
    .line 15
    iget v5, p0, Lcom/mycompany/app/view/MyAreaView;->o:I

    .line 16
    .line 17
    iget v6, p0, Lcom/mycompany/app/view/MyAreaView;->p:I

    .line 18
    .line 19
    iget v7, p0, Lcom/mycompany/app/view/MyAreaView;->q:I

    .line 20
    .line 21
    iget-boolean v8, p0, Lcom/mycompany/app/view/MyAreaView;->t:Z

    .line 22
    .line 23
    move-object v1, p0

    .line 24
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/view/MyAreaView;->d(IIIIIIZ)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget p1, v1, Lcom/mycompany/app/view/MyAreaView;->w:I

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget p1, v1, Lcom/mycompany/app/view/MyAreaView;->x:I

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget v2, v1, Lcom/mycompany/app/view/MyAreaView;->w:I

    .line 49
    .line 50
    if-ne p1, v2, :cond_3

    .line 51
    .line 52
    iget p1, v1, Lcom/mycompany/app/view/MyAreaView;->x:I

    .line 53
    .line 54
    if-ne v0, p1, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget v0, v1, Lcom/mycompany/app/view/MyAreaView;->w:I

    .line 62
    .line 63
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    .line 65
    iget v0, v1, Lcom/mycompany/app/view/MyAreaView;->x:I

    .line 66
    .line 67
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 70
    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput p1, v1, Lcom/mycompany/app/view/MyAreaView;->y:F

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyAreaView;->invalidate()V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    return-void
.end method

.method public setSkipDraw(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyAreaView;->A:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyAreaView;->A:Z

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/mycompany/app/view/MyAreaView;->y:F

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyAreaView;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
