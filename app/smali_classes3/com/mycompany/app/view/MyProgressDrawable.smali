.class public Lcom/mycompany/app/view/MyProgressDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/graphics/Paint;

.field public c:I

.field public d:I

.field public e:Landroid/graphics/RectF;

.field public f:Z

.field public g:J

.field public h:J

.field public i:D

.field public j:Z

.field public k:F

.field public l:F

.field public m:Z

.field public final n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/view/MyProgressDrawable$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyProgressDrawable$1;-><init>(Lcom/mycompany/app/view/MyProgressDrawable;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->n:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->a:Landroid/view/View;

    .line 12
    .line 13
    iput p3, p0, Lcom/mycompany/app/view/MyProgressDrawable;->c:I

    .line 14
    .line 15
    const/16 p1, 0xff

    .line 16
    .line 17
    iput p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->d:I

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->b:Landroid/graphics/Paint;

    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->b:Landroid/graphics/Paint;

    .line 31
    .line 32
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->b:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->b:Landroid/graphics/Paint;

    .line 43
    .line 44
    iget p2, p0, Lcom/mycompany/app/view/MyProgressDrawable;->c:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Landroid/graphics/RectF;

    .line 50
    .line 51
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->e:Landroid/graphics/RectF;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->e:Landroid/graphics/RectF;

    .line 8
    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->b:Landroid/graphics/Paint;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-wide v2, p0, Lcom/mycompany/app/view/MyProgressDrawable;->g:J

    .line 22
    .line 23
    sub-long v2, v0, v2

    .line 24
    .line 25
    iget-wide v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->h:J

    .line 26
    .line 27
    const-wide/16 v6, 0xc8

    .line 28
    .line 29
    cmp-long v6, v4, v6

    .line 30
    .line 31
    if-gez v6, :cond_2

    .line 32
    .line 33
    add-long/2addr v4, v2

    .line 34
    iput-wide v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->h:J

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-wide v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->i:D

    .line 38
    .line 39
    long-to-double v6, v2

    .line 40
    add-double/2addr v4, v6

    .line 41
    iput-wide v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->i:D

    .line 42
    .line 43
    const-wide v6, 0x407cc00000000000L    # 460.0

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    cmpl-double v8, v4, v6

    .line 49
    .line 50
    if-lez v8, :cond_3

    .line 51
    .line 52
    sub-double/2addr v4, v6

    .line 53
    iput-wide v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->i:D

    .line 54
    .line 55
    const-wide/16 v4, 0x0

    .line 56
    .line 57
    iput-wide v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->h:J

    .line 58
    .line 59
    iget-boolean v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->j:Z

    .line 60
    .line 61
    xor-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    iput-boolean v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->j:Z

    .line 64
    .line 65
    :cond_3
    iget-wide v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->i:D

    .line 66
    .line 67
    div-double/2addr v4, v6

    .line 68
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 69
    .line 70
    add-double/2addr v4, v6

    .line 71
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    mul-double/2addr v4, v6

    .line 77
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    double-to-float v4, v4

    .line 82
    const/high16 v5, 0x40000000    # 2.0f

    .line 83
    .line 84
    div-float/2addr v4, v5

    .line 85
    const/high16 v5, 0x3f000000    # 0.5f

    .line 86
    .line 87
    add-float/2addr v4, v5

    .line 88
    iget-boolean v5, p0, Lcom/mycompany/app/view/MyProgressDrawable;->j:Z

    .line 89
    .line 90
    const/high16 v6, 0x437e0000    # 254.0f

    .line 91
    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    const/high16 v5, 0x3f800000    # 1.0f

    .line 95
    .line 96
    sub-float/2addr v5, v4

    .line 97
    mul-float/2addr v5, v6

    .line 98
    iget v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->l:F

    .line 99
    .line 100
    iget v6, p0, Lcom/mycompany/app/view/MyProgressDrawable;->k:F

    .line 101
    .line 102
    sub-float/2addr v6, v5

    .line 103
    add-float/2addr v6, v4

    .line 104
    iput v6, p0, Lcom/mycompany/app/view/MyProgressDrawable;->l:F

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    mul-float v5, v4, v6

    .line 108
    .line 109
    :goto_0
    iput v5, p0, Lcom/mycompany/app/view/MyProgressDrawable;->k:F

    .line 110
    .line 111
    :goto_1
    iget v4, p0, Lcom/mycompany/app/view/MyProgressDrawable;->l:F

    .line 112
    .line 113
    long-to-float v2, v2

    .line 114
    const/high16 v3, 0x43660000    # 230.0f

    .line 115
    .line 116
    mul-float/2addr v2, v3

    .line 117
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 118
    .line 119
    div-float/2addr v2, v3

    .line 120
    add-float/2addr v2, v4

    .line 121
    iput v2, p0, Lcom/mycompany/app/view/MyProgressDrawable;->l:F

    .line 122
    .line 123
    const/high16 v3, 0x43b40000    # 360.0f

    .line 124
    .line 125
    cmpl-float v4, v2, v3

    .line 126
    .line 127
    if-lez v4, :cond_5

    .line 128
    .line 129
    sub-float/2addr v2, v3

    .line 130
    iput v2, p0, Lcom/mycompany/app/view/MyProgressDrawable;->l:F

    .line 131
    .line 132
    :cond_5
    iput-wide v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->g:J

    .line 133
    .line 134
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->m:Z

    .line 135
    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    sget v0, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 139
    .line 140
    const v1, 0x3e4ccccd    # 0.2f

    .line 141
    .line 142
    .line 143
    cmpl-float v0, v0, v1

    .line 144
    .line 145
    if-lez v0, :cond_6

    .line 146
    .line 147
    const v0, -0x5e000001

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    const/high16 v0, -0x5f000000

    .line 152
    .line 153
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyProgressDrawable;->e(I)V

    .line 154
    .line 155
    .line 156
    :cond_7
    iget v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->l:F

    .line 157
    .line 158
    const/high16 v1, 0x42b40000    # 90.0f

    .line 159
    .line 160
    sub-float v4, v0, v1

    .line 161
    .line 162
    const/high16 v0, 0x41800000    # 16.0f

    .line 163
    .line 164
    iget v1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->k:F

    .line 165
    .line 166
    add-float v5, v1, v0

    .line 167
    .line 168
    iget-object v3, p0, Lcom/mycompany/app/view/MyProgressDrawable;->e:Landroid/graphics/RectF;

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    iget-object v7, p0, Lcom/mycompany/app/view/MyProgressDrawable;->b:Landroid/graphics/Paint;

    .line 172
    .line 173
    move-object v2, p1

    .line 174
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->a:Landroid/view/View;

    .line 178
    .line 179
    if-eqz p1, :cond_8

    .line 180
    .line 181
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->n:Ljava/lang/Runnable;

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 184
    .line 185
    .line 186
    :cond_8
    :goto_3
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->a:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->b:Landroid/graphics/Paint;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->e:Landroid/graphics/RectF;

    .line 10
    .line 11
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->d:I

    .line 7
    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->d:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->e:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    int-to-float p1, p1

    .line 6
    int-to-float p2, p2

    .line 7
    int-to-float p3, p3

    .line 8
    int-to-float p4, p4

    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->c:I

    .line 7
    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/view/MyProgressDrawable;->c:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/mycompany/app/view/MyProgressDrawable;->g:J

    .line 14
    .line 15
    return-void
.end method
