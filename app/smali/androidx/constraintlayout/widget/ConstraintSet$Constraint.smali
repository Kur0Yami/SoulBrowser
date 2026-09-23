.class public Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

.field public final c:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

.field public final d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

.field public final e:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->a:I

    .line 11
    .line 12
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->b:I

    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->c:F

    .line 17
    .line 18
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 19
    .line 20
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->d:F

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->b:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 23
    .line 24
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->a:I

    .line 31
    .line 32
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->b:I

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->c:Ljava/lang/String;

    .line 36
    .line 37
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->d:I

    .line 38
    .line 39
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->e:I

    .line 40
    .line 41
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->f:F

    .line 42
    .line 43
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->g:F

    .line 44
    .line 45
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->h:F

    .line 46
    .line 47
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->i:I

    .line 48
    .line 49
    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->j:Ljava/lang/String;

    .line 50
    .line 51
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->k:I

    .line 52
    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->c:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 54
    .line 55
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a:Z

    .line 61
    .line 62
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d:I

    .line 63
    .line 64
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e:I

    .line 65
    .line 66
    const/high16 v6, -0x40800000    # -1.0f

    .line 67
    .line 68
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f:F

    .line 69
    .line 70
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g:I

    .line 71
    .line 72
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h:I

    .line 73
    .line 74
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i:I

    .line 75
    .line 76
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j:I

    .line 77
    .line 78
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k:I

    .line 79
    .line 80
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l:I

    .line 81
    .line 82
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m:I

    .line 83
    .line 84
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n:I

    .line 85
    .line 86
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->o:I

    .line 87
    .line 88
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->p:I

    .line 89
    .line 90
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->q:I

    .line 91
    .line 92
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->r:I

    .line 93
    .line 94
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->s:I

    .line 95
    .line 96
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->t:I

    .line 97
    .line 98
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->u:I

    .line 99
    .line 100
    const/high16 v7, 0x3f000000    # 0.5f

    .line 101
    .line 102
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->v:F

    .line 103
    .line 104
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->w:F

    .line 105
    .line 106
    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->x:Ljava/lang/String;

    .line 107
    .line 108
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->y:I

    .line 109
    .line 110
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->z:I

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->A:F

    .line 114
    .line 115
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->B:I

    .line 116
    .line 117
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->C:I

    .line 118
    .line 119
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->D:I

    .line 120
    .line 121
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->E:I

    .line 122
    .line 123
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->F:I

    .line 124
    .line 125
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->G:I

    .line 126
    .line 127
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->H:I

    .line 128
    .line 129
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->I:I

    .line 130
    .line 131
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->J:I

    .line 132
    .line 133
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->K:I

    .line 134
    .line 135
    const/high16 v7, -0x80000000

    .line 136
    .line 137
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->L:I

    .line 138
    .line 139
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->M:I

    .line 140
    .line 141
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->N:I

    .line 142
    .line 143
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->O:I

    .line 144
    .line 145
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->P:I

    .line 146
    .line 147
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Q:I

    .line 148
    .line 149
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->R:I

    .line 150
    .line 151
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->S:F

    .line 152
    .line 153
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->T:F

    .line 154
    .line 155
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->U:I

    .line 156
    .line 157
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->V:I

    .line 158
    .line 159
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->W:I

    .line 160
    .line 161
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->X:I

    .line 162
    .line 163
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Y:I

    .line 164
    .line 165
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Z:I

    .line 166
    .line 167
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 168
    .line 169
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 170
    .line 171
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c0:F

    .line 172
    .line 173
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:F

    .line 174
    .line 175
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e0:I

    .line 176
    .line 177
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f0:I

    .line 178
    .line 179
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g0:I

    .line 180
    .line 181
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k0:Z

    .line 182
    .line 183
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l0:Z

    .line 184
    .line 185
    const/4 v6, 0x1

    .line 186
    iput-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m0:Z

    .line 187
    .line 188
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n0:I

    .line 189
    .line 190
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 191
    .line 192
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 195
    .line 196
    .line 197
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->a:F

    .line 198
    .line 199
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->b:F

    .line 200
    .line 201
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->c:F

    .line 202
    .line 203
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->d:F

    .line 204
    .line 205
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->e:F

    .line 206
    .line 207
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->f:F

    .line 208
    .line 209
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->g:F

    .line 210
    .line 211
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->h:I

    .line 212
    .line 213
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->i:F

    .line 214
    .line 215
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->j:F

    .line 216
    .line 217
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->k:F

    .line 218
    .line 219
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->l:Z

    .line 220
    .line 221
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->m:F

    .line 222
    .line 223
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->e:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 224
    .line 225
    new-instance v0, Ljava/util/HashMap;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 228
    .line 229
    .line 230
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->f:Ljava/util/HashMap;

    .line 231
    .line 232
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 2
    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g:I

    .line 4
    .line 5
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 6
    .line 7
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h:I

    .line 8
    .line 9
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 10
    .line 11
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i:I

    .line 12
    .line 13
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 14
    .line 15
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j:I

    .line 16
    .line 17
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 18
    .line 19
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k:I

    .line 20
    .line 21
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 22
    .line 23
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l:I

    .line 24
    .line 25
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 26
    .line 27
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m:I

    .line 28
    .line 29
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 30
    .line 31
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n:I

    .line 32
    .line 33
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 34
    .line 35
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->o:I

    .line 36
    .line 37
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 38
    .line 39
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->p:I

    .line 40
    .line 41
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 42
    .line 43
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->q:I

    .line 44
    .line 45
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 46
    .line 47
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->r:I

    .line 48
    .line 49
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 50
    .line 51
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->s:I

    .line 52
    .line 53
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 54
    .line 55
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->t:I

    .line 56
    .line 57
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 58
    .line 59
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->u:I

    .line 60
    .line 61
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 62
    .line 63
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->E:I

    .line 64
    .line 65
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 66
    .line 67
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->F:I

    .line 68
    .line 69
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 70
    .line 71
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->G:I

    .line 72
    .line 73
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 74
    .line 75
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->H:I

    .line 76
    .line 77
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 78
    .line 79
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Q:I

    .line 80
    .line 81
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:I

    .line 82
    .line 83
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->P:I

    .line 84
    .line 85
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:I

    .line 86
    .line 87
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->M:I

    .line 88
    .line 89
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 90
    .line 91
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->O:I

    .line 92
    .line 93
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 94
    .line 95
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->v:F

    .line 96
    .line 97
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 98
    .line 99
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->w:F

    .line 100
    .line 101
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 102
    .line 103
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->y:I

    .line 104
    .line 105
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:I

    .line 106
    .line 107
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->z:I

    .line 108
    .line 109
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 110
    .line 111
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->A:F

    .line 112
    .line 113
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:F

    .line 114
    .line 115
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->x:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:Ljava/lang/String;

    .line 118
    .line 119
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->B:I

    .line 120
    .line 121
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:I

    .line 122
    .line 123
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->C:I

    .line 124
    .line 125
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:I

    .line 126
    .line 127
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->S:F

    .line 128
    .line 129
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:F

    .line 130
    .line 131
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->T:F

    .line 132
    .line 133
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:F

    .line 134
    .line 135
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->V:I

    .line 136
    .line 137
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 138
    .line 139
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->U:I

    .line 140
    .line 141
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 142
    .line 143
    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k0:Z

    .line 144
    .line 145
    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 146
    .line 147
    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l0:Z

    .line 148
    .line 149
    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 150
    .line 151
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->W:I

    .line 152
    .line 153
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 154
    .line 155
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->X:I

    .line 156
    .line 157
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 158
    .line 159
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Y:I

    .line 160
    .line 161
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:I

    .line 162
    .line 163
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Z:I

    .line 164
    .line 165
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 166
    .line 167
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 168
    .line 169
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 170
    .line 171
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 172
    .line 173
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:I

    .line 174
    .line 175
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c0:F

    .line 176
    .line 177
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:F

    .line 178
    .line 179
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:F

    .line 180
    .line 181
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:F

    .line 182
    .line 183
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->D:I

    .line 184
    .line 185
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:I

    .line 186
    .line 187
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f:F

    .line 188
    .line 189
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 190
    .line 191
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d:I

    .line 192
    .line 193
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 194
    .line 195
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e:I

    .line 196
    .line 197
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    .line 198
    .line 199
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b:I

    .line 200
    .line 201
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 202
    .line 203
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c:I

    .line 204
    .line 205
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 206
    .line 207
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j0:Ljava/lang/String;

    .line 208
    .line 209
    if-eqz v1, :cond_0

    .line 210
    .line 211
    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Ljava/lang/String;

    .line 212
    .line 213
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n0:I

    .line 214
    .line 215
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:I

    .line 216
    .line 217
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->J:I

    .line 218
    .line 219
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 220
    .line 221
    .line 222
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->I:I

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public final b(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a:I

    .line 2
    .line 3
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 6
    .line 7
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g:I

    .line 8
    .line 9
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 10
    .line 11
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h:I

    .line 12
    .line 13
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 14
    .line 15
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i:I

    .line 16
    .line 17
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 18
    .line 19
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j:I

    .line 20
    .line 21
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 22
    .line 23
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k:I

    .line 24
    .line 25
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 26
    .line 27
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l:I

    .line 28
    .line 29
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 30
    .line 31
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m:I

    .line 32
    .line 33
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 34
    .line 35
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n:I

    .line 36
    .line 37
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 38
    .line 39
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->o:I

    .line 40
    .line 41
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 42
    .line 43
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->p:I

    .line 44
    .line 45
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 46
    .line 47
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->q:I

    .line 48
    .line 49
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 50
    .line 51
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->r:I

    .line 52
    .line 53
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 54
    .line 55
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->s:I

    .line 56
    .line 57
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 58
    .line 59
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->t:I

    .line 60
    .line 61
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 62
    .line 63
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->u:I

    .line 64
    .line 65
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 66
    .line 67
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->v:F

    .line 68
    .line 69
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 70
    .line 71
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->w:F

    .line 72
    .line 73
    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:Ljava/lang/String;

    .line 74
    .line 75
    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->x:Ljava/lang/String;

    .line 76
    .line 77
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:I

    .line 78
    .line 79
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->y:I

    .line 80
    .line 81
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 82
    .line 83
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->z:I

    .line 84
    .line 85
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:F

    .line 86
    .line 87
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->A:F

    .line 88
    .line 89
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:I

    .line 90
    .line 91
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->B:I

    .line 92
    .line 93
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:I

    .line 94
    .line 95
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->C:I

    .line 96
    .line 97
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:I

    .line 98
    .line 99
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->D:I

    .line 100
    .line 101
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 102
    .line 103
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f:F

    .line 104
    .line 105
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 106
    .line 107
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d:I

    .line 108
    .line 109
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    .line 110
    .line 111
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e:I

    .line 112
    .line 113
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 114
    .line 115
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b:I

    .line 116
    .line 117
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 118
    .line 119
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c:I

    .line 120
    .line 121
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 122
    .line 123
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->E:I

    .line 124
    .line 125
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 126
    .line 127
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->F:I

    .line 128
    .line 129
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 130
    .line 131
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->G:I

    .line 132
    .line 133
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 134
    .line 135
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->H:I

    .line 136
    .line 137
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 138
    .line 139
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->K:I

    .line 140
    .line 141
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:F

    .line 142
    .line 143
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->S:F

    .line 144
    .line 145
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:F

    .line 146
    .line 147
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->T:F

    .line 148
    .line 149
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 150
    .line 151
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->V:I

    .line 152
    .line 153
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 154
    .line 155
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->U:I

    .line 156
    .line 157
    iget-boolean p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 158
    .line 159
    iput-boolean p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k0:Z

    .line 160
    .line 161
    iget-boolean p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 162
    .line 163
    iput-boolean p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l0:Z

    .line 164
    .line 165
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 166
    .line 167
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->W:I

    .line 168
    .line 169
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 170
    .line 171
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->X:I

    .line 172
    .line 173
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:I

    .line 174
    .line 175
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Y:I

    .line 176
    .line 177
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 178
    .line 179
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Z:I

    .line 180
    .line 181
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 182
    .line 183
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 184
    .line 185
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:I

    .line 186
    .line 187
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 188
    .line 189
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:F

    .line 190
    .line 191
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c0:F

    .line 192
    .line 193
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:F

    .line 194
    .line 195
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:F

    .line 196
    .line 197
    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Ljava/lang/String;

    .line 198
    .line 199
    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j0:Ljava/lang/String;

    .line 200
    .line 201
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 202
    .line 203
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->M:I

    .line 204
    .line 205
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 206
    .line 207
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->O:I

    .line 208
    .line 209
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 210
    .line 211
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->L:I

    .line 212
    .line 213
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 214
    .line 215
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->N:I

    .line 216
    .line 217
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:I

    .line 218
    .line 219
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Q:I

    .line 220
    .line 221
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:I

    .line 222
    .line 223
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->P:I

    .line 224
    .line 225
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:I

    .line 226
    .line 227
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->R:I

    .line 228
    .line 229
    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:I

    .line 230
    .line 231
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n0:I

    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->I:I

    .line 238
    .line 239
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->J:I

    .line 244
    .line 245
    return-void
.end method

.method public final c(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->b(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->b:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 5
    .line 6
    iget v0, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->q0:F

    .line 7
    .line 8
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->c:F

    .line 9
    .line 10
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->t0:F

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->e:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 13
    .line 14
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->a:F

    .line 15
    .line 16
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->u0:F

    .line 17
    .line 18
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->b:F

    .line 19
    .line 20
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->v0:F

    .line 21
    .line 22
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->c:F

    .line 23
    .line 24
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->w0:F

    .line 25
    .line 26
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->d:F

    .line 27
    .line 28
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->x0:F

    .line 29
    .line 30
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->e:F

    .line 31
    .line 32
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->y0:F

    .line 33
    .line 34
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->f:F

    .line 35
    .line 36
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->z0:F

    .line 37
    .line 38
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->g:F

    .line 39
    .line 40
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->A0:F

    .line 41
    .line 42
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->i:F

    .line 43
    .line 44
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->B0:F

    .line 45
    .line 46
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->j:F

    .line 47
    .line 48
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->C0:F

    .line 49
    .line 50
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->k:F

    .line 51
    .line 52
    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->s0:F

    .line 53
    .line 54
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->m:F

    .line 55
    .line 56
    iget-boolean p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->r0:Z

    .line 57
    .line 58
    iput-boolean p1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->l:Z

    .line 59
    .line 60
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->d:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 12
    .line 13
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a:Z

    .line 14
    .line 15
    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a:Z

    .line 16
    .line 17
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b:I

    .line 18
    .line 19
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b:I

    .line 20
    .line 21
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c:I

    .line 22
    .line 23
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c:I

    .line 24
    .line 25
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d:I

    .line 26
    .line 27
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d:I

    .line 28
    .line 29
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e:I

    .line 30
    .line 31
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e:I

    .line 32
    .line 33
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f:F

    .line 34
    .line 35
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f:F

    .line 36
    .line 37
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g:I

    .line 38
    .line 39
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g:I

    .line 40
    .line 41
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h:I

    .line 42
    .line 43
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h:I

    .line 44
    .line 45
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i:I

    .line 46
    .line 47
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i:I

    .line 48
    .line 49
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j:I

    .line 50
    .line 51
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j:I

    .line 52
    .line 53
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k:I

    .line 54
    .line 55
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k:I

    .line 56
    .line 57
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l:I

    .line 58
    .line 59
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l:I

    .line 60
    .line 61
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m:I

    .line 62
    .line 63
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m:I

    .line 64
    .line 65
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n:I

    .line 66
    .line 67
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n:I

    .line 68
    .line 69
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->o:I

    .line 70
    .line 71
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->o:I

    .line 72
    .line 73
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->p:I

    .line 74
    .line 75
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->p:I

    .line 76
    .line 77
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->q:I

    .line 78
    .line 79
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->q:I

    .line 80
    .line 81
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->r:I

    .line 82
    .line 83
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->r:I

    .line 84
    .line 85
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->s:I

    .line 86
    .line 87
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->s:I

    .line 88
    .line 89
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->t:I

    .line 90
    .line 91
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->t:I

    .line 92
    .line 93
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->u:I

    .line 94
    .line 95
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->u:I

    .line 96
    .line 97
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->v:F

    .line 98
    .line 99
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->v:F

    .line 100
    .line 101
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->w:F

    .line 102
    .line 103
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->w:F

    .line 104
    .line 105
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->x:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->x:Ljava/lang/String;

    .line 108
    .line 109
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->y:I

    .line 110
    .line 111
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->y:I

    .line 112
    .line 113
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->z:I

    .line 114
    .line 115
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->z:I

    .line 116
    .line 117
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->A:F

    .line 118
    .line 119
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->A:F

    .line 120
    .line 121
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->B:I

    .line 122
    .line 123
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->B:I

    .line 124
    .line 125
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->C:I

    .line 126
    .line 127
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->C:I

    .line 128
    .line 129
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->D:I

    .line 130
    .line 131
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->D:I

    .line 132
    .line 133
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->E:I

    .line 134
    .line 135
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->E:I

    .line 136
    .line 137
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->F:I

    .line 138
    .line 139
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->F:I

    .line 140
    .line 141
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->G:I

    .line 142
    .line 143
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->G:I

    .line 144
    .line 145
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->H:I

    .line 146
    .line 147
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->H:I

    .line 148
    .line 149
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->I:I

    .line 150
    .line 151
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->I:I

    .line 152
    .line 153
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->J:I

    .line 154
    .line 155
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->J:I

    .line 156
    .line 157
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->K:I

    .line 158
    .line 159
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->K:I

    .line 160
    .line 161
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->L:I

    .line 162
    .line 163
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->L:I

    .line 164
    .line 165
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->M:I

    .line 166
    .line 167
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->M:I

    .line 168
    .line 169
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->N:I

    .line 170
    .line 171
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->N:I

    .line 172
    .line 173
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->O:I

    .line 174
    .line 175
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->O:I

    .line 176
    .line 177
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->P:I

    .line 178
    .line 179
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->P:I

    .line 180
    .line 181
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Q:I

    .line 182
    .line 183
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Q:I

    .line 184
    .line 185
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->R:I

    .line 186
    .line 187
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->R:I

    .line 188
    .line 189
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->S:F

    .line 190
    .line 191
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->S:F

    .line 192
    .line 193
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->T:F

    .line 194
    .line 195
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->T:F

    .line 196
    .line 197
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->U:I

    .line 198
    .line 199
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->U:I

    .line 200
    .line 201
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->V:I

    .line 202
    .line 203
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->V:I

    .line 204
    .line 205
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->W:I

    .line 206
    .line 207
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->W:I

    .line 208
    .line 209
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->X:I

    .line 210
    .line 211
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->X:I

    .line 212
    .line 213
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Y:I

    .line 214
    .line 215
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Y:I

    .line 216
    .line 217
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Z:I

    .line 218
    .line 219
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->Z:I

    .line 220
    .line 221
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 222
    .line 223
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->a0:I

    .line 224
    .line 225
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 226
    .line 227
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->b0:I

    .line 228
    .line 229
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c0:F

    .line 230
    .line 231
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->c0:F

    .line 232
    .line 233
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:F

    .line 234
    .line 235
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->d0:F

    .line 236
    .line 237
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e0:I

    .line 238
    .line 239
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->e0:I

    .line 240
    .line 241
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f0:I

    .line 242
    .line 243
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->f0:I

    .line 244
    .line 245
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g0:I

    .line 246
    .line 247
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->g0:I

    .line 248
    .line 249
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j0:Ljava/lang/String;

    .line 250
    .line 251
    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->j0:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h0:[I

    .line 254
    .line 255
    if-eqz v3, :cond_0

    .line 256
    .line 257
    array-length v4, v3

    .line 258
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h0:[I

    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_0
    const/4 v3, 0x0

    .line 266
    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->h0:[I

    .line 267
    .line 268
    :goto_0
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i0:Ljava/lang/String;

    .line 269
    .line 270
    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->i0:Ljava/lang/String;

    .line 271
    .line 272
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k0:Z

    .line 273
    .line 274
    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->k0:Z

    .line 275
    .line 276
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l0:Z

    .line 277
    .line 278
    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->l0:Z

    .line 279
    .line 280
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m0:Z

    .line 281
    .line 282
    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->m0:Z

    .line 283
    .line 284
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n0:I

    .line 285
    .line 286
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->n0:I

    .line 287
    .line 288
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->c:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->c:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->a:I

    .line 299
    .line 300
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->a:I

    .line 301
    .line 302
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->c:Ljava/lang/String;

    .line 303
    .line 304
    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->c:Ljava/lang/String;

    .line 305
    .line 306
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->d:I

    .line 307
    .line 308
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->d:I

    .line 309
    .line 310
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->e:I

    .line 311
    .line 312
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->e:I

    .line 313
    .line 314
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->g:F

    .line 315
    .line 316
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->g:F

    .line 317
    .line 318
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->f:F

    .line 319
    .line 320
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->f:F

    .line 321
    .line 322
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->b:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 323
    .line 324
    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->a:I

    .line 325
    .line 326
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->b:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 327
    .line 328
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->a:I

    .line 329
    .line 330
    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->c:F

    .line 331
    .line 332
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->c:F

    .line 333
    .line 334
    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->d:F

    .line 335
    .line 336
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->d:F

    .line 337
    .line 338
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->b:I

    .line 339
    .line 340
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->b:I

    .line 341
    .line 342
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->e:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->e:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 348
    .line 349
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->a:F

    .line 353
    .line 354
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->a:F

    .line 355
    .line 356
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->b:F

    .line 357
    .line 358
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->b:F

    .line 359
    .line 360
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->c:F

    .line 361
    .line 362
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->c:F

    .line 363
    .line 364
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->d:F

    .line 365
    .line 366
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->d:F

    .line 367
    .line 368
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->e:F

    .line 369
    .line 370
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->e:F

    .line 371
    .line 372
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->f:F

    .line 373
    .line 374
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->f:F

    .line 375
    .line 376
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->g:F

    .line 377
    .line 378
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->g:F

    .line 379
    .line 380
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->h:I

    .line 381
    .line 382
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->h:I

    .line 383
    .line 384
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->i:F

    .line 385
    .line 386
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->i:F

    .line 387
    .line 388
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->j:F

    .line 389
    .line 390
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->j:F

    .line 391
    .line 392
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->k:F

    .line 393
    .line 394
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->k:F

    .line 395
    .line 396
    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->l:Z

    .line 397
    .line 398
    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->l:Z

    .line 399
    .line 400
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->m:F

    .line 401
    .line 402
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->m:F

    .line 403
    .line 404
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a:I

    .line 405
    .line 406
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->a:I

    .line 407
    .line 408
    return-object v0
.end method
