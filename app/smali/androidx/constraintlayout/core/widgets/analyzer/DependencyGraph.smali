.class public Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public b:Z

.field public c:Z

.field public d:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public e:Ljava/util/ArrayList;

.field public f:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field public g:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field public h:Ljava/util/ArrayList;


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V
    .locals 9

    .line 1
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 6
    .line 7
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 8
    .line 9
    if-nez v0, :cond_a

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 12
    .line 13
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 14
    .line 15
    if-eq p1, v3, :cond_a

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    if-nez p4, :cond_1

    .line 24
    .line 25
    new-instance p4, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 26
    .line 27
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p4, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p4, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->b:Ljava/util/ArrayList;

    .line 39
    .line 40
    iput-object p1, p4, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 41
    .line 42
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iput-object p4, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->c:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 46
    .line 47
    iget-object v0, p4, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x0

    .line 59
    move v5, v4

    .line 60
    :cond_2
    :goto_0
    if-ge v5, v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 69
    .line 70
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 71
    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 75
    .line 76
    invoke-virtual {p0, v6, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    move v5, v4

    .line 87
    :cond_4
    :goto_1
    if-ge v5, v3, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 96
    .line 97
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 98
    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 102
    .line 103
    invoke-virtual {p0, v6, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    const/4 v0, 0x1

    .line 108
    if-ne p2, v0, :cond_7

    .line 109
    .line 110
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 111
    .line 112
    if-eqz v3, :cond_7

    .line 113
    .line 114
    move-object v3, p1

    .line 115
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 116
    .line 117
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 118
    .line 119
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    move v6, v4

    .line 126
    :cond_6
    :goto_2
    if-ge v6, v5, :cond_7

    .line 127
    .line 128
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 133
    .line 134
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 135
    .line 136
    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 137
    .line 138
    if-eqz v8, :cond_6

    .line 139
    .line 140
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 141
    .line 142
    invoke-virtual {p0, v7, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    move v5, v4

    .line 153
    :goto_3
    if-ge v5, v3, :cond_8

    .line 154
    .line 155
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    add-int/lit8 v5, v5, 0x1

    .line 160
    .line 161
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 162
    .line 163
    invoke-virtual {p0, v6, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    move v3, v4

    .line 174
    :goto_4
    if-ge v3, v2, :cond_9

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    add-int/lit8 v3, v3, 0x1

    .line 181
    .line 182
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 183
    .line 184
    invoke-virtual {p0, v5, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_9
    if-ne p2, v0, :cond_a

    .line 189
    .line 190
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 191
    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 195
    .line 196
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 197
    .line 198
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    :goto_5
    if-ge v4, v0, :cond_a

    .line 205
    .line 206
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    add-int/lit8 v4, v4, 0x1

    .line 211
    .line 212
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 213
    .line 214
    :try_start_0
    invoke-virtual {p0, v1, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :catchall_0
    move-exception p1

    .line 219
    throw p1

    .line 220
    :cond_a
    :goto_6
    return-void
.end method

.method public final b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v4, v2, :cond_2b

    .line 12
    .line 13
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    add-int/lit8 v4, v4, 0x1

    .line 18
    .line 19
    move-object v7, v5

    .line 20
    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    .line 22
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    .line 24
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    .line 26
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    .line 28
    iget-object v9, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    .line 30
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    .line 32
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 33
    .line 34
    aget-object v12, v5, v3

    .line 35
    .line 36
    const/4 v13, 0x1

    .line 37
    aget-object v5, v5, v13

    .line 38
    .line 39
    iget v14, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 40
    .line 41
    const/16 v15, 0x8

    .line 42
    .line 43
    if-ne v14, v15, :cond_0

    .line 44
    .line 45
    iput-boolean v13, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget v14, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:F

    .line 49
    .line 50
    const/high16 v15, 0x3f800000    # 1.0f

    .line 51
    .line 52
    cmpg-float v16, v14, v15

    .line 53
    .line 54
    move/from16 v17, v3

    .line 55
    .line 56
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 57
    .line 58
    move/from16 v18, v15

    .line 59
    .line 60
    const/4 v15, 0x2

    .line 61
    if-gez v16, :cond_1

    .line 62
    .line 63
    if-ne v12, v3, :cond_1

    .line 64
    .line 65
    iput v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 66
    .line 67
    :cond_1
    iget v13, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:F

    .line 68
    .line 69
    cmpg-float v19, v13, v18

    .line 70
    .line 71
    if-gez v19, :cond_2

    .line 72
    .line 73
    if-ne v5, v3, :cond_2

    .line 74
    .line 75
    iput v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 76
    .line 77
    :cond_2
    iget v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 78
    .line 79
    const/16 v20, 0x0

    .line 80
    .line 81
    cmpl-float v15, v15, v20

    .line 82
    .line 83
    move-object/from16 v20, v1

    .line 84
    .line 85
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 86
    .line 87
    move/from16 v22, v2

    .line 88
    .line 89
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 90
    .line 91
    if-lez v15, :cond_5

    .line 92
    .line 93
    if-ne v12, v3, :cond_4

    .line 94
    .line 95
    if-eq v5, v1, :cond_3

    .line 96
    .line 97
    if-ne v5, v2, :cond_4

    .line 98
    .line 99
    :cond_3
    const/4 v15, 0x3

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v15, 0x3

    .line 102
    goto :goto_3

    .line 103
    :goto_1
    iput v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 104
    .line 105
    :cond_5
    :goto_2
    move/from16 v23, v4

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :goto_3
    if-ne v5, v3, :cond_7

    .line 109
    .line 110
    if-eq v12, v1, :cond_6

    .line 111
    .line 112
    if-ne v12, v2, :cond_7

    .line 113
    .line 114
    :cond_6
    iput v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    if-ne v12, v3, :cond_5

    .line 118
    .line 119
    if-ne v5, v3, :cond_5

    .line 120
    .line 121
    move/from16 v23, v4

    .line 122
    .line 123
    iget v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 124
    .line 125
    if-nez v4, :cond_8

    .line 126
    .line 127
    iput v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 128
    .line 129
    :cond_8
    iget v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 130
    .line 131
    if-nez v4, :cond_9

    .line 132
    .line 133
    iput v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 134
    .line 135
    :cond_9
    :goto_4
    if-ne v12, v3, :cond_b

    .line 136
    .line 137
    iget v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 138
    .line 139
    const/4 v15, 0x1

    .line 140
    if-ne v4, v15, :cond_b

    .line 141
    .line 142
    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 143
    .line 144
    if-eqz v4, :cond_a

    .line 145
    .line 146
    iget-object v4, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 147
    .line 148
    if-nez v4, :cond_b

    .line 149
    .line 150
    :cond_a
    move-object v12, v1

    .line 151
    :cond_b
    if-ne v5, v3, :cond_d

    .line 152
    .line 153
    iget v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 154
    .line 155
    const/4 v15, 0x1

    .line 156
    if-ne v4, v15, :cond_d

    .line 157
    .line 158
    iget-object v4, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 159
    .line 160
    if-eqz v4, :cond_c

    .line 161
    .line 162
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 163
    .line 164
    if-nez v4, :cond_d

    .line 165
    .line 166
    :cond_c
    move-object v5, v1

    .line 167
    :cond_d
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 168
    .line 169
    iput-object v12, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 170
    .line 171
    iget v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 172
    .line 173
    iput v15, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 174
    .line 175
    iget-object v4, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 176
    .line 177
    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 178
    .line 179
    move-object/from16 v24, v6

    .line 180
    .line 181
    iget v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 182
    .line 183
    iput v6, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 184
    .line 185
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->h:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 186
    .line 187
    if-eq v12, v4, :cond_e

    .line 188
    .line 189
    if-eq v12, v2, :cond_e

    .line 190
    .line 191
    if-ne v12, v1, :cond_10

    .line 192
    .line 193
    :cond_e
    if-eq v5, v4, :cond_f

    .line 194
    .line 195
    if-eq v5, v2, :cond_f

    .line 196
    .line 197
    if-ne v5, v1, :cond_10

    .line 198
    .line 199
    :cond_f
    move-object v1, v2

    .line 200
    move-object v2, v12

    .line 201
    goto/16 :goto_d

    .line 202
    .line 203
    :cond_10
    const/high16 v25, 0x3f000000    # 0.5f

    .line 204
    .line 205
    if-ne v12, v3, :cond_12

    .line 206
    .line 207
    if-eq v5, v1, :cond_11

    .line 208
    .line 209
    if-ne v5, v2, :cond_12

    .line 210
    .line 211
    :cond_11
    const/4 v8, 0x3

    .line 212
    goto :goto_5

    .line 213
    :cond_12
    move-object v8, v1

    .line 214
    move-object v10, v5

    .line 215
    goto/16 :goto_8

    .line 216
    .line 217
    :goto_5
    if-ne v15, v8, :cond_15

    .line 218
    .line 219
    if-ne v5, v1, :cond_13

    .line 220
    .line 221
    const/4 v9, 0x0

    .line 222
    const/4 v11, 0x0

    .line 223
    move-object v10, v1

    .line 224
    move-object/from16 v6, p0

    .line 225
    .line 226
    move-object v8, v1

    .line 227
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 228
    .line 229
    .line 230
    :cond_13
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    int-to-float v1, v11

    .line 235
    iget v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 236
    .line 237
    mul-float/2addr v1, v3

    .line 238
    add-float v1, v1, v25

    .line 239
    .line 240
    float-to-int v9, v1

    .line 241
    move-object v10, v2

    .line 242
    move-object/from16 v6, p0

    .line 243
    .line 244
    move-object v8, v2

    .line 245
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 249
    .line 250
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 251
    .line 252
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 260
    .line 261
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 262
    .line 263
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 268
    .line 269
    .line 270
    const/4 v1, 0x1

    .line 271
    iput-boolean v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 272
    .line 273
    :cond_14
    :goto_6
    move/from16 v3, v17

    .line 274
    .line 275
    move-object/from16 v1, v20

    .line 276
    .line 277
    move/from16 v2, v22

    .line 278
    .line 279
    move/from16 v4, v23

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_15
    move-object v8, v1

    .line 284
    move-object v10, v2

    .line 285
    const/4 v1, 0x1

    .line 286
    if-ne v15, v1, :cond_16

    .line 287
    .line 288
    const/4 v9, 0x0

    .line 289
    const/4 v11, 0x0

    .line 290
    move-object/from16 v6, p0

    .line 291
    .line 292
    move-object v10, v5

    .line 293
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 297
    .line 298
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 299
    .line 300
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_16
    move-object v1, v5

    .line 308
    const/4 v2, 0x2

    .line 309
    if-ne v15, v2, :cond_19

    .line 310
    .line 311
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 312
    .line 313
    aget-object v2, v2, v17

    .line 314
    .line 315
    if-eq v2, v10, :cond_18

    .line 316
    .line 317
    if-ne v2, v4, :cond_17

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_17
    move-object v2, v10

    .line 321
    move-object v10, v1

    .line 322
    goto :goto_8

    .line 323
    :cond_18
    :goto_7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    int-to-float v2, v2

    .line 328
    mul-float/2addr v14, v2

    .line 329
    add-float v14, v14, v25

    .line 330
    .line 331
    float-to-int v9, v14

    .line 332
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    move-object/from16 v6, p0

    .line 337
    .line 338
    move-object v8, v10

    .line 339
    move-object v10, v1

    .line 340
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 341
    .line 342
    .line 343
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 344
    .line 345
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 346
    .line 347
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 355
    .line 356
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 357
    .line 358
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 363
    .line 364
    .line 365
    const/4 v1, 0x1

    .line 366
    iput-boolean v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_19
    move-object v2, v10

    .line 370
    move-object v10, v1

    .line 371
    const/4 v1, 0x1

    .line 372
    aget-object v5, v24, v17

    .line 373
    .line 374
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 375
    .line 376
    if-eqz v5, :cond_1a

    .line 377
    .line 378
    aget-object v5, v24, v1

    .line 379
    .line 380
    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 381
    .line 382
    if-nez v1, :cond_1b

    .line 383
    .line 384
    :cond_1a
    const/4 v9, 0x0

    .line 385
    const/4 v11, 0x0

    .line 386
    move-object/from16 v6, p0

    .line 387
    .line 388
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 389
    .line 390
    .line 391
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 392
    .line 393
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 394
    .line 395
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 400
    .line 401
    .line 402
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 403
    .line 404
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 405
    .line 406
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 411
    .line 412
    .line 413
    const/4 v15, 0x1

    .line 414
    iput-boolean v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 415
    .line 416
    goto/16 :goto_6

    .line 417
    .line 418
    :cond_1b
    :goto_8
    if-ne v10, v3, :cond_1d

    .line 419
    .line 420
    if-eq v12, v8, :cond_1c

    .line 421
    .line 422
    if-ne v12, v2, :cond_1d

    .line 423
    .line 424
    :cond_1c
    const/4 v1, 0x3

    .line 425
    goto :goto_9

    .line 426
    :cond_1d
    move-object v9, v8

    .line 427
    move-object v5, v10

    .line 428
    const/4 v1, 0x1

    .line 429
    move-object v8, v2

    .line 430
    move-object v2, v12

    .line 431
    goto/16 :goto_b

    .line 432
    .line 433
    :goto_9
    if-ne v6, v1, :cond_20

    .line 434
    .line 435
    if-ne v12, v8, :cond_1e

    .line 436
    .line 437
    const/4 v9, 0x0

    .line 438
    const/4 v11, 0x0

    .line 439
    move-object v10, v8

    .line 440
    move-object/from16 v6, p0

    .line 441
    .line 442
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 443
    .line 444
    .line 445
    :cond_1e
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 446
    .line 447
    .line 448
    move-result v9

    .line 449
    iget v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 450
    .line 451
    iget v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 452
    .line 453
    const/4 v4, -0x1

    .line 454
    if-ne v3, v4, :cond_1f

    .line 455
    .line 456
    div-float v1, v18, v1

    .line 457
    .line 458
    :cond_1f
    int-to-float v3, v9

    .line 459
    mul-float/2addr v3, v1

    .line 460
    add-float v3, v3, v25

    .line 461
    .line 462
    float-to-int v11, v3

    .line 463
    move-object v10, v2

    .line 464
    move-object/from16 v6, p0

    .line 465
    .line 466
    move-object v8, v2

    .line 467
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 468
    .line 469
    .line 470
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 471
    .line 472
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 473
    .line 474
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 482
    .line 483
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 484
    .line 485
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 490
    .line 491
    .line 492
    const/4 v1, 0x1

    .line 493
    iput-boolean v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 494
    .line 495
    goto/16 :goto_6

    .line 496
    .line 497
    :cond_20
    const/4 v1, 0x1

    .line 498
    if-ne v6, v1, :cond_21

    .line 499
    .line 500
    const/4 v9, 0x0

    .line 501
    const/4 v11, 0x0

    .line 502
    move-object/from16 v6, p0

    .line 503
    .line 504
    move-object v10, v8

    .line 505
    move-object v8, v12

    .line 506
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 507
    .line 508
    .line 509
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 510
    .line 511
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 512
    .line 513
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    .line 518
    .line 519
    goto/16 :goto_6

    .line 520
    .line 521
    :cond_21
    move-object v9, v8

    .line 522
    move-object v8, v12

    .line 523
    const/4 v5, 0x2

    .line 524
    if-ne v6, v5, :cond_25

    .line 525
    .line 526
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 527
    .line 528
    aget-object v5, v5, v1

    .line 529
    .line 530
    if-eq v5, v2, :cond_24

    .line 531
    .line 532
    if-ne v5, v4, :cond_22

    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_22
    move-object v1, v8

    .line 536
    move-object v8, v2

    .line 537
    move-object v2, v1

    .line 538
    :cond_23
    move-object v5, v10

    .line 539
    const/4 v1, 0x1

    .line 540
    goto :goto_b

    .line 541
    :cond_24
    :goto_a
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 542
    .line 543
    .line 544
    move-result v9

    .line 545
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    int-to-float v1, v1

    .line 550
    mul-float/2addr v13, v1

    .line 551
    add-float v13, v13, v25

    .line 552
    .line 553
    float-to-int v11, v13

    .line 554
    move-object/from16 v6, p0

    .line 555
    .line 556
    move-object v10, v2

    .line 557
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 558
    .line 559
    .line 560
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 561
    .line 562
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 563
    .line 564
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 569
    .line 570
    .line 571
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 572
    .line 573
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 574
    .line 575
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 580
    .line 581
    .line 582
    const/4 v15, 0x1

    .line 583
    iput-boolean v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 584
    .line 585
    goto/16 :goto_6

    .line 586
    .line 587
    :cond_25
    move-object/from16 v19, v8

    .line 588
    .line 589
    move-object v8, v2

    .line 590
    move-object/from16 v2, v19

    .line 591
    .line 592
    move/from16 v19, v5

    .line 593
    .line 594
    aget-object v1, v24, v19

    .line 595
    .line 596
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 597
    .line 598
    if-eqz v1, :cond_26

    .line 599
    .line 600
    const/16 v21, 0x3

    .line 601
    .line 602
    aget-object v1, v24, v21

    .line 603
    .line 604
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 605
    .line 606
    if-nez v1, :cond_23

    .line 607
    .line 608
    :cond_26
    move-object v8, v9

    .line 609
    const/4 v9, 0x0

    .line 610
    const/4 v11, 0x0

    .line 611
    move-object/from16 v6, p0

    .line 612
    .line 613
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 614
    .line 615
    .line 616
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 617
    .line 618
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 619
    .line 620
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 625
    .line 626
    .line 627
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 628
    .line 629
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 630
    .line 631
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 636
    .line 637
    .line 638
    const/4 v1, 0x1

    .line 639
    iput-boolean v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 640
    .line 641
    goto/16 :goto_6

    .line 642
    .line 643
    :goto_b
    if-ne v2, v3, :cond_14

    .line 644
    .line 645
    if-ne v5, v3, :cond_14

    .line 646
    .line 647
    if-eq v15, v1, :cond_27

    .line 648
    .line 649
    if-ne v6, v1, :cond_28

    .line 650
    .line 651
    :cond_27
    move-object v8, v9

    .line 652
    goto :goto_c

    .line 653
    :cond_28
    const/4 v2, 0x2

    .line 654
    if-ne v6, v2, :cond_14

    .line 655
    .line 656
    if-ne v15, v2, :cond_14

    .line 657
    .line 658
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 659
    .line 660
    aget-object v3, v2, v17

    .line 661
    .line 662
    if-ne v3, v8, :cond_14

    .line 663
    .line 664
    aget-object v2, v2, v1

    .line 665
    .line 666
    if-ne v2, v8, :cond_14

    .line 667
    .line 668
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    int-to-float v1, v1

    .line 673
    mul-float/2addr v14, v1

    .line 674
    add-float v14, v14, v25

    .line 675
    .line 676
    float-to-int v9, v14

    .line 677
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 678
    .line 679
    .line 680
    move-result v1

    .line 681
    int-to-float v1, v1

    .line 682
    mul-float/2addr v13, v1

    .line 683
    add-float v13, v13, v25

    .line 684
    .line 685
    float-to-int v11, v13

    .line 686
    move-object v10, v8

    .line 687
    move-object/from16 v6, p0

    .line 688
    .line 689
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 690
    .line 691
    .line 692
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 693
    .line 694
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 695
    .line 696
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 697
    .line 698
    .line 699
    move-result v2

    .line 700
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 701
    .line 702
    .line 703
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 704
    .line 705
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 706
    .line 707
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 712
    .line 713
    .line 714
    const/4 v15, 0x1

    .line 715
    iput-boolean v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 716
    .line 717
    goto/16 :goto_6

    .line 718
    .line 719
    :goto_c
    const/4 v9, 0x0

    .line 720
    const/4 v11, 0x0

    .line 721
    move-object v10, v8

    .line 722
    move-object/from16 v6, p0

    .line 723
    .line 724
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 725
    .line 726
    .line 727
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 728
    .line 729
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 730
    .line 731
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    .line 736
    .line 737
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 738
    .line 739
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 740
    .line 741
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    .line 746
    .line 747
    goto/16 :goto_6

    .line 748
    .line 749
    :goto_d
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    if-ne v2, v4, :cond_29

    .line 754
    .line 755
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    iget v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 760
    .line 761
    sub-int/2addr v2, v3

    .line 762
    iget v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 763
    .line 764
    sub-int v3, v2, v3

    .line 765
    .line 766
    move-object v2, v1

    .line 767
    :cond_29
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 768
    .line 769
    .line 770
    move-result v6

    .line 771
    if-ne v5, v4, :cond_2a

    .line 772
    .line 773
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 774
    .line 775
    .line 776
    move-result v4

    .line 777
    iget v5, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 778
    .line 779
    sub-int/2addr v4, v5

    .line 780
    iget v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 781
    .line 782
    sub-int v6, v4, v5

    .line 783
    .line 784
    move-object v10, v1

    .line 785
    :goto_e
    move-object v8, v2

    .line 786
    move v9, v3

    .line 787
    move v11, v6

    .line 788
    move-object/from16 v6, p0

    .line 789
    .line 790
    goto :goto_f

    .line 791
    :cond_2a
    move-object v10, v5

    .line 792
    goto :goto_e

    .line 793
    :goto_f
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 794
    .line 795
    .line 796
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 797
    .line 798
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 799
    .line 800
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 801
    .line 802
    .line 803
    move-result v2

    .line 804
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 805
    .line 806
    .line 807
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 808
    .line 809
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 810
    .line 811
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 812
    .line 813
    .line 814
    move-result v2

    .line 815
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 816
    .line 817
    .line 818
    const/4 v15, 0x1

    .line 819
    iput-boolean v15, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 820
    .line 821
    goto/16 :goto_6

    .line 822
    .line 823
    :cond_2b
    return-void
.end method

.method public final c()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 11
    .line 12
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 13
    .line 14
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->f()V

    .line 15
    .line 16
    .line 17
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->f()V

    .line 20
    .line 21
    .line 22
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    move v8, v7

    .line 41
    :cond_0
    :goto_0
    const/4 v9, 0x1

    .line 42
    if-ge v8, v5, :cond_8

    .line 43
    .line 44
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    add-int/lit8 v8, v8, 0x1

    .line 49
    .line 50
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 51
    .line 52
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 53
    .line 54
    if-eqz v11, :cond_1

    .line 55
    .line 56
    new-instance v9, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 57
    .line 58
    invoke-direct {v9, v10}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 59
    .line 60
    .line 61
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 62
    .line 63
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->f()V

    .line 64
    .line 65
    .line 66
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 67
    .line 68
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->f()V

    .line 69
    .line 70
    .line 71
    check-cast v10, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 72
    .line 73
    iget v10, v10, Landroidx/constraintlayout/core/widgets/Guideline;->u0:I

    .line 74
    .line 75
    iput v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 76
    .line 77
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    if-eqz v11, :cond_4

    .line 86
    .line 87
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 88
    .line 89
    if-nez v11, :cond_2

    .line 90
    .line 91
    new-instance v11, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 92
    .line 93
    invoke-direct {v11, v10, v7}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 94
    .line 95
    .line 96
    iput-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 97
    .line 98
    :cond_2
    if-nez v6, :cond_3

    .line 99
    .line 100
    new-instance v6, Ljava/util/HashSet;

    .line 101
    .line 102
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 106
    .line 107
    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 112
    .line 113
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-eqz v11, :cond_7

    .line 121
    .line 122
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 123
    .line 124
    if-nez v11, :cond_5

    .line 125
    .line 126
    new-instance v11, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 127
    .line 128
    invoke-direct {v11, v10, v9}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 129
    .line 130
    .line 131
    iput-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 132
    .line 133
    :cond_5
    if-nez v6, :cond_6

    .line 134
    .line 135
    new-instance v6, Ljava/util/HashSet;

    .line 136
    .line 137
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 138
    .line 139
    .line 140
    :cond_6
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 141
    .line 142
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 147
    .line 148
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    :goto_2
    instance-of v9, v10, Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 152
    .line 153
    if-eqz v9, :cond_0

    .line 154
    .line 155
    new-instance v9, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    .line 156
    .line 157
    invoke-direct {v9, v10}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_8
    if-eqz v6, :cond_9

    .line 165
    .line 166
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    move v5, v7

    .line 174
    :goto_3
    if-ge v5, v4, :cond_a

    .line 175
    .line 176
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    add-int/lit8 v5, v5, 0x1

    .line 181
    .line 182
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 183
    .line 184
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f()V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    move v5, v7

    .line 193
    :goto_4
    if-ge v5, v4, :cond_c

    .line 194
    .line 195
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    add-int/lit8 v5, v5, 0x1

    .line 200
    .line 201
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 202
    .line 203
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 204
    .line 205
    if-ne v8, v3, :cond_b

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_b
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d()V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 213
    .line 214
    .line 215
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 216
    .line 217
    invoke-virtual {p0, v2, v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->g(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 221
    .line 222
    invoke-virtual {p0, v0, v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->g(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 223
    .line 224
    .line 225
    iput-boolean v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b:Z

    .line 226
    .line 227
    return-void
.end method

.method public final d(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-wide v8, v5

    .line 17
    :goto_0
    if-ge v7, v4, :cond_d

    .line 18
    .line 19
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 24
    .line 25
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 26
    .line 27
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 28
    .line 29
    if-eqz v11, :cond_0

    .line 30
    .line 31
    move-object v11, v10

    .line 32
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 33
    .line 34
    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 35
    .line 36
    if-eq v11, v2, :cond_2

    .line 37
    .line 38
    :goto_1
    move-object/from16 v17, v3

    .line 39
    .line 40
    move/from16 v18, v4

    .line 41
    .line 42
    move-wide v0, v5

    .line 43
    goto/16 :goto_8

    .line 44
    .line 45
    :cond_0
    if-nez v2, :cond_1

    .line 46
    .line 47
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 48
    .line 49
    if-nez v11, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    instance-of v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 53
    .line 54
    if-nez v11, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 60
    .line 61
    :goto_2
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_3
    if-nez v2, :cond_4

    .line 68
    .line 69
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 70
    .line 71
    :goto_4
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_4
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :goto_5
    iget-object v13, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 78
    .line 79
    iget-object v14, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 80
    .line 81
    iget-object v15, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    iget-object v15, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 94
    .line 95
    .line 96
    move-result-wide v15

    .line 97
    if-eqz v11, :cond_a

    .line 98
    .line 99
    if-eqz v12, :cond_a

    .line 100
    .line 101
    invoke-static {v13, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v11

    .line 105
    invoke-static {v14, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    sub-long/2addr v11, v15

    .line 110
    iget v5, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 111
    .line 112
    neg-int v6, v5

    .line 113
    move-object/from16 v17, v3

    .line 114
    .line 115
    move/from16 v18, v4

    .line 116
    .line 117
    int-to-long v3, v6

    .line 118
    cmp-long v3, v11, v3

    .line 119
    .line 120
    if-ltz v3, :cond_5

    .line 121
    .line 122
    int-to-long v3, v5

    .line 123
    add-long/2addr v11, v3

    .line 124
    :cond_5
    neg-long v0, v0

    .line 125
    sub-long/2addr v0, v15

    .line 126
    iget v3, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 127
    .line 128
    int-to-long v3, v3

    .line 129
    sub-long/2addr v0, v3

    .line 130
    cmp-long v5, v0, v3

    .line 131
    .line 132
    if-ltz v5, :cond_6

    .line 133
    .line 134
    sub-long/2addr v0, v3

    .line 135
    :cond_6
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 136
    .line 137
    if-nez v2, :cond_7

    .line 138
    .line 139
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_7
    const/4 v4, 0x1

    .line 143
    if-ne v2, v4, :cond_8

    .line 144
    .line 145
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const/high16 v3, -0x40800000    # -1.0f

    .line 152
    .line 153
    :goto_6
    const/4 v4, 0x0

    .line 154
    cmpl-float v4, v3, v4

    .line 155
    .line 156
    const/high16 v5, 0x3f800000    # 1.0f

    .line 157
    .line 158
    if-lez v4, :cond_9

    .line 159
    .line 160
    long-to-float v0, v0

    .line 161
    div-float/2addr v0, v3

    .line 162
    long-to-float v1, v11

    .line 163
    sub-float v4, v5, v3

    .line 164
    .line 165
    div-float/2addr v1, v4

    .line 166
    add-float/2addr v1, v0

    .line 167
    float-to-long v0, v1

    .line 168
    goto :goto_7

    .line 169
    :cond_9
    const-wide/16 v0, 0x0

    .line 170
    .line 171
    :goto_7
    long-to-float v0, v0

    .line 172
    mul-float v1, v0, v3

    .line 173
    .line 174
    const/high16 v4, 0x3f000000    # 0.5f

    .line 175
    .line 176
    add-float/2addr v1, v4

    .line 177
    float-to-long v10, v1

    .line 178
    invoke-static {v5, v3, v0, v4}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    float-to-long v0, v0

    .line 183
    add-long/2addr v10, v15

    .line 184
    add-long/2addr v10, v0

    .line 185
    iget v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 186
    .line 187
    int-to-long v0, v0

    .line 188
    add-long/2addr v0, v10

    .line 189
    iget v3, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 190
    .line 191
    int-to-long v3, v3

    .line 192
    sub-long/2addr v0, v3

    .line 193
    goto :goto_8

    .line 194
    :cond_a
    move-object/from16 v17, v3

    .line 195
    .line 196
    move/from16 v18, v4

    .line 197
    .line 198
    if-eqz v11, :cond_b

    .line 199
    .line 200
    iget v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 201
    .line 202
    int-to-long v0, v0

    .line 203
    invoke-static {v13, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 204
    .line 205
    .line 206
    move-result-wide v0

    .line 207
    iget v3, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 208
    .line 209
    int-to-long v3, v3

    .line 210
    add-long/2addr v3, v15

    .line 211
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 212
    .line 213
    .line 214
    move-result-wide v0

    .line 215
    goto :goto_8

    .line 216
    :cond_b
    if-eqz v12, :cond_c

    .line 217
    .line 218
    iget v0, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 219
    .line 220
    int-to-long v0, v0

    .line 221
    invoke-static {v14, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 222
    .line 223
    .line 224
    move-result-wide v0

    .line 225
    iget v3, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 226
    .line 227
    neg-int v3, v3

    .line 228
    int-to-long v3, v3

    .line 229
    add-long/2addr v3, v15

    .line 230
    neg-long v0, v0

    .line 231
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 232
    .line 233
    .line 234
    move-result-wide v0

    .line 235
    goto :goto_8

    .line 236
    :cond_c
    iget v0, v13, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 237
    .line 238
    int-to-long v0, v0

    .line 239
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 240
    .line 241
    .line 242
    move-result-wide v3

    .line 243
    add-long/2addr v3, v0

    .line 244
    iget v0, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 245
    .line 246
    int-to-long v0, v0

    .line 247
    sub-long v0, v3, v0

    .line 248
    .line 249
    :goto_8
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 250
    .line 251
    .line 252
    move-result-wide v8

    .line 253
    add-int/lit8 v7, v7, 0x1

    .line 254
    .line 255
    move-object/from16 v1, p0

    .line 256
    .line 257
    move-object/from16 v0, p1

    .line 258
    .line 259
    move-object/from16 v3, v17

    .line 260
    .line 261
    move/from16 v4, v18

    .line 262
    .line 263
    const-wide/16 v5, 0x0

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_d
    long-to-int v0, v8

    .line 268
    return v0
.end method

.method public final e(Z)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-boolean v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->c:Z

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    :cond_0
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    move v5, v3

    .line 21
    :goto_0
    if-ge v5, v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    add-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    .line 31
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()V

    .line 32
    .line 33
    .line 34
    iput-boolean v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 35
    .line 36
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 37
    .line 38
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->n()V

    .line 39
    .line 40
    .line 41
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 42
    .line 43
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->m()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()V

    .line 48
    .line 49
    .line 50
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 51
    .line 52
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->n()V

    .line 55
    .line 56
    .line 57
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->m()V

    .line 60
    .line 61
    .line 62
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->c:Z

    .line 63
    .line 64
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 67
    .line 68
    .line 69
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 70
    .line 71
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v4, 0x1

    .line 78
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iget-boolean v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b:Z

    .line 83
    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->c()V

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 98
    .line 99
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 100
    .line 101
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 102
    .line 103
    .line 104
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 105
    .line 106
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 107
    .line 108
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->i()V

    .line 112
    .line 113
    .line 114
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 115
    .line 116
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 117
    .line 118
    if-eq v2, v9, :cond_4

    .line 119
    .line 120
    if-ne v5, v9, :cond_8

    .line 121
    .line 122
    :cond_4
    if-eqz p1, :cond_6

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    move v11, v3

    .line 129
    :cond_5
    if-ge v11, v10, :cond_6

    .line 130
    .line 131
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    add-int/lit8 v11, v11, 0x1

    .line 136
    .line 137
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 138
    .line 139
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    if-nez v12, :cond_5

    .line 144
    .line 145
    move p1, v3

    .line 146
    :cond_6
    if-eqz p1, :cond_7

    .line 147
    .line 148
    if-ne v2, v9, :cond_7

    .line 149
    .line 150
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 158
    .line 159
    .line 160
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 161
    .line 162
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 163
    .line 164
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 169
    .line 170
    .line 171
    :cond_7
    if-eqz p1, :cond_8

    .line 172
    .line 173
    if-ne v5, v9, :cond_8

    .line 174
    .line 175
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 183
    .line 184
    .line 185
    iget-object p1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 186
    .line 187
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 188
    .line 189
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 194
    .line 195
    .line 196
    :cond_8
    iget-object p1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 197
    .line 198
    aget-object p1, p1, v3

    .line 199
    .line 200
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->h:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 201
    .line 202
    if-eq p1, v8, :cond_a

    .line 203
    .line 204
    if-ne p1, v9, :cond_9

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_9
    move p1, v3

    .line 208
    goto :goto_2

    .line 209
    :cond_a
    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    add-int/2addr p1, v6

    .line 214
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 215
    .line 216
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 217
    .line 218
    invoke-virtual {v10, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 219
    .line 220
    .line 221
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 222
    .line 223
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 224
    .line 225
    sub-int/2addr p1, v6

    .line 226
    invoke-virtual {v10, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->i()V

    .line 230
    .line 231
    .line 232
    iget-object p1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 233
    .line 234
    aget-object p1, p1, v4

    .line 235
    .line 236
    if-eq p1, v8, :cond_b

    .line 237
    .line 238
    if-ne p1, v9, :cond_c

    .line 239
    .line 240
    :cond_b
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    add-int/2addr p1, v7

    .line 245
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 246
    .line 247
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 248
    .line 249
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 250
    .line 251
    .line 252
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 253
    .line 254
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 255
    .line 256
    sub-int/2addr p1, v7

    .line 257
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 258
    .line 259
    .line 260
    :cond_c
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->i()V

    .line 261
    .line 262
    .line 263
    move p1, v4

    .line 264
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    move v7, v3

    .line 269
    :goto_3
    if-ge v7, v6, :cond_e

    .line 270
    .line 271
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    add-int/lit8 v7, v7, 0x1

    .line 276
    .line 277
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 278
    .line 279
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 280
    .line 281
    if-ne v9, v1, :cond_d

    .line 282
    .line 283
    iget-boolean v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 284
    .line 285
    if-nez v9, :cond_d

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_d
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e()V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    move v7, v3

    .line 297
    :cond_f
    :goto_4
    if-ge v7, v6, :cond_13

    .line 298
    .line 299
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    add-int/lit8 v7, v7, 0x1

    .line 304
    .line 305
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 306
    .line 307
    if-nez p1, :cond_10

    .line 308
    .line 309
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 310
    .line 311
    if-ne v9, v1, :cond_10

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_10
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 315
    .line 316
    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 317
    .line 318
    if-nez v9, :cond_11

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_11
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 322
    .line 323
    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 324
    .line 325
    if-nez v9, :cond_12

    .line 326
    .line 327
    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 328
    .line 329
    if-nez v9, :cond_12

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_12
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 333
    .line 334
    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 335
    .line 336
    if-nez v9, :cond_f

    .line 337
    .line 338
    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 339
    .line 340
    if-nez v9, :cond_f

    .line 341
    .line 342
    instance-of v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 343
    .line 344
    if-nez v8, :cond_f

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_13
    move v3, v4

    .line 348
    :goto_5
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 352
    .line 353
    .line 354
    return v3
.end method

.method public final f(IZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const/4 v6, 0x1

    .line 15
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    if-eqz p2, :cond_4

    .line 30
    .line 31
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    .line 33
    if-eq v5, v11, :cond_0

    .line 34
    .line 35
    if-ne v7, v11, :cond_4

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    move v13, v4

    .line 42
    :cond_1
    if-ge v13, v12, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v14

    .line 48
    add-int/lit8 v13, v13, 0x1

    .line 49
    .line 50
    check-cast v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 51
    .line 52
    iget v15, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 53
    .line 54
    if-ne v15, v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->k()Z

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    if-nez v14, :cond_1

    .line 61
    .line 62
    move v12, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move/from16 v12, p2

    .line 65
    .line 66
    :goto_0
    if-nez v1, :cond_3

    .line 67
    .line 68
    if-eqz v12, :cond_4

    .line 69
    .line 70
    if-ne v5, v11, :cond_4

    .line 71
    .line 72
    invoke-virtual {v3, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 80
    .line 81
    .line 82
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 83
    .line 84
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 85
    .line 86
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    if-eqz v12, :cond_4

    .line 95
    .line 96
    if-ne v7, v11, :cond_4

    .line 97
    .line 98
    invoke-virtual {v3, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 106
    .line 107
    .line 108
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 109
    .line 110
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 111
    .line 112
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_1
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->h:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 120
    .line 121
    if-nez v1, :cond_6

    .line 122
    .line 123
    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 124
    .line 125
    aget-object v9, v9, v4

    .line 126
    .line 127
    if-eq v9, v10, :cond_5

    .line 128
    .line 129
    if-ne v9, v11, :cond_7

    .line 130
    .line 131
    :cond_5
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    add-int/2addr v9, v8

    .line 136
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 137
    .line 138
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 139
    .line 140
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 141
    .line 142
    .line 143
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 144
    .line 145
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 146
    .line 147
    sub-int/2addr v9, v8

    .line 148
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 149
    .line 150
    .line 151
    :goto_2
    move v8, v6

    .line 152
    goto :goto_4

    .line 153
    :cond_6
    iget-object v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    .line 155
    aget-object v8, v8, v6

    .line 156
    .line 157
    if-eq v8, v10, :cond_8

    .line 158
    .line 159
    if-ne v8, v11, :cond_7

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    move v8, v4

    .line 163
    goto :goto_4

    .line 164
    :cond_8
    :goto_3
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    add-int/2addr v8, v9

    .line 169
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 170
    .line 171
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 172
    .line 173
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 174
    .line 175
    .line 176
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 177
    .line 178
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 179
    .line 180
    sub-int/2addr v8, v9

    .line 181
    invoke-virtual {v10, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :goto_4
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->i()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    move v10, v4

    .line 193
    :goto_5
    if-ge v10, v9, :cond_b

    .line 194
    .line 195
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    add-int/lit8 v10, v10, 0x1

    .line 200
    .line 201
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 202
    .line 203
    iget v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 204
    .line 205
    if-eq v12, v1, :cond_9

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_9
    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 209
    .line 210
    if-ne v12, v3, :cond_a

    .line 211
    .line 212
    iget-boolean v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 213
    .line 214
    if-nez v12, :cond_a

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_a
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e()V

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    move v10, v4

    .line 226
    :cond_c
    :goto_6
    if-ge v10, v9, :cond_11

    .line 227
    .line 228
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    add-int/lit8 v10, v10, 0x1

    .line 233
    .line 234
    check-cast v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 235
    .line 236
    iget v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 237
    .line 238
    if-eq v12, v1, :cond_d

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_d
    if-nez v8, :cond_e

    .line 242
    .line 243
    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 244
    .line 245
    if-ne v12, v3, :cond_e

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_e
    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 249
    .line 250
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 251
    .line 252
    if-nez v12, :cond_f

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_f
    iget-object v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 256
    .line 257
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 258
    .line 259
    if-nez v12, :cond_10

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_10
    instance-of v12, v11, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 263
    .line 264
    if-nez v12, :cond_c

    .line 265
    .line 266
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 267
    .line 268
    iget-boolean v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 269
    .line 270
    if-nez v11, :cond_c

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_11
    move v4, v6

    .line 274
    :goto_7
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 278
    .line 279
    .line 280
    return v4
.end method

.method public final g(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 14
    if-ge v4, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 23
    .line 24
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 29
    .line 30
    invoke-virtual {p0, v6, p2, p3, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 35
    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 39
    .line 40
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 41
    .line 42
    invoke-virtual {p0, v6, p2, p3, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    move v2, v3

    .line 53
    :cond_3
    :goto_1
    if-ge v2, v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 62
    .line 63
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 64
    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 68
    .line 69
    invoke-virtual {p0, v4, p2, p3, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 74
    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 78
    .line 79
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 80
    .line 81
    invoke-virtual {p0, v4, p2, p3, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    const/4 v0, 0x1

    .line 86
    if-ne p2, v0, :cond_7

    .line 87
    .line 88
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 89
    .line 90
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 91
    .line 92
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    :cond_6
    :goto_2
    if-ge v3, v0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 107
    .line 108
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 109
    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 113
    .line 114
    invoke-virtual {p0, v1, p2, p3, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    return-void
.end method

.method public final h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->g:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 2
    .line 3
    iput-object p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 4
    .line 5
    iput-object p4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->c:I

    .line 8
    .line 9
    iput p5, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->f:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 12
    .line 13
    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 14
    .line 15
    .line 16
    iget p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 19
    .line 20
    .line 21
    iget p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->h:Z

    .line 27
    .line 28
    iput-boolean p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 29
    .line 30
    iget p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->g:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final i()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 4
    .line 5
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v7

    .line 11
    const/4 v8, 0x0

    .line 12
    move v1, v8

    .line 13
    :goto_0
    if-ge v1, v7, :cond_b

    .line 14
    .line 15
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    add-int/lit8 v9, v1, 0x1

    .line 20
    .line 21
    move-object v1, v2

    .line 22
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    .line 24
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    :goto_1
    move v1, v9

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    .line 32
    aget-object v10, v2, v8

    .line 33
    .line 34
    const/4 v11, 0x1

    .line 35
    aget-object v12, v2, v11

    .line 36
    .line 37
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 38
    .line 39
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 40
    .line 41
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    .line 43
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    if-eq v10, v4, :cond_2

    .line 46
    .line 47
    if-ne v10, v13, :cond_1

    .line 48
    .line 49
    if-ne v2, v11, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    move v2, v8

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    :goto_2
    move v2, v11

    .line 55
    :goto_3
    if-eq v12, v4, :cond_4

    .line 56
    .line 57
    if-ne v12, v13, :cond_3

    .line 58
    .line 59
    if-ne v3, v11, :cond_3

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_3
    move v3, v8

    .line 63
    goto :goto_5

    .line 64
    :cond_4
    :goto_4
    move v3, v11

    .line 65
    :goto_5
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 66
    .line 67
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 68
    .line 69
    iget-boolean v14, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 70
    .line 71
    iget-object v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 72
    .line 73
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 74
    .line 75
    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 76
    .line 77
    move/from16 v16, v2

    .line 78
    .line 79
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 80
    .line 81
    if-eqz v14, :cond_5

    .line 82
    .line 83
    if-eqz v8, :cond_5

    .line 84
    .line 85
    iget v3, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 86
    .line 87
    iget v5, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 88
    .line 89
    move-object v4, v2

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 91
    .line 92
    .line 93
    iput-boolean v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_5
    if-eqz v14, :cond_7

    .line 97
    .line 98
    if-eqz v3, :cond_7

    .line 99
    .line 100
    iget v3, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 101
    .line 102
    iget v5, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 103
    .line 104
    move-object/from16 v0, p0

    .line 105
    .line 106
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 107
    .line 108
    .line 109
    if-ne v12, v13, :cond_6

    .line 110
    .line 111
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 112
    .line 113
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_6
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 123
    .line 124
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 125
    .line 126
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 131
    .line 132
    .line 133
    iput-boolean v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_7
    if-eqz v8, :cond_9

    .line 137
    .line 138
    if-eqz v16, :cond_9

    .line 139
    .line 140
    iget v3, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 141
    .line 142
    iget v5, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 143
    .line 144
    move-object v0, v4

    .line 145
    move-object v4, v2

    .line 146
    move-object v2, v0

    .line 147
    move-object/from16 v0, p0

    .line 148
    .line 149
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 150
    .line 151
    .line 152
    if-ne v10, v13, :cond_8

    .line 153
    .line 154
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 155
    .line 156
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 157
    .line 158
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->m:I

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_8
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 166
    .line 167
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 168
    .line 169
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 174
    .line 175
    .line 176
    iput-boolean v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 177
    .line 178
    :cond_9
    :goto_6
    iget-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 179
    .line 180
    if-eqz v0, :cond_a

    .line 181
    .line 182
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 183
    .line 184
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->l:Landroidx/constraintlayout/core/widgets/analyzer/BaselineDimensionDependency;

    .line 185
    .line 186
    if-eqz v0, :cond_a

    .line 187
    .line 188
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->d(I)V

    .line 191
    .line 192
    .line 193
    :cond_a
    const/4 v8, 0x0

    .line 194
    move-object/from16 v0, p0

    .line 195
    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :cond_b
    return-void
.end method
