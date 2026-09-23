.class public Landroidx/constraintlayout/core/widgets/Optimizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Z

    .line 3
    .line 4
    sput-object v0, Landroidx/constraintlayout/core/widgets/Optimizer;->a:[Z

    .line 5
    .line 6
    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 11

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:I

    .line 3
    .line 4
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    .line 6
    iget-object v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 7
    .line 8
    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    .line 10
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 11
    .line 12
    iget-object v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    .line 14
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:I

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aget-object v0, v0, v6

    .line 20
    .line 21
    const/4 v7, 0x2

    .line 22
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->h:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 23
    .line 24
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 25
    .line 26
    if-eq v0, v9, :cond_0

    .line 27
    .line 28
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 29
    .line 30
    aget-object v0, v0, v6

    .line 31
    .line 32
    if-ne v0, v8, :cond_0

    .line 33
    .line 34
    iget v0, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    iget v10, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 41
    .line 42
    sub-int/2addr v6, v10

    .line 43
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    iput-object v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    .line 49
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    iput-object v10, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 54
    .line 55
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 56
    .line 57
    invoke-virtual {p1, v5, v0}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 58
    .line 59
    .line 60
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 61
    .line 62
    invoke-virtual {p1, v4, v6}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 63
    .line 64
    .line 65
    iput v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n:I

    .line 66
    .line 67
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 68
    .line 69
    sub-int/2addr v6, v0

    .line 70
    iput v6, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 71
    .line 72
    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 73
    .line 74
    if-ge v6, v0, :cond_0

    .line 75
    .line 76
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 77
    .line 78
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    aget-object v0, v0, v4

    .line 82
    .line 83
    if-eq v0, v9, :cond_3

    .line 84
    .line 85
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 86
    .line 87
    aget-object v0, v0, v4

    .line 88
    .line 89
    if-ne v0, v8, :cond_3

    .line 90
    .line 91
    iget v0, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 98
    .line 99
    sub-int/2addr p0, v4

    .line 100
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iput-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 111
    .line 112
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 113
    .line 114
    invoke-virtual {p1, v3, v0}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 115
    .line 116
    .line 117
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 118
    .line 119
    invoke-virtual {p1, v2, p0}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 120
    .line 121
    .line 122
    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 123
    .line 124
    if-gtz v2, :cond_1

    .line 125
    .line 126
    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 127
    .line 128
    const/16 v3, 0x8

    .line 129
    .line 130
    if-ne v2, v3, :cond_2

    .line 131
    .line 132
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 137
    .line 138
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 139
    .line 140
    add-int/2addr v1, v0

    .line 141
    invoke-virtual {p1, v2, v1}, Landroidx/constraintlayout/core/LinearSystem;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 142
    .line 143
    .line 144
    :cond_2
    iput v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o:I

    .line 145
    .line 146
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 147
    .line 148
    sub-int/2addr p0, v0

    .line 149
    iput p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 150
    .line 151
    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 152
    .line 153
    if-ge p0, p1, :cond_3

    .line 154
    .line 155
    iput p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 156
    .line 157
    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
