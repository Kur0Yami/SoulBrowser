.class public Lcom/mycompany/app/view/MyAddrView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public c:Lcom/mycompany/app/view/MyBarView$BarListener;

.field public f:[I

.field public g:[Lcom/mycompany/app/view/MyIconView;

.field public h:Z

.field public i:I

.field public j:I

.field public k:Landroid/graphics/RectF;

.field public l:Landroid/graphics/Paint;

.field public m:F

.field public n:Landroid/graphics/Paint;

.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/RectF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MyAddrView;->k:Landroid/graphics/RectF;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyAddrView$1;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a([I)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    array-length p1, p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p1, v0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v1, v0

    .line 16
    :goto_1
    if-ge v1, p1, :cond_4

    .line 17
    .line 18
    new-array v2, p1, [Lcom/mycompany/app/view/MyIconView;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move v4, v0

    .line 25
    :goto_2
    if-ge v4, v1, :cond_2

    .line 26
    .line 27
    iget-object v5, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 28
    .line 29
    aget-object v5, v5, v4

    .line 30
    .line 31
    aput-object v5, v2, v4

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_3
    if-ge v1, p1, :cond_3

    .line 37
    .line 38
    new-instance v4, Lcom/mycompany/app/view/MyIconView;

    .line 39
    .line 40
    invoke-direct {v4, v3}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    aput-object v4, v2, v1

    .line 44
    .line 45
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    .line 49
    .line 50
    aget-object v4, v2, v1

    .line 51
    .line 52
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 53
    .line 54
    sget v6, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 55
    .line 56
    invoke-virtual {p0, v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    iput-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 63
    .line 64
    goto :goto_6

    .line 65
    :cond_4
    if-ge p1, v1, :cond_7

    .line 66
    .line 67
    new-array v2, p1, [Lcom/mycompany/app/view/MyIconView;

    .line 68
    .line 69
    move v3, v0

    .line 70
    :goto_4
    if-ge v3, p1, :cond_5

    .line 71
    .line 72
    iget-object v4, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 73
    .line 74
    aget-object v4, v4, v3

    .line 75
    .line 76
    aput-object v4, v2, v3

    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_5
    move v3, p1

    .line 82
    :goto_5
    if-ge v3, v1, :cond_6

    .line 83
    .line 84
    iget-object v4, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 85
    .line 86
    aget-object v4, v4, v3

    .line 87
    .line 88
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_6
    iput-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 95
    .line 96
    :cond_7
    :goto_6
    move v1, v0

    .line 97
    :goto_7
    if-ge v1, p1, :cond_b

    .line 98
    .line 99
    iget-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 100
    .line 101
    aget-object v2, v2, v1

    .line 102
    .line 103
    if-nez v2, :cond_8

    .line 104
    .line 105
    goto :goto_9

    .line 106
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 114
    .line 115
    aget v3, v3, v1

    .line 116
    .line 117
    if-ltz v3, :cond_a

    .line 118
    .line 119
    const/4 v4, 0x3

    .line 120
    if-lt v3, v4, :cond_9

    .line 121
    .line 122
    goto :goto_8

    .line 123
    :cond_9
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    const/4 v3, 0x1

    .line 127
    invoke-virtual {v2, v0, v3}, Lcom/mycompany/app/view/MyIconView;->v(ZZ)V

    .line 128
    .line 129
    .line 130
    new-instance v3, Lcom/mycompany/app/view/MyAddrView$2;

    .line 131
    .line 132
    invoke-direct {v3, p0}, Lcom/mycompany/app/view/MyAddrView$2;-><init>(Lcom/mycompany/app/view/MyAddrView;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_a
    :goto_8
    const/16 v3, 0x8

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_b
    return-void
.end method

.method public final b(IIZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-ne p1, v0, :cond_2

    .line 12
    .line 13
    const/high16 v2, -0x1000000

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    move v2, p1

    .line 17
    :goto_0
    iget v3, p0, Lcom/mycompany/app/view/MyAddrView;->i:I

    .line 18
    .line 19
    if-eq v3, v2, :cond_3

    .line 20
    .line 21
    iput v2, p0, Lcom/mycompany/app/view/MyAddrView;->i:I

    .line 22
    .line 23
    move v2, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_3
    move v2, v1

    .line 26
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 27
    .line 28
    if-nez v3, :cond_4

    .line 29
    .line 30
    new-instance v2, Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 41
    .line 42
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    .line 46
    .line 47
    move v2, v0

    .line 48
    :cond_4
    invoke-static {p1, p2, v1}, Lcom/mycompany/app/view/MyIconView;->l(IIZ)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iget v3, p0, Lcom/mycompany/app/view/MyAddrView;->j:I

    .line 53
    .line 54
    if-eq v3, p2, :cond_5

    .line 55
    .line 56
    iput p2, p0, Lcom/mycompany/app/view/MyAddrView;->j:I

    .line 57
    .line 58
    iget-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    .line 62
    .line 63
    move v2, v0

    .line 64
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 65
    .line 66
    if-nez p2, :cond_6

    .line 67
    .line 68
    sget p2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 69
    .line 70
    int-to-float p2, p2

    .line 71
    const/high16 v2, 0x40000000    # 2.0f

    .line 72
    .line 73
    div-float v2, p2, v2

    .line 74
    .line 75
    iput v2, p0, Lcom/mycompany/app/view/MyAddrView;->m:F

    .line 76
    .line 77
    new-instance v2, Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 88
    .line 89
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    .line 98
    .line 99
    iput v1, p0, Lcom/mycompany/app/view/MyAddrView;->o:I

    .line 100
    .line 101
    move v2, v0

    .line 102
    :cond_6
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyAddrView;->h:Z

    .line 103
    .line 104
    if-eq p2, p4, :cond_7

    .line 105
    .line 106
    iput-boolean p4, p0, Lcom/mycompany/app/view/MyAddrView;->h:Z

    .line 107
    .line 108
    move v2, v0

    .line 109
    :cond_7
    if-eqz p3, :cond_8

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_8
    sget p2, Lcom/mycompany/app/view/MyBarFrame;->q:I

    .line 113
    .line 114
    if-nez p1, :cond_9

    .line 115
    .line 116
    const v1, -0x7e1f1f20

    .line 117
    .line 118
    .line 119
    :cond_9
    :goto_2
    iget p1, p0, Lcom/mycompany/app/view/MyAddrView;->o:I

    .line 120
    .line 121
    if-eq p1, v1, :cond_a

    .line 122
    .line 123
    iput v1, p0, Lcom/mycompany/app/view/MyAddrView;->o:I

    .line 124
    .line 125
    iget-object p1, p0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_a
    move v0, v2

    .line 132
    :goto_3
    if-eqz v0, :cond_b

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 135
    .line 136
    .line 137
    :cond_b
    return-void
.end method

.method public final c(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_4

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    array-length v2, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    move v2, v1

    .line 19
    :goto_1
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    goto :goto_4

    .line 22
    :cond_3
    :goto_2
    if-ge v1, v0, :cond_5

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 25
    .line 26
    aget-object v2, v2, v1

    .line 27
    .line 28
    if-nez v2, :cond_4

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_4
    iget-object v3, p0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 32
    .line 33
    aget v3, v3, v1

    .line 34
    .line 35
    invoke-static {v3, p1}, Lcom/mycompany/app/main/MainUtil;->N(II)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/mycompany/app/view/MyIconView;->i(I)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p2}, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V

    .line 50
    .line 51
    .line 52
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    :goto_4
    return-void
.end method

.method public final d(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto :goto_5

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    array-length v2, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    move v2, v1

    .line 19
    :goto_1
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    goto :goto_5

    .line 22
    :cond_3
    move v2, v1

    .line 23
    :goto_2
    if-ge v2, v0, :cond_7

    .line 24
    .line 25
    iget-object v3, p0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 26
    .line 27
    aget-object v3, v3, v2

    .line 28
    .line 29
    if-nez v3, :cond_4

    .line 30
    .line 31
    goto :goto_4

    .line 32
    :cond_4
    iget-object v4, p0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 33
    .line 34
    aget v4, v4, v2

    .line 35
    .line 36
    if-eqz p1, :cond_6

    .line 37
    .line 38
    if-ltz v4, :cond_6

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    if-lt v4, v5, :cond_5

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_5
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_6
    :goto_3
    const/16 v4, 0x8

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_7
    :goto_5
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyAddrView;->i:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyAddrView;->k:Landroid/graphics/RectF;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 17
    .line 18
    int-to-float v3, v2

    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/mycompany/app/view/MyAddrView;->o:I

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyAddrView;->h:Z

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    iget v1, p0, Lcom/mycompany/app/view/MyAddrView;->m:F

    .line 45
    .line 46
    sub-float v4, v0, v1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-float v5, v0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    int-to-float v0, v0

    .line 58
    iget v1, p0, Lcom/mycompany/app/view/MyAddrView;->m:F

    .line 59
    .line 60
    sub-float v6, v0, v1

    .line 61
    .line 62
    iget-object v7, p0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    move-object v2, p1

    .line 66
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    move-object v2, p1

    .line 71
    iget v10, p0, Lcom/mycompany/app/view/MyAddrView;->m:F

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    int-to-float v11, p1

    .line 78
    iget v12, p0, Lcom/mycompany/app/view/MyAddrView;->m:F

    .line 79
    .line 80
    iget-object v13, p0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    move-object v8, v2

    .line 84
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyAddrView;->k:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget p3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    sub-int/2addr p2, p4

    .line 16
    int-to-float p2, p2

    .line 17
    const/high16 p4, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr p2, p4

    .line 20
    sget v0, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v0, p4

    .line 24
    sget p4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 25
    .line 26
    int-to-float p4, p4

    .line 27
    sub-float/2addr v0, p4

    .line 28
    iget-object p4, p0, Lcom/mycompany/app/view/MyAddrView;->k:Landroid/graphics/RectF;

    .line 29
    .line 30
    int-to-float v1, p3

    .line 31
    sub-float v2, p2, v0

    .line 32
    .line 33
    sub-int/2addr p1, p3

    .line 34
    int-to-float p1, p1

    .line 35
    add-float/2addr p2, v0

    .line 36
    invoke-virtual {p4, v1, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setListener(Lcom/mycompany/app/view/MyBarView$BarListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyAddrView;->c:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSettingColor(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 18
    .line 19
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    .line 23
    .line 24
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v2

    .line 27
    :goto_0
    invoke-static {p1, v2, v1}, Lcom/mycompany/app/view/MyIconView;->j(IIZ)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget v2, p0, Lcom/mycompany/app/view/MyAddrView;->j:I

    .line 32
    .line 33
    if-eq v2, p1, :cond_1

    .line 34
    .line 35
    iput p1, p0, Lcom/mycompany/app/view/MyAddrView;->j:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v1, v0

    .line 44
    :goto_1
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method
