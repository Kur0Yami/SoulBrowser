.class public Lcom/mycompany/app/view/MyPaletteView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyPaletteView$PaletteListener;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Landroid/graphics/Rect;

.field public C:Ljava/util/ArrayList;

.field public c:Z

.field public f:Lcom/mycompany/app/view/MyPaletteView$PaletteListener;

.field public g:I

.field public h:I

.field public final i:I

.field public j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public q:F

.field public r:Landroid/graphics/Bitmap;

.field public s:Landroid/graphics/Paint;

.field public t:Landroid/graphics/Paint;

.field public u:Landroid/graphics/Paint;

.field public v:I

.field public w:I

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/high16 v0, 0x43340000    # 180.0f

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyPaletteView;->c:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 20
    .line 21
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 22
    .line 23
    iput v1, p0, Lcom/mycompany/app/view/MyPaletteView;->i:I

    .line 24
    .line 25
    mul-int/lit8 v2, v1, 0x2

    .line 26
    .line 27
    iput v2, p0, Lcom/mycompany/app/view/MyPaletteView;->k:I

    .line 28
    .line 29
    iput v1, p0, Lcom/mycompany/app/view/MyPaletteView;->n:I

    .line 30
    .line 31
    const/high16 v1, 0x40c00000    # 6.0f

    .line 32
    .line 33
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->l:I

    .line 42
    .line 43
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->i:I

    .line 44
    .line 45
    iput v1, p0, Lcom/mycompany/app/view/MyPaletteView;->o:I

    .line 46
    .line 47
    iget v2, p0, Lcom/mycompany/app/view/MyPaletteView;->k:I

    .line 48
    .line 49
    mul-int/lit8 p1, p1, 0x2

    .line 50
    .line 51
    add-int/2addr p1, v2

    .line 52
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->p:I

    .line 53
    .line 54
    div-int/lit8 v1, v1, 0x2

    .line 55
    .line 56
    iput v1, p0, Lcom/mycompany/app/view/MyPaletteView;->m:I

    .line 57
    .line 58
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 59
    .line 60
    int-to-float p1, p1

    .line 61
    const/high16 v1, 0x40000000    # 2.0f

    .line 62
    .line 63
    div-float/2addr p1, v1

    .line 64
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    new-instance v2, Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/mycompany/app/view/MyPaletteView;->s:Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/mycompany/app/view/MyPaletteView;->s:Landroid/graphics/Paint;

    .line 79
    .line 80
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/mycompany/app/view/MyPaletteView;->s:Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/mycompany/app/view/MyPaletteView;->s:Landroid/graphics/Paint;

    .line 91
    .line 92
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 93
    .line 94
    const/high16 v4, -0x1000000

    .line 95
    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    const v2, -0xc0c0c1

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    move v2, v4

    .line 103
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Landroid/graphics/Paint;

    .line 107
    .line 108
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/view/MyPaletteView;->t:Landroid/graphics/Paint;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/mycompany/app/view/MyPaletteView;->t:Landroid/graphics/Paint;

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/mycompany/app/view/MyPaletteView;->t:Landroid/graphics/Paint;

    .line 122
    .line 123
    iget v2, p0, Lcom/mycompany/app/view/MyPaletteView;->l:I

    .line 124
    .line 125
    int-to-float v2, v2

    .line 126
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/mycompany/app/view/MyPaletteView;->t:Landroid/graphics/Paint;

    .line 130
    .line 131
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/view/MyPaletteView;->u:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->u:Landroid/graphics/Paint;

    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->u:Landroid/graphics/Paint;

    .line 150
    .line 151
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->l:I

    .line 152
    .line 153
    sub-int/2addr v1, p1

    .line 154
    int-to-float p1, v1

    .line 155
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/mycompany/app/view/MyPaletteView;->u:Landroid/graphics/Paint;

    .line 159
    .line 160
    const/4 v0, -0x1

    .line 161
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    .line 163
    .line 164
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 165
    .line 166
    const/16 v0, 0x1d

    .line 167
    .line 168
    if-lt p1, v0, :cond_2

    .line 169
    .line 170
    new-instance p1, Landroid/graphics/Rect;

    .line 171
    .line 172
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object p1, p0, Lcom/mycompany/app/view/MyPaletteView;->B:Landroid/graphics/Rect;

    .line 176
    .line 177
    new-instance p1, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object p1, p0, Lcom/mycompany/app/view/MyPaletteView;->C:Ljava/util/ArrayList;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->B:Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_2
    return-void
