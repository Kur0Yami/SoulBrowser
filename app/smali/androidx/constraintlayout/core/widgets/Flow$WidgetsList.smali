.class Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetsList"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public c:I

.field public d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final synthetic r:Landroidx/constraintlayout/core/widgets/Flow;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->r:Landroidx/constraintlayout/core/widgets/Flow;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 17
    .line 18
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->o:I

    .line 19
    .line 20
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->p:I

    .line 21
    .line 22
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a:I

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    .line 26
    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    .line 28
    iput-object p5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    .line 30
    iput-object p6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    .line 32
    iget p2, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->w0:I

    .line 33
    .line 34
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->h:I

    .line 35
    .line 36
    iget p2, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->s0:I

    .line 37
    .line 38
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->i:I

    .line 39
    .line 40
    iget p2, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->x0:I

    .line 41
    .line 42
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->j:I

    .line 43
    .line 44
    iget p1, p1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->t0:I

    .line 45
    .line 46
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->k:I

    .line 47
    .line 48
    iput p7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->q:I

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->r:Landroidx/constraintlayout/core/widgets/Flow;

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->q:I

    .line 14
    .line 15
    invoke-virtual {v5, p1, v0}, Landroidx/constraintlayout/core/widgets/Flow;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 20
    .line 21
    aget-object v6, v6, v4

    .line 22
    .line 23
    if-ne v6, v2, :cond_0

    .line 24
    .line 25
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->p:I

    .line 26
    .line 27
    add-int/2addr v0, v3

    .line 28
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->p:I

    .line 29
    .line 30
    move v0, v4

    .line 31
    :cond_0
    iget v2, v5, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 32
    .line 33
    iget v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 34
    .line 35
    if-ne v6, v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v4, v2

    .line 39
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 40
    .line 41
    add-int/2addr v0, v4

    .line 42
    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 44
    .line 45
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->q:I

    .line 46
    .line 47
    invoke-virtual {v5, p1, v0}, Landroidx/constraintlayout/core/widgets/Flow;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 56
    .line 57
    if-ge v1, v0, :cond_7

    .line 58
    .line 59
    :cond_2
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 60
    .line 61
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 62
    .line 63
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->q:I

    .line 67
    .line 68
    invoke-virtual {v5, p1, v0}, Landroidx/constraintlayout/core/widgets/Flow;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->q:I

    .line 73
    .line 74
    invoke-virtual {v5, p1, v6}, Landroidx/constraintlayout/core/widgets/Flow;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    .line 80
    aget-object v7, v7, v3

    .line 81
    .line 82
    if-ne v7, v2, :cond_4

    .line 83
    .line 84
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->p:I

    .line 85
    .line 86
    add-int/2addr v2, v3

    .line 87
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->p:I

    .line 88
    .line 89
    move v6, v4

    .line 90
    :cond_4
    iget v2, v5, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 91
    .line 92
    iget v5, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 93
    .line 94
    if-ne v5, v1, :cond_5

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    move v4, v2

    .line 98
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 99
    .line 100
    add-int/2addr v6, v4

    .line 101
    add-int/2addr v6, v1

    .line 102
    iput v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 109
    .line 110
    if-ge v1, v0, :cond_7

    .line 111
    .line 112
    :cond_6
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 113
    .line 114
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 115
    .line 116
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 117
    .line 118
    :cond_7
    :goto_2
    iget p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->o:I

    .line 119
    .line 120
    add-int/2addr p1, v3

    .line 121
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->o:I

    .line 122
    .line 123
    return-void
.end method

