.class public Lcom/mycompany/app/curl/CurlView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/curl/CurlRenderer$RendererListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;
    }
.end annotation


# instance fields
.field public A:F

.field public c:Z

.field public f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

.field public g:Z

.field public h:Lcom/mycompany/app/curl/CurlRenderer;

.field public i:I

.field public j:I

.field public k:Landroid/graphics/RectF;

.field public l:I

.field public m:I

.field public n:I

.field public o:Landroid/graphics/PointF;

.field public p:Landroid/graphics/PointF;

.field public q:Landroid/graphics/PointF;

.field public r:Landroid/graphics/PointF;

.field public s:J

.field public t:I

.field public u:F

.field public v:F

.field public w:Landroid/graphics/PointF;

.field public x:Landroid/graphics/PointF;

.field public y:Z

.field public z:Z


# direct methods
.method private setTouchTranslate(Landroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->i:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->j:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 11
    .line 12
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 19
    .line 20
    mul-float/2addr v0, v2

    .line 21
    iget v2, p0, Lcom/mycompany/app/curl/CurlView;->i:I

    .line 22
    .line 23
    int-to-float v2, v2

    .line 24
    div-float/2addr v0, v2

    .line 25
    add-float/2addr v0, v1

    .line 26
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 29
    .line 30
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v2, p1, Landroid/graphics/PointF;->y:F

    .line 37
    .line 38
    mul-float/2addr v0, v2

    .line 39
    iget v2, p0, Lcom/mycompany/app/curl/CurlView;->j:I

    .line 40
    .line 41
    int-to-float v2, v2

    .line 42
    div-float/2addr v0, v2

    .line 43
    add-float/2addr v0, v1

    .line 44
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->t:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lcom/mycompany/app/curl/CurlView;->s:J

    .line 19
    .line 20
    const-wide/16 v4, 0x12c

    .line 21
    .line 22
    add-long/2addr v2, v4

    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-gez v2, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/mycompany/app/curl/CurlView;->q:Landroid/graphics/PointF;

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 33
    .line 34
    .line 35
    iget-wide v4, p0, Lcom/mycompany/app/curl/CurlView;->s:J

    .line 36
    .line 37
    sub-long/2addr v0, v4

    .line 38
    long-to-float v0, v0

    .line 39
    const/high16 v1, 0x43960000    # 300.0f

    .line 40
    .line 41
    div-float/2addr v0, v1

    .line 42
    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    .line 44
    sub-float v0, v1, v0

    .line 45
    .line 46
    mul-float v2, v0, v0

    .line 47
    .line 48
    mul-float/2addr v2, v0

    .line 49
    const/high16 v4, 0x40000000    # 2.0f

    .line 50
    .line 51
    mul-float/2addr v0, v4

    .line 52
    const/high16 v4, 0x40400000    # 3.0f

    .line 53
    .line 54
    sub-float/2addr v4, v0

    .line 55
    mul-float/2addr v4, v2

    .line 56
    sub-float/2addr v1, v4

    .line 57
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    .line 58
    .line 59
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 60
    .line 61
    iget-object v4, p0, Lcom/mycompany/app/curl/CurlView;->r:Landroid/graphics/PointF;

    .line 62
    .line 63
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 64
    .line 65
    iget-object v6, p0, Lcom/mycompany/app/curl/CurlView;->q:Landroid/graphics/PointF;

    .line 66
    .line 67
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 68
    .line 69
    invoke-static {v5, v7, v1, v2}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 74
    .line 75
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 76
    .line 77
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 78
    .line 79
    iget v5, v6, Landroid/graphics/PointF;->y:F

    .line 80
    .line 81
    invoke-static {v4, v5, v1, v2}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 86
    .line 87
    invoke-virtual {p0, v3}, Lcom/mycompany/app/curl/CurlView;->e(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    monitor-exit p0

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/mycompany/app/curl/CurlRenderer;->g:Ljava/util/ArrayList;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const/4 v4, 0x3

    .line 107
    if-ge v2, v4, :cond_3

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    move v2, v1

    .line 111
    :goto_0
    if-ge v2, v4, :cond_5

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Lcom/mycompany/app/curl/CurlMesh;

    .line 118
    .line 119
    if-eqz v5, :cond_4

    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/mycompany/app/curl/CurlMesh;->e()V

    .line 122
    .line 123
    .line 124
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    :goto_1
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 128
    .line 129
    const/4 v2, 0x2

    .line 130
    if-ne v0, v2, :cond_6

    .line 131
    .line 132
    iget v4, p0, Lcom/mycompany/app/curl/CurlView;->t:I

    .line 133
    .line 134
    if-ne v4, v3, :cond_6

    .line 135
    .line 136
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lcom/mycompany/app/curl/CurlRenderer;->d(Landroid/graphics/RectF;)V

    .line 141
    .line 142
    .line 143
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 144
    .line 145
    add-int/2addr v0, v3

    .line 146
    iput v0, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 147
    .line 148
    move v2, v3

    .line 149
    goto :goto_2

    .line 150
    :cond_6
    if-ne v0, v3, :cond_7

    .line 151
    .line 152
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->t:I

    .line 153
    .line 154
    if-ne v0, v2, :cond_7

    .line 155
    .line 156
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 157
    .line 158
    iget-object v4, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 159
    .line 160
    invoke-virtual {v0, v4}, Lcom/mycompany/app/curl/CurlRenderer;->e(Landroid/graphics/RectF;)V

    .line 161
    .line 162
    .line 163
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 164
    .line 165
    sub-int/2addr v0, v3

    .line 166
    iput v0, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    move v2, v1

    .line 170
    :goto_2
    iput v1, p0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 171
    .line 172
    iput v1, p0, Lcom/mycompany/app/curl/CurlView;->t:I

    .line 173
    .line 174
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 175
    .line 176
    iput v1, v0, Lcom/mycompany/app/curl/CurlRenderer;->i:I

    .line 177
    .line 178
    if-eqz v2, :cond_8

    .line 179
    .line 180
    invoke-virtual {v0, v3}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 185
    .line 186
    iget v2, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 187
    .line 188
    iget v3, p0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 189
    .line 190
    invoke-interface {v1, v0, v2, v3}, Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;->b(Lcom/mycompany/app/curl/CurlMesh;II)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 195
    .line 196
    iget v2, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 197
    .line 198
    const/4 v3, 0x0

    .line 199
    invoke-interface {v0, v3, v2, v1}, Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;->b(Lcom/mycompany/app/curl/CurlMesh;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .line 201
    .line 202
    :goto_3
    monitor-exit p0

    .line 203
    return-void

    .line 204
    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    throw v0
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 9
    .line 10
    iput p1, v0, Lcom/mycompany/app/curl/CurlRenderer;->i:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/mycompany/app/curl/CurlView;->e(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 24
    .line 25
    iget v1, p0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 26
    .line 27
    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;->g(Lcom/mycompany/app/curl/CurlMesh;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final c(II)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->i:I

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->j:I

    .line 11
    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    int-to-float v0, p1

    .line 16
    int-to-float v1, p2

    .line 17
    div-float/2addr v0, v1

    .line 18
    new-instance v1, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    neg-float v2, v0

    .line 24
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 25
    .line 26
    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 27
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 31
    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    .line 33
    .line 34
    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 35
    .line 36
    iput p1, p0, Lcom/mycompany/app/curl/CurlView;->i:I

    .line 37
    .line 38
    iput p2, p0, Lcom/mycompany/app/curl/CurlView;->j:I

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/mycompany/app/curl/CurlView;->d()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 8
    .line 9
    iput v0, p0, Lcom/mycompany/app/curl/CurlView;->t:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 12
    .line 13
    iput v0, v1, Lcom/mycompany/app/curl/CurlRenderer;->i:I

    .line 14
    .line 15
    iget v2, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/mycompany/app/curl/CurlRenderer;->g:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x3

    .line 32
    if-ge v3, v4, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    if-ge v0, v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/mycompany/app/curl/CurlMesh;

    .line 42
    .line 43
    invoke-static {v3, v2}, Lcom/mycompany/app/curl/CurlRenderer;->c(Lcom/mycompany/app/curl/CurlMesh;Landroid/graphics/RectF;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 57
    .line 58
    iget v2, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 59
    .line 60
    iget v3, p0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 61
    .line 62
    invoke-interface {v1, v0, v2, v3}, Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;->d(Lcom/mycompany/app/curl/CurlMesh;II)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->t:I

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :goto_0
    return v1

    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/curl/CurlView;->g:Z

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/mycompany/app/curl/CurlView;->A:F

    .line 21
    .line 22
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v0, :cond_f

    .line 29
    .line 30
    if-eq v0, v3, :cond_b

    .line 31
    .line 32
    if-eq v0, v2, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    if-eq v0, v1, :cond_b

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/curl/CurlView;->z:Z

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    .line 59
    .line 60
    invoke-direct {p0, v0}, Lcom/mycompany/app/curl/CurlView;->setTouchTranslate(Landroid/graphics/PointF;)V

    .line 61
    .line 62
    .line 63
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lcom/mycompany/app/curl/CurlView;->e(Z)V

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;->c()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    iput-boolean v3, p0, Lcom/mycompany/app/curl/CurlView;->z:Z

    .line 80
    .line 81
    return v3

    .line 82
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 83
    .line 84
    invoke-interface {v0}, Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;->e()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->v:F

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    sub-float/2addr v0, v1

    .line 97
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    sget v1, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 102
    .line 103
    int-to-float v1, v1

    .line 104
    cmpl-float v0, v0, v1

    .line 105
    .line 106
    if-lez v0, :cond_7

    .line 107
    .line 108
    iput-boolean v3, p0, Lcom/mycompany/app/curl/CurlView;->z:Z

    .line 109
    .line 110
    return v3

    .line 111
    :cond_7
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->u:F

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    sub-float/2addr v0, v1

    .line 118
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    sget v1, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 123
    .line 124
    int-to-float v1, v1

    .line 125
    cmpg-float v0, v0, v1

    .line 126
    .line 127
    if-gez v0, :cond_9

    .line 128
    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :cond_8
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->u:F

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    iget v4, p0, Lcom/mycompany/app/curl/CurlView;->v:F

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-static {v0, v1, v4, v5}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    sget v1, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 148
    .line 149
    int-to-float v1, v1

    .line 150
    cmpg-float v0, v0, v1

    .line 151
    .line 152
    if-gez v0, :cond_9

    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :cond_9
    iget-boolean v0, p0, Lcom/mycompany/app/curl/CurlView;->y:Z

    .line 157
    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 161
    .line 162
    if-lez v0, :cond_a

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iget v1, p0, Lcom/mycompany/app/curl/CurlView;->u:F

    .line 169
    .line 170
    cmpl-float v0, v0, v1

    .line 171
    .line 172
    if-lez v0, :cond_a

    .line 173
    .line 174
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 177
    .line 178
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 179
    .line 180
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 181
    .line 182
    invoke-virtual {p0, v3}, Lcom/mycompany/app/curl/CurlView;->b(I)V

    .line 183
    .line 184
    .line 185
    return v3

    .line 186
    :cond_a
    iget-boolean v0, p0, Lcom/mycompany/app/curl/CurlView;->y:Z

    .line 187
    .line 188
    if-nez v0, :cond_12

    .line 189
    .line 190
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 191
    .line 192
    iget v1, p0, Lcom/mycompany/app/curl/CurlView;->l:I

    .line 193
    .line 194
    if-ge v0, v1, :cond_12

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->u:F

    .line 201
    .line 202
    cmpg-float p1, p1, v0

    .line 203
    .line 204
    if-gez p1, :cond_12

    .line 205
    .line 206
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 209
    .line 210
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 211
    .line 212
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 213
    .line 214
    invoke-virtual {p0, v2}, Lcom/mycompany/app/curl/CurlView;->b(I)V

    .line 215
    .line 216
    .line 217
    return v3

    .line 218
    :cond_b
    iget-boolean v0, p0, Lcom/mycompany/app/curl/CurlView;->z:Z

    .line 219
    .line 220
    if-eqz v0, :cond_c

    .line 221
    .line 222
    goto/16 :goto_2

    .line 223
    .line 224
    :cond_c
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 225
    .line 226
    if-nez v0, :cond_d

    .line 227
    .line 228
    goto/16 :goto_2

    .line 229
    .line 230
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    .line 244
    .line 245
    invoke-direct {p0, p1}, Lcom/mycompany/app/curl/CurlView;->setTouchTranslate(Landroid/graphics/PointF;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->q:Landroid/graphics/PointF;

    .line 249
    .line 250
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->r:Landroid/graphics/PointF;

    .line 256
    .line 257
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 258
    .line 259
    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 260
    .line 261
    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlView;->s:J

    .line 267
    .line 268
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    .line 269
    .line 270
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 271
    .line 272
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 273
    .line 274
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 275
    .line 276
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 277
    .line 278
    add-float v4, v1, v0

    .line 279
    .line 280
    const/high16 v5, 0x40000000    # 2.0f

    .line 281
    .line 282
    div-float/2addr v4, v5

    .line 283
    cmpl-float p1, p1, v4

    .line 284
    .line 285
    if-lez p1, :cond_e

    .line 286
    .line 287
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->r:Landroid/graphics/PointF;

    .line 288
    .line 289
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 290
    .line 291
    iput v2, p0, Lcom/mycompany/app/curl/CurlView;->t:I

    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_e
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->r:Landroid/graphics/PointF;

    .line 295
    .line 296
    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 297
    .line 298
    iput v3, p0, Lcom/mycompany/app/curl/CurlView;->t:I

    .line 299
    .line 300
    :goto_1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 301
    .line 302
    .line 303
    return v3

    .line 304
    :cond_f
    iput-boolean v1, p0, Lcom/mycompany/app/curl/CurlView;->z:Z

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    iput v0, p0, Lcom/mycompany/app/curl/CurlView;->u:F

    .line 311
    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    iput v0, p0, Lcom/mycompany/app/curl/CurlView;->v:F

    .line 317
    .line 318
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->u:F

    .line 319
    .line 320
    iget v4, p0, Lcom/mycompany/app/curl/CurlView;->i:I

    .line 321
    .line 322
    div-int/2addr v4, v2

    .line 323
    int-to-float v2, v4

    .line 324
    cmpg-float v0, v0, v2

    .line 325
    .line 326
    if-gez v0, :cond_10

    .line 327
    .line 328
    move v1, v3

    .line 329
    :cond_10
    iput-boolean v1, p0, Lcom/mycompany/app/curl/CurlView;->y:Z

    .line 330
    .line 331
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 332
    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 345
    .line 346
    invoke-direct {p0, p1}, Lcom/mycompany/app/curl/CurlView;->setTouchTranslate(Landroid/graphics/PointF;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 350
    .line 351
    iget v0, p1, Landroid/graphics/PointF;->y:F

    .line 352
    .line 353
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 354
    .line 355
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 356
    .line 357
    cmpl-float v4, v0, v2

    .line 358
    .line 359
    if-lez v4, :cond_11

    .line 360
    .line 361
    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 362
    .line 363
    return v3

    .line 364
    :cond_11
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 365
    .line 366
    cmpg-float v0, v0, v1

    .line 367
    .line 368
    if-gez v0, :cond_12

    .line 369
    .line 370
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 371
    .line 372
    :cond_12
    :goto_2
    return v3
.end method

.method public final e(Z)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/curl/CurlView;->c:Z

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget v1, v0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget v1, v0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v1, v4}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_0
    if-nez v1, :cond_3

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_3
    iget-object v4, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 50
    .line 51
    iget-object v5, v0, Lcom/mycompany/app/curl/CurlView;->x:Landroid/graphics/PointF;

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 54
    .line 55
    .line 56
    iget-object v4, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/high16 v5, 0x40400000    # 3.0f

    .line 63
    .line 64
    div-float/2addr v4, v5

    .line 65
    float-to-double v4, v4

    .line 66
    const/high16 v6, 0x3f800000    # 1.0f

    .line 67
    .line 68
    iget v7, v0, Lcom/mycompany/app/curl/CurlView;->A:F

    .line 69
    .line 70
    sub-float/2addr v6, v7

    .line 71
    const/4 v7, 0x0

    .line 72
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    float-to-double v8, v6

    .line 77
    mul-double/2addr v4, v8

    .line 78
    iget-boolean v6, v0, Lcom/mycompany/app/curl/CurlView;->c:Z

    .line 79
    .line 80
    const/high16 v10, 0x40000000    # 2.0f

    .line 81
    .line 82
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    if-eqz v6, :cond_a

    .line 88
    .line 89
    iget v2, v0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 90
    .line 91
    if-ne v2, v3, :cond_6

    .line 92
    .line 93
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 94
    .line 95
    iget-object v3, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 96
    .line 97
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 98
    .line 99
    iget-object v15, v0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 100
    .line 101
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 102
    .line 103
    iget v8, v15, Landroid/graphics/PointF;->x:F

    .line 104
    .line 105
    sub-float/2addr v6, v8

    .line 106
    iput v6, v2, Landroid/graphics/PointF;->x:F

    .line 107
    .line 108
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 109
    .line 110
    iget v8, v15, Landroid/graphics/PointF;->y:F

    .line 111
    .line 112
    sub-float/2addr v3, v8

    .line 113
    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 114
    .line 115
    mul-float/2addr v6, v6

    .line 116
    mul-float/2addr v3, v3

    .line 117
    add-float/2addr v3, v6

    .line 118
    float-to-double v2, v3

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v2

    .line 123
    double-to-float v2, v2

    .line 124
    iget-object v3, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    mul-double v8, v4, v13

    .line 131
    .line 132
    move-wide/from16 v18, v13

    .line 133
    .line 134
    float-to-double v13, v2

    .line 135
    mul-float/2addr v3, v10

    .line 136
    float-to-double v11, v3

    .line 137
    sub-double/2addr v11, v8

    .line 138
    cmpl-double v6, v13, v11

    .line 139
    .line 140
    if-lez v6, :cond_4

    .line 141
    .line 142
    sub-float/2addr v3, v2

    .line 143
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    float-to-double v8, v2

    .line 148
    div-double v4, v8, v18

    .line 149
    .line 150
    :cond_4
    cmpl-double v2, v13, v8

    .line 151
    .line 152
    if-ltz v2, :cond_5

    .line 153
    .line 154
    sub-double v2, v13, v8

    .line 155
    .line 156
    div-double v2, v2, v16

    .line 157
    .line 158
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 159
    .line 160
    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 161
    .line 162
    iget-object v8, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 163
    .line 164
    iget v8, v8, Landroid/graphics/PointF;->x:F

    .line 165
    .line 166
    sub-float/2addr v8, v6

    .line 167
    float-to-double v8, v8

    .line 168
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 169
    .line 170
    .line 171
    move-result-wide v4

    .line 172
    const-wide/16 v8, 0x0

    .line 173
    .line 174
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 179
    .line 180
    iget v8, v6, Landroid/graphics/PointF;->y:F

    .line 181
    .line 182
    float-to-double v8, v8

    .line 183
    iget-object v10, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 184
    .line 185
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 186
    .line 187
    float-to-double v10, v10

    .line 188
    mul-double/2addr v10, v2

    .line 189
    div-double/2addr v10, v13

    .line 190
    sub-double/2addr v8, v10

    .line 191
    double-to-float v2, v8

    .line 192
    iput v2, v6, Landroid/graphics/PointF;->y:F

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    div-double v2, v13, v8

    .line 196
    .line 197
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 198
    .line 199
    .line 200
    move-result-wide v2

    .line 201
    mul-double v2, v2, v18

    .line 202
    .line 203
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 204
    .line 205
    .line 206
    move-result-wide v2

    .line 207
    mul-double/2addr v2, v4

    .line 208
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 209
    .line 210
    iget v8, v6, Landroid/graphics/PointF;->x:F

    .line 211
    .line 212
    float-to-double v8, v8

    .line 213
    iget-object v10, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 214
    .line 215
    iget v11, v10, Landroid/graphics/PointF;->x:F

    .line 216
    .line 217
    float-to-double v11, v11

    .line 218
    mul-double/2addr v11, v2

    .line 219
    div-double/2addr v11, v13

    .line 220
    add-double/2addr v11, v8

    .line 221
    double-to-float v8, v11

    .line 222
    iput v8, v6, Landroid/graphics/PointF;->x:F

    .line 223
    .line 224
    iget v8, v6, Landroid/graphics/PointF;->y:F

    .line 225
    .line 226
    float-to-double v8, v8

    .line 227
    iget v10, v10, Landroid/graphics/PointF;->y:F

    .line 228
    .line 229
    float-to-double v10, v10

    .line 230
    mul-double/2addr v10, v2

    .line 231
    div-double/2addr v10, v13

    .line 232
    add-double/2addr v10, v8

    .line 233
    double-to-float v2, v10

    .line 234
    iput v2, v6, Landroid/graphics/PointF;->y:F

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 238
    .line 239
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 240
    .line 241
    iget-object v3, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 242
    .line 243
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 244
    .line 245
    sub-float/2addr v2, v3

    .line 246
    float-to-double v2, v2

    .line 247
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 248
    .line 249
    .line 250
    move-result-wide v2

    .line 251
    const-wide/16 v8, 0x0

    .line 252
    .line 253
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 254
    .line 255
    .line 256
    move-result-wide v4

    .line 257
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 258
    .line 259
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 260
    .line 261
    float-to-double v8, v3

    .line 262
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 263
    .line 264
    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 265
    .line 266
    sub-float/2addr v3, v6

    .line 267
    float-to-double v10, v3

    .line 268
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 269
    .line 270
    .line 271
    move-result-wide v10

    .line 272
    add-double/2addr v10, v8

    .line 273
    double-to-float v3, v10

    .line 274
    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 275
    .line 276
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 277
    .line 278
    iget-object v3, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 279
    .line 280
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 281
    .line 282
    iget-object v8, v0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 283
    .line 284
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 285
    .line 286
    add-float/2addr v6, v9

    .line 287
    iput v6, v2, Landroid/graphics/PointF;->x:F

    .line 288
    .line 289
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 290
    .line 291
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 292
    .line 293
    sub-float/2addr v3, v6

    .line 294
    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 295
    .line 296
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 297
    .line 298
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 299
    .line 300
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 301
    .line 302
    iget v8, v6, Landroid/graphics/RectF;->left:F

    .line 303
    .line 304
    cmpg-float v8, v3, v8

    .line 305
    .line 306
    if-gtz v8, :cond_7

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/mycompany/app/curl/CurlMesh;->e()V

    .line 309
    .line 310
    .line 311
    if-eqz p1, :cond_13

    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :cond_7
    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 318
    .line 319
    cmpl-float v3, v3, v6

    .line 320
    .line 321
    if-lez v3, :cond_8

    .line 322
    .line 323
    iput v6, v2, Landroid/graphics/PointF;->x:F

    .line 324
    .line 325
    :cond_8
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 326
    .line 327
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 328
    .line 329
    invoke-static {v2, v7}, Ljava/lang/Float;->compare(FF)I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_11

    .line 334
    .line 335
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 336
    .line 337
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 338
    .line 339
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 340
    .line 341
    iget v8, v6, Landroid/graphics/RectF;->right:F

    .line 342
    .line 343
    sub-float/2addr v3, v8

    .line 344
    iget v9, v2, Landroid/graphics/PointF;->y:F

    .line 345
    .line 346
    iget-object v10, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 347
    .line 348
    iget v11, v10, Landroid/graphics/PointF;->x:F

    .line 349
    .line 350
    mul-float/2addr v3, v11

    .line 351
    iget v11, v10, Landroid/graphics/PointF;->y:F

    .line 352
    .line 353
    div-float/2addr v3, v11

    .line 354
    add-float/2addr v3, v9

    .line 355
    cmpg-float v12, v11, v7

    .line 356
    .line 357
    if-gez v12, :cond_9

    .line 358
    .line 359
    iget v12, v6, Landroid/graphics/RectF;->top:F

    .line 360
    .line 361
    cmpg-float v13, v3, v12

    .line 362
    .line 363
    if-gez v13, :cond_9

    .line 364
    .line 365
    sub-float/2addr v12, v9

    .line 366
    iput v12, v10, Landroid/graphics/PointF;->x:F

    .line 367
    .line 368
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 369
    .line 370
    sub-float/2addr v2, v8

    .line 371
    iput v2, v10, Landroid/graphics/PointF;->y:F

    .line 372
    .line 373
    goto/16 :goto_3

    .line 374
    .line 375
    :cond_9
    cmpl-float v7, v11, v7

    .line 376
    .line 377
    if-lez v7, :cond_11

    .line 378
    .line 379
    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 380
    .line 381
    cmpl-float v3, v3, v6

    .line 382
    .line 383
    if-lez v3, :cond_11

    .line 384
    .line 385
    sub-float/2addr v9, v6

    .line 386
    iput v9, v10, Landroid/graphics/PointF;->x:F

    .line 387
    .line 388
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 389
    .line 390
    sub-float/2addr v8, v2

    .line 391
    iput v8, v10, Landroid/graphics/PointF;->y:F

    .line 392
    .line 393
    goto/16 :goto_3

    .line 394
    .line 395
    :cond_a
    move-wide/from16 v18, v13

    .line 396
    .line 397
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 398
    .line 399
    iget v3, v0, Lcom/mycompany/app/curl/CurlView;->n:I

    .line 400
    .line 401
    if-ne v3, v2, :cond_d

    .line 402
    .line 403
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 404
    .line 405
    iget-object v3, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 406
    .line 407
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 408
    .line 409
    iget-object v8, v0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 410
    .line 411
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 412
    .line 413
    sub-float/2addr v6, v9

    .line 414
    iput v6, v2, Landroid/graphics/PointF;->x:F

    .line 415
    .line 416
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 417
    .line 418
    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 419
    .line 420
    sub-float/2addr v3, v8

    .line 421
    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 422
    .line 423
    mul-float/2addr v6, v6

    .line 424
    mul-float/2addr v3, v3

    .line 425
    add-float/2addr v3, v6

    .line 426
    float-to-double v2, v3

    .line 427
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 428
    .line 429
    .line 430
    move-result-wide v2

    .line 431
    double-to-float v2, v2

    .line 432
    iget-object v3, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 433
    .line 434
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    mul-double v13, v4, v18

    .line 439
    .line 440
    float-to-double v8, v2

    .line 441
    mul-float/2addr v3, v10

    .line 442
    float-to-double v10, v3

    .line 443
    sub-double/2addr v10, v13

    .line 444
    cmpl-double v6, v8, v10

    .line 445
    .line 446
    if-lez v6, :cond_b

    .line 447
    .line 448
    sub-float/2addr v3, v2

    .line 449
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    float-to-double v13, v2

    .line 454
    div-double v4, v13, v18

    .line 455
    .line 456
    :cond_b
    cmpl-double v2, v8, v13

    .line 457
    .line 458
    if-ltz v2, :cond_c

    .line 459
    .line 460
    sub-double v2, v8, v13

    .line 461
    .line 462
    div-double v2, v2, v16

    .line 463
    .line 464
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 465
    .line 466
    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 467
    .line 468
    iget-object v10, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 469
    .line 470
    iget v10, v10, Landroid/graphics/PointF;->x:F

    .line 471
    .line 472
    sub-float/2addr v10, v6

    .line 473
    float-to-double v10, v10

    .line 474
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 475
    .line 476
    .line 477
    move-result-wide v4

    .line 478
    const-wide/16 v10, 0x0

    .line 479
    .line 480
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    .line 481
    .line 482
    .line 483
    move-result-wide v4

    .line 484
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 485
    .line 486
    iget v10, v6, Landroid/graphics/PointF;->y:F

    .line 487
    .line 488
    float-to-double v10, v10

    .line 489
    iget-object v12, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 490
    .line 491
    iget v12, v12, Landroid/graphics/PointF;->y:F

    .line 492
    .line 493
    float-to-double v12, v12

    .line 494
    mul-double/2addr v12, v2

    .line 495
    div-double/2addr v12, v8

    .line 496
    sub-double/2addr v10, v12

    .line 497
    double-to-float v2, v10

    .line 498
    iput v2, v6, Landroid/graphics/PointF;->y:F

    .line 499
    .line 500
    goto :goto_2

    .line 501
    :cond_c
    div-double v2, v8, v13

    .line 502
    .line 503
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 504
    .line 505
    .line 506
    move-result-wide v2

    .line 507
    mul-double v2, v2, v18

    .line 508
    .line 509
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 510
    .line 511
    .line 512
    move-result-wide v2

    .line 513
    mul-double/2addr v2, v4

    .line 514
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 515
    .line 516
    iget v10, v6, Landroid/graphics/PointF;->x:F

    .line 517
    .line 518
    float-to-double v10, v10

    .line 519
    iget-object v12, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 520
    .line 521
    iget v13, v12, Landroid/graphics/PointF;->x:F

    .line 522
    .line 523
    float-to-double v13, v13

    .line 524
    mul-double/2addr v13, v2

    .line 525
    div-double/2addr v13, v8

    .line 526
    add-double/2addr v13, v10

    .line 527
    double-to-float v10, v13

    .line 528
    iput v10, v6, Landroid/graphics/PointF;->x:F

    .line 529
    .line 530
    iget v10, v6, Landroid/graphics/PointF;->y:F

    .line 531
    .line 532
    float-to-double v10, v10

    .line 533
    iget v12, v12, Landroid/graphics/PointF;->y:F

    .line 534
    .line 535
    float-to-double v12, v12

    .line 536
    mul-double/2addr v12, v2

    .line 537
    div-double/2addr v12, v8

    .line 538
    add-double/2addr v12, v10

    .line 539
    double-to-float v2, v12

    .line 540
    iput v2, v6, Landroid/graphics/PointF;->y:F

    .line 541
    .line 542
    goto :goto_2

    .line 543
    :cond_d
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 544
    .line 545
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 546
    .line 547
    iget-object v3, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 548
    .line 549
    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 550
    .line 551
    sub-float/2addr v2, v3

    .line 552
    float-to-double v2, v2

    .line 553
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 554
    .line 555
    .line 556
    move-result-wide v2

    .line 557
    const-wide/16 v8, 0x0

    .line 558
    .line 559
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 560
    .line 561
    .line 562
    move-result-wide v2

    .line 563
    iget-object v4, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 564
    .line 565
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 566
    .line 567
    float-to-double v8, v5

    .line 568
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 569
    .line 570
    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 571
    .line 572
    sub-float/2addr v6, v5

    .line 573
    float-to-double v5, v6

    .line 574
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 575
    .line 576
    .line 577
    move-result-wide v5

    .line 578
    sub-double/2addr v8, v5

    .line 579
    double-to-float v5, v8

    .line 580
    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 581
    .line 582
    iget-object v4, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 583
    .line 584
    iget-object v5, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 585
    .line 586
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 587
    .line 588
    iget-object v8, v0, Lcom/mycompany/app/curl/CurlView;->w:Landroid/graphics/PointF;

    .line 589
    .line 590
    iget v9, v8, Landroid/graphics/PointF;->x:F

    .line 591
    .line 592
    add-float/2addr v6, v9

    .line 593
    iput v6, v4, Landroid/graphics/PointF;->x:F

    .line 594
    .line 595
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 596
    .line 597
    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 598
    .line 599
    sub-float/2addr v5, v6

    .line 600
    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 601
    .line 602
    move-wide v4, v2

    .line 603
    :goto_2
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 604
    .line 605
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 606
    .line 607
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 608
    .line 609
    iget v8, v6, Landroid/graphics/RectF;->right:F

    .line 610
    .line 611
    cmpl-float v8, v3, v8

    .line 612
    .line 613
    if-ltz v8, :cond_e

    .line 614
    .line 615
    invoke-virtual {v1}, Lcom/mycompany/app/curl/CurlMesh;->e()V

    .line 616
    .line 617
    .line 618
    if-eqz p1, :cond_13

    .line 619
    .line 620
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 621
    .line 622
    .line 623
    return-void

    .line 624
    :cond_e
    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 625
    .line 626
    cmpg-float v3, v3, v6

    .line 627
    .line 628
    if-gez v3, :cond_f

    .line 629
    .line 630
    iput v6, v2, Landroid/graphics/PointF;->x:F

    .line 631
    .line 632
    :cond_f
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 633
    .line 634
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 635
    .line 636
    invoke-static {v2, v7}, Ljava/lang/Float;->compare(FF)I

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    if-eqz v2, :cond_11

    .line 641
    .line 642
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 643
    .line 644
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 645
    .line 646
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->k:Landroid/graphics/RectF;

    .line 647
    .line 648
    iget v8, v6, Landroid/graphics/RectF;->left:F

    .line 649
    .line 650
    sub-float/2addr v3, v8

    .line 651
    iget v9, v2, Landroid/graphics/PointF;->y:F

    .line 652
    .line 653
    iget-object v10, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 654
    .line 655
    iget v11, v10, Landroid/graphics/PointF;->x:F

    .line 656
    .line 657
    mul-float/2addr v3, v11

    .line 658
    iget v11, v10, Landroid/graphics/PointF;->y:F

    .line 659
    .line 660
    div-float/2addr v3, v11

    .line 661
    add-float/2addr v3, v9

    .line 662
    cmpg-float v12, v11, v7

    .line 663
    .line 664
    if-gez v12, :cond_10

    .line 665
    .line 666
    iget v12, v6, Landroid/graphics/RectF;->top:F

    .line 667
    .line 668
    cmpg-float v13, v3, v12

    .line 669
    .line 670
    if-gez v13, :cond_10

    .line 671
    .line 672
    sub-float/2addr v9, v12

    .line 673
    iput v9, v10, Landroid/graphics/PointF;->x:F

    .line 674
    .line 675
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 676
    .line 677
    sub-float/2addr v8, v2

    .line 678
    iput v8, v10, Landroid/graphics/PointF;->y:F

    .line 679
    .line 680
    goto :goto_3

    .line 681
    :cond_10
    cmpl-float v7, v11, v7

    .line 682
    .line 683
    if-lez v7, :cond_11

    .line 684
    .line 685
    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 686
    .line 687
    cmpl-float v3, v3, v6

    .line 688
    .line 689
    if-lez v3, :cond_11

    .line 690
    .line 691
    sub-float/2addr v6, v9

    .line 692
    iput v6, v10, Landroid/graphics/PointF;->x:F

    .line 693
    .line 694
    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 695
    .line 696
    sub-float/2addr v2, v8

    .line 697
    iput v2, v10, Landroid/graphics/PointF;->y:F

    .line 698
    .line 699
    :cond_11
    :goto_3
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 700
    .line 701
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 702
    .line 703
    mul-float/2addr v3, v3

    .line 704
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 705
    .line 706
    mul-float/2addr v2, v2

    .line 707
    add-float/2addr v2, v3

    .line 708
    float-to-double v2, v2

    .line 709
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 710
    .line 711
    .line 712
    move-result-wide v2

    .line 713
    const-wide/16 v8, 0x0

    .line 714
    .line 715
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Double;->compare(DD)I

    .line 716
    .line 717
    .line 718
    move-result v6

    .line 719
    if-eqz v6, :cond_12

    .line 720
    .line 721
    iget-object v6, v0, Lcom/mycompany/app/curl/CurlView;->o:Landroid/graphics/PointF;

    .line 722
    .line 723
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 724
    .line 725
    float-to-double v7, v7

    .line 726
    div-double/2addr v7, v2

    .line 727
    double-to-float v7, v7

    .line 728
    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 729
    .line 730
    iget v7, v6, Landroid/graphics/PointF;->y:F

    .line 731
    .line 732
    float-to-double v7, v7

    .line 733
    div-double/2addr v7, v2

    .line 734
    double-to-float v2, v7

    .line 735
    iput v2, v6, Landroid/graphics/PointF;->y:F

    .line 736
    .line 737
    iget-object v2, v0, Lcom/mycompany/app/curl/CurlView;->p:Landroid/graphics/PointF;

    .line 738
    .line 739
    invoke-virtual {v1, v2, v6, v4, v5}, Lcom/mycompany/app/curl/CurlMesh;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V

    .line 740
    .line 741
    .line 742
    goto :goto_4

    .line 743
    :cond_12
    invoke-virtual {v1}, Lcom/mycompany/app/curl/CurlMesh;->e()V

    .line 744
    .line 745
    .line 746
    :goto_4
    if-eqz p1, :cond_13

    .line 747
    .line 748
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 749
    .line 750
    .line 751
    :cond_13
    :goto_5
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/curl/CurlView;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getPageCenter()Lcom/mycompany/app/curl/CurlMesh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getPageLeft()Lcom/mycompany/app/curl/CurlMesh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getPageList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mycompany/app/curl/CurlMesh;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/curl/CurlRenderer;->g:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x3

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public getPageRight()Lcom/mycompany/app/curl/CurlMesh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/mycompany/app/curl/CurlRenderer;->b(I)Lcom/mycompany/app/curl/CurlMesh;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/curl/CurlView;->c(II)V

    .line 5
    .line 6
    .line 7
    iget-object p3, p0, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-interface {p3, p1, p2}, Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;->a(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setEnableTouchPressure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/curl/CurlView;->g:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const p1, 0x3f4ccccd    # 0.8f

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/curl/CurlView;->A:F

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setPrepared(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, v0, Lcom/mycompany/app/curl/CurlRenderer;->j:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setReverse(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/curl/CurlView;->c:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Lcom/mycompany/app/curl/CurlRenderer;->c:Z

    .line 8
    .line 9
    :cond_0
    return-void
.end method
