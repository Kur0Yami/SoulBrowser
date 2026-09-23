.class public Lcom/mycompany/app/editor/core/PhotoDrawView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;,
        Lcom/mycompany/app/editor/core/PhotoDrawView$SaveLine;
    }
.end annotation


# instance fields
.field public c:Lcom/mycompany/app/editor/EditorActivity;

.field public f:Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;

.field public g:F

.field public h:I

.field public i:I

.field public j:Z

.field public k:F

.field public l:Landroid/graphics/Paint;

.field public m:Landroid/graphics/Path;

.field public n:Ljava/util/Stack;

.field public o:Ljava/util/Stack;

.field public p:Z

.field public q:F

.field public r:F

.field public s:Z


# virtual methods
.method public final a(Lcom/mycompany/app/editor/EditorActivity;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 7
    .line 8
    sget p1, Lcom/mycompany/app/pref/PrefRead;->P:I

    .line 9
    .line 10
    int-to-float p1, p1

    .line 11
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->g:F

    .line 12
    .line 13
    sget p1, Lcom/mycompany/app/pref/PrefRead;->R:I

    .line 14
    .line 15
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->h:I

    .line 16
    .line 17
    sget p1, Lcom/mycompany/app/pref/PrefRead;->Q:I

    .line 18
    .line 19
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->i:I

    .line 20
    .line 21
    sget p1, Lcom/mycompany/app/pref/PrefRead;->T:I

    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->k:F

    .line 25
    .line 26
    new-instance p1, Landroid/graphics/Path;

    .line 27
    .line 28
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 32
    .line 33
    new-instance p1, Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 45
    .line 46
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 52
    .line 53
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 59
    .line 60
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 68
    .line 69
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->g:F

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 79
    .line 80
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->h:I

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 86
    .line 87
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->i:I

    .line 88
    .line 89
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b3(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 97
    .line 98
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 99
    .line 100
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 101
    .line 102
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 106
    .line 107
    .line 108
    new-instance p1, Ljava/util/Stack;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->n:Ljava/util/Stack;

    .line 114
    .line 115
    new-instance p1, Ljava/util/Stack;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->o:Ljava/util/Stack;

    .line 121
    .line 122
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->n:Ljava/util/Stack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/mycompany/app/editor/core/PhotoDrawView$SaveLine;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/mycompany/app/editor/core/PhotoDrawView$SaveLine;->a:Landroid/graphics/Path;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/mycompany/app/editor/core/PhotoDrawView$SaveLine;->b:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    and-int/2addr v2, v0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_9

    .line 19
    .line 20
    if-eq v2, v3, :cond_6

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v2, v4, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    if-eq v2, p1, :cond_6

    .line 27
    .line 28
    const/4 p1, 0x6

    .line 29
    if-eq v2, p1, :cond_1

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    const p1, 0xff00

    .line 34
    .line 35
    .line 36
    and-int/2addr p1, v0

    .line 37
    shr-int/lit8 p1, p1, 0x8

    .line 38
    .line 39
    if-nez p1, :cond_8

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->p:Z

    .line 42
    .line 43
    return v3

    .line 44
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->p:Z

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget v2, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->q:F

    .line 59
    .line 60
    iget v4, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->r:F

    .line 61
    .line 62
    invoke-static {v2, v0, v4, p1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget-boolean v4, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->s:Z

    .line 67
    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    const/high16 v5, 0x41000000    # 8.0f

    .line 71
    .line 72
    cmpl-float v2, v2, v5

    .line 73
    .line 74
    if-lez v2, :cond_8

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/high16 v5, 0x40800000    # 4.0f

    .line 78
    .line 79
    cmpl-float v2, v2, v5

    .line 80
    .line 81
    if-lez v2, :cond_8

    .line 82
    .line 83
    :goto_0
    if-eqz v4, :cond_5

    .line 84
    .line 85
    iput-boolean v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->s:Z

    .line 86
    .line 87
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->o:Ljava/util/Stack;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 98
    .line 99
    iget v2, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->q:F

    .line 100
    .line 101
    iget v4, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->r:F

    .line 102
    .line 103
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 104
    .line 105
    .line 106
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 107
    .line 108
    iget v2, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->q:F

    .line 109
    .line 110
    iget v4, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->r:F

    .line 111
    .line 112
    add-float v5, v0, v2

    .line 113
    .line 114
    const/high16 v6, 0x40000000    # 2.0f

    .line 115
    .line 116
    div-float/2addr v5, v6

    .line 117
    add-float v7, p1, v4

    .line 118
    .line 119
    div-float/2addr v7, v6

    .line 120
    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 121
    .line 122
    .line 123
    iput v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->q:F

    .line 124
    .line 125
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->r:F

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 128
    .line 129
    .line 130
    return v3

    .line 131
    :cond_6
    iput-boolean v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->p:Z

    .line 132
    .line 133
    iget-boolean p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->s:Z

    .line 134
    .line 135
    if-nez p1, :cond_7

    .line 136
    .line 137
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 138
    .line 139
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->q:F

    .line 140
    .line 141
    iget v2, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->r:F

    .line 142
    .line 143
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->n:Ljava/util/Stack;

    .line 147
    .line 148
    new-instance v0, Lcom/mycompany/app/editor/core/PhotoDrawView$SaveLine;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 151
    .line 152
    iget-object v4, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 153
    .line 154
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    new-instance v5, Landroid/graphics/Path;

    .line 158
    .line 159
    invoke-direct {v5, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 160
    .line 161
    .line 162
    iput-object v5, v0, Lcom/mycompany/app/editor/core/PhotoDrawView$SaveLine;->a:Landroid/graphics/Path;

    .line 163
    .line 164
    new-instance v2, Landroid/graphics/Paint;

    .line 165
    .line 166
    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 167
    .line 168
    .line 169
    iput-object v2, v0, Lcom/mycompany/app/editor/core/PhotoDrawView$SaveLine;->b:Landroid/graphics/Paint;

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 180
    .line 181
    .line 182
    :cond_7
    iput-boolean v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->s:Z

    .line 183
    .line 184
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->f:Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;

    .line 185
    .line 186
    if-eqz p1, :cond_8

    .line 187
    .line 188
    new-instance p1, Lcom/mycompany/app/editor/core/PhotoDrawView$1;

    .line 189
    .line 190
    invoke-direct {p1, p0}, Lcom/mycompany/app/editor/core/PhotoDrawView$1;-><init>(Lcom/mycompany/app/editor/core/PhotoDrawView;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 194
    .line 195
    .line 196
    :cond_8
    :goto_1
    return v3

    .line 197
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->f:Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;

    .line 198
    .line 199
    if-eqz v0, :cond_c

    .line 200
    .line 201
    invoke-interface {v0}, Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;->c()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_a

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_a
    iput-boolean v3, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->p:Z

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->q:F

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->r:F

    .line 221
    .line 222
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->f:Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;

    .line 223
    .line 224
    invoke-interface {p1}, Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;->b()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    iput-boolean p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->s:Z

    .line 229
    .line 230
    if-nez p1, :cond_b

    .line 231
    .line 232
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->o:Ljava/util/Stack;

    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->m:Landroid/graphics/Path;

    .line 243
    .line 244
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->q:F

    .line 245
    .line 246
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->r:F

    .line 247
    .line 248
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 252
    .line 253
    .line 254
    :cond_b
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->f:Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;

    .line 255
    .line 256
    invoke-interface {p1, v3}, Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;->a(Z)V

    .line 257
    .line 258
    .line 259
    return v3

    .line 260
    :cond_c
    :goto_2
    return v1
.end method

.method public setEraseMode(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->j:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->j:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 13
    .line 14
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->k:F

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 26
    .line 27
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 39
    .line 40
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->g:F

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 50
    .line 51
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->h:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 57
    .line 58
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->i:I

    .line 59
    .line 60
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b3(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 68
    .line 69
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 70
    .line 71
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public setEraseSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->l:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->k:F

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    cmpl-float v1, v1, p1

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->k:F

    .line 15
    .line 16
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 17
    .line 18
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setListener(Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoDrawView;->f:Lcom/mycompany/app/editor/core/PhotoDrawView$PhotoDrawListener;

    .line 2
    .line 3
    return-void
.end method