.method public final b(IZZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->o:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->r:Landroidx/constraintlayout/core/widgets/Flow;

    .line 8
    .line 9
    if-ge v3, v1, :cond_2

    .line 10
    .line 11
    iget v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 12
    .line 13
    add-int/2addr v5, v3

    .line 14
    iget v6, v4, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    .line 15
    .line 16
    if-lt v5, v6, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 20
    .line 21
    aget-object v4, v4, v5

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B()V

    .line 26
    .line 27
    .line 28
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    if-eqz v1, :cond_3a

    .line 32
    .line 33
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    goto/16 :goto_1c

    .line 38
    .line 39
    :cond_3
    if-eqz p3, :cond_4

    .line 40
    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    goto :goto_2

    .line 45
    :cond_4
    move v5, v2

    .line 46
    :goto_2
    const/4 v6, -0x1

    .line 47
    move v7, v2

    .line 48
    move v8, v6

    .line 49
    move v9, v8

    .line 50
    :goto_3
    if-ge v7, v1, :cond_9

    .line 51
    .line 52
    if-eqz p2, :cond_5

    .line 53
    .line 54
    add-int/lit8 v10, v1, -0x1

    .line 55
    .line 56
    sub-int/2addr v10, v7

    .line 57
    goto :goto_4

    .line 58
    :cond_5
    move v10, v7

    .line 59
    :goto_4
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 60
    .line 61
    add-int/2addr v11, v10

    .line 62
    iget v10, v4, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    .line 63
    .line 64
    if-lt v11, v10, :cond_6

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_6
    iget-object v10, v4, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 68
    .line 69
    aget-object v10, v10, v11

    .line 70
    .line 71
    iget v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 72
    .line 73
    if-nez v10, :cond_8

    .line 74
    .line 75
    if-ne v8, v6, :cond_7

    .line 76
    .line 77
    move v8, v7

    .line 78
    :cond_7
    move v9, v7

    .line 79
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_9
    :goto_5
    iget v7, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a:I

    .line 83
    .line 84
    if-nez v7, :cond_23

    .line 85
    .line 86
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 87
    .line 88
    iget v11, v4, Landroidx/constraintlayout/core/widgets/Flow;->E0:I

    .line 89
    .line 90
    iput v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:I

    .line 91
    .line 92
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 93
    .line 94
    iget-object v12, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    .line 96
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->i:I

    .line 97
    .line 98
    if-lez p1, :cond_a

    .line 99
    .line 100
    iget v14, v4, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 101
    .line 102
    add-int/2addr v13, v14

    .line 103
    :cond_a
    iget-object v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 104
    .line 105
    invoke-virtual {v12, v14, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 106
    .line 107
    .line 108
    if-eqz p3, :cond_b

    .line 109
    .line 110
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 111
    .line 112
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->k:I

    .line 113
    .line 114
    invoke-virtual {v11, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 115
    .line 116
    .line 117
    :cond_b
    if-lez p1, :cond_c

    .line 118
    .line 119
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 120
    .line 121
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 122
    .line 123
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 124
    .line 125
    invoke-virtual {v13, v12, v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 126
    .line 127
    .line 128
    :cond_c
    iget v13, v4, Landroidx/constraintlayout/core/widgets/Flow;->S0:I

    .line 129
    .line 130
    const/4 v14, 0x3

    .line 131
    if-ne v13, v14, :cond_10

    .line 132
    .line 133
    iget-boolean v13, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 134
    .line 135
    if-nez v13, :cond_10

    .line 136
    .line 137
    move v13, v2

    .line 138
    :goto_6
    if-ge v13, v1, :cond_10

    .line 139
    .line 140
    if-eqz p2, :cond_d

    .line 141
    .line 142
    add-int/lit8 v15, v1, -0x1

    .line 143
    .line 144
    sub-int/2addr v15, v13

    .line 145
    goto :goto_7

    .line 146
    :cond_d
    move v15, v13

    .line 147
    :goto_7
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 148
    .line 149
    add-int/2addr v10, v15

    .line 150
    iget v15, v4, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    .line 151
    .line 152
    if-lt v10, v15, :cond_e

    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_e
    iget-object v15, v4, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 156
    .line 157
    aget-object v10, v15, v10

    .line 158
    .line 159
    iget-boolean v15, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 160
    .line 161
    if-eqz v15, :cond_f

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_10
    :goto_8
    move-object v10, v7

    .line 168
    :goto_9
    move v15, v2

    .line 169
    const/4 v13, 0x0

    .line 170
    :goto_a
    if-ge v15, v1, :cond_3a

    .line 171
    .line 172
    if-eqz p2, :cond_11

    .line 173
    .line 174
    add-int/lit8 v16, v1, -0x1

    .line 175
    .line 176
    sub-int v16, v16, v15

    .line 177
    .line 178
    :goto_b
    const/16 v17, 0x1

    .line 179
    .line 180
    goto :goto_c

    .line 181
    :cond_11
    move/from16 v16, v15

    .line 182
    .line 183
    goto :goto_b

    .line 184
    :goto_c
    iget v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 185
    .line 186
    add-int v3, v3, v16

    .line 187
    .line 188
    iget v14, v4, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    .line 189
    .line 190
    if-lt v3, v14, :cond_12

    .line 191
    .line 192
    goto/16 :goto_1c

    .line 193
    .line 194
    :cond_12
    iget-object v14, v4, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 195
    .line 196
    aget-object v3, v14, v3

    .line 197
    .line 198
    if-nez v15, :cond_13

    .line 199
    .line 200
    iget-object v14, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 201
    .line 202
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 203
    .line 204
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->h:I

    .line 205
    .line 206
    invoke-virtual {v3, v14, v2, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 207
    .line 208
    .line 209
    :cond_13
    if-nez v16, :cond_1a

    .line 210
    .line 211
    iget v2, v4, Landroidx/constraintlayout/core/widgets/Flow;->D0:I

    .line 212
    .line 213
    const/high16 v6, 0x3f800000    # 1.0f

    .line 214
    .line 215
    if-eqz p2, :cond_14

    .line 216
    .line 217
    iget v14, v4, Landroidx/constraintlayout/core/widgets/Flow;->J0:F

    .line 218
    .line 219
    sub-float v14, v6, v14

    .line 220
    .line 221
    :goto_d
    move/from16 v16, v6

    .line 222
    .line 223
    goto :goto_e

    .line 224
    :cond_14
    iget v14, v4, Landroidx/constraintlayout/core/widgets/Flow;->J0:F

    .line 225
    .line 226
    goto :goto_d

    .line 227
    :goto_e
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 228
    .line 229
    if-nez v6, :cond_16

    .line 230
    .line 231
    iget v6, v4, Landroidx/constraintlayout/core/widgets/Flow;->F0:I

    .line 232
    .line 233
    move/from16 v18, v2

    .line 234
    .line 235
    const/4 v2, -0x1

    .line 236
    if-eq v6, v2, :cond_17

    .line 237
    .line 238
    if-eqz p2, :cond_15

    .line 239
    .line 240
    iget v2, v4, Landroidx/constraintlayout/core/widgets/Flow;->L0:F

    .line 241
    .line 242
    sub-float v2, v16, v2

    .line 243
    .line 244
    :goto_f
    move v14, v2

    .line 245
    goto :goto_10

    .line 246
    :cond_15
    iget v2, v4, Landroidx/constraintlayout/core/widgets/Flow;->L0:F

    .line 247
    .line 248
    goto :goto_f

    .line 249
    :goto_10
    move v2, v6

    .line 250
    goto :goto_12

    .line 251
    :cond_16
    move/from16 v18, v2

    .line 252
    .line 253
    :cond_17
    if-eqz p3, :cond_19

    .line 254
    .line 255
    iget v2, v4, Landroidx/constraintlayout/core/widgets/Flow;->H0:I

    .line 256
    .line 257
    const/4 v6, -0x1

    .line 258
    if-eq v2, v6, :cond_19

    .line 259
    .line 260
    if-eqz p2, :cond_18

    .line 261
    .line 262
    iget v6, v4, Landroidx/constraintlayout/core/widgets/Flow;->N0:F

    .line 263
    .line 264
    sub-float v6, v16, v6

    .line 265
    .line 266
    :goto_11
    move v14, v6

    .line 267
    goto :goto_12

    .line 268
    :cond_18
    iget v6, v4, Landroidx/constraintlayout/core/widgets/Flow;->N0:F

    .line 269
    .line 270
    goto :goto_11

    .line 271
    :cond_19
    move/from16 v2, v18

    .line 272
    .line 273
    :goto_12
    iput v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 274
    .line 275
    iput v14, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 276
    .line 277
    :cond_1a
    add-int/lit8 v2, v1, -0x1

    .line 278
    .line 279
    if-ne v15, v2, :cond_1b

    .line 280
    .line 281
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 282
    .line 283
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 284
    .line 285
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->j:I

    .line 286
    .line 287
    invoke-virtual {v3, v2, v6, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 288
    .line 289
    .line 290
    :cond_1b
    if-eqz v13, :cond_1d

    .line 291
    .line 292
    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 293
    .line 294
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 295
    .line 296
    iget v13, v4, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 297
    .line 298
    invoke-virtual {v6, v2, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 299
    .line 300
    .line 301
    if-ne v15, v8, :cond_1c

    .line 302
    .line 303
    iget v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->h:I

    .line 304
    .line 305
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    if-eqz v14, :cond_1c

    .line 310
    .line 311
    iput v13, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 312
    .line 313
    :cond_1c
    const/4 v13, 0x0

    .line 314
    invoke-virtual {v2, v6, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 315
    .line 316
    .line 317
    add-int/lit8 v6, v9, 0x1

    .line 318
    .line 319
    if-ne v15, v6, :cond_1d

    .line 320
    .line 321
    iget v6, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->j:I

    .line 322
    .line 323
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 324
    .line 325
    .line 326
    move-result v13

    .line 327
    if-eqz v13, :cond_1d

    .line 328
    .line 329
    iput v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 330
    .line 331
    :cond_1d
    if-eq v3, v7, :cond_22

    .line 332
    .line 333
    iget v2, v4, Landroidx/constraintlayout/core/widgets/Flow;->S0:I

    .line 334
    .line 335
    const/4 v6, 0x3

    .line 336
    if-ne v2, v6, :cond_1e

    .line 337
    .line 338
    iget-boolean v13, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 339
    .line 340
    if-eqz v13, :cond_1e

    .line 341
    .line 342
    if-eq v3, v10, :cond_1e

    .line 343
    .line 344
    iget-boolean v13, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 345
    .line 346
    if-eqz v13, :cond_1e

    .line 347
    .line 348
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 349
    .line 350
    iget-object v13, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 351
    .line 352
    const/4 v14, 0x0

    .line 353
    invoke-virtual {v2, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 354
    .line 355
    .line 356
    goto :goto_13

    .line 357
    :cond_1e
    if-eqz v2, :cond_21

    .line 358
    .line 359
    move/from16 v13, v17

    .line 360
    .line 361
    if-eq v2, v13, :cond_20

    .line 362
    .line 363
    if-eqz v5, :cond_1f

    .line 364
    .line 365
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 366
    .line 367
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 368
    .line 369
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->i:I

    .line 370
    .line 371
    invoke-virtual {v2, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 372
    .line 373
    .line 374
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 375
    .line 376
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 377
    .line 378
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->k:I

    .line 379
    .line 380
    invoke-virtual {v2, v13, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 381
    .line 382
    .line 383
    goto :goto_13

    .line 384
    :cond_1f
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 385
    .line 386
    const/4 v13, 0x0

    .line 387
    invoke-virtual {v2, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 388
    .line 389
    .line 390
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 391
    .line 392
    invoke-virtual {v2, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 393
    .line 394
    .line 395
    goto :goto_13

    .line 396
    :cond_20
    const/4 v13, 0x0

    .line 397
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 398
    .line 399
    invoke-virtual {v2, v11, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 400
    .line 401
    .line 402
    goto :goto_13

    .line 403
    :cond_21
    const/4 v13, 0x0

    .line 404
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 405
    .line 406
    invoke-virtual {v2, v12, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 407
    .line 408
    .line 409
    goto :goto_13

    .line 410
    :cond_22
    const/4 v6, 0x3

    .line 411
    :goto_13
    add-int/lit8 v15, v15, 0x1

    .line 412
    .line 413
    move-object v13, v3

    .line 414
    move v14, v6

    .line 415
    const/4 v2, 0x0

    .line 416
    const/4 v6, -0x1

    .line 417
    goto/16 :goto_a

    .line 418
    .line 419
    :cond_23
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 420
    .line 421
    iget v3, v4, Landroidx/constraintlayout/core/widgets/Flow;->D0:I

    .line 422
    .line 423
    iput v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 424
    .line 425
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 426
    .line 427
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 428
    .line 429
    iget v7, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->h:I

    .line 430
    .line 431
    if-lez p1, :cond_24

    .line 432
    .line 433
    iget v10, v4, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 434
    .line 435
    add-int/2addr v7, v10

    .line 436
    :cond_24
    if-eqz p2, :cond_26

    .line 437
    .line 438
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 439
    .line 440
    invoke-virtual {v6, v10, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 441
    .line 442
    .line 443
    if-eqz p3, :cond_25

    .line 444
    .line 445
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 446
    .line 447
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->j:I

    .line 448
    .line 449
    invoke-virtual {v3, v7, v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 450
    .line 451
    .line 452
    :cond_25
    if-lez p1, :cond_28

    .line 453
    .line 454
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 455
    .line 456
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 457
    .line 458
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 459
    .line 460
    const/4 v13, 0x0

    .line 461
    invoke-virtual {v7, v6, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 462
    .line 463
    .line 464
    goto :goto_14

    .line 465
    :cond_26
    iget-object v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 466
    .line 467
    invoke-virtual {v3, v10, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 468
    .line 469
    .line 470
    if-eqz p3, :cond_27

    .line 471
    .line 472
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 473
    .line 474
    iget v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->j:I

    .line 475
    .line 476
    invoke-virtual {v6, v7, v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 477
    .line 478
    .line 479
    :cond_27
    if-lez p1, :cond_28

    .line 480
    .line 481
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 482
    .line 483
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 484
    .line 485
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 486
    .line 487
    const/4 v13, 0x0

    .line 488
    invoke-virtual {v7, v3, v13}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 489
    .line 490
    .line 491
    :cond_28
    :goto_14
    const/4 v10, 0x0

    .line 492
    const/4 v13, 0x0

    .line 493
    :goto_15
    if-ge v13, v1, :cond_3a

    .line 494
    .line 495
    iget v7, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 496
    .line 497
    add-int/2addr v7, v13

    .line 498
    iget v11, v4, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    .line 499
    .line 500
    if-lt v7, v11, :cond_29

    .line 501
    .line 502
    goto/16 :goto_1c

    .line 503
    .line 504
    :cond_29
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 505
    .line 506
    aget-object v7, v11, v7

    .line 507
    .line 508
    if-nez v13, :cond_2d

    .line 509
    .line 510
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 511
    .line 512
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 513
    .line 514
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->i:I

    .line 515
    .line 516
    invoke-virtual {v7, v11, v12, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 517
    .line 518
    .line 519
    iget v11, v4, Landroidx/constraintlayout/core/widgets/Flow;->E0:I

    .line 520
    .line 521
    iget v12, v4, Landroidx/constraintlayout/core/widgets/Flow;->K0:F

    .line 522
    .line 523
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 524
    .line 525
    if-nez v14, :cond_2a

    .line 526
    .line 527
    iget v14, v4, Landroidx/constraintlayout/core/widgets/Flow;->G0:I

    .line 528
    .line 529
    const/4 v15, -0x1

    .line 530
    if-eq v14, v15, :cond_2b

    .line 531
    .line 532
    iget v12, v4, Landroidx/constraintlayout/core/widgets/Flow;->M0:F

    .line 533
    .line 534
    :goto_16
    move v11, v14

    .line 535
    goto :goto_17

    .line 536
    :cond_2a
    const/4 v15, -0x1

    .line 537
    :cond_2b
    if-eqz p3, :cond_2c

    .line 538
    .line 539
    iget v14, v4, Landroidx/constraintlayout/core/widgets/Flow;->I0:I

    .line 540
    .line 541
    if-eq v14, v15, :cond_2c

    .line 542
    .line 543
    iget v12, v4, Landroidx/constraintlayout/core/widgets/Flow;->O0:F

    .line 544
    .line 545
    goto :goto_16

    .line 546
    :cond_2c
    :goto_17
    iput v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:I

    .line 547
    .line 548
    iput v12, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 549
    .line 550
    goto :goto_18

    .line 551
    :cond_2d
    const/4 v15, -0x1

    .line 552
    :goto_18
    add-int/lit8 v11, v1, -0x1

    .line 553
    .line 554
    if-ne v13, v11, :cond_2e

    .line 555
    .line 556
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 557
    .line 558
    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 559
    .line 560
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->k:I

    .line 561
    .line 562
    invoke-virtual {v7, v11, v12, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 563
    .line 564
    .line 565
    :cond_2e
    if-eqz v10, :cond_30

    .line 566
    .line 567
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 568
    .line 569
    iget-object v11, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 570
    .line 571
    iget v12, v4, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 572
    .line 573
    invoke-virtual {v11, v10, v12}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 574
    .line 575
    .line 576
    if-ne v13, v8, :cond_2f

    .line 577
    .line 578
    iget v12, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->i:I

    .line 579
    .line 580
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 581
    .line 582
    .line 583
    move-result v14

    .line 584
    if-eqz v14, :cond_2f

    .line 585
    .line 586
    iput v12, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 587
    .line 588
    :cond_2f
    const/4 v14, 0x0

    .line 589
    invoke-virtual {v10, v11, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 590
    .line 591
    .line 592
    const/16 v17, 0x1

    .line 593
    .line 594
    add-int/lit8 v11, v9, 0x1

    .line 595
    .line 596
    if-ne v13, v11, :cond_30

    .line 597
    .line 598
    iget v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->k:I

    .line 599
    .line 600
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()Z

    .line 601
    .line 602
    .line 603
    move-result v12

    .line 604
    if-eqz v12, :cond_30

    .line 605
    .line 606
    iput v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 607
    .line 608
    :cond_30
    if-eq v7, v2, :cond_34

    .line 609
    .line 610
    const/4 v10, 0x2

    .line 611
    if-eqz p2, :cond_35

    .line 612
    .line 613
    iget v11, v4, Landroidx/constraintlayout/core/widgets/Flow;->R0:I

    .line 614
    .line 615
    if-eqz v11, :cond_33

    .line 616
    .line 617
    const/4 v12, 0x1

    .line 618
    if-eq v11, v12, :cond_32

    .line 619
    .line 620
    if-eq v11, v10, :cond_31

    .line 621
    .line 622
    goto :goto_19

    .line 623
    :cond_31
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 624
    .line 625
    const/4 v14, 0x0

    .line 626
    invoke-virtual {v10, v3, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 627
    .line 628
    .line 629
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 630
    .line 631
    invoke-virtual {v10, v6, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 632
    .line 633
    .line 634
    goto :goto_19

    .line 635
    :cond_32
    const/4 v14, 0x0

    .line 636
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 637
    .line 638
    invoke-virtual {v10, v3, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 639
    .line 640
    .line 641
    goto :goto_19

    .line 642
    :cond_33
    const/4 v14, 0x0

    .line 643
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 644
    .line 645
    invoke-virtual {v10, v6, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 646
    .line 647
    .line 648
    :cond_34
    :goto_19
    const/4 v12, 0x1

    .line 649
    :goto_1a
    const/4 v14, 0x0

    .line 650
    goto :goto_1b

    .line 651
    :cond_35
    iget v11, v4, Landroidx/constraintlayout/core/widgets/Flow;->R0:I

    .line 652
    .line 653
    if-eqz v11, :cond_39

    .line 654
    .line 655
    const/4 v12, 0x1

    .line 656
    if-eq v11, v12, :cond_38

    .line 657
    .line 658
    if-eq v11, v10, :cond_36

    .line 659
    .line 660
    goto :goto_1a

    .line 661
    :cond_36
    if-eqz v5, :cond_37

    .line 662
    .line 663
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 664
    .line 665
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 666
    .line 667
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->h:I

    .line 668
    .line 669
    invoke-virtual {v10, v11, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 670
    .line 671
    .line 672
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 673
    .line 674
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 675
    .line 676
    iget v14, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->j:I

    .line 677
    .line 678
    invoke-virtual {v10, v11, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 679
    .line 680
    .line 681
    goto :goto_1a

    .line 682
    :cond_37
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 683
    .line 684
    const/4 v14, 0x0

    .line 685
    invoke-virtual {v10, v3, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 686
    .line 687
    .line 688
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 689
    .line 690
    invoke-virtual {v10, v6, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 691
    .line 692
    .line 693
    goto :goto_1b

    .line 694
    :cond_38
    const/4 v14, 0x0

    .line 695
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 696
    .line 697
    invoke-virtual {v10, v6, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 698
    .line 699
    .line 700
    goto :goto_1b

    .line 701
    :cond_39
    const/4 v12, 0x1

    .line 702
    const/4 v14, 0x0

    .line 703
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 704
    .line 705
    invoke-virtual {v10, v3, v14}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 706
    .line 707
    .line 708
    :goto_1b
    add-int/lit8 v13, v13, 0x1

    .line 709
    .line 710
    move-object v10, v7

    .line 711
    goto/16 :goto_15

    .line 712
    .line 713
    :cond_3a
    :goto_1c
    return-void
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->r:Landroidx/constraintlayout/core/widgets/Flow;

    .line 9
    .line 10
    iget v1, v1, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    return v0

    .line 14
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 15
    .line 16
    return v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->r:Landroidx/constraintlayout/core/widgets/Flow;

    .line 8
    .line 9
    iget v1, v1, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 14
    .line 15
    return v0
.end method

.method public final e(I)V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->o:I

    .line 8
    .line 9
    div-int v5, p1, v0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    move v0, p1

    .line 13
    :goto_0
    if-ge v0, v1, :cond_4

    .line 14
    .line 15
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 16
    .line 17
    add-int v3, v2, v0

    .line 18
    .line 19
    move v4, v2

    .line 20
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->r:Landroidx/constraintlayout/core/widgets/Flow;

    .line 21
    .line 22
    iget v6, v2, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    .line 23
    .line 24
    if-lt v3, v6, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 28
    .line 29
    add-int/2addr v4, v0

    .line 30
    aget-object v3, v3, v4

    .line 31
    .line 32
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a:I

    .line 33
    .line 34
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    .line 36
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    .line 38
    const/4 v8, 0x1

    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    aget-object v9, v4, p1

    .line 46
    .line 47
    if-ne v9, v7, :cond_3

    .line 48
    .line 49
    iget v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 50
    .line 51
    if-nez v7, :cond_3

    .line 52
    .line 53
    aget-object v4, v4, v8

    .line 54
    .line 55
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    move-object v10, v6

    .line 60
    move-object v6, v4

    .line 61
    move-object v4, v10

    .line 62
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->P(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v4, v6

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 70
    .line 71
    aget-object v8, v6, v8

    .line 72
    .line 73
    if-ne v8, v7, :cond_3

    .line 74
    .line 75
    iget v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 76
    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    aget-object v6, v6, p1

    .line 80
    .line 81
    move v7, v5

    .line 82
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    move-object v10, v6

    .line 87
    move-object v6, v4

    .line 88
    move-object v4, v10

    .line 89
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->P(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 90
    .line 91
    .line 92
    move v5, v7

    .line 93
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    :goto_2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 97
    .line 98
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 102
    .line 103
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 104
    .line 105
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->o:I

    .line 106
    .line 107
    move v1, p1

    .line 108
    :goto_3
    if-ge v1, v0, :cond_c

    .line 109
    .line 110
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 111
    .line 112
    add-int/2addr v2, v1

    .line 113
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->r:Landroidx/constraintlayout/core/widgets/Flow;

    .line 114
    .line 115
    iget v4, v3, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    .line 116
    .line 117
    if-lt v2, v4, :cond_5

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 121
    .line 122
    aget-object v2, v4, v2

    .line 123
    .line 124
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a:I

    .line 125
    .line 126
    const/16 v5, 0x8

    .line 127
    .line 128
    if-nez v4, :cond_8

    .line 129
    .line 130
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    iget v6, v3, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 135
    .line 136
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 137
    .line 138
    if-ne v7, v5, :cond_6

    .line 139
    .line 140
    move v6, p1

    .line 141
    :cond_6
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 142
    .line 143
    add-int/2addr v4, v6

    .line 144
    add-int/2addr v4, v5

    .line 145
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 146
    .line 147
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->q:I

    .line 148
    .line 149
    invoke-virtual {v3, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 154
    .line 155
    if-eqz v4, :cond_7

    .line 156
    .line 157
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 158
    .line 159
    if-ge v4, v3, :cond_b

    .line 160
    .line 161
    :cond_7
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 162
    .line 163
    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 164
    .line 165
    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_8
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->q:I

    .line 169
    .line 170
    invoke-virtual {v3, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->q:I

    .line 175
    .line 176
    invoke-virtual {v3, v2, v6}, Landroidx/constraintlayout/core/widgets/Flow;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    iget v3, v3, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 181
    .line 182
    iget v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 183
    .line 184
    if-ne v7, v5, :cond_9

    .line 185
    .line 186
    move v3, p1

    .line 187
    :cond_9
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 188
    .line 189
    add-int/2addr v6, v3

    .line 190
    add-int/2addr v6, v5

    .line 191
    iput v6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 192
    .line 193
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 194
    .line 195
    if-eqz v3, :cond_a

    .line 196
    .line 197
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 198
    .line 199
    if-ge v3, v4, :cond_b

    .line 200
    .line 201
    :cond_a
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 202
    .line 203
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 204
    .line 205
    iput v4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 206
    .line 207
    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_c
    :goto_5
    return-void
.end method

.method public final f(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    .line 11
    iput p6, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->h:I

    .line 12
    .line 13
    iput p7, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->i:I

    .line 14
    .line 15
    iput p8, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->j:I

    .line 16
    .line 17
    iput p9, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->k:I

    .line 18
    .line 19
    iput p10, p0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->q:I

    .line 20
    .line 21
    return-void
.end method
