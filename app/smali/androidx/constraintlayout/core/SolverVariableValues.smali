.class public Landroidx/constraintlayout/core/SolverVariableValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;


# instance fields
.field public a:I

.field public b:[I

.field public c:[I

.field public d:[F

.field public e:[I

.field public f:[I

.field public g:I

.field public h:I


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final b(Landroidx/constraintlayout/core/SolverVariable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->m(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method

.method public final c(Landroidx/constraintlayout/core/ArrayRow;Z)F
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/SolverVariableValues;->j(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    .line 8
    invoke-virtual {p0, v0, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->i(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Landroidx/constraintlayout/core/ArrayRow;->d:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 12
    .line 13
    check-cast p1, Landroidx/constraintlayout/core/SolverVariableValues;

    .line 14
    .line 15
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-lez p2, :cond_1

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/constraintlayout/core/SolverVariableValues;->c:[I

    .line 21
    .line 22
    aget v1, v1, v0

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p1, Landroidx/constraintlayout/core/SolverVariableValues;->d:[F

    .line 31
    .line 32
    aget p1, p1, v0

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    throw p1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public final clear()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/SolverVariableValues;->e(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    throw v0

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->a:I

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    if-ge v0, v2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->c:[I

    .line 25
    .line 26
    aput v3, v2, v0

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->b:[I

    .line 29
    .line 30
    aput v3, v2, v0

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 36
    .line 37
    iput v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->h:I

    .line 38
    .line 39
    return-void
.end method

.method public final d(Landroidx/constraintlayout/core/SolverVariable;F)V
    .locals 9

    .line 1
    const v0, -0x457ced91    # -0.001f

    .line 2
    .line 3
    .line 4
    cmpl-float v0, p2, v0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x3a83126f    # 0.001f

    .line 10
    .line 11
    .line 12
    cmpg-float v0, p2, v0

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/core/SolverVariableValues;->i(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v0, :cond_c

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->m(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 27
    .line 28
    .line 29
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->a:I

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    if-lt v0, v1, :cond_2

    .line 36
    .line 37
    mul-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->c:[I

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->c:[I

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->d:[F

    .line 48
    .line 49
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->d:[F

    .line 54
    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->e:[I

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->e:[I

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->b:[I

    .line 72
    .line 73
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->b:[I

    .line 78
    .line 79
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->a:I

    .line 80
    .line 81
    :goto_0
    if-ge v0, v1, :cond_1

    .line 82
    .line 83
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->c:[I

    .line 84
    .line 85
    aput v4, v5, v0

    .line 86
    .line 87
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->b:[I

    .line 88
    .line 89
    aput v4, v5, v0

    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->a:I

    .line 95
    .line 96
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 97
    .line 98
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->h:I

    .line 99
    .line 100
    move v5, v3

    .line 101
    move v6, v4

    .line 102
    :goto_1
    if-ge v5, v0, :cond_6

    .line 103
    .line 104
    iget-object v7, p0, Landroidx/constraintlayout/core/SolverVariableValues;->c:[I

    .line 105
    .line 106
    aget v7, v7, v1

    .line 107
    .line 108
    iget v8, p1, Landroidx/constraintlayout/core/SolverVariable;->f:I

    .line 109
    .line 110
    if-ne v7, v8, :cond_3

    .line 111
    .line 112
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->d:[F

    .line 113
    .line 114
    aput p2, p1, v1

    .line 115
    .line 116
    return-void

    .line 117
    :cond_3
    if-ge v7, v8, :cond_4

    .line 118
    .line 119
    move v6, v1

    .line 120
    :cond_4
    iget-object v7, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 121
    .line 122
    aget v1, v7, v1

    .line 123
    .line 124
    if-ne v1, v4, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    :goto_2
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->a:I

    .line 131
    .line 132
    if-ge v3, v0, :cond_8

    .line 133
    .line 134
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->c:[I

    .line 135
    .line 136
    aget v0, v0, v3

    .line 137
    .line 138
    if-ne v0, v4, :cond_7

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_8
    move v3, v4

    .line 145
    :goto_3
    invoke-virtual {p0, v3, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->l(ILandroidx/constraintlayout/core/SolverVariable;F)V

    .line 146
    .line 147
    .line 148
    if-eq v6, v4, :cond_9

    .line 149
    .line 150
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->e:[I

    .line 151
    .line 152
    aput v6, p1, v3

    .line 153
    .line 154
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 155
    .line 156
    aget p2, p1, v6

    .line 157
    .line 158
    aput p2, p1, v3

    .line 159
    .line 160
    aput v3, p1, v6

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_9
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->e:[I

    .line 164
    .line 165
    aput v4, p1, v3

    .line 166
    .line 167
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 168
    .line 169
    if-lez p1, :cond_a

    .line 170
    .line 171
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 172
    .line 173
    iget p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->h:I

    .line 174
    .line 175
    aput p2, p1, v3

    .line 176
    .line 177
    iput v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->h:I

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 181
    .line 182
    aput v4, p1, v3

    .line 183
    .line 184
    :goto_4
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 185
    .line 186
    aget p1, p1, v3

    .line 187
    .line 188
    if-eq p1, v4, :cond_b

    .line 189
    .line 190
    iget-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->e:[I

    .line 191
    .line 192
    aput v3, p2, p1

    .line 193
    .line 194
    :cond_b
    throw v2

    .line 195
    :cond_c
    invoke-virtual {p0, v3, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->l(ILandroidx/constraintlayout/core/SolverVariable;F)V

    .line 196
    .line 197
    .line 198
    throw v2
.end method

.method public final e(I)Landroidx/constraintlayout/core/SolverVariable;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->h:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_4

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    if-ne v3, p1, :cond_2

    .line 14
    .line 15
    if-ne v2, v4, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_2
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 21
    .line 22
    aget v2, v5, v2

    .line 23
    .line 24
    if-ne v2, v4, :cond_3

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_4
    :goto_2
    return-object v1
.end method

.method public final f(Landroidx/constraintlayout/core/SolverVariable;FZ)V
    .locals 0

    .line 1
    const p3, -0x457ced91    # -0.001f

    .line 2
    .line 3
    .line 4
    cmpl-float p3, p2, p3

    .line 5
    .line 6
    if-lez p3, :cond_0

    .line 7
    .line 8
    const p3, 0x3a83126f    # 0.001f

    .line 9
    .line 10
    .line 11
    cmpg-float p3, p2, p3

    .line 12
    .line 13
    if-gez p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->m(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/SolverVariableValues;->d(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->h:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->d:[F

    .line 9
    .line 10
    aget v4, v3, v1

    .line 11
    .line 12
    const/high16 v5, -0x40800000    # -1.0f

    .line 13
    .line 14
    mul-float/2addr v4, v5

    .line 15
    aput v4, v3, v1

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 18
    .line 19
    aget v1, v3, v1

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    return-void
.end method

.method public final h(I)F
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->h:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    if-ne v2, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->d:[F

    .line 11
    .line 12
    aget p1, p1, v1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 16
    .line 17
    aget v1, v3, v1

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public final i(Landroidx/constraintlayout/core/SolverVariable;Z)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->m(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method

.method public final j(Landroidx/constraintlayout/core/SolverVariable;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariableValues;->m(Landroidx/constraintlayout/core/SolverVariable;)I

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method

.method public final k(F)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariableValues;->h:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->d:[F

    .line 9
    .line 10
    aget v4, v3, v1

    .line 11
    .line 12
    div-float/2addr v4, p1

    .line 13
    aput v4, v3, v1

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 16
    .line 17
    aget v1, v3, v1

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v1, v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    return-void
.end method

.method public final l(ILandroidx/constraintlayout/core/SolverVariable;F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->c:[I

    .line 2
    .line 3
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->f:I

    .line 4
    .line 5
    aput p2, v0, p1

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->d:[F

    .line 8
    .line 9
    aput p3, p2, p1

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->e:[I

    .line 12
    .line 13
    const/4 p3, -0x1

    .line 14
    aput p3, p2, p1

    .line 15
    .line 16
    iget-object p2, p0, Landroidx/constraintlayout/core/SolverVariableValues;->f:[I

    .line 17
    .line 18
    aput p3, p2, p1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1
.end method

.method public final m(Landroidx/constraintlayout/core/SolverVariable;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariableValues;->g:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1

    .line 10
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
