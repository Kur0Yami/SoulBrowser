.class public Lcom/mycompany/app/view/MyImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyImageView$DrawFailListener;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:F

.field public D:Landroid/graphics/Paint;

.field public E:Ljava/lang/String;

.field public F:Landroid/text/StaticLayout;

.field public G:Lcom/mycompany/app/zoom/ZoomImageAttacher;

.field public H:Landroid/graphics/Rect;

.field public I:Landroid/graphics/RectF;

.field public J:Landroid/graphics/Rect;

.field public K:Landroid/graphics/RectF;

.field public L:Z

.field public c:Landroid/content/Context;

.field public f:Lcom/mycompany/app/view/MyImageView$DrawFailListener;

.field public g:Lcom/mycompany/app/image/ImageSizeListener;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Landroid/view/ViewGroup;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/mycompany/app/view/MyProgressDrawable;

.field public w:Z

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyImageView;->b(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static getErrorIcon()I
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 2
    .line 3
    const v1, 0x3e4ccccd    # 0.2f

    .line 4
    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_black_web_48:I

    .line 14
    .line 15
    return v0
.end method

.method private getParentHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->p:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method private getParentWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->p:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method private setFadeInAlpha(Z)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->C:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float p1, p1, v1

    .line 9
    .line 10
    if-lez p1, :cond_1

    .line 11
    .line 12
    iput v1, p0, Lcom/mycompany/app/view/MyImageView;->C:F

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->C:F

    .line 19
    .line 20
    cmpg-float v0, p1, v0

    .line 21
    .line 22
    if-gez v0, :cond_1

    .line 23
    .line 24
    const v0, 0x3dcccccd    # 0.1f

    .line 25
    .line 26
    .line 27
    add-float/2addr p1, v0

    .line 28
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->C:F

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->q:I

    .line 2
    .line 3
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->r:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentHeight()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->q:I

    .line 14
    .line 15
    if-eqz v0, :cond_e

    .line 16
    .line 17
    iget v1, p0, Lcom/mycompany/app/view/MyImageView;->r:I

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    iget v2, p0, Lcom/mycompany/app/view/MyImageView;->h:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x2

    .line 27
    if-ne v2, v3, :cond_6

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyImageView;->i:Z

    .line 30
    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyImageView;->j:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-le v0, v1, :cond_2

    .line 38
    .line 39
    int-to-float v0, v0

    .line 40
    int-to-float v1, v1

    .line 41
    div-float/2addr v0, v1

    .line 42
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 43
    .line 44
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 45
    .line 46
    int-to-float p2, p2

    .line 47
    mul-float/2addr p2, v0

    .line 48
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 53
    .line 54
    mul-int/2addr p1, v4

    .line 55
    if-le p2, p1, :cond_1

    .line 56
    .line 57
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 58
    .line 59
    int-to-float p1, p1

    .line 60
    div-float/2addr p1, v0

    .line 61
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 66
    .line 67
    :cond_1
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 68
    .line 69
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 70
    .line 71
    add-int/2addr p2, p2

    .line 72
    add-int/2addr p2, p1

    .line 73
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    int-to-float v0, v0

    .line 77
    int-to-float v1, v1

    .line 78
    div-float/2addr v0, v1

    .line 79
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 80
    .line 81
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 82
    .line 83
    int-to-float p2, p2

    .line 84
    mul-float/2addr p2, v0

    .line 85
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 90
    .line 91
    if-le p2, p1, :cond_3

    .line 92
    .line 93
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 94
    .line 95
    int-to-float p1, p1

    .line 96
    div-float/2addr p1, v0

    .line 97
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 102
    .line 103
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 104
    .line 105
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 106
    .line 107
    add-int/2addr p1, p2

    .line 108
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyImageView;->j:Z

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    if-le v0, v1, :cond_5

    .line 116
    .line 117
    int-to-float p1, v0

    .line 118
    int-to-float v0, v1

    .line 119
    div-float/2addr p1, v0

    .line 120
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 121
    .line 122
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 123
    .line 124
    int-to-float p2, p2

    .line 125
    mul-float/2addr p2, p1

    .line 126
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 131
    .line 132
    add-int/2addr p1, p2

    .line 133
    add-int/2addr p1, p2

    .line 134
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 135
    .line 136
    return-void

    .line 137
    :cond_5
    int-to-float p1, v0

    .line 138
    int-to-float v0, v1

    .line 139
    div-float/2addr p1, v0

    .line 140
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 141
    .line 142
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 143
    .line 144
    int-to-float p2, p2

    .line 145
    mul-float/2addr p2, p1

    .line 146
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 151
    .line 152
    add-int/2addr p1, p2

    .line 153
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    if-ne v2, v4, :cond_c

    .line 157
    .line 158
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyImageView;->i:Z

    .line 159
    .line 160
    if-eqz v2, :cond_a

    .line 161
    .line 162
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyImageView;->j:Z

    .line 163
    .line 164
    if-eqz v2, :cond_8

    .line 165
    .line 166
    if-le v0, v1, :cond_8

    .line 167
    .line 168
    mul-int/lit8 v1, v1, 0x4

    .line 169
    .line 170
    int-to-float v1, v1

    .line 171
    int-to-float v0, v0

    .line 172
    div-float/2addr v1, v0

    .line 173
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 174
    .line 175
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 176
    .line 177
    int-to-float p1, p1

    .line 178
    mul-float/2addr p1, v1

    .line 179
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 184
    .line 185
    mul-int/2addr p2, v4

    .line 186
    if-le p1, p2, :cond_7

    .line 187
    .line 188
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 189
    .line 190
    int-to-float p1, p2

    .line 191
    div-float/2addr p1, v1

    .line 192
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 197
    .line 198
    :cond_7
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 199
    .line 200
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 201
    .line 202
    add-int/2addr p2, p2

    .line 203
    add-int/2addr p2, p1

    .line 204
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 205
    .line 206
    return-void

    .line 207
    :cond_8
    int-to-float v1, v1

    .line 208
    int-to-float v0, v0

    .line 209
    div-float/2addr v1, v0

    .line 210
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 211
    .line 212
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 213
    .line 214
    int-to-float p1, p1

    .line 215
    mul-float/2addr p1, v1

    .line 216
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 221
    .line 222
    if-le p1, p2, :cond_9

    .line 223
    .line 224
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 225
    .line 226
    int-to-float p1, p2

    .line 227
    div-float/2addr p1, v1

    .line 228
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 233
    .line 234
    :cond_9
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 235
    .line 236
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 237
    .line 238
    add-int/2addr p1, p2

    .line 239
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 240
    .line 241
    return-void

    .line 242
    :cond_a
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyImageView;->j:Z

    .line 243
    .line 244
    if-eqz p2, :cond_b

    .line 245
    .line 246
    if-le v0, v1, :cond_b

    .line 247
    .line 248
    mul-int/lit8 v1, v1, 0x4

    .line 249
    .line 250
    int-to-float p2, v1

    .line 251
    int-to-float v0, v0

    .line 252
    div-float/2addr p2, v0

    .line 253
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 254
    .line 255
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 256
    .line 257
    int-to-float p1, p1

    .line 258
    mul-float/2addr p1, p2

    .line 259
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 264
    .line 265
    add-int/2addr p1, p2

    .line 266
    add-int/2addr p1, p2

    .line 267
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 268
    .line 269
    return-void

    .line 270
    :cond_b
    int-to-float p2, v1

    .line 271
    int-to-float v0, v0

    .line 272
    div-float/2addr p2, v0

    .line 273
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 274
    .line 275
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 276
    .line 277
    int-to-float p1, p1

    .line 278
    mul-float/2addr p1, p2

    .line 279
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 284
    .line 285
    add-int/2addr p1, p2

    .line 286
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 287
    .line 288
    return-void

    .line 289
    :cond_c
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyImageView;->i:Z

    .line 290
    .line 291
    if-nez v2, :cond_d

    .line 292
    .line 293
    int-to-float v1, v1

    .line 294
    int-to-float v0, v0

    .line 295
    div-float/2addr v1, v0

    .line 296
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 297
    .line 298
    int-to-float p1, p1

    .line 299
    mul-float/2addr p1, v1

    .line 300
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 309
    .line 310
    :cond_d
    return-void

    .line 311
    :cond_e
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyImageView;->e(II)V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->h:I

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyImageView;->i:Z

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->m:I

    .line 10
    .line 11
    new-instance p2, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 12
    .line 13
    sget v0, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    sget v1, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 17
    .line 18
    const v2, 0x3e4ccccd    # 0.2f

    .line 19
    .line 20
    .line 21
    cmpl-float v1, v1, v2

    .line 22
    .line 23
    const/high16 v3, -0x5f000000

    .line 24
    .line 25
    const v4, -0x5e000001

    .line 26
    .line 27
    .line 28
    if-lez v1, :cond_0

    .line 29
    .line 30
    move v1, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v3

    .line 33
    :goto_0
    invoke-direct {p2, p0, v0, v1}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 37
    .line 38
    iput-boolean p1, p2, Lcom/mycompany/app/view/MyProgressDrawable;->m:Z

    .line 39
    .line 40
    sget v0, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 41
    .line 42
    cmpl-float v0, v0, v2

    .line 43
    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    move v3, v4

    .line 47
    :cond_1
    invoke-virtual {p2, v3}, Lcom/mycompany/app/view/MyProgressDrawable;->e(I)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/mycompany/app/view/MyImageView;->D:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/mycompany/app/view/MyImageView;->D:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 63
    .line 64
    .line 65
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->h:I

    .line 66
    .line 67
    if-eq p2, p1, :cond_3

    .line 68
    .line 69
    const/4 p1, 0x2

    .line 70
    if-ne p2, p1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    return-void

    .line 74
    :cond_3
    :goto_1
    new-instance p1, Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 80
    .line 81
    new-instance p1, Landroid/graphics/RectF;

    .line 82
    .line 83
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 87
    .line 88
    new-instance p1, Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->J:Landroid/graphics/Rect;

    .line 94
    .line 95
    new-instance p1, Landroid/graphics/RectF;

    .line 96
    .line 97
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->K:Landroid/graphics/RectF;

    .line 101
    .line 102
    return-void
.end method

.method public final c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v0, v1, :cond_0

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

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->g:Lcom/mycompany/app/image/ImageSizeListener;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->p:Landroid/view/ViewGroup;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->x:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->D:Landroid/graphics/Paint;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->E:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->F:Landroid/text/StaticLayout;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->G:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->J:Landroid/graphics/Rect;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->K:Landroid/graphics/RectF;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->f:Lcom/mycompany/app/view/MyImageView$DrawFailListener;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    .line 57
    .line 58
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/view/MyImageView;->f:Lcom/mycompany/app/view/MyImageView$DrawFailListener;

    .line 59
    .line 60
    return-void
.end method

.method public final e(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 7
    .line 8
    add-int/2addr p1, v0

    .line 9
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 10
    .line 11
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 18
    .line 19
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 26
    .line 27
    iput p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 28
    .line 29
    return-void
.end method

.method public final f(ILjava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 2
    .line 3
    const v1, 0x3e4ccccd    # 0.2f

    .line 4
    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    move v0, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    iget-boolean v4, p0, Lcom/mycompany/app/view/MyImageView;->z:Z

    .line 16
    .line 17
    if-eq v0, v4, :cond_1

    .line 18
    .line 19
    move v4, v3

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v4, v2

    .line 22
    :goto_1
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyImageView;->z:Z

    .line 23
    .line 24
    if-nez v4, :cond_2

    .line 25
    .line 26
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->m:I

    .line 27
    .line 28
    if-ne v0, p1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->E:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->m:I

    .line 40
    .line 41
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyImageView;->y:Z

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    iput-object v0, p0, Lcom/mycompany/app/view/MyImageView;->x:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/mycompany/app/view/MyImageView;->E:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/mycompany/app/view/MyImageView;->F:Landroid/text/StaticLayout;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyImageView;->n:Z

    .line 54
    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    iput v2, p0, Lcom/mycompany/app/view/MyImageView;->q:I

    .line 58
    .line 59
    iput v2, p0, Lcom/mycompany/app/view/MyImageView;->r:I

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentWidth()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentHeight()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {p0, p1, v2}, Lcom/mycompany/app/view/MyImageView;->e(II)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->m:I

    .line 73
    .line 74
    if-ne p1, v3, :cond_7

    .line 75
    .line 76
    iput-object v0, p0, Lcom/mycompany/app/view/MyImageView;->E:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/mycompany/app/view/MyImageView;->F:Landroid/text/StaticLayout;

    .line 79
    .line 80
    if-nez v4, :cond_5

    .line 81
    .line 82
    iget-object p1, p0, Lcom/mycompany/app/view/MyImageView;->x:Landroid/graphics/drawable/Drawable;

    .line 83
    .line 84
    if-nez p1, :cond_6

    .line 85
    .line 86
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyImageView;->c:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {}, Lcom/mycompany/app/view/MyImageView;->getErrorIcon()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->x:Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyImageView;->y:Z

    .line 99
    .line 100
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_8

    .line 109
    .line 110
    iput-object v0, p0, Lcom/mycompany/app/view/MyImageView;->F:Landroid/text/StaticLayout;

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_8
    if-nez v4, :cond_9

    .line 114
    .line 115
    iget-object p1, p0, Lcom/mycompany/app/view/MyImageView;->E:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_b

    .line 122
    .line 123
    :cond_9
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 124
    .line 125
    sget v2, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 126
    .line 127
    sub-int/2addr p1, v2

    .line 128
    if-lez p1, :cond_b

    .line 129
    .line 130
    new-instance v2, Landroid/text/TextPaint;

    .line 131
    .line 132
    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    .line 137
    .line 138
    sget v4, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 139
    .line 140
    div-int/lit8 v4, v4, 0x2

    .line 141
    .line 142
    int-to-float v4, v4

    .line 143
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    .line 145
    .line 146
    sget v4, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 147
    .line 148
    cmpl-float v1, v4, v1

    .line 149
    .line 150
    if-lez v1, :cond_a

    .line 151
    .line 152
    const/4 v1, -0x1

    .line 153
    goto :goto_2

    .line 154
    :cond_a
    const/high16 v1, -0x1000000

    .line 155
    .line 156
    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    .line 158
    .line 159
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 160
    .line 161
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 166
    .line 167
    .line 168
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 169
    .line 170
    invoke-static {p2, v2, p1}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->F:Landroid/text/StaticLayout;

    .line 175
    .line 176
    :cond_b
    :goto_3
    iput-object p2, p0, Lcom/mycompany/app/view/MyImageView;->E:Ljava/lang/String;

    .line 177
    .line 178
    iput-object v0, p0, Lcom/mycompany/app/view/MyImageView;->x:Landroid/graphics/drawable/Drawable;

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyImageView;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    const/4 v1, 0x0

    .line 14
    mul-float/2addr v0, v1

    .line 15
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int/2addr v2, v3

    .line 24
    int-to-float v2, v2

    .line 25
    cmpl-float v3, v0, v1

    .line 26
    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    cmpg-float v1, v0, v2

    .line 31
    .line 32
    if-gez v1, :cond_2

    .line 33
    .line 34
    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v1, v0

    .line 37
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public getDraw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public getScrollRatio()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyImageView;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->G:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return v1

    .line 14
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 21
    .line 22
    :goto_1
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sub-int/2addr v2, v3

    .line 31
    int-to-float v2, v2

    .line 32
    cmpl-float v3, v0, v1

    .line 33
    .line 34
    if-lez v3, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    cmpg-float v1, v0, v2

    .line 38
    .line 39
    if-gez v1, :cond_4

    .line 40
    .line 41
    move v1, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_4
    move v1, v0

    .line 44
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    div-float/2addr v1, v0

    .line 50
    return v1
.end method

.method public getViewHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyImageView;->i:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentHeight()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v1, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0

    .line 30
    :cond_2
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public getViewWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyImageView;->i:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v1, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0

    .line 30
    :cond_2
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentWidth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public getZoomAttacher()Lcom/mycompany/app/zoom/ZoomImageAttacher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->G:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyImageView;->L:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->m:I

    .line 11
    .line 12
    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyImageView;->A:Z

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyImageView;->B:Z

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/mycompany/app/view/MyImageView;->setFadeInAlpha(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iput-boolean v4, v0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->F:Landroid/text/StaticLayout;

    .line 33
    .line 34
    if-eqz v0, :cond_14

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->F:Landroid/text/StaticLayout;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sub-int/2addr v0, v2

    .line 47
    int-to-float v0, v0

    .line 48
    div-float/2addr v0, v1

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget-object v3, p0, Lcom/mycompany/app/view/MyImageView;->F:Landroid/text/StaticLayout;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sub-int/2addr v2, v3

    .line 60
    int-to-float v2, v2

    .line 61
    div-float/2addr v2, v1

    .line 62
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->F:Landroid/text/StaticLayout;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    if-ne v0, v3, :cond_6

    .line 72
    .line 73
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyImageView;->A:Z

    .line 74
    .line 75
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyImageView;->B:Z

    .line 76
    .line 77
    invoke-direct {p0, v0}, Lcom/mycompany/app/view/MyImageView;->setFadeInAlpha(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iput-boolean v4, v0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 85
    .line 86
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyImageView;->y:Z

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iput-boolean v4, p0, Lcom/mycompany/app/view/MyImageView;->y:Z

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->x:Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    sub-int/2addr v4, v1

    .line 110
    div-int/2addr v4, v2

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    sub-int/2addr v5, v3

    .line 116
    div-int/2addr v5, v2

    .line 117
    add-int/2addr v1, v4

    .line 118
    add-int/2addr v3, v5

    .line 119
    invoke-virtual {v0, v4, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->x:Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    if-eqz v0, :cond_14

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-nez v0, :cond_7

    .line 135
    .line 136
    move v5, v3

    .line 137
    goto :goto_1

    .line 138
    :cond_7
    move v5, v4

    .line 139
    :goto_1
    if-nez v5, :cond_8

    .line 140
    .line 141
    instance-of v6, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 142
    .line 143
    if-eqz v6, :cond_8

    .line 144
    .line 145
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    xor-int/2addr v5, v3

    .line 156
    goto :goto_2

    .line 157
    :cond_8
    const/4 v0, 0x0

    .line 158
    :goto_2
    if-eqz v5, :cond_c

    .line 159
    .line 160
    iput-boolean v4, p0, Lcom/mycompany/app/view/MyImageView;->A:Z

    .line 161
    .line 162
    invoke-direct {p0, v4}, Lcom/mycompany/app/view/MyImageView;->setFadeInAlpha(Z)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->f:Lcom/mycompany/app/view/MyImageView$DrawFailListener;

    .line 166
    .line 167
    if-eqz v0, :cond_9

    .line 168
    .line 169
    invoke-interface {v0}, Lcom/mycompany/app/view/MyImageView$DrawFailListener;->a()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_9
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyImageView;->w:Z

    .line 174
    .line 175
    if-eqz v0, :cond_b

    .line 176
    .line 177
    iput-boolean v4, p0, Lcom/mycompany/app/view/MyImageView;->w:Z

    .line 178
    .line 179
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 180
    .line 181
    sget v1, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 182
    .line 183
    if-nez v0, :cond_a

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    sub-int/2addr v3, v1

    .line 191
    div-int/2addr v3, v2

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    sub-int/2addr v4, v1

    .line 197
    div-int/2addr v4, v2

    .line 198
    add-int v2, v3, v1

    .line 199
    .line 200
    add-int/2addr v1, v4

    .line 201
    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 202
    .line 203
    .line 204
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 205
    .line 206
    if-eqz v0, :cond_14

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_c
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyImageView;->A:Z

    .line 218
    .line 219
    iget-boolean v5, p0, Lcom/mycompany/app/view/MyImageView;->B:Z

    .line 220
    .line 221
    invoke-direct {p0, v5}, Lcom/mycompany/app/view/MyImageView;->setFadeInAlpha(Z)V

    .line 222
    .line 223
    .line 224
    iget-object v5, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 225
    .line 226
    if-eqz v5, :cond_d

    .line 227
    .line 228
    iput-boolean v4, v5, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 229
    .line 230
    :cond_d
    iget v5, p0, Lcom/mycompany/app/view/MyImageView;->h:I

    .line 231
    .line 232
    if-ne v5, v3, :cond_10

    .line 233
    .line 234
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 235
    .line 236
    if-eqz v2, :cond_14

    .line 237
    .line 238
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 239
    .line 240
    if-nez v2, :cond_e

    .line 241
    .line 242
    goto/16 :goto_5

    .line 243
    .line 244
    :cond_e
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyImageView;->j:Z

    .line 245
    .line 246
    if-eqz v2, :cond_f

    .line 247
    .line 248
    iget v2, p0, Lcom/mycompany/app/view/MyImageView;->q:I

    .line 249
    .line 250
    iget v3, p0, Lcom/mycompany/app/view/MyImageView;->r:I

    .line 251
    .line 252
    if-le v2, v3, :cond_f

    .line 253
    .line 254
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_f

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    int-to-float v2, v2

    .line 265
    div-float/2addr v2, v1

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    int-to-float v3, v3

    .line 271
    iget v5, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 272
    .line 273
    int-to-float v5, v5

    .line 274
    div-float/2addr v5, v3

    .line 275
    iget v6, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 276
    .line 277
    int-to-float v6, v6

    .line 278
    div-float/2addr v6, v5

    .line 279
    add-float v7, v2, v6

    .line 280
    .line 281
    mul-float/2addr v7, v1

    .line 282
    div-float/2addr v6, v1

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    iget v9, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 288
    .line 289
    sub-int/2addr v8, v9

    .line 290
    int-to-float v8, v8

    .line 291
    mul-float v9, v5, v1

    .line 292
    .line 293
    div-float/2addr v8, v9

    .line 294
    iget-object v9, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 295
    .line 296
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 297
    .line 298
    .line 299
    move-result v10

    .line 300
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    invoke-virtual {v9, v4, v4, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 305
    .line 306
    .line 307
    iget-object v9, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 308
    .line 309
    add-float v10, v6, v2

    .line 310
    .line 311
    add-float v11, v8, v3

    .line 312
    .line 313
    invoke-virtual {v9, v6, v8, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 314
    .line 315
    .line 316
    iget-object v9, p0, Lcom/mycompany/app/view/MyImageView;->J:Landroid/graphics/Rect;

    .line 317
    .line 318
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    mul-float/2addr v1, v2

    .line 323
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    invoke-virtual {v9, v10, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 332
    .line 333
    .line 334
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->K:Landroid/graphics/RectF;

    .line 335
    .line 336
    sub-float v3, v7, v6

    .line 337
    .line 338
    sub-float v2, v3, v2

    .line 339
    .line 340
    invoke-virtual {v1, v2, v8, v3, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    int-to-float v1, v1

    .line 348
    div-float/2addr v1, v7

    .line 349
    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 350
    .line 351
    .line 352
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 353
    .line 354
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 355
    .line 356
    iget-object v3, p0, Lcom/mycompany/app/view/MyImageView;->D:Landroid/graphics/Paint;

    .line 357
    .line 358
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->J:Landroid/graphics/Rect;

    .line 362
    .line 363
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->K:Landroid/graphics/RectF;

    .line 364
    .line 365
    iget-object v3, p0, Lcom/mycompany/app/view/MyImageView;->D:Landroid/graphics/Paint;

    .line 366
    .line 367
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 368
    .line 369
    .line 370
    return-void

    .line 371
    :cond_f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    int-to-float v2, v2

    .line 376
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    int-to-float v3, v3

    .line 381
    iget v5, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 382
    .line 383
    int-to-float v5, v5

    .line 384
    div-float/2addr v5, v3

    .line 385
    iget v6, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 386
    .line 387
    int-to-float v6, v6

    .line 388
    div-float/2addr v6, v5

    .line 389
    add-float v7, v2, v6

    .line 390
    .line 391
    div-float/2addr v6, v1

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 393
    .line 394
    .line 395
    move-result v8

    .line 396
    iget v9, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 397
    .line 398
    sub-int/2addr v8, v9

    .line 399
    int-to-float v8, v8

    .line 400
    mul-float/2addr v1, v5

    .line 401
    div-float/2addr v8, v1

    .line 402
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 403
    .line 404
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 405
    .line 406
    .line 407
    move-result v9

    .line 408
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    invoke-virtual {v1, v4, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 413
    .line 414
    .line 415
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 416
    .line 417
    add-float/2addr v2, v6

    .line 418
    add-float/2addr v3, v8

    .line 419
    invoke-virtual {v1, v6, v8, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    int-to-float v1, v1

    .line 427
    div-float/2addr v1, v7

    .line 428
    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 429
    .line 430
    .line 431
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 432
    .line 433
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 434
    .line 435
    iget-object v3, p0, Lcom/mycompany/app/view/MyImageView;->D:Landroid/graphics/Paint;

    .line 436
    .line 437
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :cond_10
    if-ne v5, v2, :cond_15

    .line 442
    .line 443
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 444
    .line 445
    if-eqz v2, :cond_14

    .line 446
    .line 447
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 448
    .line 449
    if-nez v2, :cond_11

    .line 450
    .line 451
    goto/16 :goto_5

    .line 452
    .line 453
    :cond_11
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyImageView;->j:Z

    .line 454
    .line 455
    if-eqz v2, :cond_13

    .line 456
    .line 457
    iget v2, p0, Lcom/mycompany/app/view/MyImageView;->q:I

    .line 458
    .line 459
    iget v3, p0, Lcom/mycompany/app/view/MyImageView;->r:I

    .line 460
    .line 461
    if-le v2, v3, :cond_13

    .line 462
    .line 463
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-eqz v2, :cond_13

    .line 468
    .line 469
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    int-to-float v2, v2

    .line 474
    div-float/2addr v2, v1

    .line 475
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    int-to-float v3, v3

    .line 480
    iget v5, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 481
    .line 482
    int-to-float v5, v5

    .line 483
    div-float/2addr v5, v2

    .line 484
    iget v6, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 485
    .line 486
    int-to-float v6, v6

    .line 487
    div-float/2addr v6, v5

    .line 488
    add-float v7, v3, v6

    .line 489
    .line 490
    mul-float/2addr v7, v1

    .line 491
    div-float/2addr v6, v1

    .line 492
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 493
    .line 494
    .line 495
    move-result v8

    .line 496
    iget v9, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 497
    .line 498
    sub-int/2addr v8, v9

    .line 499
    int-to-float v8, v8

    .line 500
    mul-float v9, v5, v1

    .line 501
    .line 502
    div-float/2addr v8, v9

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 504
    .line 505
    .line 506
    move-result v9

    .line 507
    int-to-float v9, v9

    .line 508
    div-float/2addr v9, v7

    .line 509
    invoke-virtual {p1, v5, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 510
    .line 511
    .line 512
    iget-boolean v5, p0, Lcom/mycompany/app/view/MyImageView;->l:Z

    .line 513
    .line 514
    if-eqz v5, :cond_12

    .line 515
    .line 516
    iget-object v5, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 517
    .line 518
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 519
    .line 520
    .line 521
    move-result v9

    .line 522
    mul-float/2addr v1, v2

    .line 523
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 528
    .line 529
    .line 530
    move-result v10

    .line 531
    invoke-virtual {v5, v9, v4, v1, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 532
    .line 533
    .line 534
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->J:Landroid/graphics/Rect;

    .line 535
    .line 536
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 537
    .line 538
    .line 539
    move-result v5

    .line 540
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 541
    .line 542
    .line 543
    move-result v9

    .line 544
    invoke-virtual {v1, v4, v4, v5, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 545
    .line 546
    .line 547
    goto :goto_4

    .line 548
    :cond_12
    iget-object v5, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 549
    .line 550
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 551
    .line 552
    .line 553
    move-result v9

    .line 554
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 555
    .line 556
    .line 557
    move-result v10

    .line 558
    invoke-virtual {v5, v4, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 559
    .line 560
    .line 561
    iget-object v5, p0, Lcom/mycompany/app/view/MyImageView;->J:Landroid/graphics/Rect;

    .line 562
    .line 563
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 564
    .line 565
    .line 566
    move-result v9

    .line 567
    mul-float/2addr v1, v2

    .line 568
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 573
    .line 574
    .line 575
    move-result v10

    .line 576
    invoke-virtual {v5, v9, v4, v1, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 577
    .line 578
    .line 579
    :goto_4
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 580
    .line 581
    add-float/2addr v2, v8

    .line 582
    add-float v4, v6, v3

    .line 583
    .line 584
    invoke-virtual {v1, v8, v6, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 585
    .line 586
    .line 587
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->K:Landroid/graphics/RectF;

    .line 588
    .line 589
    sub-float/2addr v7, v6

    .line 590
    sub-float v3, v7, v3

    .line 591
    .line 592
    invoke-virtual {v1, v8, v3, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 593
    .line 594
    .line 595
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 596
    .line 597
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 598
    .line 599
    iget-object v3, p0, Lcom/mycompany/app/view/MyImageView;->D:Landroid/graphics/Paint;

    .line 600
    .line 601
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 602
    .line 603
    .line 604
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->J:Landroid/graphics/Rect;

    .line 605
    .line 606
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->K:Landroid/graphics/RectF;

    .line 607
    .line 608
    iget-object v3, p0, Lcom/mycompany/app/view/MyImageView;->D:Landroid/graphics/Paint;

    .line 609
    .line 610
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 611
    .line 612
    .line 613
    return-void

    .line 614
    :cond_13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    int-to-float v2, v2

    .line 619
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    int-to-float v3, v3

    .line 624
    iget v5, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 625
    .line 626
    int-to-float v5, v5

    .line 627
    div-float/2addr v5, v2

    .line 628
    iget v6, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 629
    .line 630
    int-to-float v6, v6

    .line 631
    div-float/2addr v6, v5

    .line 632
    add-float v7, v3, v6

    .line 633
    .line 634
    div-float/2addr v6, v1

    .line 635
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 636
    .line 637
    .line 638
    move-result v8

    .line 639
    iget v9, p0, Lcom/mycompany/app/view/MyImageView;->u:I

    .line 640
    .line 641
    sub-int/2addr v8, v9

    .line 642
    int-to-float v8, v8

    .line 643
    mul-float/2addr v1, v5

    .line 644
    div-float/2addr v8, v1

    .line 645
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 646
    .line 647
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 648
    .line 649
    .line 650
    move-result v9

    .line 651
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 652
    .line 653
    .line 654
    move-result v10

    .line 655
    invoke-virtual {v1, v4, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 656
    .line 657
    .line 658
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 659
    .line 660
    add-float/2addr v2, v8

    .line 661
    add-float/2addr v3, v6

    .line 662
    invoke-virtual {v1, v8, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    int-to-float v1, v1

    .line 670
    div-float/2addr v1, v7

    .line 671
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 672
    .line 673
    .line 674
    iget-object v1, p0, Lcom/mycompany/app/view/MyImageView;->H:Landroid/graphics/Rect;

    .line 675
    .line 676
    iget-object v2, p0, Lcom/mycompany/app/view/MyImageView;->I:Landroid/graphics/RectF;

    .line 677
    .line 678
    iget-object v3, p0, Lcom/mycompany/app/view/MyImageView;->D:Landroid/graphics/Paint;

    .line 679
    .line 680
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 681
    .line 682
    .line 683
    :cond_14
    :goto_5
    return-void

    .line 684
    :cond_15
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .line 686
    .line 687
    :catch_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyImageView;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyImageView;->n:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->m:I

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentWidth()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentHeight()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyImageView;->e(II)V

    .line 42
    .line 43
    .line 44
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 45
    .line 46
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_5

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentWidth()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-direct {p0}, Lcom/mycompany/app/view/MyImageView;->getParentHeight()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->h:I

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    if-ne v0, v1, :cond_3

    .line 70
    .line 71
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 72
    .line 73
    add-int/2addr p1, v0

    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    const/4 v1, 0x2

    .line 79
    if-ne v0, v1, :cond_4

    .line 80
    .line 81
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 82
    .line 83
    add-int/2addr p2, v0

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p0, p2, p1}, Lcom/mycompany/app/view/MyImageView;->a(II)V

    .line 101
    .line 102
    .line 103
    iget p1, p0, Lcom/mycompany/app/view/MyImageView;->s:I

    .line 104
    .line 105
    iget p2, p0, Lcom/mycompany/app/view/MyImageView;->t:I

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyImageView;->w:Z

    .line 6
    .line 7
    iget p4, p0, Lcom/mycompany/app/view/MyImageView;->m:I

    .line 8
    .line 9
    if-ne p4, p3, :cond_0

    .line 10
    .line 11
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyImageView;->y:Z

    .line 12
    .line 13
    :cond_0
    iget-object p3, p0, Lcom/mycompany/app/view/MyImageView;->g:Lcom/mycompany/app/image/ImageSizeListener;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    invoke-interface {p3, p0, p1, p2}, Lcom/mycompany/app/image/ImageSizeListener;->a(Landroid/view/View;II)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/view/MyImageView;->v:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyImageView;->A:Z

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 21
    .line 22
    return-void
.end method

.method public setAttacher(Lcom/mycompany/app/zoom/ZoomImageAttacher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->G:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawBack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyImageView;->L:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDrawFailListener(Lcom/mycompany/app/view/MyImageView$DrawFailListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->f:Lcom/mycompany/app/view/MyImageView$DrawFailListener;

    .line 2
    .line 3
    return-void
.end method

.method public setFadeIn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyImageView;->B:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setFit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyImageView;->i:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyImageView;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/view/MyImageView;->m:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyImageView;->n:Z

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyImageView;->a(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/mycompany/app/view/MyImageView;->setFadeIn(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setListener(Lcom/mycompany/app/image/ImageSizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->g:Lcom/mycompany/app/image/ImageSizeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyImageView;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyImageView;->p:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method

.method public setPreProcess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyImageView;->o:Z

    .line 2
    .line 3
    return-void
.end method
