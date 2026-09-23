.class public final enum Lcom/mycompany/app/crop/Edge;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mycompany/app/crop/Edge;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lcom/mycompany/app/crop/Edge;

.field public static final enum g:Lcom/mycompany/app/crop/Edge;

.field public static final enum h:Lcom/mycompany/app/crop/Edge;

.field public static final enum i:Lcom/mycompany/app/crop/Edge;

.field public static final synthetic j:[Lcom/mycompany/app/crop/Edge;


# instance fields
.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/mycompany/app/crop/Edge;

    .line 2
    .line 3
    const-string v1, "START"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 10
    .line 11
    new-instance v1, Lcom/mycompany/app/crop/Edge;

    .line 12
    .line 13
    const-string v3, "TOP"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 20
    .line 21
    new-instance v3, Lcom/mycompany/app/crop/Edge;

    .line 22
    .line 23
    const-string v5, "END"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 30
    .line 31
    new-instance v5, Lcom/mycompany/app/crop/Edge;

    .line 32
    .line 33
    const-string v7, "BOTTOM"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lcom/mycompany/app/crop/Edge;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lcom/mycompany/app/crop/Edge;->j:[Lcom/mycompany/app/crop/Edge;

    .line 53
    .line 54
    return-void
.end method

.method public static d(FFFFLandroid/graphics/RectF;)Z
    .locals 1

    .line 1
    iget v0, p4, Landroid/graphics/RectF;->top:F

    .line 2
    .line 3
    cmpg-float p0, p0, v0

    .line 4
    .line 5
    if-ltz p0, :cond_1

    .line 6
    .line 7
    iget p0, p4, Landroid/graphics/RectF;->left:F

    .line 8
    .line 9
    cmpg-float p0, p1, p0

    .line 10
    .line 11
    if-ltz p0, :cond_1

    .line 12
    .line 13
    iget p0, p4, Landroid/graphics/RectF;->bottom:F

    .line 14
    .line 15
    cmpl-float p0, p2, p0

    .line 16
    .line 17
    if-gtz p0, :cond_1

    .line 18
    .line 19
    iget p0, p4, Landroid/graphics/RectF;->right:F

    .line 20
    .line 21
    cmpl-float p0, p3, p0

    .line 22
    .line 23
    if-lez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mycompany/app/crop/Edge;
    .locals 1

    .line 1
    const-class v0, Lcom/mycompany/app/crop/Edge;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/mycompany/app/crop/Edge;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/mycompany/app/crop/Edge;
    .locals 1

    .line 1
    sget-object v0, Lcom/mycompany/app/crop/Edge;->j:[Lcom/mycompany/app/crop/Edge;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/mycompany/app/crop/Edge;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/mycompany/app/crop/Edge;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    .line 1
    sget-object v0, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 2
    .line 3
    iget v0, v0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 4
    .line 5
    sget-object v1, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 6
    .line 7
    iget v1, v1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 8
    .line 9
    sget-object v2, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 10
    .line 11
    iget v2, v2, Lcom/mycompany/app/crop/Edge;->c:F

    .line 12
    .line 13
    sget-object v3, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 14
    .line 15
    iget v3, v3, Lcom/mycompany/app/crop/Edge;->c:F

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    if-eq v4, v5, :cond_2

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    if-eq v4, v5, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    if-eq v4, v3, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sub-float/2addr v2, v0

    .line 34
    div-float/2addr v2, p1

    .line 35
    add-float/2addr v2, v1

    .line 36
    iput v2, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-static {v3, v1, p1, v0}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    sub-float/2addr v2, v0

    .line 47
    div-float/2addr v2, p1

    .line 48
    sub-float/2addr v3, v2

    .line 49
    iput v3, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    sub-float/2addr v3, v1

    .line 53
    mul-float/2addr v3, p1

    .line 54
    sub-float/2addr v2, v3

    .line 55
    iput v2, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 56
    .line 57
    return-void
.end method

.method public final b(FFFFLandroid/graphics/RectF;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 6
    .line 7
    const/high16 v2, 0x42200000    # 40.0f

    .line 8
    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v0, v3, :cond_8

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    .line 16
    .line 17
    if-eq v0, v1, :cond_4

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget p1, p5, Landroid/graphics/RectF;->bottom:F

    .line 24
    .line 25
    sub-float p5, p1, p2

    .line 26
    .line 27
    cmpg-float p3, p5, p3

    .line 28
    .line 29
    if-gez p3, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object p1, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 33
    .line 34
    iget p1, p1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 35
    .line 36
    add-float p3, p1, v2

    .line 37
    .line 38
    cmpg-float p5, p2, p3

    .line 39
    .line 40
    if-gtz p5, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move p3, v3

    .line 44
    :goto_0
    sub-float p5, p2, p1

    .line 45
    .line 46
    mul-float/2addr p5, p4

    .line 47
    cmpg-float p5, p5, v2

    .line 48
    .line 49
    if-gtz p5, :cond_3

    .line 50
    .line 51
    div-float/2addr v2, p4

    .line 52
    add-float v3, v2, p1

    .line 53
    .line 54
    :cond_3
    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    :goto_1
    iput p1, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget p2, p5, Landroid/graphics/RectF;->right:F

    .line 66
    .line 67
    sub-float p5, p2, p1

    .line 68
    .line 69
    cmpg-float p3, p5, p3

    .line 70
    .line 71
    if-gez p3, :cond_5

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    sget-object p2, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 75
    .line 76
    iget p2, p2, Lcom/mycompany/app/crop/Edge;->c:F

    .line 77
    .line 78
    add-float p3, p2, v2

    .line 79
    .line 80
    cmpg-float p5, p1, p3

    .line 81
    .line 82
    if-gtz p5, :cond_6

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    move p3, v3

    .line 86
    :goto_2
    sub-float p5, p1, p2

    .line 87
    .line 88
    div-float/2addr p5, p4

    .line 89
    cmpg-float p5, p5, v2

    .line 90
    .line 91
    if-gtz p5, :cond_7

    .line 92
    .line 93
    mul-float/2addr p4, v2

    .line 94
    add-float v3, p4, p2

    .line 95
    .line 96
    :cond_7
    invoke-static {p3, v3}, Ljava/lang/Math;->max(FF)F

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    :goto_3
    iput p2, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 105
    .line 106
    return-void

    .line 107
    :cond_8
    iget p1, p5, Landroid/graphics/RectF;->top:F

    .line 108
    .line 109
    sub-float p5, p2, p1

    .line 110
    .line 111
    cmpg-float p3, p5, p3

    .line 112
    .line 113
    if-gez p3, :cond_9

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_9
    sget-object p1, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 117
    .line 118
    iget p1, p1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 119
    .line 120
    sub-float p3, p1, v2

    .line 121
    .line 122
    cmpl-float p5, p2, p3

    .line 123
    .line 124
    if-ltz p5, :cond_a

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_a
    move p3, v1

    .line 128
    :goto_4
    sub-float p5, p1, p2

    .line 129
    .line 130
    mul-float/2addr p5, p4

    .line 131
    cmpg-float p5, p5, v2

    .line 132
    .line 133
    if-gtz p5, :cond_b

    .line 134
    .line 135
    div-float/2addr v2, p4

    .line 136
    sub-float v1, p1, v2

    .line 137
    .line 138
    :cond_b
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    :goto_5
    iput p1, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 147
    .line 148
    return-void

    .line 149
    :cond_c
    iget p2, p5, Landroid/graphics/RectF;->left:F

    .line 150
    .line 151
    sub-float p5, p1, p2

    .line 152
    .line 153
    cmpg-float p3, p5, p3

    .line 154
    .line 155
    if-gez p3, :cond_d

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_d
    sget-object p2, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 159
    .line 160
    iget p2, p2, Lcom/mycompany/app/crop/Edge;->c:F

    .line 161
    .line 162
    sub-float p3, p2, v2

    .line 163
    .line 164
    cmpl-float p5, p1, p3

    .line 165
    .line 166
    if-ltz p5, :cond_e

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_e
    move p3, v1

    .line 170
    :goto_6
    sub-float p5, p2, p1

    .line 171
    .line 172
    div-float/2addr p5, p4

    .line 173
    cmpg-float p5, p5, v2

    .line 174
    .line 175
    if-gtz p5, :cond_f

    .line 176
    .line 177
    mul-float/2addr p4, v2

    .line 178
    sub-float v1, p2, p4

    .line 179
    .line 180
    :cond_f
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    :goto_7
    iput p2, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 189
    .line 190
    return-void
.end method

.method public final c(Lcom/mycompany/app/crop/Edge;Landroid/graphics/RectF;F)Z
    .locals 8

    .line 1
    iget v0, p1, Lcom/mycompany/app/crop/Edge;->c:F

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget v1, p2, Landroid/graphics/RectF;->left:F

    .line 25
    .line 26
    :goto_0
    sub-float/2addr v1, v0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sget-object v4, Lcom/mycompany/app/crop/Edge;->g:Lcom/mycompany/app/crop/Edge;

    .line 32
    .line 33
    sget-object v5, Lcom/mycompany/app/crop/Edge;->i:Lcom/mycompany/app/crop/Edge;

    .line 34
    .line 35
    sget-object v6, Lcom/mycompany/app/crop/Edge;->h:Lcom/mycompany/app/crop/Edge;

    .line 36
    .line 37
    if-eqz v0, :cond_9

    .line 38
    .line 39
    sget-object v7, Lcom/mycompany/app/crop/Edge;->f:Lcom/mycompany/app/crop/Edge;

    .line 40
    .line 41
    if-eq v0, v3, :cond_7

    .line 42
    .line 43
    if-eq v0, v2, :cond_5

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    if-eq v0, v2, :cond_3

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget p1, p2, Landroid/graphics/RectF;->left:F

    .line 57
    .line 58
    iget v0, v6, Lcom/mycompany/app/crop/Edge;->c:F

    .line 59
    .line 60
    sub-float/2addr v0, v1

    .line 61
    iget v1, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 62
    .line 63
    sub-float v2, v0, p1

    .line 64
    .line 65
    div-float/2addr v2, p3

    .line 66
    add-float/2addr v2, v1

    .line 67
    invoke-static {v1, p1, v2, v0, p2}, Lcom/mycompany/app/crop/Edge;->d(FFFFLandroid/graphics/RectF;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    return p1

    .line 72
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_b

    .line 77
    .line 78
    iget p1, p2, Landroid/graphics/RectF;->right:F

    .line 79
    .line 80
    iget v0, v7, Lcom/mycompany/app/crop/Edge;->c:F

    .line 81
    .line 82
    sub-float/2addr v0, v1

    .line 83
    iget v1, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 84
    .line 85
    sub-float v2, p1, v0

    .line 86
    .line 87
    div-float/2addr v2, p3

    .line 88
    add-float/2addr v2, v1

    .line 89
    invoke-static {v1, v0, v2, p1, p2}, Lcom/mycompany/app/crop/Edge;->d(FFFFLandroid/graphics/RectF;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    return p1

    .line 94
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    iget p1, p2, Landroid/graphics/RectF;->top:F

    .line 101
    .line 102
    iget v0, v5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 103
    .line 104
    sub-float/2addr v0, v1

    .line 105
    iget v1, v7, Lcom/mycompany/app/crop/Edge;->c:F

    .line 106
    .line 107
    invoke-static {v0, p1, p3, v1}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    invoke-static {p1, v1, v0, p3, p2}, Lcom/mycompany/app/crop/Edge;->d(FFFFLandroid/graphics/RectF;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    return p1

    .line 116
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_b

    .line 121
    .line 122
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 123
    .line 124
    iget v0, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 125
    .line 126
    sub-float/2addr v0, v1

    .line 127
    iget v1, v7, Lcom/mycompany/app/crop/Edge;->c:F

    .line 128
    .line 129
    invoke-static {p1, v0, p3, v1}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    invoke-static {v0, v1, p1, p3, p2}, Lcom/mycompany/app/crop/Edge;->d(FFFFLandroid/graphics/RectF;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    return p1

    .line 138
    :cond_7
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    iget p1, p2, Landroid/graphics/RectF;->left:F

    .line 145
    .line 146
    iget v0, v6, Lcom/mycompany/app/crop/Edge;->c:F

    .line 147
    .line 148
    sub-float/2addr v0, v1

    .line 149
    iget v1, v5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 150
    .line 151
    sub-float v2, v0, p1

    .line 152
    .line 153
    div-float/2addr v2, p3

    .line 154
    sub-float p3, v1, v2

    .line 155
    .line 156
    invoke-static {p3, p1, v1, v0, p2}, Lcom/mycompany/app/crop/Edge;->d(FFFFLandroid/graphics/RectF;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    return p1

    .line 161
    :cond_8
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_b

    .line 166
    .line 167
    iget p1, p2, Landroid/graphics/RectF;->right:F

    .line 168
    .line 169
    iget v0, v7, Lcom/mycompany/app/crop/Edge;->c:F

    .line 170
    .line 171
    sub-float/2addr v0, v1

    .line 172
    iget v1, v5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 173
    .line 174
    sub-float v2, p1, v0

    .line 175
    .line 176
    div-float/2addr v2, p3

    .line 177
    sub-float p3, v1, v2

    .line 178
    .line 179
    invoke-static {p3, v0, v1, p1, p2}, Lcom/mycompany/app/crop/Edge;->d(FFFFLandroid/graphics/RectF;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    return p1

    .line 184
    :cond_9
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_a

    .line 189
    .line 190
    iget p1, p2, Landroid/graphics/RectF;->top:F

    .line 191
    .line 192
    iget v0, v5, Lcom/mycompany/app/crop/Edge;->c:F

    .line 193
    .line 194
    sub-float/2addr v0, v1

    .line 195
    iget v1, v6, Lcom/mycompany/app/crop/Edge;->c:F

    .line 196
    .line 197
    sub-float v2, v0, p1

    .line 198
    .line 199
    mul-float/2addr v2, p3

    .line 200
    sub-float p3, v1, v2

    .line 201
    .line 202
    invoke-static {p1, p3, v0, v1, p2}, Lcom/mycompany/app/crop/Edge;->d(FFFFLandroid/graphics/RectF;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    return p1

    .line 207
    :cond_a
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_b

    .line 212
    .line 213
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 214
    .line 215
    iget v0, v4, Lcom/mycompany/app/crop/Edge;->c:F

    .line 216
    .line 217
    sub-float/2addr v0, v1

    .line 218
    iget v1, v6, Lcom/mycompany/app/crop/Edge;->c:F

    .line 219
    .line 220
    sub-float v2, p1, v0

    .line 221
    .line 222
    mul-float/2addr v2, p3

    .line 223
    sub-float p3, v1, v2

    .line 224
    .line 225
    invoke-static {v0, p3, p1, v1, p2}, Lcom/mycompany/app/crop/Edge;->d(FFFFLandroid/graphics/RectF;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    return p1

    .line 230
    :cond_b
    :goto_1
    return v3
.end method

.method public final e(Landroid/graphics/RectF;F)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    if-eq v0, v2, :cond_3

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_1

    .line 13
    .line 14
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 15
    .line 16
    iget v0, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 17
    .line 18
    sub-float/2addr p1, v0

    .line 19
    cmpg-float p1, p1, p2

    .line 20
    .line 21
    if-gez p1, :cond_0

    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    return v1

    .line 25
    :cond_1
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 26
    .line 27
    iget v0, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 28
    .line 29
    sub-float/2addr p1, v0

    .line 30
    cmpg-float p1, p1, p2

    .line 31
    .line 32
    if-gez p1, :cond_2

    .line 33
    .line 34
    return v2

    .line 35
    :cond_2
    return v1

    .line 36
    :cond_3
    iget v0, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 37
    .line 38
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 39
    .line 40
    sub-float/2addr v0, p1

    .line 41
    cmpg-float p1, v0, p2

    .line 42
    .line 43
    if-gez p1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v1

    .line 47
    :cond_5
    iget v0, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 48
    .line 49
    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 50
    .line 51
    sub-float/2addr v0, p1

    .line 52
    cmpg-float p1, v0, p2

    .line 53
    .line 54
    if-gez p1, :cond_6

    .line 55
    .line 56
    return v2

    .line 57
    :cond_6
    return v1
.end method

.method public final f(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 2
    .line 3
    add-float/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 5
    .line 6
    return-void
.end method

.method public final g(Landroid/graphics/RectF;)F
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 20
    .line 21
    iput p1, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 25
    .line 26
    iput p1, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 35
    .line 36
    iput p1, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 37
    .line 38
    :goto_0
    iget p1, p0, Lcom/mycompany/app/crop/Edge;->c:F

    .line 39
    .line 40
    sub-float/2addr p1, v0

    .line 41
    return p1
.end method
