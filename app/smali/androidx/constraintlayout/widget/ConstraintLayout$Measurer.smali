.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Measurer"
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    return-void
.end method

.method public static c(III)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    .line 21
    if-ne p0, v1, :cond_2

    .line 22
    .line 23
    const/high16 p0, -0x80000000

    .line 24
    .line 25
    if-eq v0, p0, :cond_1

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :cond_1
    if-ne p2, p1, :cond_2

    .line 30
    .line 31
    :goto_0
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_4

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    instance-of v5, v4, Landroidx/constraintlayout/widget/Placeholder;

    .line 16
    .line 17
    if-eqz v5, :cond_3

    .line 18
    .line 19
    check-cast v4, Landroidx/constraintlayout/widget/Placeholder;

    .line 20
    .line 21
    iget-object v5, v4, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 31
    .line 32
    iget-object v4, v4, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 39
    .line 40
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 41
    .line 42
    iput v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 43
    .line 44
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 45
    .line 46
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 47
    .line 48
    aget-object v8, v8, v2

    .line 49
    .line 50
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 51
    .line 52
    if-eq v8, v9, :cond_1

    .line 53
    .line 54
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 62
    .line 63
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    aget-object v6, v6, v7

    .line 67
    .line 68
    if-eq v6, v9, :cond_2

    .line 69
    .line 70
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 80
    .line 81
    const/16 v5, 0x8

    .line 82
    .line 83
    iput v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 84
    .line 85
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-lez v1, :cond_5

    .line 95
    .line 96
    :goto_2
    if-ge v2, v1, :cond_5

    .line 97
    .line 98
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    return-void
.end method

