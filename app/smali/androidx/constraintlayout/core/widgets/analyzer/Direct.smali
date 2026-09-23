.class public Landroidx/constraintlayout/core/widgets/analyzer/Direct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    aget-object v0, v0, v3

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    :goto_0
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    .line 23
    aget-object v6, v6, v1

    .line 24
    .line 25
    :cond_1
    if-eqz v4, :cond_2

    .line 26
    .line 27
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    aget-object v4, v4, v3

    .line 30
    .line 31
    :cond_2
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    .line 33
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    if-eq v2, v5, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-nez v8, :cond_5

    .line 43
    .line 44
    if-eq v2, v6, :cond_5

    .line 45
    .line 46
    if-ne v2, v4, :cond_3

    .line 47
    .line 48
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 49
    .line 50
    if-nez v8, :cond_3

    .line 51
    .line 52
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 53
    .line 54
    cmpl-float v8, v8, v7

    .line 55
    .line 56
    if-nez v8, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-nez v8, :cond_5

    .line 63
    .line 64
    :cond_3
    if-ne v2, v4, :cond_4

    .line 65
    .line 66
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 67
    .line 68
    if-ne v8, v3, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    invoke-virtual {p0, v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s(II)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    move v8, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_5
    :goto_1
    move v8, v3

    .line 84
    :goto_2
    if-eq v0, v5, :cond_8

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_8

    .line 91
    .line 92
    if-eq v0, v6, :cond_8

    .line 93
    .line 94
    if-ne v0, v4, :cond_6

    .line 95
    .line 96
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 97
    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 101
    .line 102
    cmpl-float v0, v0, v7

    .line 103
    .line 104
    if-nez v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r(I)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_8

    .line 111
    .line 112
    :cond_6
    if-ne v2, v4, :cond_7

    .line 113
    .line 114
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 115
    .line 116
    if-ne v0, v3, :cond_7

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {p0, v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->s(II)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    move v0, v1

    .line 130
    goto :goto_4

    .line 131
    :cond_8
    :goto_3
    move v0, v3

    .line 132
    :goto_4
    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 133
    .line 134
    cmpl-float p0, p0, v7

    .line 135
    .line 136
    if-lez p0, :cond_9

    .line 137
    .line 138
    if-nez v8, :cond_a

    .line 139
    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_9
    if-eqz v8, :cond_b

    .line 144
    .line 145
    if-eqz v0, :cond_b

    .line 146
    .line 147
    :cond_a
    :goto_5
    return v3

    .line 148
    :cond_b
    return v1
.end method

.method public static b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 58
    .line 59
    const/16 v9, 0x8

    .line 60
    .line 61
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 62
    .line 63
    if-eqz v7, :cond_c

    .line 64
    .line 65
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 66
    .line 67
    if-eqz v3, :cond_c

    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_c

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 84
    .line 85
    iget-object v12, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 86
    .line 87
    add-int/lit8 v13, p0, 0x1

    .line 88
    .line 89
    invoke-static {v12}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    iget-object v15, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 94
    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    iget-object v8, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 98
    .line 99
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 100
    .line 101
    .line 102
    move-result v17

    .line 103
    if-eqz v17, :cond_3

    .line 104
    .line 105
    if-eqz v14, :cond_3

    .line 106
    .line 107
    const/16 v17, 0x0

    .line 108
    .line 109
    new-instance v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 110
    .line 111
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {v12, v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const/16 v17, 0x0

    .line 119
    .line 120
    :goto_1
    iget-object v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 121
    .line 122
    aget-object v11, v11, v17

    .line 123
    .line 124
    if-ne v11, v10, :cond_8

    .line 125
    .line 126
    if-eqz v14, :cond_4

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    if-ne v11, v10, :cond_2

    .line 130
    .line 131
    iget v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    .line 132
    .line 133
    if-ltz v11, :cond_2

    .line 134
    .line 135
    iget v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 136
    .line 137
    if-ltz v11, :cond_2

    .line 138
    .line 139
    iget v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 140
    .line 141
    if-eq v11, v9, :cond_5

    .line 142
    .line 143
    iget v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 144
    .line 145
    if-nez v11, :cond_2

    .line 146
    .line 147
    iget v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 148
    .line 149
    cmpl-float v11, v11, v16

    .line 150
    .line 151
    if-nez v11, :cond_2

    .line 152
    .line 153
    :cond_5
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-nez v11, :cond_2

    .line 158
    .line 159
    iget-boolean v11, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 160
    .line 161
    if-nez v11, :cond_2

    .line 162
    .line 163
    if-ne v7, v15, :cond_6

    .line 164
    .line 165
    iget-object v11, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 166
    .line 167
    if-eqz v11, :cond_6

    .line 168
    .line 169
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 170
    .line 171
    if-nez v11, :cond_7

    .line 172
    .line 173
    :cond_6
    if-ne v7, v8, :cond_2

    .line 174
    .line 175
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 176
    .line 177
    if-eqz v7, :cond_2

    .line 178
    .line 179
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 180
    .line 181
    if-eqz v7, :cond_2

    .line 182
    .line 183
    :cond_7
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-nez v7, :cond_2

    .line 188
    .line 189
    invoke-static {v13, v0, v1, v12, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->d(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_8
    :goto_2
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    if-eqz v11, :cond_9

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_9
    if-ne v7, v15, :cond_a

    .line 201
    .line 202
    iget-object v11, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 203
    .line 204
    if-nez v11, :cond_a

    .line 205
    .line 206
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    add-int/2addr v7, v5

    .line 211
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    add-int/2addr v8, v7

    .line 216
    invoke-virtual {v12, v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 217
    .line 218
    .line 219
    invoke-static {v13, v12, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_a
    if-ne v7, v8, :cond_b

    .line 225
    .line 226
    iget-object v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 227
    .line 228
    if-nez v11, :cond_b

    .line 229
    .line 230
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    sub-int v7, v5, v7

    .line 235
    .line 236
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    sub-int v8, v7, v8

    .line 241
    .line 242
    invoke-virtual {v12, v8, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 243
    .line 244
    .line 245
    invoke-static {v13, v12, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_b
    if-ne v7, v15, :cond_2

    .line 251
    .line 252
    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 253
    .line 254
    if-eqz v7, :cond_2

    .line 255
    .line 256
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 257
    .line 258
    if-eqz v7, :cond_2

    .line 259
    .line 260
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    if-nez v7, :cond_2

    .line 265
    .line 266
    invoke-static {v13, v12, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->c(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_c
    const/16 v16, 0x0

    .line 272
    .line 273
    const/16 v17, 0x0

    .line 274
    .line 275
    instance-of v3, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 276
    .line 277
    if-eqz v3, :cond_d

    .line 278
    .line 279
    :goto_3
    return-void

    .line 280
    :cond_d
    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 281
    .line 282
    const/4 v5, 0x1

    .line 283
    if-eqz v3, :cond_19

    .line 284
    .line 285
    iget-boolean v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 286
    .line 287
    if-eqz v4, :cond_19

    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    :cond_e
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_19

    .line 298
    .line 299
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 304
    .line 305
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 306
    .line 307
    add-int/lit8 v8, p0, 0x1

    .line 308
    .line 309
    invoke-static {v7}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 310
    .line 311
    .line 312
    move-result v11

    .line 313
    iget-object v12, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 314
    .line 315
    iget-object v13, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 316
    .line 317
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 318
    .line 319
    .line 320
    move-result v14

    .line 321
    if-eqz v14, :cond_f

    .line 322
    .line 323
    if-eqz v11, :cond_f

    .line 324
    .line 325
    new-instance v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 326
    .line 327
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-static {v7, v1, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 331
    .line 332
    .line 333
    :cond_f
    if-ne v4, v12, :cond_10

    .line 334
    .line 335
    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 336
    .line 337
    if-eqz v14, :cond_10

    .line 338
    .line 339
    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 340
    .line 341
    if-nez v14, :cond_11

    .line 342
    .line 343
    :cond_10
    if-ne v4, v13, :cond_12

    .line 344
    .line 345
    iget-object v14, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 346
    .line 347
    if-eqz v14, :cond_12

    .line 348
    .line 349
    iget-boolean v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 350
    .line 351
    if-eqz v14, :cond_12

    .line 352
    .line 353
    :cond_11
    move v14, v5

    .line 354
    goto :goto_5

    .line 355
    :cond_12
    move/from16 v14, v17

    .line 356
    .line 357
    :goto_5
    iget-object v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 358
    .line 359
    aget-object v15, v15, v17

    .line 360
    .line 361
    if-ne v15, v10, :cond_15

    .line 362
    .line 363
    if-eqz v11, :cond_13

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_13
    if-ne v15, v10, :cond_e

    .line 367
    .line 368
    iget v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    .line 369
    .line 370
    if-ltz v4, :cond_e

    .line 371
    .line 372
    iget v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 373
    .line 374
    if-ltz v4, :cond_e

    .line 375
    .line 376
    iget v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 377
    .line 378
    if-eq v4, v9, :cond_14

    .line 379
    .line 380
    iget v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 381
    .line 382
    if-nez v4, :cond_e

    .line 383
    .line 384
    iget v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 385
    .line 386
    cmpl-float v4, v4, v16

    .line 387
    .line 388
    if-nez v4, :cond_e

    .line 389
    .line 390
    :cond_14
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-nez v4, :cond_e

    .line 395
    .line 396
    iget-boolean v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 397
    .line 398
    if-nez v4, :cond_e

    .line 399
    .line 400
    if-eqz v14, :cond_e

    .line 401
    .line 402
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-nez v4, :cond_e

    .line 407
    .line 408
    invoke-static {v8, v0, v1, v7, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->d(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 409
    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_15
    :goto_6
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 413
    .line 414
    .line 415
    move-result v11

    .line 416
    if-eqz v11, :cond_16

    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_16
    if-ne v4, v12, :cond_17

    .line 420
    .line 421
    iget-object v11, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 422
    .line 423
    if-nez v11, :cond_17

    .line 424
    .line 425
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    add-int/2addr v4, v6

    .line 430
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 431
    .line 432
    .line 433
    move-result v11

    .line 434
    add-int/2addr v11, v4

    .line 435
    invoke-virtual {v7, v4, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 436
    .line 437
    .line 438
    invoke-static {v8, v7, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_4

    .line 442
    .line 443
    :cond_17
    if-ne v4, v13, :cond_18

    .line 444
    .line 445
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 446
    .line 447
    if-nez v4, :cond_18

    .line 448
    .line 449
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    sub-int v4, v6, v4

    .line 454
    .line 455
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 456
    .line 457
    .line 458
    move-result v11

    .line 459
    sub-int v11, v4, v11

    .line 460
    .line 461
    invoke-virtual {v7, v11, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 462
    .line 463
    .line 464
    invoke-static {v8, v7, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_4

    .line 468
    .line 469
    :cond_18
    if-eqz v14, :cond_e

    .line 470
    .line 471
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    if-nez v4, :cond_e

    .line 476
    .line 477
    invoke-static {v8, v7, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->c(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_4

    .line 481
    .line 482
    :cond_19
    iput-boolean v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l:Z

    .line 483
    .line 484
    return-void
.end method

.method public static c(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V
    .locals 6

    .line 1
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int v3, v4, v3

    .line 29
    .line 30
    const/high16 v5, 0x3f000000    # 0.5f

    .line 31
    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    .line 34
    move v0, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v2, v1

    .line 37
    move v4, v3

    .line 38
    :goto_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sub-int v3, v4, v2

    .line 43
    .line 44
    sub-int/2addr v3, v1

    .line 45
    if-le v2, v4, :cond_1

    .line 46
    .line 47
    sub-int v3, v2, v4

    .line 48
    .line 49
    sub-int/2addr v3, v1

    .line 50
    :cond_1
    if-lez v3, :cond_2

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    mul-float/2addr v0, v3

    .line 54
    add-float/2addr v0, v5

    .line 55
    :goto_1
    float-to-int v0, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    int-to-float v3, v3

    .line 58
    mul-float/2addr v0, v3

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    add-int/2addr v0, v2

    .line 61
    add-int v3, v0, v1

    .line 62
    .line 63
    if-le v2, v4, :cond_3

    .line 64
    .line 65
    sub-int v3, v0, v1

    .line 66
    .line 67
    :cond_3
    invoke-virtual {p1, v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 p0, p0, 0x1

    .line 71
    .line 72
    invoke-static {p0, p1, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static d(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V
    .locals 7

    .line 1
    iget v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 2
    .line 3
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v2

    .line 16
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v3, v2

    .line 29
    if-lt v3, v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    const/high16 v6, 0x3f000000    # 0.5f

    .line 40
    .line 41
    if-eq v4, v5, :cond_3

    .line 42
    .line 43
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    if-ne v4, v5, :cond_1

    .line 47
    .line 48
    instance-of v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    :goto_0
    iget v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 64
    .line 65
    mul-float/2addr v2, v6

    .line 66
    int-to-float p1, p1

    .line 67
    mul-float/2addr v2, p1

    .line 68
    float-to-int v2, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    if-nez v4, :cond_2

    .line 71
    .line 72
    sub-int v2, v3, v1

    .line 73
    .line 74
    :cond_2
    :goto_1
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 75
    .line 76
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    .line 81
    .line 82
    if-lez p1, :cond_3

    .line 83
    .line 84
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    :cond_3
    sub-int/2addr v3, v1

    .line 89
    sub-int/2addr v3, v2

    .line 90
    int-to-float p1, v3

    .line 91
    mul-float/2addr v0, p1

    .line 92
    add-float/2addr v0, v6

    .line 93
    float-to-int p1, v0

    .line 94
    add-int/2addr v1, p1

    .line 95
    add-int/2addr v2, v1

    .line 96
    invoke-virtual {p3, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 p0, p0, 0x1

    .line 100
    .line 101
    invoke-static {p0, p3, p2, p4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->b(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Z)V

    .line 102
    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public static e(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 6

    .line 1
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v2

    .line 24
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int v3, v4, v3

    .line 29
    .line 30
    const/high16 v5, 0x3f000000    # 0.5f

    .line 31
    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    .line 34
    move v0, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v2, v1

    .line 37
    move v4, v3

    .line 38
    :goto_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sub-int v3, v4, v2

    .line 43
    .line 44
    sub-int/2addr v3, v1

    .line 45
    if-le v2, v4, :cond_1

    .line 46
    .line 47
    sub-int v3, v2, v4

    .line 48
    .line 49
    sub-int/2addr v3, v1

    .line 50
    :cond_1
    if-lez v3, :cond_2

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    mul-float/2addr v0, v3

    .line 54
    add-float/2addr v0, v5

    .line 55
    :goto_1
    float-to-int v0, v0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    int-to-float v3, v3

    .line 58
    mul-float/2addr v0, v3

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    add-int v3, v2, v0

    .line 61
    .line 62
    add-int v5, v3, v1

    .line 63
    .line 64
    if-le v2, v4, :cond_3

    .line 65
    .line 66
    sub-int v3, v2, v0

    .line 67
    .line 68
    sub-int v5, v3, v1

    .line 69
    .line 70
    :cond_3
    invoke-virtual {p1, v3, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 p0, p0, 0x1

    .line 74
    .line 75
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static f(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 7

    .line 1
    iget v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 2
    .line 3
    iget-object v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v2

    .line 16
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    .line 18
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v3, v2

    .line 29
    if-lt v3, v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    const/high16 v6, 0x3f000000    # 0.5f

    .line 40
    .line 41
    if-eq v4, v5, :cond_3

    .line 42
    .line 43
    iget v4, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    if-ne v4, v5, :cond_1

    .line 47
    .line 48
    instance-of v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    :goto_0
    mul-float v2, v0, v6

    .line 64
    .line 65
    int-to-float p1, p1

    .line 66
    mul-float/2addr v2, p1

    .line 67
    float-to-int v2, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    if-nez v4, :cond_2

    .line 70
    .line 71
    sub-int v2, v3, v1

    .line 72
    .line 73
    :cond_2
    :goto_1
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 74
    .line 75
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iget p1, p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 80
    .line 81
    if-lez p1, :cond_3

    .line 82
    .line 83
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    :cond_3
    sub-int/2addr v3, v1

    .line 88
    sub-int/2addr v3, v2

    .line 89
    int-to-float p1, v3

    .line 90
    mul-float/2addr v0, p1

    .line 91
    add-float/2addr v0, v6

    .line 92
    float-to-int p1, v0

    .line 93
    add-int/2addr v1, p1

    .line 94
    add-int/2addr v2, v1

    .line 95
    invoke-virtual {p3, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 p0, p0, 0x1

    .line 99
    .line 100
    invoke-static {p0, p3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-void
.end method

.method public static g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 56
    .line 57
    const/16 v8, 0x8

    .line 58
    .line 59
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 60
    .line 61
    const/4 v10, 0x1

    .line 62
    if-eqz v6, :cond_c

    .line 63
    .line 64
    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 65
    .line 66
    if-eqz v2, :cond_c

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_c

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 83
    .line 84
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 85
    .line 86
    add-int/lit8 v12, p0, 0x1

    .line 87
    .line 88
    invoke-static {v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    iget-object v14, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 93
    .line 94
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    .line 96
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 97
    .line 98
    .line 99
    move-result v16

    .line 100
    if-eqz v16, :cond_3

    .line 101
    .line 102
    if-eqz v13, :cond_3

    .line 103
    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    new-instance v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 107
    .line 108
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {v11, v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const/16 v16, 0x0

    .line 116
    .line 117
    :goto_1
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 118
    .line 119
    aget-object v7, v7, v10

    .line 120
    .line 121
    if-ne v7, v9, :cond_8

    .line 122
    .line 123
    if-eqz v13, :cond_4

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    if-ne v7, v9, :cond_2

    .line 127
    .line 128
    iget v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 129
    .line 130
    if-ltz v7, :cond_2

    .line 131
    .line 132
    iget v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 133
    .line 134
    if-ltz v7, :cond_2

    .line 135
    .line 136
    iget v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 137
    .line 138
    if-eq v7, v8, :cond_5

    .line 139
    .line 140
    iget v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 141
    .line 142
    if-nez v7, :cond_2

    .line 143
    .line 144
    iget v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 145
    .line 146
    cmpl-float v7, v7, v16

    .line 147
    .line 148
    if-nez v7, :cond_2

    .line 149
    .line 150
    :cond_5
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_2

    .line 155
    .line 156
    iget-boolean v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 157
    .line 158
    if-nez v7, :cond_2

    .line 159
    .line 160
    if-ne v6, v14, :cond_6

    .line 161
    .line 162
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 163
    .line 164
    if-eqz v7, :cond_6

    .line 165
    .line 166
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 167
    .line 168
    if-nez v7, :cond_7

    .line 169
    .line 170
    :cond_6
    if-ne v6, v15, :cond_2

    .line 171
    .line 172
    iget-object v6, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 173
    .line 174
    if-eqz v6, :cond_2

    .line 175
    .line 176
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 177
    .line 178
    if-eqz v6, :cond_2

    .line 179
    .line 180
    :cond_7
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-nez v6, :cond_2

    .line 185
    .line 186
    invoke-static {v12, v0, v1, v11}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->f(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_8
    :goto_2
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_9

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_9
    if-ne v6, v14, :cond_a

    .line 198
    .line 199
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 200
    .line 201
    if-nez v7, :cond_a

    .line 202
    .line 203
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    add-int/2addr v6, v4

    .line 208
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    add-int/2addr v7, v6

    .line 213
    invoke-virtual {v11, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 214
    .line 215
    .line 216
    invoke-static {v12, v11, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_a
    if-ne v6, v15, :cond_b

    .line 222
    .line 223
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 224
    .line 225
    if-nez v7, :cond_b

    .line 226
    .line 227
    invoke-virtual {v15}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    sub-int v6, v4, v6

    .line 232
    .line 233
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    sub-int v7, v6, v7

    .line 238
    .line 239
    invoke-virtual {v11, v7, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 240
    .line 241
    .line 242
    invoke-static {v12, v11, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_b
    if-ne v6, v14, :cond_2

    .line 248
    .line 249
    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 250
    .line 251
    if-eqz v6, :cond_2

    .line 252
    .line 253
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 254
    .line 255
    if-eqz v6, :cond_2

    .line 256
    .line 257
    invoke-static {v12, v11, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->e(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_c
    const/16 v16, 0x0

    .line 263
    .line 264
    instance-of v2, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 265
    .line 266
    if-eqz v2, :cond_d

    .line 267
    .line 268
    :goto_3
    return-void

    .line 269
    :cond_d
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 270
    .line 271
    if-eqz v2, :cond_19

    .line 272
    .line 273
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 274
    .line 275
    if-eqz v3, :cond_19

    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    :cond_e
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-eqz v3, :cond_19

    .line 286
    .line 287
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 292
    .line 293
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 294
    .line 295
    add-int/lit8 v6, p0, 0x1

    .line 296
    .line 297
    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 302
    .line 303
    iget-object v12, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 304
    .line 305
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 306
    .line 307
    .line 308
    move-result v13

    .line 309
    if-eqz v13, :cond_f

    .line 310
    .line 311
    if-eqz v7, :cond_f

    .line 312
    .line 313
    new-instance v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 314
    .line 315
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-static {v4, v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 319
    .line 320
    .line 321
    :cond_f
    if-ne v3, v11, :cond_10

    .line 322
    .line 323
    iget-object v13, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 324
    .line 325
    if-eqz v13, :cond_10

    .line 326
    .line 327
    iget-boolean v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 328
    .line 329
    if-nez v13, :cond_11

    .line 330
    .line 331
    :cond_10
    if-ne v3, v12, :cond_12

    .line 332
    .line 333
    iget-object v13, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 334
    .line 335
    if-eqz v13, :cond_12

    .line 336
    .line 337
    iget-boolean v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 338
    .line 339
    if-eqz v13, :cond_12

    .line 340
    .line 341
    :cond_11
    move v13, v10

    .line 342
    goto :goto_5

    .line 343
    :cond_12
    const/4 v13, 0x0

    .line 344
    :goto_5
    iget-object v14, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 345
    .line 346
    aget-object v14, v14, v10

    .line 347
    .line 348
    if-ne v14, v9, :cond_15

    .line 349
    .line 350
    if-eqz v7, :cond_13

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_13
    if-ne v14, v9, :cond_e

    .line 354
    .line 355
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 356
    .line 357
    if-ltz v3, :cond_e

    .line 358
    .line 359
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 360
    .line 361
    if-ltz v3, :cond_e

    .line 362
    .line 363
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 364
    .line 365
    if-eq v3, v8, :cond_14

    .line 366
    .line 367
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 368
    .line 369
    if-nez v3, :cond_e

    .line 370
    .line 371
    iget v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 372
    .line 373
    cmpl-float v3, v3, v16

    .line 374
    .line 375
    if-nez v3, :cond_e

    .line 376
    .line 377
    :cond_14
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-nez v3, :cond_e

    .line 382
    .line 383
    iget-boolean v3, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 384
    .line 385
    if-nez v3, :cond_e

    .line 386
    .line 387
    if-eqz v13, :cond_e

    .line 388
    .line 389
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-nez v3, :cond_e

    .line 394
    .line 395
    invoke-static {v6, v0, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->f(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_15
    :goto_6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    if-eqz v7, :cond_16

    .line 404
    .line 405
    goto :goto_4

    .line 406
    :cond_16
    if-ne v3, v11, :cond_17

    .line 407
    .line 408
    iget-object v7, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 409
    .line 410
    if-nez v7, :cond_17

    .line 411
    .line 412
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    add-int/2addr v3, v5

    .line 417
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 418
    .line 419
    .line 420
    move-result v7

    .line 421
    add-int/2addr v7, v3

    .line 422
    invoke-virtual {v4, v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 423
    .line 424
    .line 425
    invoke-static {v6, v4, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_4

    .line 429
    .line 430
    :cond_17
    if-ne v3, v12, :cond_18

    .line 431
    .line 432
    iget-object v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 433
    .line 434
    if-nez v3, :cond_18

    .line 435
    .line 436
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    sub-int v3, v5, v3

    .line 441
    .line 442
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    sub-int v7, v3, v7

    .line 447
    .line 448
    invoke-virtual {v4, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 449
    .line 450
    .line 451
    invoke-static {v6, v4, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_4

    .line 455
    .line 456
    :cond_18
    if-eqz v13, :cond_e

    .line 457
    .line 458
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-nez v3, :cond_e

    .line 463
    .line 464
    invoke-static {v6, v4, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->e(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_4

    .line 468
    .line 469
    :cond_19
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 470
    .line 471
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 476
    .line 477
    if-eqz v3, :cond_1f

    .line 478
    .line 479
    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 480
    .line 481
    if-eqz v3, :cond_1f

    .line 482
    .line 483
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 488
    .line 489
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    :cond_1a
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    if-eqz v4, :cond_1f

    .line 498
    .line 499
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 504
    .line 505
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 506
    .line 507
    add-int/lit8 v6, p0, 0x1

    .line 508
    .line 509
    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 514
    .line 515
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 516
    .line 517
    .line 518
    move-result v11

    .line 519
    if-eqz v11, :cond_1b

    .line 520
    .line 521
    if-eqz v7, :cond_1b

    .line 522
    .line 523
    new-instance v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 524
    .line 525
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-static {v5, v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 529
    .line 530
    .line 531
    :cond_1b
    iget-object v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 532
    .line 533
    aget-object v11, v11, v10

    .line 534
    .line 535
    if-ne v11, v9, :cond_1c

    .line 536
    .line 537
    if-eqz v7, :cond_1a

    .line 538
    .line 539
    :cond_1c
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 540
    .line 541
    .line 542
    move-result v7

    .line 543
    if-eqz v7, :cond_1d

    .line 544
    .line 545
    goto :goto_7

    .line 546
    :cond_1d
    if-ne v4, v8, :cond_1a

    .line 547
    .line 548
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 549
    .line 550
    .line 551
    move-result v4

    .line 552
    add-int/2addr v4, v3

    .line 553
    iget-boolean v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 554
    .line 555
    if-nez v7, :cond_1e

    .line 556
    .line 557
    goto :goto_8

    .line 558
    :cond_1e
    iget v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 559
    .line 560
    sub-int v7, v4, v7

    .line 561
    .line 562
    iget v11, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 563
    .line 564
    add-int/2addr v11, v7

    .line 565
    iput v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 566
    .line 567
    iget-object v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 568
    .line 569
    invoke-virtual {v12, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    .line 570
    .line 571
    .line 572
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 573
    .line 574
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->l(I)V

    .line 578
    .line 579
    .line 580
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k:Z

    .line 581
    .line 582
    :goto_8
    :try_start_0
    invoke-static {v6, v5, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->g(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .line 584
    .line 585
    goto :goto_7

    .line 586
    :catchall_0
    move-exception v0

    .line 587
    throw v0

    .line 588
    :cond_1f
    iput-boolean v10, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->m:Z

    .line 589
    .line 590
    return-void
.end method