.end method

.method private getColor1Poses()[F
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->v:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/mycompany/app/main/MainConst;->w:[F

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    sget-object v0, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_2
    sget-object v0, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 22
    .line 23
    return-object v0
.end method

.method private getColor1Values()[I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->v:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/mycompany/app/main/MainConst;->v:[I

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    sget-object v0, Lcom/mycompany/app/main/MainConst;->r:[I

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_2
    sget-object v0, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyPaletteView;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->f:Lcom/mycompany/app/view/MyPaletteView$PaletteListener;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->s:Landroid/graphics/Paint;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->t:Landroid/graphics/Paint;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->u:Landroid/graphics/Paint;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->B:Landroid/graphics/Rect;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->C:Ljava/util/ArrayList;

    .line 25
    .line 26
    return-void
.end method

.method public final b(FI)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/high16 v0, -0x1000000

    .line 4
    .line 5
    or-int/2addr p2, v0

    .line 6
    :cond_0
    iput p2, p0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->x:F

    .line 9
    .line 10
    iget p2, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    int-to-float p2, p2

    .line 16
    mul-float/2addr p1, p2

    .line 17
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyPaletteView;->invalidate()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final c(IIII)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->B:Landroid/graphics/Rect;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/view/MyPaletteView;->C:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :try_start_0
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 18
    .line 19
    sub-int/2addr p1, v1

    .line 20
    sub-int/2addr p2, v1

    .line 21
    add-int/2addr p3, v1

    .line 22
    add-int/2addr p4, v1

    .line 23
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/view/MyPaletteView;->C:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final d(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->i:I

    .line 12
    .line 13
    int-to-float v1, v0

    .line 14
    cmpl-float v2, p1, v1

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ltz v2, :cond_1

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 20
    .line 21
    add-int/2addr v0, v2

    .line 22
    int-to-float v0, v0

    .line 23
    cmpg-float v0, p1, v0

    .line 24
    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->n:I

    .line 28
    .line 29
    int-to-float v2, v0

    .line 30
    cmpl-float v2, p2, v2

    .line 31
    .line 32
    if-ltz v2, :cond_1

    .line 33
    .line 34
    iget v2, p0, Lcom/mycompany/app/view/MyPaletteView;->k:I

    .line 35
    .line 36
    add-int/2addr v0, v2

    .line 37
    int-to-float v0, v0

    .line 38
    cmpg-float p2, p2, v0

    .line 39
    .line 40
    if-gez p2, :cond_1

    .line 41
    .line 42
    iput v3, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 43
    .line 44
    :cond_1
    iget p2, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 45
    .line 46
    if-ne p2, v3, :cond_a

    .line 47
    .line 48
    sub-float/2addr p1, v1

    .line 49
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    cmpg-float p1, p1, p2

    .line 53
    .line 54
    if-gez p1, :cond_2

    .line 55
    .line 56
    iput p2, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 57
    .line 58
    :cond_2
    iget p1, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 59
    .line 60
    iget p2, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 61
    .line 62
    sub-int/2addr p2, v3

    .line 63
    int-to-float p2, p2

    .line 64
    cmpl-float p1, p1, p2

    .line 65
    .line 66
    if-lez p1, :cond_3

    .line 67
    .line 68
    iput p2, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 69
    .line 70
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 p2, 0x0

    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/mycompany/app/view/MyPaletteView;->getColor1Values()[I

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    aget p1, p1, p2

    .line 87
    .line 88
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 92
    .line 93
    sub-int/2addr v0, v3

    .line 94
    if-ne p1, v0, :cond_7

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/mycompany/app/view/MyPaletteView;->getColor1Values()[I

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_6

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    array-length p2, p1

    .line 104
    sub-int/2addr p2, v3

    .line 105
    aget p1, p1, p2

    .line 106
    .line 107
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 111
    .line 112
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 117
    .line 118
    :goto_0
    iget p1, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 119
    .line 120
    if-nez p1, :cond_8

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_8
    iget-object p2, p0, Lcom/mycompany/app/view/MyPaletteView;->f:Lcom/mycompany/app/view/MyPaletteView$PaletteListener;

    .line 124
    .line 125
    if-eqz p2, :cond_9

    .line 126
    .line 127
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 128
    .line 129
    int-to-float p1, p1

    .line 130
    div-float/2addr v0, p1

    .line 131
    iput v0, p0, Lcom/mycompany/app/view/MyPaletteView;->x:F

    .line 132
    .line 133
    iget p1, p0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 134
    .line 135
    invoke-interface {p2, v0, p1}, Lcom/mycompany/app/view/MyPaletteView$PaletteListener;->a(FI)V

    .line 136
    .line 137
    .line 138
    :cond_9
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyPaletteView;->invalidate()V

    .line 139
    .line 140
    .line 141
    :cond_a
    :goto_1
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyPaletteView;->c:Z

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
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyPaletteView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->i:I

    .line 21
    .line 22
    int-to-float v1, v1

    .line 23
    iget v2, p0, Lcom/mycompany/app/view/MyPaletteView;->n:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->i:I

    .line 31
    .line 32
    int-to-float v2, v0

    .line 33
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->n:I

    .line 34
    .line 35
    int-to-float v3, v1

    .line 36
    iget v4, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 37
    .line 38
    add-int/2addr v0, v4

    .line 39
    int-to-float v4, v0

    .line 40
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->k:I

    .line 41
    .line 42
    add-int/2addr v1, v0

    .line 43
    int-to-float v5, v1

    .line 44
    iget-object v6, p0, Lcom/mycompany/app/view/MyPaletteView;->s:Landroid/graphics/Paint;

    .line 45
    .line 46
    move-object v1, p1

    .line 47
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    move-object v7, v1

    .line 51
    iget p1, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/view/MyPaletteView;->u:Landroid/graphics/Paint;

    .line 57
    .line 58
    const v0, -0x1f1f20

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyPaletteView;->u:Landroid/graphics/Paint;

    .line 66
    .line 67
    const/4 v0, -0x1

    .line 68
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    .line 70
    .line 71
    :goto_1
    iget p1, p0, Lcom/mycompany/app/view/MyPaletteView;->l:I

    .line 72
    .line 73
    div-int/lit8 p1, p1, 0x2

    .line 74
    .line 75
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 76
    .line 77
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->m:I

    .line 78
    .line 79
    int-to-float v1, v1

    .line 80
    sub-float/2addr v0, v1

    .line 81
    int-to-float v1, p1

    .line 82
    add-float/2addr v0, v1

    .line 83
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->i:I

    .line 84
    .line 85
    int-to-float v1, v1

    .line 86
    add-float/2addr v0, v1

    .line 87
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->n:I

    .line 92
    .line 93
    iget v2, p0, Lcom/mycompany/app/view/MyPaletteView;->l:I

    .line 94
    .line 95
    sub-int/2addr v1, v2

    .line 96
    add-int/2addr v1, p1

    .line 97
    iget p1, p0, Lcom/mycompany/app/view/MyPaletteView;->o:I

    .line 98
    .line 99
    add-int/2addr p1, v0

    .line 100
    sub-int/2addr p1, v2

    .line 101
    iget v3, p0, Lcom/mycompany/app/view/MyPaletteView;->p:I

    .line 102
    .line 103
    add-int/2addr v3, v1

    .line 104
    sub-int/2addr v3, v2

    .line 105
    int-to-float v8, v0

    .line 106
    int-to-float v9, v1

    .line 107
    int-to-float v10, p1

    .line 108
    int-to-float v11, v3

    .line 109
    iget-object v12, p0, Lcom/mycompany/app/view/MyPaletteView;->t:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    .line 113
    .line 114
    iget-object v12, p0, Lcom/mycompany/app/view/MyPaletteView;->u:Landroid/graphics/Paint;

    .line 115
    .line 116
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/mycompany/app/view/MyPaletteView;->c(IIII)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move p2, p1

    .line 5
    move-object p1, p0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget p2, p1, Lcom/mycompany/app/view/MyPaletteView;->l:I

    .line 10
    .line 11
    div-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    iget p3, p1, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 14
    .line 15
    iget p4, p1, Lcom/mycompany/app/view/MyPaletteView;->m:I

    .line 16
    .line 17
    int-to-float p4, p4

    .line 18
    sub-float/2addr p3, p4

    .line 19
    int-to-float p4, p2

    .line 20
    add-float/2addr p3, p4

    .line 21
    iget p4, p1, Lcom/mycompany/app/view/MyPaletteView;->i:I

    .line 22
    .line 23
    int-to-float p4, p4

    .line 24
    add-float/2addr p3, p4

    .line 25
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    iget p4, p1, Lcom/mycompany/app/view/MyPaletteView;->n:I

    .line 30
    .line 31
    iget p5, p1, Lcom/mycompany/app/view/MyPaletteView;->l:I

    .line 32
    .line 33
    sub-int/2addr p4, p5

    .line 34
    add-int/2addr p4, p2

    .line 35
    iget p2, p1, Lcom/mycompany/app/view/MyPaletteView;->o:I

    .line 36
    .line 37
    add-int/2addr p2, p3

    .line 38
    sub-int/2addr p2, p5

    .line 39
    iget v0, p1, Lcom/mycompany/app/view/MyPaletteView;->p:I

    .line 40
    .line 41
    add-int/2addr v0, p4

    .line 42
    sub-int/2addr v0, p5

    .line 43
    invoke-virtual {p0, p3, p4, p2, v0}, Lcom/mycompany/app/view/MyPaletteView;->c(IIII)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget v2, v0, Lcom/mycompany/app/view/MyPaletteView;->h:I

    .line 13
    .line 14
    if-eq v2, v1, :cond_5

    .line 15
    .line 16
    :cond_0
    iget v2, v0, Lcom/mycompany/app/view/MyPaletteView;->i:I

    .line 17
    .line 18
    mul-int/lit8 v2, v2, 0x2

    .line 19
    .line 20
    sub-int v2, v1, v2

    .line 21
    .line 22
    iput v2, v0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget v4, v0, Lcom/mycompany/app/view/MyPaletteView;->k:I

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {v0}, Lcom/mycompany/app/view/MyPaletteView;->getColor1Values()[I

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    invoke-direct {v0}, Lcom/mycompany/app/view/MyPaletteView;->getColor1Poses()[F

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    if-eqz v10, :cond_3

    .line 41
    .line 42
    if-eqz v11, :cond_3

    .line 43
    .line 44
    array-length v5, v10

    .line 45
    array-length v6, v11

    .line 46
    if-eq v5, v6, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :try_start_0
    new-instance v13, Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Landroid/graphics/LinearGradient;

    .line 59
    .line 60
    int-to-float v15, v2

    .line 61
    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    move v8, v15

    .line 67
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 71
    .line 72
    .line 73
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 74
    .line 75
    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-instance v12, Landroid/graphics/Canvas;

    .line 80
    .line 81
    invoke-direct {v12, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    .line 83
    .line 84
    const/4 v14, 0x0

    .line 85
    int-to-float v4, v4

    .line 86
    move-object/from16 v17, v13

    .line 87
    .line 88
    const/4 v13, 0x0

    .line 89
    move/from16 v16, v4

    .line 90
    .line 91
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    move-object v3, v2

    .line 95
    :catch_0
    :cond_3
    :goto_0
    iput-object v3, v0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 96
    .line 97
    iget v2, v0, Lcom/mycompany/app/view/MyPaletteView;->x:F

    .line 98
    .line 99
    const/high16 v3, -0x40800000    # -1.0f

    .line 100
    .line 101
    cmpl-float v3, v2, v3

    .line 102
    .line 103
    if-nez v3, :cond_4

    .line 104
    .line 105
    iget v2, v0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyPaletteView;->setColor(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget v3, v0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 112
    .line 113
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyPaletteView;->b(FI)V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_1
    iput v1, v0, Lcom/mycompany/app/view/MyPaletteView;->h:I

    .line 117
    .line 118
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v2, :cond_4

    .line 11
    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    if-eq v0, v4, :cond_4

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 20
    .line 21
    if-ne v0, v3, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyPaletteView;->A:Z

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->y:F

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iget v5, p0, Lcom/mycompany/app/view/MyPaletteView;->z:F

    .line 39
    .line 40
    invoke-static {v0, v1, v4, v5}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sget v1, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    cmpl-float v0, v0, v1

    .line 48
    .line 49
    if-lez v0, :cond_3

    .line 50
    .line 51
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyPaletteView;->A:Z

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->y:F

    .line 58
    .line 59
    sub-float/2addr v0, v1

    .line 60
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget v4, p0, Lcom/mycompany/app/view/MyPaletteView;->z:F

    .line 69
    .line 70
    sub-float/2addr v1, v4

    .line 71
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    cmpl-float v0, v1, v0

    .line 76
    .line 77
    if-lez v0, :cond_2

    .line 78
    .line 79
    iput v3, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 80
    .line 81
    return v2

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyPaletteView;->A:Z

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/view/MyPaletteView;->d(FF)V

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :cond_4
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 108
    .line 109
    if-ne v0, v3, :cond_5

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/view/MyPaletteView;->d(FF)V

    .line 121
    .line 122
    .line 123
    iput v1, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyPaletteView;->invalidate()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 135
    .line 136
    .line 137
    :cond_6
    :goto_0
    return v2

    .line 138
    :cond_7
    iput v1, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iput v0, p0, Lcom/mycompany/app/view/MyPaletteView;->y:F

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->z:F

    .line 151
    .line 152
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyPaletteView;->A:Z

    .line 153
    .line 154
    return v2
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->g:I

    .line 6
    .line 7
    return-void
.end method

.method public setBorder(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->s:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 2
    .line 3
    const/high16 p1, -0x40800000    # -1.0f

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->x:F

    .line 6
    .line 7
    iget-object p1, p0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget p1, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/mycompany/app/view/MyPaletteView;->getColor1Values()[I

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0}, Lcom/mycompany/app/view/MyPaletteView;->getColor1Poses()[F

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz p1, :cond_6

    .line 36
    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    array-length v1, p1

    .line 40
    array-length v2, v0

    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    array-length v1, p1

    .line 45
    const/4 v2, 0x0

    .line 46
    move v3, v2

    .line 47
    :goto_0
    if-ge v3, v1, :cond_4

    .line 48
    .line 49
    iget v4, p0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 50
    .line 51
    aget v5, p1, v3

    .line 52
    .line 53
    if-ne v4, v5, :cond_3

    .line 54
    .line 55
    aget p1, v0, v3

    .line 56
    .line 57
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 58
    .line 59
    int-to-float v1, v0

    .line 60
    mul-float/2addr p1, v1

    .line 61
    float-to-int p1, p1

    .line 62
    int-to-float p1, p1

    .line 63
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->x:F

    .line 64
    .line 65
    int-to-float v0, v0

    .line 66
    mul-float/2addr p1, v0

    .line 67
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyPaletteView;->invalidate()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    move p1, v2

    .line 77
    :goto_1
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 78
    .line 79
    if-ge p1, v0, :cond_6

    .line 80
    .line 81
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->w:I

    .line 82
    .line 83
    iget-object v1, p0, Lcom/mycompany/app/view/MyPaletteView;->r:Landroid/graphics/Bitmap;

    .line 84
    .line 85
    invoke-virtual {v1, p1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ne v0, v1, :cond_5

    .line 90
    .line 91
    int-to-float p1, p1

    .line 92
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->q:F

    .line 93
    .line 94
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->j:I

    .line 95
    .line 96
    int-to-float v0, v0

    .line 97
    div-float/2addr p1, v0

    .line 98
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->x:F

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyPaletteView;->invalidate()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    :goto_2
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyPaletteView;->n:I

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->k:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/mycompany/app/view/MyPaletteView;->i:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setListener(Lcom/mycompany/app/view/MyPaletteView$PaletteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyPaletteView;->f:Lcom/mycompany/app/view/MyPaletteView$PaletteListener;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyPaletteView;->v:I

    .line 2
    .line 3
    return-void
.end method
