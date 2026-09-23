.class Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFlinger"
.end annotation


# instance fields
.field public c:I

.field public f:I

.field public g:Landroid/widget/OverScroller;

.field public h:Landroid/view/animation/Interpolator;

.field public i:Z

.field public j:Z

.field public final synthetic k:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->O0:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->h:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->i:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->j:Z

    .line 14
    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->g:Landroid/widget/OverScroller;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->f:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->c:I

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->h:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->O0:Landroid/view/animation/Interpolator;

    .line 15
    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->h:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v0, Landroid/widget/OverScroller;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->g:Landroid/widget/OverScroller;

    .line 30
    .line 31
    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->g:Landroid/widget/OverScroller;

    .line 32
    .line 33
    const/high16 v10, -0x80000000

    .line 34
    .line 35
    const v11, 0x7fffffff

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/high16 v8, -0x80000000

    .line 41
    .line 42
    const v9, 0x7fffffff

    .line 43
    .line 44
    .line 45
    move v6, p1

    .line 46
    move v7, p2

    .line 47
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->b()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->j:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final c(IIILandroid/view/animation/Interpolator;)V
    .locals 9

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    if-ne p3, v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-le p3, v0, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v1

    .line 21
    :goto_0
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    :goto_1
    if-eqz v3, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move p3, v0

    .line 36
    :goto_2
    int-to-float p3, p3

    .line 37
    int-to-float v0, v4

    .line 38
    div-float/2addr p3, v0

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    add-float/2addr p3, v0

    .line 42
    const/high16 v0, 0x43960000    # 300.0f

    .line 43
    .line 44
    mul-float/2addr p3, v0

    .line 45
    float-to-int p3, p3

    .line 46
    const/16 v0, 0x7d0

    .line 47
    .line 48
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    :cond_3
    move v8, p3

    .line 53
    if-nez p4, :cond_4

    .line 54
    .line 55
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->O0:Landroid/view/animation/Interpolator;

    .line 56
    .line 57
    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->h:Landroid/view/animation/Interpolator;

    .line 58
    .line 59
    if-eq p3, p4, :cond_5

    .line 60
    .line 61
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->h:Landroid/view/animation/Interpolator;

    .line 62
    .line 63
    new-instance p3, Landroid/widget/OverScroller;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 70
    .line 71
    .line 72
    iput-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->g:Landroid/widget/OverScroller;

    .line 73
    .line 74
    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->f:I

    .line 75
    .line 76
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->c:I

    .line 77
    .line 78
    const/4 p3, 0x2

    .line 79
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->g:Landroid/widget/OverScroller;

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    move v6, p1

    .line 87
    move v7, p2

    .line 88
    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->b()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->z0:[I

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->g:Landroid/widget/OverScroller;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v9, 0x0

    .line 19
    iput-boolean v9, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->j:Z

    .line 20
    .line 21
    const/4 v10, 0x1

    .line 22
    iput-boolean v10, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->i:Z

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 25
    .line 26
    .line 27
    iget-object v11, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->g:Landroid/widget/OverScroller;

    .line 28
    .line 29
    invoke-virtual {v11}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1d

    .line 34
    .line 35
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrX()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrY()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->c:I

    .line 44
    .line 45
    sub-int v3, v1, v3

    .line 46
    .line 47
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->f:I

    .line 48
    .line 49
    sub-int v4, v2, v4

    .line 50
    .line 51
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->c:I

    .line 52
    .line 53
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->f:I

    .line 54
    .line 55
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/widget/EdgeEffect;

    .line 56
    .line 57
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/widget/EdgeEffect;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v3, v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->o(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->O:Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/widget/EdgeEffect;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-static {v4, v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->o(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->z0:[I

    .line 80
    .line 81
    aput v9, v1, v9

    .line 82
    .line 83
    aput v9, v1, v10

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v5, 0x1

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->v([I[IIII)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    aget v1, v8, v9

    .line 94
    .line 95
    sub-int/2addr v3, v1

    .line 96
    aget v1, v8, v10

    .line 97
    .line 98
    sub-int/2addr v4, v1

    .line 99
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/4 v12, 0x2

    .line 104
    if-eq v1, v12, :cond_2

    .line 105
    .line 106
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->n(II)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    aput v9, v8, v9

    .line 114
    .line 115
    aput v9, v8, v10

    .line 116
    .line 117
    invoke-virtual {v0, v8, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->h0([III)V

    .line 118
    .line 119
    .line 120
    aget v1, v8, v9

    .line 121
    .line 122
    aget v2, v8, v10

    .line 123
    .line 124
    sub-int/2addr v3, v1

    .line 125
    sub-int/2addr v4, v2

    .line 126
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 127
    .line 128
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 129
    .line 130
    if-eqz v5, :cond_6

    .line 131
    .line 132
    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->d:Z

    .line 133
    .line 134
    if-nez v6, :cond_6

    .line 135
    .line 136
    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->e:Z

    .line 137
    .line 138
    if-eqz v6, :cond_6

    .line 139
    .line 140
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->m0:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 141
    .line 142
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_3

    .line 147
    .line 148
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->f()V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    iget v7, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a:I

    .line 153
    .line 154
    if-lt v7, v6, :cond_4

    .line 155
    .line 156
    sub-int/2addr v6, v10

    .line 157
    iput v6, v5, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a:I

    .line 158
    .line 159
    invoke-virtual {v5, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->b(II)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {v5, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->b(II)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_5
    move v1, v9

    .line 168
    move v2, v1

    .line 169
    :cond_6
    :goto_0
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-nez v5, :cond_7

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 178
    .line 179
    .line 180
    :cond_7
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->z0:[I

    .line 181
    .line 182
    aput v9, v7, v9

    .line 183
    .line 184
    aput v9, v7, v10

    .line 185
    .line 186
    const/4 v5, 0x0

    .line 187
    const/4 v6, 0x1

    .line 188
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->w(IIII[II[I)V

    .line 189
    .line 190
    .line 191
    aget v5, v8, v9

    .line 192
    .line 193
    sub-int/2addr v3, v5

    .line 194
    aget v5, v8, v10

    .line 195
    .line 196
    sub-int/2addr v4, v5

    .line 197
    if-nez v1, :cond_8

    .line 198
    .line 199
    if-eqz v2, :cond_9

    .line 200
    .line 201
    :cond_8
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->x(II)V

    .line 202
    .line 203
    .line 204
    :cond_9
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    if-nez v5, :cond_a

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 211
    .line 212
    .line 213
    :cond_a
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrX()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getFinalX()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-ne v5, v6, :cond_b

    .line 222
    .line 223
    move v5, v10

    .line 224
    goto :goto_1

    .line 225
    :cond_b
    move v5, v9

    .line 226
    :goto_1
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrY()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getFinalY()I

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-ne v6, v7, :cond_c

    .line 235
    .line 236
    move v6, v10

    .line 237
    goto :goto_2

    .line 238
    :cond_c
    move v6, v9

    .line 239
    :goto_2
    invoke-virtual {v11}, Landroid/widget/OverScroller;->isFinished()Z

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-nez v7, :cond_f

    .line 244
    .line 245
    if-nez v5, :cond_d

    .line 246
    .line 247
    if-eqz v3, :cond_e

    .line 248
    .line 249
    :cond_d
    if-nez v6, :cond_f

    .line 250
    .line 251
    if-eqz v4, :cond_e

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_e
    move v5, v9

    .line 255
    goto :goto_4

    .line 256
    :cond_f
    :goto_3
    move v5, v10

    .line 257
    :goto_4
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 258
    .line 259
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 260
    .line 261
    if-eqz v6, :cond_10

    .line 262
    .line 263
    iget-boolean v6, v6, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->d:Z

    .line 264
    .line 265
    if-eqz v6, :cond_10

    .line 266
    .line 267
    goto/16 :goto_9

    .line 268
    .line 269
    :cond_10
    if-eqz v5, :cond_1c

    .line 270
    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eq v1, v12, :cond_1a

    .line 276
    .line 277
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    float-to-int v1, v1

    .line 282
    if-gez v3, :cond_11

    .line 283
    .line 284
    neg-int v2, v1

    .line 285
    goto :goto_5

    .line 286
    :cond_11
    if-lez v3, :cond_12

    .line 287
    .line 288
    move v2, v1

    .line 289
    goto :goto_5

    .line 290
    :cond_12
    move v2, v9

    .line 291
    :goto_5
    if-gez v4, :cond_13

    .line 292
    .line 293
    neg-int v1, v1

    .line 294
    goto :goto_6

    .line 295
    :cond_13
    if-lez v4, :cond_14

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_14
    move v1, v9

    .line 299
    :goto_6
    if-gez v2, :cond_15

    .line 300
    .line 301
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()V

    .line 302
    .line 303
    .line 304
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/widget/EdgeEffect;

    .line 305
    .line 306
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_16

    .line 311
    .line 312
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->N:Landroid/widget/EdgeEffect;

    .line 313
    .line 314
    neg-int v4, v2

    .line 315
    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 316
    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_15
    if-lez v2, :cond_16

    .line 320
    .line 321
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->A()V

    .line 322
    .line 323
    .line 324
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/widget/EdgeEffect;

    .line 325
    .line 326
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-eqz v3, :cond_16

    .line 331
    .line 332
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/widget/EdgeEffect;

    .line 333
    .line 334
    invoke-virtual {v3, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 335
    .line 336
    .line 337
    :cond_16
    :goto_7
    if-gez v1, :cond_17

    .line 338
    .line 339
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->B()V

    .line 340
    .line 341
    .line 342
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->O:Landroid/widget/EdgeEffect;

    .line 343
    .line 344
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-eqz v3, :cond_18

    .line 349
    .line 350
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->O:Landroid/widget/EdgeEffect;

    .line 351
    .line 352
    neg-int v4, v1

    .line 353
    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_17
    if-lez v1, :cond_18

    .line 358
    .line 359
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()V

    .line 360
    .line 361
    .line 362
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/widget/EdgeEffect;

    .line 363
    .line 364
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-eqz v3, :cond_18

    .line 369
    .line 370
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/widget/EdgeEffect;

    .line 371
    .line 372
    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 373
    .line 374
    .line 375
    :cond_18
    :goto_8
    if-nez v2, :cond_19

    .line 376
    .line 377
    if-eqz v1, :cond_1a

    .line 378
    .line 379
    :cond_19
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 380
    .line 381
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 382
    .line 383
    .line 384
    :cond_1a
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->M0:Z

    .line 385
    .line 386
    if-eqz v1, :cond_1d

    .line 387
    .line 388
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->l0:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 389
    .line 390
    iget-object v2, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->c:[I

    .line 391
    .line 392
    if-eqz v2, :cond_1b

    .line 393
    .line 394
    const/4 v3, -0x1

    .line 395
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 396
    .line 397
    .line 398
    :cond_1b
    iput v9, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->d:I

    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_1c
    :goto_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->b()V

    .line 402
    .line 403
    .line 404
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->k0:Landroidx/recyclerview/widget/GapWorker;

    .line 405
    .line 406
    if-eqz v3, :cond_1d

    .line 407
    .line 408
    invoke-virtual {v3, v0, v1, v2}, Landroidx/recyclerview/widget/GapWorker;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 409
    .line 410
    .line 411
    :cond_1d
    :goto_a
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 412
    .line 413
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 414
    .line 415
    if-eqz v1, :cond_1e

    .line 416
    .line 417
    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->d:Z

    .line 418
    .line 419
    if-eqz v2, :cond_1e

    .line 420
    .line 421
    invoke-virtual {v1, v9, v9}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->b(II)V

    .line 422
    .line 423
    .line 424
    :cond_1e
    iput-boolean v9, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->i:Z

    .line 425
    .line 426
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->j:Z

    .line 427
    .line 428
    if-eqz v1, :cond_1f

    .line 429
    .line 430
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 431
    .line 432
    .line 433
    sget-object v1, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 434
    .line 435
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 436
    .line 437
    .line 438
    return-void

    .line 439
    :cond_1f
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->o0(I)V

    .line 443
    .line 444
    .line 445
    return-void
.end method