.method public final b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_10

    .line 10
    .line 11
    :cond_0
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 12
    .line 13
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 14
    .line 15
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-ne v5, v6, :cond_1

    .line 21
    .line 22
    iget-boolean v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:Z

    .line 23
    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    .line 27
    .line 28
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    .line 29
    .line 30
    iput v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->g:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    goto/16 :goto_10

    .line 38
    .line 39
    :cond_2
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 40
    .line 41
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 42
    .line 43
    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->c:I

    .line 44
    .line 45
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    .line 46
    .line 47
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->b:I

    .line 48
    .line 49
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->c:I

    .line 50
    .line 51
    add-int/2addr v10, v11

    .line 52
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->d:I

    .line 53
    .line 54
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    const/4 v14, 0x3

    .line 61
    const/4 v7, 0x2

    .line 62
    const/4 v15, 0x1

    .line 63
    if-eqz v13, :cond_d

    .line 64
    .line 65
    if-eq v13, v15, :cond_c

    .line 66
    .line 67
    if-eq v13, v7, :cond_6

    .line 68
    .line 69
    if-eq v13, v14, :cond_3

    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_3
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->f:I

    .line 75
    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    iget v13, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 v13, 0x0

    .line 82
    :goto_0
    if-eqz v3, :cond_5

    .line 83
    .line 84
    iget v14, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 85
    .line 86
    add-int/2addr v13, v14

    .line 87
    :cond_5
    add-int/2addr v11, v13

    .line 88
    const/4 v13, -0x1

    .line 89
    invoke-static {v8, v11, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->f:I

    .line 95
    .line 96
    const/4 v13, -0x2

    .line 97
    invoke-static {v8, v11, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    iget v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 102
    .line 103
    if-ne v11, v15, :cond_7

    .line 104
    .line 105
    move v11, v15

    .line 106
    goto :goto_1

    .line 107
    :cond_7
    const/4 v11, 0x0

    .line 108
    :goto_1
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    .line 109
    .line 110
    if-eq v13, v15, :cond_8

    .line 111
    .line 112
    if-ne v13, v7, :cond_e

    .line 113
    .line 114
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    if-ne v13, v14, :cond_9

    .line 123
    .line 124
    move v13, v15

    .line 125
    goto :goto_2

    .line 126
    :cond_9
    const/4 v13, 0x0

    .line 127
    :goto_2
    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    .line 128
    .line 129
    if-eq v14, v7, :cond_b

    .line 130
    .line 131
    if-eqz v11, :cond_b

    .line 132
    .line 133
    if-eqz v11, :cond_a

    .line 134
    .line 135
    if-nez v13, :cond_b

    .line 136
    .line 137
    :cond_a
    instance-of v11, v12, Landroidx/constraintlayout/widget/Placeholder;

    .line 138
    .line 139
    if-nez v11, :cond_b

    .line 140
    .line 141
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    if-eqz v11, :cond_e

    .line 146
    .line 147
    :cond_b
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    const/high16 v13, 0x40000000    # 2.0f

    .line 152
    .line 153
    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    goto :goto_3

    .line 158
    :cond_c
    const/high16 v13, 0x40000000    # 2.0f

    .line 159
    .line 160
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->f:I

    .line 161
    .line 162
    const/4 v14, -0x2

    .line 163
    invoke-static {v8, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    goto :goto_3

    .line 168
    :cond_d
    const/high16 v13, 0x40000000    # 2.0f

    .line 169
    .line 170
    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    :cond_e
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-eqz v11, :cond_19

    .line 179
    .line 180
    if-eq v11, v15, :cond_18

    .line 181
    .line 182
    if-eq v11, v7, :cond_12

    .line 183
    .line 184
    const/4 v9, 0x3

    .line 185
    if-eq v11, v9, :cond_f

    .line 186
    .line 187
    const/4 v3, 0x0

    .line 188
    goto/16 :goto_7

    .line 189
    .line 190
    :cond_f
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->g:I

    .line 191
    .line 192
    if-eqz v4, :cond_10

    .line 193
    .line 194
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 195
    .line 196
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_10
    const/4 v4, 0x0

    .line 200
    :goto_4
    if-eqz v3, :cond_11

    .line 201
    .line 202
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 203
    .line 204
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 205
    .line 206
    add-int/2addr v4, v3

    .line 207
    :cond_11
    add-int/2addr v10, v4

    .line 208
    const/4 v13, -0x1

    .line 209
    invoke-static {v9, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    goto :goto_7

    .line 214
    :cond_12
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->g:I

    .line 215
    .line 216
    const/4 v13, -0x2

    .line 217
    invoke-static {v3, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 222
    .line 223
    if-ne v4, v15, :cond_13

    .line 224
    .line 225
    move v4, v15

    .line 226
    goto :goto_5

    .line 227
    :cond_13
    const/4 v4, 0x0

    .line 228
    :goto_5
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    .line 229
    .line 230
    if-eq v9, v15, :cond_14

    .line 231
    .line 232
    if-ne v9, v7, :cond_1a

    .line 233
    .line 234
    :cond_14
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    if-ne v9, v10, :cond_15

    .line 243
    .line 244
    move v9, v15

    .line 245
    goto :goto_6

    .line 246
    :cond_15
    const/4 v9, 0x0

    .line 247
    :goto_6
    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    .line 248
    .line 249
    if-eq v10, v7, :cond_17

    .line 250
    .line 251
    if-eqz v4, :cond_17

    .line 252
    .line 253
    if-eqz v4, :cond_16

    .line 254
    .line 255
    if-nez v9, :cond_17

    .line 256
    .line 257
    :cond_16
    instance-of v4, v12, Landroidx/constraintlayout/widget/Placeholder;

    .line 258
    .line 259
    if-nez v4, :cond_17

    .line 260
    .line 261
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_1a

    .line 266
    .line 267
    :cond_17
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    const/high16 v13, 0x40000000    # 2.0f

    .line 272
    .line 273
    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    goto :goto_7

    .line 278
    :cond_18
    const/high16 v13, 0x40000000    # 2.0f

    .line 279
    .line 280
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->g:I

    .line 281
    .line 282
    const/4 v14, -0x2

    .line 283
    invoke-static {v3, v10, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    goto :goto_7

    .line 288
    :cond_19
    const/high16 v13, 0x40000000    # 2.0f

    .line 289
    .line 290
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    :cond_1a
    :goto_7
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 295
    .line 296
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 297
    .line 298
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 299
    .line 300
    if-eqz v4, :cond_1b

    .line 301
    .line 302
    iget v10, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 303
    .line 304
    const/16 v11, 0x100

    .line 305
    .line 306
    invoke-static {v10, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    if-eqz v10, :cond_1b

    .line 311
    .line 312
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    if-ne v10, v11, :cond_1b

    .line 321
    .line 322
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 327
    .line 328
    .line 329
    move-result v11

    .line 330
    if-ge v10, v11, :cond_1b

    .line 331
    .line 332
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 333
    .line 334
    .line 335
    move-result v10

    .line 336
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    if-ne v10, v11, :cond_1b

    .line 341
    .line 342
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 343
    .line 344
    .line 345
    move-result v10

    .line 346
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-ge v10, v4, :cond_1b

    .line 351
    .line 352
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 357
    .line 358
    if-ne v4, v10, :cond_1b

    .line 359
    .line 360
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()Z

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    if-nez v4, :cond_1b

    .line 365
    .line 366
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:I

    .line 367
    .line 368
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    invoke-static {v4, v8, v10}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->c(III)Z

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    if-eqz v4, :cond_1b

    .line 377
    .line 378
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:I

    .line 379
    .line 380
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 381
    .line 382
    .line 383
    move-result v10

    .line 384
    invoke-static {v4, v3, v10}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->c(III)Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_1b

    .line 389
    .line 390
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    .line 395
    .line 396
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    .line 401
    .line 402
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 403
    .line 404
    iput v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->g:I

    .line 405
    .line 406
    return-void

    .line 407
    :cond_1b
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 408
    .line 409
    if-ne v5, v4, :cond_1c

    .line 410
    .line 411
    move v10, v15

    .line 412
    goto :goto_8

    .line 413
    :cond_1c
    const/4 v10, 0x0

    .line 414
    :goto_8
    if-ne v6, v4, :cond_1d

    .line 415
    .line 416
    move v4, v15

    .line 417
    goto :goto_9

    .line 418
    :cond_1d
    const/4 v4, 0x0

    .line 419
    :goto_9
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 420
    .line 421
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->h:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 422
    .line 423
    if-eq v6, v13, :cond_1f

    .line 424
    .line 425
    if-ne v6, v11, :cond_1e

    .line 426
    .line 427
    goto :goto_a

    .line 428
    :cond_1e
    const/4 v6, 0x0

    .line 429
    goto :goto_b

    .line 430
    :cond_1f
    :goto_a
    move v6, v15

    .line 431
    :goto_b
    if-eq v5, v13, :cond_21

    .line 432
    .line 433
    if-ne v5, v11, :cond_20

    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_20
    const/4 v5, 0x0

    .line 437
    goto :goto_d

    .line 438
    :cond_21
    :goto_c
    move v5, v15

    .line 439
    :goto_d
    const/4 v11, 0x0

    .line 440
    if-eqz v10, :cond_22

    .line 441
    .line 442
    iget v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 443
    .line 444
    cmpl-float v13, v13, v11

    .line 445
    .line 446
    if-lez v13, :cond_22

    .line 447
    .line 448
    move v13, v15

    .line 449
    goto :goto_e

    .line 450
    :cond_22
    const/4 v13, 0x0

    .line 451
    :goto_e
    if-eqz v4, :cond_23

    .line 452
    .line 453
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 454
    .line 455
    cmpl-float v11, v14, v11

    .line 456
    .line 457
    if-lez v11, :cond_23

    .line 458
    .line 459
    move v11, v15

    .line 460
    goto :goto_f

    .line 461
    :cond_23
    const/4 v11, 0x0

    .line 462
    :goto_f
    if-nez v12, :cond_24

    .line 463
    .line 464
    :goto_10
    return-void

    .line 465
    :cond_24
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 466
    .line 467
    .line 468
    move-result-object v14

    .line 469
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 470
    .line 471
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->j:I

    .line 472
    .line 473
    if-eq v0, v15, :cond_26

    .line 474
    .line 475
    if-eq v0, v7, :cond_26

    .line 476
    .line 477
    if-eqz v10, :cond_26

    .line 478
    .line 479
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 480
    .line 481
    if-nez v0, :cond_26

    .line 482
    .line 483
    if-eqz v4, :cond_26

    .line 484
    .line 485
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 486
    .line 487
    if-eqz v0, :cond_25

    .line 488
    .line 489
    goto :goto_11

    .line 490
    :cond_25
    const/4 v0, 0x0

    .line 491
    const/4 v3, 0x0

    .line 492
    const/4 v5, 0x0

    .line 493
    const/4 v13, -0x1

    .line 494
    const/4 v15, 0x0

    .line 495
    goto/16 :goto_1a

    .line 496
    .line 497
    :cond_26
    :goto_11
    instance-of v0, v12, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 498
    .line 499
    if-eqz v0, :cond_27

    .line 500
    .line 501
    instance-of v0, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 502
    .line 503
    if-eqz v0, :cond_27

    .line 504
    .line 505
    move-object v0, v1

    .line 506
    check-cast v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 507
    .line 508
    move-object v4, v12

    .line 509
    check-cast v4, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 510
    .line 511
    invoke-virtual {v4, v0, v8, v3}, Landroidx/constraintlayout/widget/VirtualLayout;->n(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    .line 512
    .line 513
    .line 514
    goto :goto_12

    .line 515
    :cond_27
    invoke-virtual {v12, v8, v3}, Landroid/view/View;->measure(II)V

    .line 516
    .line 517
    .line 518
    :goto_12
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:I

    .line 519
    .line 520
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:I

    .line 521
    .line 522
    const/4 v0, 0x0

    .line 523
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 524
    .line 525
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 538
    .line 539
    if-lez v10, :cond_28

    .line 540
    .line 541
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    .line 542
    .line 543
    .line 544
    move-result v10

    .line 545
    goto :goto_13

    .line 546
    :cond_28
    move v10, v0

    .line 547
    :goto_13
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    .line 548
    .line 549
    if-lez v15, :cond_29

    .line 550
    .line 551
    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    .line 552
    .line 553
    .line 554
    move-result v10

    .line 555
    :cond_29
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 556
    .line 557
    if-lez v15, :cond_2a

    .line 558
    .line 559
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 560
    .line 561
    .line 562
    move-result v15

    .line 563
    :goto_14
    move/from16 v16, v3

    .line 564
    .line 565
    goto :goto_15

    .line 566
    :cond_2a
    move v15, v4

    .line 567
    goto :goto_14

    .line 568
    :goto_15
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 569
    .line 570
    if-lez v3, :cond_2b

    .line 571
    .line 572
    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    .line 573
    .line 574
    .line 575
    move-result v15

    .line 576
    :cond_2b
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 577
    .line 578
    const/4 v9, 0x1

    .line 579
    invoke-static {v3, v9}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    if-nez v3, :cond_2d

    .line 584
    .line 585
    const/high16 v3, 0x3f000000    # 0.5f

    .line 586
    .line 587
    if-eqz v13, :cond_2c

    .line 588
    .line 589
    if-eqz v6, :cond_2c

    .line 590
    .line 591
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 592
    .line 593
    int-to-float v6, v15

    .line 594
    mul-float/2addr v6, v5

    .line 595
    add-float/2addr v6, v3

    .line 596
    float-to-int v3, v6

    .line 597
    move v10, v3

    .line 598
    goto :goto_16

    .line 599
    :cond_2c
    if-eqz v11, :cond_2d

    .line 600
    .line 601
    if-eqz v5, :cond_2d

    .line 602
    .line 603
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 604
    .line 605
    int-to-float v6, v10

    .line 606
    div-float/2addr v6, v5

    .line 607
    add-float/2addr v6, v3

    .line 608
    float-to-int v3, v6

    .line 609
    move v15, v3

    .line 610
    :cond_2d
    :goto_16
    if-ne v0, v10, :cond_2f

    .line 611
    .line 612
    if-eq v4, v15, :cond_2e

    .line 613
    .line 614
    goto :goto_18

    .line 615
    :cond_2e
    move v5, v7

    .line 616
    move v3, v10

    .line 617
    const/4 v0, 0x0

    .line 618
    :goto_17
    const/4 v13, -0x1

    .line 619
    goto :goto_1a

    .line 620
    :cond_2f
    :goto_18
    const/high16 v13, 0x40000000    # 2.0f

    .line 621
    .line 622
    if-eq v0, v10, :cond_30

    .line 623
    .line 624
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 625
    .line 626
    .line 627
    move-result v8

    .line 628
    :cond_30
    if-eq v4, v15, :cond_31

    .line 629
    .line 630
    invoke-static {v15, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 631
    .line 632
    .line 633
    move-result v3

    .line 634
    goto :goto_19

    .line 635
    :cond_31
    move/from16 v3, v16

    .line 636
    .line 637
    :goto_19
    invoke-virtual {v12, v8, v3}, Landroid/view/View;->measure(II)V

    .line 638
    .line 639
    .line 640
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G:I

    .line 641
    .line 642
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H:I

    .line 643
    .line 644
    const/4 v0, 0x0

    .line 645
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 646
    .line 647
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 648
    .line 649
    .line 650
    move-result v3

    .line 651
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 652
    .line 653
    .line 654
    move-result v4

    .line 655
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    move v15, v4

    .line 660
    goto :goto_17

    .line 661
    :goto_1a
    if-eq v5, v13, :cond_32

    .line 662
    .line 663
    const/4 v4, 0x1

    .line 664
    goto :goto_1b

    .line 665
    :cond_32
    move v4, v0

    .line 666
    :goto_1b
    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->c:I

    .line 667
    .line 668
    if-ne v3, v6, :cond_34

    .line 669
    .line 670
    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    .line 671
    .line 672
    if-eq v15, v6, :cond_33

    .line 673
    .line 674
    goto :goto_1c

    .line 675
    :cond_33
    move v7, v0

    .line 676
    goto :goto_1d

    .line 677
    :cond_34
    :goto_1c
    const/4 v7, 0x1

    .line 678
    :goto_1d
    iput-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->i:Z

    .line 679
    .line 680
    iget-boolean v0, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:Z

    .line 681
    .line 682
    if-eqz v0, :cond_35

    .line 683
    .line 684
    const/4 v9, 0x1

    .line 685
    goto :goto_1e

    .line 686
    :cond_35
    move v9, v4

    .line 687
    :goto_1e
    if-eqz v9, :cond_36

    .line 688
    .line 689
    const/4 v13, -0x1

    .line 690
    if-eq v5, v13, :cond_36

    .line 691
    .line 692
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 693
    .line 694
    if-eq v0, v5, :cond_36

    .line 695
    .line 696
    const/4 v0, 0x1

    .line 697
    iput-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->i:Z

    .line 698
    .line 699
    :cond_36
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    .line 700
    .line 701
    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    .line 702
    .line 703
    iput-boolean v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->h:Z

    .line 704
    .line 705
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->g:I

    .line 706
    .line 707
    return-void
.end method
